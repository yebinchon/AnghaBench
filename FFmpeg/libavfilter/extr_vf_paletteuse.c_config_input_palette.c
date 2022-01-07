
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int w; int h; int * dst; } ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int AVERROR (int ) ;
 int AVPALETTE_COUNT ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*,int,int,int,int) ;

__attribute__((used)) static int config_input_palette(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;

    if (inlink->w * inlink->h != AVPALETTE_COUNT) {
        av_log(ctx, AV_LOG_ERROR,
               "Palette input must contain exactly %d pixels. "
               "Specified input has %dx%d=%d pixels\n",
               AVPALETTE_COUNT, inlink->w, inlink->h,
               inlink->w * inlink->h);
        return AVERROR(EINVAL);
    }
    return 0;
}
