
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * priv; } ;
typedef TYPE_1__ vpx_codec_frame_buffer_t ;
typedef int AVBufferRef ;


 int av_buffer_unref (int **) ;

__attribute__((used)) static int release_frame_buffer(void *priv, vpx_codec_frame_buffer_t *fb)
{
    AVBufferRef *buf = fb->priv;
    av_buffer_unref(&buf);
    return 0;
}
