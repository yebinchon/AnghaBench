
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ int32_t ;
struct TYPE_8__ {int width; int height; int member_0; } ;
typedef TYPE_1__ VC_RECT_T ;
struct TYPE_9__ {int member_1; int member_2; int member_0; } ;
typedef TYPE_2__ VC_DISPMANX_ALPHA_T ;
struct TYPE_10__ {int width; int height; int element; } ;
typedef TYPE_3__ EGL_DISPMANX_WINDOW_T ;
typedef int DISPMANX_UPDATE_HANDLE_T ;
typedef int DISPMANX_ELEMENT_HANDLE_T ;
typedef int DISPMANX_DISPLAY_HANDLE_T ;


 int DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS ;
 int DISPMANX_NO_ROTATE ;
 int DISPMANX_PROTECTION_NONE ;
 scalar_t__ graphics_get_display_size (int ,int*,int*) ;
 int vc_dispmanx_display_open (int) ;
 int vc_dispmanx_element_add (int ,int ,int,TYPE_1__*,int ,TYPE_1__*,int ,TYPE_2__*,int *,int ) ;
 int vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (int ) ;

__attribute__((used)) static int create_native_window(EGL_DISPMANX_WINDOW_T *native_win)
{
   int32_t status = 0;
   DISPMANX_DISPLAY_HANDLE_T disp;
   DISPMANX_ELEMENT_HANDLE_T elem;
   DISPMANX_UPDATE_HANDLE_T update;
   VC_DISPMANX_ALPHA_T alpha = {DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, 255, 0};
   VC_RECT_T src_rect = {0};
   VC_RECT_T dest_rect = {0};
   uint32_t display_width, display_height;
   uint32_t disp_num = 0;
   uint32_t layer_num = 0;

   status = graphics_get_display_size(0, &display_width, &display_height);
   if (status != 0)
      return status;


   display_width = 1280;
   display_height = 720;
   dest_rect.width = display_width;
   dest_rect.height = display_height;
   src_rect.width = display_width << 16;
   src_rect.height = display_height << 16;

   disp = vc_dispmanx_display_open(disp_num);
   update = vc_dispmanx_update_start(0);
   elem = vc_dispmanx_element_add(update, disp, layer_num, &dest_rect, 0,
         &src_rect, DISPMANX_PROTECTION_NONE, &alpha, ((void*)0), DISPMANX_NO_ROTATE);

   native_win->element = elem;
   native_win->width = display_width;
   native_win->height = display_height;
   vc_dispmanx_update_submit_sync(update);

   return 0;
}
