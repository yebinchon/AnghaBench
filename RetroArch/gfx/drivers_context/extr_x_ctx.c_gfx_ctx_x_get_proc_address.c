
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gfx_ctx_proc_t ;
typedef int GLubyte ;





 int * glXGetProcAddress (int const*) ;
 int x_api ;

__attribute__((used)) static gfx_ctx_proc_t gfx_ctx_x_get_proc_address(const char *symbol)
{
   switch (x_api)
   {
      case 129:
      case 128:



         break;

      case 130:
      default:
         break;
   }

   return ((void*)0);
}
