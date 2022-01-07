
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int height; int width; } ;
struct TYPE_3__ {int refresh_rate; TYPE_2__ native_window; int egl; int height; int width; } ;
typedef TYPE_1__ orbis_ctx_data_t ;
typedef int EGLint ;


 int ATTR_ORBISGL_HEIGHT ;
 int ATTR_ORBISGL_WIDTH ;


 int eglGetError () ;
 int egl_create_context (int *,int const*) ;
 int egl_create_surface (int *,TYPE_2__*) ;
 int egl_report_error () ;
 int orbis_ctx_destroy (void*) ;
 int printf (char*,int) ;

__attribute__((used)) static bool orbis_ctx_set_video_mode(void *data,
                                      video_frame_info_t *video_info,
                                      unsigned width, unsigned height,
                                      bool fullscreen)
{

    static const EGLint contextAttributeList[] =
        {
            129, 2,
            128};

    orbis_ctx_data_t *ctx_orbis = (orbis_ctx_data_t *)data;

    ctx_orbis->width = ATTR_ORBISGL_WIDTH;
    ctx_orbis->height = ATTR_ORBISGL_HEIGHT;

    ctx_orbis->native_window.width = ctx_orbis->width;
    ctx_orbis->native_window.height = ctx_orbis->height;

    ctx_orbis->refresh_rate = 60;
    return 1;

error:
    printf("[ctx_orbis]: EGL error: %d.\n", eglGetError());
    orbis_ctx_destroy(data);

    return 0;
}
