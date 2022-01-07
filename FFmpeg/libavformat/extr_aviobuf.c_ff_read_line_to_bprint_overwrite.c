
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVBPrint ;


 scalar_t__ AVERROR (int ) ;
 int ENOMEM ;
 int av_bprint_clear (TYPE_1__*) ;
 int av_bprint_is_complete (TYPE_1__*) ;
 scalar_t__ ff_read_line_to_bprint (int *,TYPE_1__*) ;

int64_t ff_read_line_to_bprint_overwrite(AVIOContext *s, AVBPrint *bp)
{
    int64_t ret;

    av_bprint_clear(bp);
    ret = ff_read_line_to_bprint(s, bp);
    if (ret < 0)
        return ret;

    if (!av_bprint_is_complete(bp))
        return AVERROR(ENOMEM);

    return bp->len;
}
