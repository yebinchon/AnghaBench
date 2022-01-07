
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_requestbuffers {int count; int type; int memory; } ;
struct V4L2Plane_info {scalar_t__ length; scalar_t__ mm_addr; } ;
struct TYPE_7__ {int num_buffers; int name; TYPE_2__* buffers; int type; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_8__ {int num_planes; struct V4L2Plane_info* plane_info; } ;
typedef TYPE_2__ V4L2Buffer ;
struct TYPE_9__ {int fd; } ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_REQBUFS ;
 int av_err2str (int ) ;
 int av_log (int ,int ,char*,int ,int ) ;
 TYPE_5__* ctx_to_m2mctx (TYPE_1__*) ;
 int errno ;
 int ioctl (int ,int ,struct v4l2_requestbuffers*) ;
 int logger (TYPE_1__*) ;
 scalar_t__ munmap (scalar_t__,scalar_t__) ;

__attribute__((used)) static int v4l2_release_buffers(V4L2Context* ctx)
{
    struct v4l2_requestbuffers req = {
        .memory = V4L2_MEMORY_MMAP,
        .type = ctx->type,
        .count = 0,
    };
    int i, j;

    for (i = 0; i < ctx->num_buffers; i++) {
        V4L2Buffer *buffer = &ctx->buffers[i];

        for (j = 0; j < buffer->num_planes; j++) {
            struct V4L2Plane_info *p = &buffer->plane_info[j];
            if (p->mm_addr && p->length)
                if (munmap(p->mm_addr, p->length) < 0)
                    av_log(logger(ctx), AV_LOG_ERROR, "%s unmap plane (%s))\n", ctx->name, av_err2str(AVERROR(errno)));
        }
    }

    return ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_REQBUFS, &req);
}
