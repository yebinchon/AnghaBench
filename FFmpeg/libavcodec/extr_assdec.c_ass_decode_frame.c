
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int ass; int type; } ;
struct TYPE_7__ {scalar_t__ size; int data; } ;
struct TYPE_6__ {int num_rects; TYPE_3__** rects; } ;
typedef TYPE_1__ AVSubtitle ;
typedef TYPE_2__ AVPacket ;
typedef int AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int SUBTITLE_ASS ;
 TYPE_3__** av_malloc (int) ;
 TYPE_3__* av_mallocz (int) ;
 int av_strdup (int ) ;

__attribute__((used)) static int ass_decode_frame(AVCodecContext *avctx, void *data, int *got_sub_ptr,
                            AVPacket *avpkt)
{
    AVSubtitle *sub = data;

    if (avpkt->size <= 0)
        return avpkt->size;

    sub->rects = av_malloc(sizeof(*sub->rects));
    if (!sub->rects)
        return AVERROR(ENOMEM);
    sub->rects[0] = av_mallocz(sizeof(*sub->rects[0]));
    if (!sub->rects[0])
        return AVERROR(ENOMEM);
    sub->num_rects = 1;
    sub->rects[0]->type = SUBTITLE_ASS;
    sub->rects[0]->ass = av_strdup(avpkt->data);
    if (!sub->rects[0]->ass)
        return AVERROR(ENOMEM);
    *got_sub_ptr = 1;
    return avpkt->size;
}
