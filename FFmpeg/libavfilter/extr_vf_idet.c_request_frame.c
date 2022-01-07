
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* src; } ;
struct TYPE_5__ {int eof; int next; int analyze_interlaced_flag_done; scalar_t__ cur; } ;
typedef TYPE_1__ IDETContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int * av_frame_clone (int ) ;
 int ff_request_frame (int ) ;
 int filter_frame (int ,int *) ;

__attribute__((used)) static int request_frame(AVFilterLink *link)
{
    AVFilterContext *ctx = link->src;
    IDETContext *idet = ctx->priv;
    int ret;

    if (idet->eof)
        return AVERROR_EOF;

    ret = ff_request_frame(link->src->inputs[0]);

    if (ret == AVERROR_EOF && idet->cur && !idet->analyze_interlaced_flag_done) {
        AVFrame *next = av_frame_clone(idet->next);

        if (!next)
            return AVERROR(ENOMEM);

        ret = filter_frame(link->src->inputs[0], next);
        idet->eof = 1;
    }

    return ret;
}
