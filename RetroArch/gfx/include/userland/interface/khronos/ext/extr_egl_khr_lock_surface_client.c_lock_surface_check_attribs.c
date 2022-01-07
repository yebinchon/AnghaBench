
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int EGLint ;


 int EGL_FALSE ;


 int EGL_NONE ;
 int EGL_READ_SURFACE_BIT_KHR ;
 int EGL_TRUE ;
 int EGL_WRITE_SURFACE_BIT_KHR ;

__attribute__((used)) static bool lock_surface_check_attribs(const EGLint *attrib_list, bool *preserve_pixels, uint32_t *lock_usage_hint)
{
   if (!attrib_list)
      return EGL_TRUE;

   while (1) {
      int name = *attrib_list++;
      if (name == EGL_NONE)
         return EGL_TRUE;
      else {
         int value = *attrib_list++;
         switch (name) {
         case 128:
            *preserve_pixels = value ? 1 : 0;
            break;
         case 129:
            if (value & ~(EGL_READ_SURFACE_BIT_KHR | EGL_WRITE_SURFACE_BIT_KHR))
               return EGL_FALSE;

            *lock_usage_hint = value;
            break;
         default:
            return EGL_FALSE;
         }
      }
   }
}
