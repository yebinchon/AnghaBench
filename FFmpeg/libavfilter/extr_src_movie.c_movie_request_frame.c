
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * src; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int FFMIN (int,int ) ;
 unsigned int FF_OUTLINK_IDX (TYPE_1__*) ;
 int movie_push_frame (int *,unsigned int) ;

__attribute__((used)) static int movie_request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    unsigned out_id = FF_OUTLINK_IDX(outlink);
    int ret;

    while (1) {
        ret = movie_push_frame(ctx, out_id);
        if (ret)
            return FFMIN(ret, 0);
    }
}
