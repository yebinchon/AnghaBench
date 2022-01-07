
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; scalar_t__ sequence_ok; } ;
typedef TYPE_1__ PayloadContext ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int EAGAIN ;
 int av_log (int *,int ,char*,char const*) ;
 int ffio_free_dyn_buf (int *) ;

__attribute__((used)) static int vp8_broken_sequence(AVFormatContext *ctx, PayloadContext *vp8,
                               const char *msg)
{
    vp8->sequence_ok = 0;
    av_log(ctx, AV_LOG_WARNING, "%s", msg);
    ffio_free_dyn_buf(&vp8->data);
    return AVERROR(EAGAIN);
}
