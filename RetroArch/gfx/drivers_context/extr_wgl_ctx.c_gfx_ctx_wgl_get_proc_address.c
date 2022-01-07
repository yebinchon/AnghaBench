
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gfx_ctx_proc_t ;
typedef int HINSTANCE ;



 int GetProcAddress (int ,char const*) ;
 scalar_t__ dll_handle ;
 int wglGetProcAddress (char const*) ;
 int win32_api ;

__attribute__((used)) static gfx_ctx_proc_t gfx_ctx_wgl_get_proc_address(const char *symbol)
{
   switch (win32_api)
   {
      case 128:







         break;
      default:
         break;
   }




   return ((void*)0);

}
