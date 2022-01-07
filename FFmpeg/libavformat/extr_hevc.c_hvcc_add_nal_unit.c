
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int HEVCDecoderConfigurationRecord ;
typedef int GetBitContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;





 int av_free (int*) ;
 int* ff_nal_unit_extract_rbsp (int*,int ,int *,int) ;
 int hvcc_array_add_nal_unit (int*,int ,int,int,int *) ;
 int hvcc_parse_pps (int *,int *) ;
 int hvcc_parse_sps (int *,int *) ;
 int hvcc_parse_vps (int *,int *) ;
 int init_get_bits8 (int *,int*,int ) ;
 int nal_unit_parse_header (int *,int*) ;

__attribute__((used)) static int hvcc_add_nal_unit(uint8_t *nal_buf, uint32_t nal_size,
                             int ps_array_completeness,
                             HEVCDecoderConfigurationRecord *hvcc)
{
    int ret = 0;
    GetBitContext gbc;
    uint8_t nal_type;
    uint8_t *rbsp_buf;
    uint32_t rbsp_size;

    rbsp_buf = ff_nal_unit_extract_rbsp(nal_buf, nal_size, &rbsp_size, 2);
    if (!rbsp_buf) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

    ret = init_get_bits8(&gbc, rbsp_buf, rbsp_size);
    if (ret < 0)
        goto end;

    nal_unit_parse_header(&gbc, &nal_type);






    switch (nal_type) {
    case 128:
    case 129:
    case 132:
    case 131:
    case 130:
        ret = hvcc_array_add_nal_unit(nal_buf, nal_size, nal_type,
                                      ps_array_completeness, hvcc);
        if (ret < 0)
            goto end;
        else if (nal_type == 128)
            ret = hvcc_parse_vps(&gbc, hvcc);
        else if (nal_type == 129)
            ret = hvcc_parse_sps(&gbc, hvcc);
        else if (nal_type == 132)
            ret = hvcc_parse_pps(&gbc, hvcc);
        if (ret < 0)
            goto end;
        break;
    default:
        ret = AVERROR_INVALIDDATA;
        goto end;
    }

end:
    av_free(rbsp_buf);
    return ret;
}
