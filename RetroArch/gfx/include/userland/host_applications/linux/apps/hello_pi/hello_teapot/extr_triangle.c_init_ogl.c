
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_8__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ VC_RECT_T ;
struct TYPE_10__ {scalar_t__ display; scalar_t__ context; int screen_width; int screen_height; int surface; } ;
struct TYPE_9__ {int width; int height; int element; } ;
typedef int EGLint ;
typedef TYPE_2__ EGL_DISPMANX_WINDOW_T ;
typedef int EGLConfig ;
typedef scalar_t__ EGLBoolean ;
typedef int DISPMANX_UPDATE_HANDLE_T ;
typedef int DISPMANX_ELEMENT_HANDLE_T ;
typedef int DISPMANX_DISPLAY_HANDLE_T ;
typedef TYPE_3__ CUBE_STATE_T ;


 int DISPMANX_PROTECTION_NONE ;


 int EGL_DEFAULT_DISPLAY ;

 scalar_t__ EGL_FALSE ;


 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 int EGL_NO_SURFACE ;




 int GL_AMBIENT ;
 int GL_CULL_FACE ;
 int GL_DEPTH_TEST ;
 int GL_LEQUAL ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int assert (int) ;
 scalar_t__ eglCreateContext (scalar_t__,int ,scalar_t__,int *) ;
 int eglCreateWindowSurface (scalar_t__,int ,TYPE_2__*,int *) ;
 scalar_t__ eglGetDisplay (int ) ;
 scalar_t__ eglInitialize (scalar_t__,int *,int *) ;
 scalar_t__ eglMakeCurrent (scalar_t__,int ,int ,scalar_t__) ;
 scalar_t__ eglSaneChooseConfigBRCM (scalar_t__,int const*,int *,int,int*) ;
 int glClearColor (float,float,float,float) ;
 int glClearDepthf (double) ;
 int glDepthFunc (int ) ;
 int glEnable (int ) ;
 int glLightfv (int ,int ,float*) ;
 scalar_t__ graphics_get_display_size (int ,int*,int*) ;
 int vc_dispmanx_display_open (int ) ;
 int vc_dispmanx_element_add (int ,int ,int ,TYPE_1__*,int ,TYPE_1__*,int ,int ,int ,int ) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static void init_ogl(CUBE_STATE_T *state)
{
   int32_t success = 0;
   EGLBoolean result;
   EGLint num_config;

   static EGL_DISPMANX_WINDOW_T nativewindow;

   DISPMANX_ELEMENT_HANDLE_T dispman_element;
   DISPMANX_DISPLAY_HANDLE_T dispman_display;
   DISPMANX_UPDATE_HANDLE_T dispman_update;
   VC_RECT_T dst_rect;
   VC_RECT_T src_rect;

   static const EGLint attribute_list[] =
   {
      131, 8,
      133, 8,
      135, 8,
      136, 8,
      134, 16,
      130, 4,
      129, 128,
      132
   };

   EGLConfig config;


   state->display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
   assert(state->display!=EGL_NO_DISPLAY);


   result = eglInitialize(state->display, ((void*)0), ((void*)0));
   assert(EGL_FALSE != result);



   result = eglSaneChooseConfigBRCM(state->display, attribute_list, &config, 1, &num_config);
   assert(EGL_FALSE != result);


   state->context = eglCreateContext(state->display, config, EGL_NO_CONTEXT, ((void*)0));
   assert(state->context!=EGL_NO_CONTEXT);


   success = graphics_get_display_size(0 , &state->screen_width, &state->screen_height);
   assert( success >= 0 );

   dst_rect.x = 0;
   dst_rect.y = 0;
   dst_rect.width = state->screen_width;
   dst_rect.height = state->screen_height;

   src_rect.x = 0;
   src_rect.y = 0;
   src_rect.width = state->screen_width << 16;
   src_rect.height = state->screen_height << 16;

   dispman_display = vc_dispmanx_display_open( 0 );
   dispman_update = vc_dispmanx_update_start( 0 );

   dispman_element = vc_dispmanx_element_add ( dispman_update, dispman_display,
      0 , &dst_rect, 0 ,
      &src_rect, DISPMANX_PROTECTION_NONE, 0 , 0 , 0 );

   nativewindow.element = dispman_element;
   nativewindow.width = state->screen_width;
   nativewindow.height = state->screen_height;
   vc_dispmanx_update_submit_sync( dispman_update );

   state->surface = eglCreateWindowSurface( state->display, config, &nativewindow, ((void*)0) );
   assert(state->surface != EGL_NO_SURFACE);


   result = eglMakeCurrent(state->display, state->surface, state->surface, state->context);
   assert(EGL_FALSE != result);


   glClearColor((0.3922f+7*0.5f)/8, (0.1176f+7*0.5f)/8, (0.5882f+7*0.5f)/8, 1.0f);


   glEnable(GL_CULL_FACE);

   glEnable(GL_DEPTH_TEST);
   glClearDepthf(1.0);
   glDepthFunc(GL_LEQUAL);

   float noAmbient[] = {1.0f, 1.0f, 1.0f, 1.0f};
   glLightfv(GL_LIGHT0, GL_AMBIENT, noAmbient);
   glEnable(GL_LIGHT0);
   glEnable(GL_LIGHTING);
}
