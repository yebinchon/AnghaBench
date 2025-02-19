
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {scalar_t__ buffer; } ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {scalar_t__ bitstream_buffer; int bitstream_buffer_size; int allocated_bitstream_buffer_size; int avctx; TYPE_4__ gb; scalar_t__ divx_packed; } ;
struct TYPE_7__ {int showed_packed_warning; TYPE_1__ m; } ;
typedef TYPE_1__ MpegEncContext ;
typedef TYPE_2__ Mpeg4DecContext ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_INFO ;
 int ENOMEM ;
 int av_fast_padded_malloc (scalar_t__*,int *,int) ;
 int av_log (int ,int ,char*) ;
 int get_bits_count (TYPE_4__*) ;
 int memcpy (scalar_t__,int const*,int) ;

int ff_mpeg4_frame_end(AVCodecContext *avctx, const uint8_t *buf, int buf_size)
{
    Mpeg4DecContext *ctx = avctx->priv_data;
    MpegEncContext *s = &ctx->m;




    if (s->divx_packed) {
        int current_pos = s->gb.buffer == s->bitstream_buffer ? 0 : (get_bits_count(&s->gb) >> 3);
        int startcode_found = 0;

        if (buf_size - current_pos > 7) {

            int i;
            for (i = current_pos; i < buf_size - 4; i++)

                if (buf[i] == 0 &&
                    buf[i + 1] == 0 &&
                    buf[i + 2] == 1 &&
                    buf[i + 3] == 0xB6) {
                    startcode_found = !(buf[i + 4] & 0x40);
                    break;
                }
        }

        if (startcode_found) {
            if (!ctx->showed_packed_warning) {
                av_log(s->avctx, AV_LOG_INFO, "Video uses a non-standard and "
                       "wasteful way to store B-frames ('packed B-frames'). "
                       "Consider using the mpeg4_unpack_bframes bitstream filter without encoding but stream copy to fix it.\n");
                ctx->showed_packed_warning = 1;
            }
            av_fast_padded_malloc(&s->bitstream_buffer,
                           &s->allocated_bitstream_buffer_size,
                           buf_size - current_pos);
            if (!s->bitstream_buffer) {
                s->bitstream_buffer_size = 0;
                return AVERROR(ENOMEM);
            }
            memcpy(s->bitstream_buffer, buf + current_pos,
                   buf_size - current_pos);
            s->bitstream_buffer_size = buf_size - current_pos;
        }
    }

    return 0;
}
