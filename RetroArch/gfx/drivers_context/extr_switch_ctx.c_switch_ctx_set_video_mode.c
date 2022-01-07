
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {scalar_t__ height; int width; } ;
struct TYPE_4__ {int refresh_rate; int width; scalar_t__ height; int win; int egl; TYPE_1__ native_window; } ;
typedef TYPE_2__ switch_ctx_data_t ;
typedef int EGLint ;




 int eglGetError () ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,int ) ;
 int egl_report_error () ;
 int nwindowSetCrop (int ,int ,scalar_t__,int ,int) ;
 int printf (char*,int) ;
 int switch_ctx_destroy (void*) ;
 int switch_ctx_get_video_size (void*,int *,scalar_t__*) ;

__attribute__((used)) static bool switch_ctx_set_video_mode(void *data,
                                      video_frame_info_t *video_info,
                                      unsigned width, unsigned height,
                                      bool fullscreen)
{

    static const EGLint contextAttributeList[] =
        {
            129, 2,
            128};

    switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

    switch_ctx_get_video_size(data, &ctx_nx->width, &ctx_nx->height);

    ctx_nx->native_window.width = ctx_nx->width;
    ctx_nx->native_window.height = ctx_nx->height;

    ctx_nx->refresh_rate = 60;
    nwindowSetCrop(ctx_nx->win, 0, 1080 - ctx_nx->height, ctx_nx->width, 1080);

    return 1;

error:
    printf("[NXGL]: EGL error: %d.\n", eglGetError());
    switch_ctx_destroy(data);

    return 0;
}
