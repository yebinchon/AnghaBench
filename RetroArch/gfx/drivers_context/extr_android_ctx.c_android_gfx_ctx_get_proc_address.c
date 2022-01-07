
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gfx_ctx_proc_t ;





 int android_api ;
 int * egl_get_proc_address (char const*) ;

__attribute__((used)) static gfx_ctx_proc_t android_gfx_ctx_get_proc_address(const char *symbol)
{
   switch (android_api)
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
