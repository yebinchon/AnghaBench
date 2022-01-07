
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int const* buffer; } ;
typedef int HEVCSEI ;
typedef int HEVCParamSets ;
typedef TYPE_1__ GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,...) ;
 int bytestream2_get_be16 (TYPE_1__*) ;
 int bytestream2_get_byte (TYPE_1__*) ;
 int bytestream2_get_bytes_left (TYPE_1__*) ;
 int bytestream2_init (TYPE_1__*,int const*,int) ;
 int bytestream2_peek_be16 (TYPE_1__*) ;
 int bytestream2_skip (TYPE_1__*,int) ;
 int hevc_decode_nal_units (int const*,int,int *,int *,int,int,int,int,void*) ;

int ff_hevc_decode_extradata(const uint8_t *data, int size, HEVCParamSets *ps,
                             HEVCSEI *sei, int *is_nalff, int *nal_length_size,
                             int err_recognition, int apply_defdispwin, void *logctx)
{
    int ret = 0;
    GetByteContext gb;

    bytestream2_init(&gb, data, size);

    if (size > 3 && (data[0] || data[1] || data[2] > 1)) {




        int i, j, num_arrays, nal_len_size;

        *is_nalff = 1;

        bytestream2_skip(&gb, 21);
        nal_len_size = (bytestream2_get_byte(&gb) & 3) + 1;
        num_arrays = bytestream2_get_byte(&gb);



        *nal_length_size = 2;


        for (i = 0; i < num_arrays; i++) {
            int type = bytestream2_get_byte(&gb) & 0x3f;
            int cnt = bytestream2_get_be16(&gb);

            for (j = 0; j < cnt; j++) {

                int nalsize = bytestream2_peek_be16(&gb) + 2;
                if (bytestream2_get_bytes_left(&gb) < nalsize) {
                    av_log(logctx, AV_LOG_ERROR,
                           "Invalid NAL unit size in extradata.\n");
                    return AVERROR_INVALIDDATA;
                }

                ret = hevc_decode_nal_units(gb.buffer, nalsize, ps, sei, *is_nalff,
                                            *nal_length_size, err_recognition, apply_defdispwin,
                                            logctx);
                if (ret < 0) {
                    av_log(logctx, AV_LOG_ERROR,
                           "Decoding nal unit %d %d from hvcC failed\n",
                           type, i);
                    return ret;
                }
                bytestream2_skip(&gb, nalsize);
            }
        }



        *nal_length_size = nal_len_size;
    } else {
        *is_nalff = 0;
        ret = hevc_decode_nal_units(data, size, ps, sei, *is_nalff, *nal_length_size,
                                    err_recognition, apply_defdispwin, logctx);
        if (ret < 0)
            return ret;
    }

    return ret;
}
