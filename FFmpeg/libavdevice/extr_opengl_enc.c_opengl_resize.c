
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int window_width; int window_height; scalar_t__ no_window; scalar_t__ inited; } ;
typedef TYPE_1__ OpenGLContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*) ;
 int avdevice_dev_to_app_control_message (TYPE_2__*,int ,int *,int ) ;
 int opengl_draw (TYPE_2__*,int *,int,int ) ;
 int opengl_prepare_vertex (TYPE_2__*) ;

__attribute__((used)) static int opengl_resize(AVFormatContext *h, int width, int height)
{
    int ret = 0;
    OpenGLContext *opengl = h->priv_data;
    opengl->window_width = width;
    opengl->window_height = height;
    if (opengl->inited) {
        if (opengl->no_window &&
            (ret = avdevice_dev_to_app_control_message(h, AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER, ((void*)0) , 0)) < 0) {
            av_log(opengl, AV_LOG_ERROR, "Application failed to prepare window buffer.\n");
            goto end;
        }
        if ((ret = opengl_prepare_vertex(h)) < 0)
            goto end;
        ret = opengl_draw(h, ((void*)0), 1, 0);
    }
  end:
    return ret;
}
