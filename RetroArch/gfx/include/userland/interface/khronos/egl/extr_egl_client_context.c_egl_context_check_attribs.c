
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
typedef int EGLBoolean ;



 int EGL_FALSE ;

 int EGL_TRUE ;

EGLBoolean egl_context_check_attribs(const EGLint *attrib_list, EGLint max_version, EGLint *version)
{
   if (!attrib_list)
      return EGL_TRUE;

   while (1) {
      switch (*attrib_list++) {
      case 129:
      {
         EGLint value = *attrib_list++;

         if (value < 1 || value > max_version)
            return EGL_FALSE;
         else
            *version = value;

         break;
      }
      case 128:
         return EGL_TRUE;
      default:
         return EGL_FALSE;
      }
   }
}
