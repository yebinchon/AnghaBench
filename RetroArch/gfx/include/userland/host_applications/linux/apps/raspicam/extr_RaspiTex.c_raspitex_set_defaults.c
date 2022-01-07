
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int close; int destroy_native_window; int gl_term; int capture; int redraw; int update_model; int gl_init; int create_native_window; } ;
struct TYPE_6__ {int opacity; TYPE_1__ ops; int scene_id; int height; int width; void* v_egl_image; void* u_egl_image; void* y_egl_image; void* egl_image; int context; int surface; int display; int version_minor; int version_major; } ;
typedef TYPE_2__ RASPITEX_STATE ;


 int DEFAULT_HEIGHT ;
 int DEFAULT_WIDTH ;
 int EGL_NO_CONTEXT ;
 int EGL_NO_DISPLAY ;
 void* EGL_NO_IMAGE_KHR ;
 int EGL_NO_SURFACE ;
 int RASPITEX_SCENE_SQUARE ;
 int RASPITEX_VERSION_MAJOR ;
 int RASPITEX_VERSION_MINOR ;
 int memset (TYPE_2__*,int ,int) ;
 int raspitexutil_capture_bgra ;
 int raspitexutil_close ;
 int raspitexutil_create_native_window ;
 int raspitexutil_destroy_native_window ;
 int raspitexutil_gl_init_1_0 ;
 int raspitexutil_gl_term ;
 int raspitexutil_redraw ;
 int raspitexutil_update_model ;

void raspitex_set_defaults(RASPITEX_STATE *state)
{
   memset(state, 0, sizeof(*state));
   state->version_major = RASPITEX_VERSION_MAJOR;
   state->version_minor = RASPITEX_VERSION_MINOR;
   state->display = EGL_NO_DISPLAY;
   state->surface = EGL_NO_SURFACE;
   state->context = EGL_NO_CONTEXT;
   state->egl_image = EGL_NO_IMAGE_KHR;
   state->y_egl_image = EGL_NO_IMAGE_KHR;
   state->u_egl_image = EGL_NO_IMAGE_KHR;
   state->v_egl_image = EGL_NO_IMAGE_KHR;
   state->opacity = 255;
   state->width = DEFAULT_WIDTH;
   state->height = DEFAULT_HEIGHT;
   state->scene_id = RASPITEX_SCENE_SQUARE;

   state->ops.create_native_window = raspitexutil_create_native_window;
   state->ops.gl_init = raspitexutil_gl_init_1_0;
   state->ops.update_model = raspitexutil_update_model;
   state->ops.redraw = raspitexutil_redraw;
   state->ops.capture = raspitexutil_capture_bgra;
   state->ops.gl_term = raspitexutil_gl_term;
   state->ops.destroy_native_window = raspitexutil_destroy_native_window;
   state->ops.close = raspitexutil_close;
}
