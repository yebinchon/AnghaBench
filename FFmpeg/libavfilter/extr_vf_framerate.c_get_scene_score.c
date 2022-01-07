
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {double height; double width; int * linesize; int * data; } ;
struct TYPE_8__ {int bitdepth; double prev_mafd; int (* sad ) (int ,int ,int ,int ,double,double,scalar_t__*) ;} ;
typedef TYPE_1__ FrameRateContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterContext ;


 int FFMIN (double,double) ;
 double av_clipf (int ,int ,double) ;
 int emms_c () ;
 double fabs (double) ;
 int ff_dlog (TYPE_3__*,char*,...) ;
 int stub1 (int ,int ,int ,int ,double,double,scalar_t__*) ;

__attribute__((used)) static double get_scene_score(AVFilterContext *ctx, AVFrame *crnt, AVFrame *next)
{
    FrameRateContext *s = ctx->priv;
    double ret = 0;

    ff_dlog(ctx, "get_scene_score()\n");

    if (crnt->height == next->height &&
        crnt->width == next->width) {
        uint64_t sad;
        double mafd, diff;

        ff_dlog(ctx, "get_scene_score() process\n");
        s->sad(crnt->data[0], crnt->linesize[0], next->data[0], next->linesize[0], crnt->width, crnt->height, &sad);
        emms_c();
        mafd = (double)sad * 100.0 / (crnt->width * crnt->height) / (1 << s->bitdepth);
        diff = fabs(mafd - s->prev_mafd);
        ret = av_clipf(FFMIN(mafd, diff), 0, 100.0);
        s->prev_mafd = mafd;
    }
    ff_dlog(ctx, "get_scene_score() result is:%f\n", ret);
    return ret;
}
