
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EGLint ;
typedef int EGLenum ;
typedef int EGLBoolean ;


 int EGL_FALSE ;
 int EGL_NONE ;

 int EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR ;
 int EGL_UNSIGNALED_KHR ;

__attribute__((used)) static EGLBoolean egl_sync_check_attribs(const EGLint *attrib_list, EGLenum type,
      EGLint *condition, EGLint *threshold, EGLint *status)
{
   switch (type) {
   case 128:
      *condition = EGL_SYNC_PRIOR_COMMANDS_COMPLETE_KHR;
      *threshold = 0;
      *status = EGL_UNSIGNALED_KHR;
      break;
   default :
      *condition = EGL_NONE;
      *threshold = 0;
      *status = 0;
      break;
   }

   if (attrib_list) {
      while (1) {
         int name = *attrib_list++;
         if (name == EGL_NONE)
            break;
         else {
                               attrib_list++;
            switch (name) {
            default:
               return EGL_FALSE;
            }
         }
      }
   }

   return ((type == 128) || (type == 0));
}
