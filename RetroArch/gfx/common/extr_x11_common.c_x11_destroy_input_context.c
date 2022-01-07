
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * XIM ;
typedef int * XIC ;


 int XCloseIM (int *) ;
 int XDestroyIC (int *) ;

void x11_destroy_input_context(XIM *xim, XIC *xic)
{
   if (*xic)
   {
      XDestroyIC(*xic);
      *xic = ((void*)0);
   }

   if (*xim)
   {
      XCloseIM(*xim);
      *xim = ((void*)0);
   }
}
