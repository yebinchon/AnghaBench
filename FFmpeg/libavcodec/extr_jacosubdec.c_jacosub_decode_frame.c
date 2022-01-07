
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int str; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {char* data; scalar_t__ size; } ;
struct TYPE_14__ {scalar_t__ num_rects; } ;
struct TYPE_13__ {int readorder; } ;
typedef TYPE_1__ FFASSDecoderContext ;
typedef TYPE_2__ AVSubtitle ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;
typedef TYPE_5__ AVBPrint ;


 int JSS_MAX_LINESIZE ;
 int av_bprint_finalize (TYPE_5__*,int *) ;
 int av_bprint_init (TYPE_5__*,int ,int ) ;
 int ff_ass_add_rect (TYPE_2__*,int ,int ,int ,int *,int *) ;
 int jacosub_to_ass (TYPE_4__*,TYPE_5__*,char const*) ;
 char* jss_skip_whitespace (char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int jacosub_decode_frame(AVCodecContext *avctx,
                                void *data, int *got_sub_ptr, AVPacket *avpkt)
{
    int ret;
    AVSubtitle *sub = data;
    const char *ptr = avpkt->data;
    FFASSDecoderContext *s = avctx->priv_data;

    if (avpkt->size <= 0)
        goto end;

    if (*ptr) {
        AVBPrint buffer;


        ptr = jss_skip_whitespace(ptr);
        ptr = strchr(ptr, ' '); if (!ptr) goto end; ptr++;
        ptr = strchr(ptr, ' '); if (!ptr) goto end; ptr++;

        av_bprint_init(&buffer, JSS_MAX_LINESIZE, JSS_MAX_LINESIZE);
        jacosub_to_ass(avctx, &buffer, ptr);
        ret = ff_ass_add_rect(sub, buffer.str, s->readorder++, 0, ((void*)0), ((void*)0));
        av_bprint_finalize(&buffer, ((void*)0));
        if (ret < 0)
            return ret;
    }

end:
    *got_sub_ptr = sub->num_rects > 0;
    return avpkt->size;
}
