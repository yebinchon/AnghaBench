
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int HEVCDecoderConfigurationRecord ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_RB24 (int const*) ;
 int AV_RB32 (int const*) ;
 int FFMIN (int,int) ;





 int av_free (int*) ;
 int avio_write (int *,int const*,int) ;
 int ff_avc_parse_nal_units_buf (int const*,int**,int*) ;
 int hvcc_add_nal_unit (int*,int ,int,int *) ;
 int hvcc_close (int *) ;
 int hvcc_init (int *) ;
 int hvcc_write (int *,int *) ;

int ff_isom_write_hvcc(AVIOContext *pb, const uint8_t *data,
                       int size, int ps_array_completeness)
{
    int ret = 0;
    uint8_t *buf, *end, *start = ((void*)0);
    HEVCDecoderConfigurationRecord hvcc;

    hvcc_init(&hvcc);

    if (size < 6) {

        ret = AVERROR_INVALIDDATA;
        goto end;
    } else if (*data == 1) {

        avio_write(pb, data, size);
        goto end;
    } else if (!(AV_RB24(data) == 1 || AV_RB32(data) == 1)) {

        ret = AVERROR_INVALIDDATA;
        goto end;
    }

    ret = ff_avc_parse_nal_units_buf(data, &start, &size);
    if (ret < 0)
        goto end;

    buf = start;
    end = start + size;

    while (end - buf > 4) {
        uint32_t len = FFMIN(AV_RB32(buf), end - buf - 4);
        uint8_t type = (buf[4] >> 1) & 0x3f;

        buf += 4;

        switch (type) {
        case 128:
        case 129:
        case 132:
        case 131:
        case 130:
            ret = hvcc_add_nal_unit(buf, len, ps_array_completeness, &hvcc);
            if (ret < 0)
                goto end;
            break;
        default:
            break;
        }

        buf += len;
    }

    ret = hvcc_write(pb, &hvcc);

end:
    hvcc_close(&hvcc);
    av_free(start);
    return ret;
}
