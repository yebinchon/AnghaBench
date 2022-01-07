
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int ptrdiff_t ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_8__ {scalar_t__ scd_method; double prev_mafd; double scd_threshold; int (* sad ) (int *,int ,int *,int ,int,int,scalar_t__*) ;TYPE_2__* frames; TYPE_4__ me_ctx; } ;
struct TYPE_7__ {TYPE_1__* avf; } ;
struct TYPE_6__ {int * linesize; int ** data; } ;
typedef TYPE_3__ MIContext ;
typedef TYPE_4__ AVMotionEstContext ;


 int FFMIN (double,double) ;
 scalar_t__ SCD_METHOD_FDIFF ;
 double av_clipf (int ,int ,double) ;
 int emms_c () ;
 double fabs (double) ;
 int stub1 (int *,int ,int *,int ,int,int,scalar_t__*) ;

__attribute__((used)) static int detect_scene_change(MIContext *mi_ctx)
{
    AVMotionEstContext *me_ctx = &mi_ctx->me_ctx;
    uint8_t *p1 = mi_ctx->frames[1].avf->data[0];
    ptrdiff_t linesize1 = mi_ctx->frames[1].avf->linesize[0];
    uint8_t *p2 = mi_ctx->frames[2].avf->data[0];
    ptrdiff_t linesize2 = mi_ctx->frames[2].avf->linesize[0];

    if (mi_ctx->scd_method == SCD_METHOD_FDIFF) {
        double ret = 0, mafd, diff;
        uint64_t sad;
        mi_ctx->sad(p1, linesize1, p2, linesize2, me_ctx->width, me_ctx->height, &sad);
        emms_c();
        mafd = (double) sad / (me_ctx->height * me_ctx->width * 3);
        diff = fabs(mafd - mi_ctx->prev_mafd);
        ret = av_clipf(FFMIN(mafd, diff), 0, 100.0);
        mi_ctx->prev_mafd = mafd;

        return ret >= mi_ctx->scd_threshold;
    }

    return 0;
}
