
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ppm_name ;
struct TYPE_18__ {TYPE_2__* priv_data; } ;
struct TYPE_17__ {int size; int * data; } ;
struct TYPE_16__ {TYPE_1__** rects; int end_display_time; int start_display_time; } ;
struct TYPE_15__ {int buf_size; int sub_id; scalar_t__ forced_subs_only; int * buf; } ;
struct TYPE_14__ {int flags; scalar_t__* data; int h; int w; } ;
typedef TYPE_2__ DVDSubContext ;
typedef TYPE_3__ AVSubtitle ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_SUBTITLE_FLAG_FORCED ;
 int EAGAIN ;
 int append_to_cached_buf (TYPE_5__*,int const*,int) ;
 int decode_dvd_subtitles (TYPE_2__*,TYPE_3__*,int const*,int) ;
 int ff_dlog (int *,char*,int ,int ) ;
 scalar_t__ find_smallest_bounding_rectangle (TYPE_2__*,TYPE_3__*) ;
 int ppm_save (char*,scalar_t__,int ,int ,int *) ;
 int reset_rects (TYPE_3__*) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int dvdsub_decode(AVCodecContext *avctx,
                         void *data, int *data_size,
                         AVPacket *avpkt)
{
    DVDSubContext *ctx = avctx->priv_data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    AVSubtitle *sub = data;
    int appended = 0;
    int is_menu;

    if (ctx->buf_size) {
        int ret = append_to_cached_buf(avctx, buf, buf_size);
        if (ret < 0) {
            *data_size = 0;
            return ret;
        }
        buf = ctx->buf;
        buf_size = ctx->buf_size;
        appended = 1;
    }

    is_menu = decode_dvd_subtitles(ctx, sub, buf, buf_size);
    if (is_menu == AVERROR(EAGAIN)) {
        *data_size = 0;
        return appended ? 0 : append_to_cached_buf(avctx, buf, buf_size);
    }

    if (is_menu < 0) {
        ctx->buf_size = 0;
    no_subtitle:
        reset_rects(sub);
        *data_size = 0;

        return buf_size;
    }
    if (!is_menu && find_smallest_bounding_rectangle(ctx, sub) == 0)
        goto no_subtitle;

    if (ctx->forced_subs_only && !(sub->rects[0]->flags & AV_SUBTITLE_FLAG_FORCED))
        goto no_subtitle;
    ctx->buf_size = 0;
    *data_size = 1;
    return buf_size;
}
