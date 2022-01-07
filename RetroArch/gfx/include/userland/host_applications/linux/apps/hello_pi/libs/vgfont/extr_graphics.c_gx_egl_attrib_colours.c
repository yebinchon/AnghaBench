
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GRAPHICS_RESOURCE_TYPE_T ;
typedef int EGLint ;
 int countof (int*) ;
 int vcos_assert (int ) ;

__attribute__((used)) static int gx_egl_attrib_colours(EGLint *attribs, GRAPHICS_RESOURCE_TYPE_T res_type)
{
   int i, n;
   static EGLint rgba[] = {131, 132, 133, 134};
   static uint8_t rgb565[] = {5,6,5,0};
   static uint8_t rgb888[] = {8,8,8,0};
   static uint8_t rgb32a[] = {8,8,8,8};

   uint8_t *sizes = ((void*)0);

   switch (res_type)
   {
      case 130:
         sizes = rgb565;
         break;
      case 129:
         sizes = rgb888;
         break;
      case 128:
         sizes = rgb32a;
         break;
      default:
         vcos_assert(0);
         return -1;
   }
   for (n=0, i=0; i<countof(rgba); i++)
   {
      attribs[n++] = rgba[i];
      attribs[n++] = sizes[i];
   }
   return n;
}
