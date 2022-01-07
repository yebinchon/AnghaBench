
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_7__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_9__ {TYPE_2__ pix; TYPE_1__ pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_10__ {int name; int type; struct v4l2_format format; } ;
typedef TYPE_4__ V4L2Context ;


 int AV_LOG_DEBUG ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 int av_log (int ,int ,char*,int ,int ,int ,int ,int ) ;
 int logger (TYPE_4__*) ;
 int v4l2_get_height (struct v4l2_format*) ;
 int v4l2_get_width (struct v4l2_format*) ;

__attribute__((used)) static inline unsigned int v4l2_resolution_changed(V4L2Context *ctx, struct v4l2_format *fmt2)
{
    struct v4l2_format *fmt1 = &ctx->format;
    int ret = V4L2_TYPE_IS_MULTIPLANAR(ctx->type) ?
        fmt1->fmt.pix_mp.width != fmt2->fmt.pix_mp.width ||
        fmt1->fmt.pix_mp.height != fmt2->fmt.pix_mp.height
        :
        fmt1->fmt.pix.width != fmt2->fmt.pix.width ||
        fmt1->fmt.pix.height != fmt2->fmt.pix.height;

    if (ret)
        av_log(logger(ctx), AV_LOG_DEBUG, "%s changed (%dx%d) -> (%dx%d)\n",
            ctx->name,
            v4l2_get_width(fmt1), v4l2_get_height(fmt1),
            v4l2_get_width(fmt2), v4l2_get_height(fmt2));

    return ret;
}
