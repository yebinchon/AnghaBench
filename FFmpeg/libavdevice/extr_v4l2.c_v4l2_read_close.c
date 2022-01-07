
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct video_data {scalar_t__ buffers; int fd; int buffers_queued; } ;
struct TYPE_4__ {struct video_data* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;


 int AV_LOG_WARNING ;
 scalar_t__ atomic_load (int *) ;
 int av_log (TYPE_1__*,int ,char*) ;
 int mmap_close (struct video_data*) ;
 int v4l2_close (int ) ;

__attribute__((used)) static int v4l2_read_close(AVFormatContext *ctx)
{
    struct video_data *s = ctx->priv_data;

    if (atomic_load(&s->buffers_queued) != s->buffers)
        av_log(ctx, AV_LOG_WARNING, "Some buffers are still owned by the caller on "
               "close.\n");

    mmap_close(s);

    v4l2_close(s->fd);
    return 0;
}
