
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ V4L2Context ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;

__attribute__((used)) static inline int v4l2_type_supported(V4L2Context *ctx)
{
    return ctx->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ||
        ctx->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ||
        ctx->type == V4L2_BUF_TYPE_VIDEO_CAPTURE ||
        ctx->type == V4L2_BUF_TYPE_VIDEO_OUTPUT;
}
