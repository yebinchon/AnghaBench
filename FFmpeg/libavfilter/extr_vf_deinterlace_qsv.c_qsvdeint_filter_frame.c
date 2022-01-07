
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mfxFrameSurface1 ;
struct TYPE_3__ {int * dst; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int QSVDEINT_MORE_OUTPUT ;
 int av_frame_free (int **) ;
 int process_frame (int *,int *,int *) ;
 int submit_frame (int *,int *,int **) ;

__attribute__((used)) static int qsvdeint_filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;

    mfxFrameSurface1 *surf_in;
    int ret;

    ret = submit_frame(ctx, in, &surf_in);
    if (ret < 0) {
        av_frame_free(&in);
        return ret;
    }

    do {
        ret = process_frame(ctx, in, surf_in);
        if (ret < 0)
            return ret;
    } while (ret == QSVDEINT_MORE_OUTPUT);

    return 0;
}
