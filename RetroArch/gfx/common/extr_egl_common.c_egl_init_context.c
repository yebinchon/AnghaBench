
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor; int major; int config; scalar_t__ dpy; } ;
typedef TYPE_1__ egl_ctx_data_t ;
typedef scalar_t__ (* egl_accept_config_cb_t ) (void*,scalar_t__,int ) ;
typedef int EGLint ;
typedef int EGLenum ;
typedef scalar_t__ EGLDisplay ;
typedef int EGLConfig ;


 scalar_t__ EGL_NO_DISPLAY ;
 int RARCH_ERR (char*) ;
 int RARCH_LOG (char*,int,int) ;
 int eglChooseConfig (scalar_t__,int const*,int *,int,int*) ;
 int eglGetConfigs (scalar_t__,int *,int ,int*) ;
 int eglInitialize (scalar_t__,int*,int*) ;
 int free (int *) ;
 int g_egl_major ;
 int g_egl_minor ;
 scalar_t__ get_egl_display (int ,void*) ;
 scalar_t__ malloc (int) ;

bool egl_init_context(egl_ctx_data_t *egl,
      EGLenum platform,
      void *display_data,
      EGLint *major, EGLint *minor,
      EGLint *count, const EGLint *attrib_ptr,
      egl_accept_config_cb_t cb)
{
   EGLint i;
   EGLConfig *configs = ((void*)0);
   EGLint matched = 0;
   int config_index = -1;
   EGLDisplay dpy = get_egl_display(platform, display_data);

   if (dpy == EGL_NO_DISPLAY)
   {
      RARCH_ERR("[EGL]: Couldn't get EGL display.\n");
      return 0;
   }

   egl->dpy = dpy;

   if (!eglInitialize(egl->dpy, major, minor))
      return 0;

   RARCH_LOG("[EGL]: EGL version: %d.%d\n", *major, *minor);

   if (!eglGetConfigs(egl->dpy, ((void*)0), 0, count) || *count < 1)
   {
      RARCH_ERR("[EGL]: No configs to choose from.\n");
      return 0;
   }

   configs = (EGLConfig*)malloc(*count * sizeof(*configs));
   if (!configs)
      return 0;

   if (!eglChooseConfig(egl->dpy, attrib_ptr,
            configs, *count, &matched) || !matched)
   {
      RARCH_ERR("[EGL]: No EGL configs with appropriate attributes.\n");
      return 0;
   }

   for (i = 0; i < *count; i++)
   {
      if (!cb || cb(display_data, egl->dpy, configs[i]))
      {
         egl->config = configs[i];
         break;
      }
   }

   free(configs);

   if (i == *count)
   {
      RARCH_ERR("[EGL]: No EGL config found which satifies requirements.\n");
      return 0;
   }

   egl->major = g_egl_major;
   egl->minor = g_egl_minor;

   return 1;
}
