
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int right; unsigned int left; unsigned int bottom; unsigned int top; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef int HINSTANCE ;





 int GetClientRect (int ,TYPE_1__*) ;
 int GetModuleHandle (int *) ;
 int VULKAN_WSI_WIN32 ;
 int create_gl_context (int ,int*) ;
 int g_win32_inited ;
 int vulkan_surface_create (int *,int ,int *,int *,unsigned int,unsigned int,int ) ;
 int win32_api ;
 int win32_interval ;
 int win32_vk ;

void create_graphics_context(HWND hwnd, bool *quit)
{
   switch (win32_api)
   {
      case 129:



         break;

      case 128:
      {
      }
      break;

      case 130:
      default:
         break;
   }
}
