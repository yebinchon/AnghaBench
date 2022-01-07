
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;
typedef int int64_t ;
struct TYPE_12__ {int (* bswap_buf ) (int*,int*,int) ;} ;
struct TYPE_11__ {int (* sub_left_predict ) (int*,int*,int,int,int) ;} ;
struct TYPE_13__ {int frame_pred; int slices; scalar_t__ slice_bits; TYPE_2__ bdsp; TYPE_1__ llvidencdsp; } ;
typedef TYPE_3__ UtvideoContext ;
struct TYPE_15__ {scalar_t__ pix_fmt; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int len; int sym; } ;
typedef int PutByteContext ;
typedef TYPE_4__ HuffEntry ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_YUV420P ;



 int SEEK_CUR ;
 int av_image_copy_plane (int*,int,int*,int,int,int) ;
 int av_log (TYPE_5__*,int ,char*,int) ;
 int bytestream2_put_buffer (int *,scalar_t__,int) ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_put_le32 (int *,int) ;
 int bytestream2_seek_p (int *,int,int ) ;
 int calculate_codes (TYPE_4__*) ;
 int count_usage (int*,int,int,int*) ;
 int ff_huff_gen_len_table (int*,int*,int,int) ;
 int median_predict (TYPE_3__*,int*,int*,int,int,int) ;
 int stub1 (int*,int*,int,int,int) ;
 int stub2 (int*,int*,int) ;
 int write_huff_codes (int*,scalar_t__,int,int,int,TYPE_4__*) ;

__attribute__((used)) static int encode_plane(AVCodecContext *avctx, uint8_t *src,
                        uint8_t *dst, ptrdiff_t stride, int plane_no,
                        int width, int height, PutByteContext *pb)
{
    UtvideoContext *c = avctx->priv_data;
    uint8_t lengths[256];
    uint64_t counts[256] = { 0 };

    HuffEntry he[256];

    uint32_t offset = 0, slice_len = 0;
    const int cmask = ~(!plane_no && avctx->pix_fmt == AV_PIX_FMT_YUV420P);
    int i, sstart, send = 0;
    int symbol;
    int ret;


    switch (c->frame_pred) {
    case 128:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send = height * (i + 1) / c->slices & cmask;
            av_image_copy_plane(dst + sstart * width, width,
                                src + sstart * stride, stride,
                                width, send - sstart);
        }
        break;
    case 130:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send = height * (i + 1) / c->slices & cmask;
            c->llvidencdsp.sub_left_predict(dst + sstart * width, src + sstart * stride, stride, width, send - sstart);
        }
        break;
    case 129:
        for (i = 0; i < c->slices; i++) {
            sstart = send;
            send = height * (i + 1) / c->slices & cmask;
            median_predict(c, src + sstart * stride, dst + sstart * width,
                           stride, width, send - sstart);
        }
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unknown prediction mode: %d\n",
               c->frame_pred);
        return AVERROR_OPTION_NOT_FOUND;
    }


    count_usage(dst, width, height, counts);


    for (symbol = 0; symbol < 256; symbol++) {

        if (counts[symbol]) {

            if (counts[symbol] == width * (int64_t)height) {




                for (i = 0; i < 256; i++) {
                    if (i == symbol)
                        bytestream2_put_byte(pb, 0);
                    else
                        bytestream2_put_byte(pb, 0xFF);
                }


                for (i = 0; i < c->slices; i++)
                    bytestream2_put_le32(pb, 0);


                return 0;
            }
            break;
        }
    }


    if ((ret = ff_huff_gen_len_table(lengths, counts, 256, 1)) < 0)
        return ret;






    for (i = 0; i < 256; i++) {
        bytestream2_put_byte(pb, lengths[i]);

        he[i].len = lengths[i];
        he[i].sym = i;
    }


    calculate_codes(he);

    send = 0;
    for (i = 0; i < c->slices; i++) {
        sstart = send;
        send = height * (i + 1) / c->slices & cmask;





        offset += write_huff_codes(dst + sstart * width, c->slice_bits,
                                   width * height + 4, width,
                                   send - sstart, he) >> 3;

        slice_len = offset - slice_len;


        c->bdsp.bswap_buf((uint32_t *) c->slice_bits,
                          (uint32_t *) c->slice_bits,
                          slice_len >> 2);


        bytestream2_put_le32(pb, offset);


        bytestream2_seek_p(pb, 4 * (c->slices - i - 1) +
                           offset - slice_len, SEEK_CUR);


        bytestream2_put_buffer(pb, c->slice_bits, slice_len);


        bytestream2_seek_p(pb, -4 * (c->slices - i - 1) - offset,
                           SEEK_CUR);

        slice_len = offset;
    }


    bytestream2_seek_p(pb, offset, SEEK_CUR);

    return 0;
}
