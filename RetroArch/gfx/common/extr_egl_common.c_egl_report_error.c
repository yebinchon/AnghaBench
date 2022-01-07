
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
 int RARCH_ERR (char*,unsigned int,char const*) ;
 int eglGetError () ;

void egl_report_error(void)
{
   EGLint error = eglGetError();
   const char *str = ((void*)0);
   switch (error)
   {
      case 128:
         str = "EGL_SUCCESS";
         break;

      case 140:
         str = "EGL_BAD_ACCESS";
         break;

      case 139:
         str = "EGL_BAD_ALLOC";
         break;

      case 138:
         str = "EGL_BAD_ATTRIBUTE";
         break;

      case 137:
         str = "EGL_BAD_CONFIG";
         break;

      case 136:
         str = "EGL_BAD_CONTEXT";
         break;

      case 135:
         str = "EGL_BAD_CURRENT_SURFACE";
         break;

      case 134:
         str = "EGL_BAD_DISPLAY";
         break;

      case 133:
         str = "EGL_BAD_MATCH";
         break;

      case 132:
         str = "EGL_BAD_NATIVE_PIXMAP";
         break;

      case 131:
         str = "EGL_BAD_NATIVE_WINDOW";
         break;

      case 130:
         str = "EGL_BAD_PARAMETER";
         break;

      case 129:
         str = "EGL_BAD_SURFACE";
         break;

      default:
         str = "Unknown";
         break;
   }

   RARCH_ERR("[EGL]: #0x%x, %s\n", (unsigned)error, str);
}
