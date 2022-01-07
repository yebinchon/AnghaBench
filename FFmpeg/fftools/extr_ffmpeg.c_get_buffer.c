
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* opaque; } ;
struct TYPE_11__ {scalar_t__ format; } ;
struct TYPE_10__ {int (* hwaccel_get_buffer ) (TYPE_3__*,TYPE_2__*,int) ;scalar_t__ hwaccel_pix_fmt; } ;
typedef TYPE_1__ InputStream ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int avcodec_default_get_buffer2 (TYPE_3__*,TYPE_2__*,int) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int) ;

__attribute__((used)) static int get_buffer(AVCodecContext *s, AVFrame *frame, int flags)
{
    InputStream *ist = s->opaque;

    if (ist->hwaccel_get_buffer && frame->format == ist->hwaccel_pix_fmt)
        return ist->hwaccel_get_buffer(s, frame, flags);

    return avcodec_default_get_buffer2(s, frame, flags);
}
