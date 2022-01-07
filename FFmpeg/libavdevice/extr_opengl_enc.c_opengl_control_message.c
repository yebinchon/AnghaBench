
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int height; int width; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int window_height; int window_width; } ;
typedef TYPE_1__ OpenGLContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVDeviceRect ;


 int AVERROR (int ) ;


 int EINVAL ;
 int ENOSYS ;
 int opengl_resize (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int opengl_control_message(AVFormatContext *h, int type, void *data, size_t data_size)
{
    OpenGLContext *opengl = h->priv_data;
    switch(type) {
    case 128:
        if (data) {
            AVDeviceRect *message = data;
            return opengl_resize(h, message->width, message->height);
        }
        return AVERROR(EINVAL);
    case 129:
        return opengl_resize(h, opengl->window_width, opengl->window_height);
    }
    return AVERROR(ENOSYS);
}
