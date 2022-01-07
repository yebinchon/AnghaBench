
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int width; int height; int y; int x; int member_0; } ;
typedef TYPE_2__ VC_RECT_T ;
struct TYPE_11__ {int member_1; int opacity; int member_2; int member_0; } ;
typedef TYPE_3__ VC_DISPMANX_ALPHA_T ;
struct TYPE_9__ {int width; int height; scalar_t__ element; } ;
struct TYPE_12__ {int width; int height; scalar_t__ disp; TYPE_1__ win; int * native_window; int y; int x; int opacity; } ;
typedef TYPE_4__ RASPITEX_STATE ;
typedef int EGLNativeWindowType ;
typedef scalar_t__ DISPMANX_UPDATE_HANDLE_T ;
typedef scalar_t__ DISPMANX_ELEMENT_HANDLE_T ;


 int DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS ;
 scalar_t__ DISPMANX_NO_HANDLE ;
 int DISPMANX_NO_ROTATE ;
 int DISPMANX_PROTECTION_NONE ;
 int VCOS_FUNCTION ;
 scalar_t__ vc_dispmanx_display_open (int ) ;
 scalar_t__ vc_dispmanx_element_add (scalar_t__,scalar_t__,int ,TYPE_2__*,int ,TYPE_2__*,int ,TYPE_3__*,int *,int ) ;
 scalar_t__ vc_dispmanx_update_start (int ) ;
 int vc_dispmanx_update_submit_sync (scalar_t__) ;
 int vcos_log_error (char*) ;
 int vcos_log_trace (char*,int ,int ,int ,int,int,int ,int ,int,int) ;

int raspitexutil_create_native_window(RASPITEX_STATE *raspitex_state)
{
   VC_DISPMANX_ALPHA_T alpha = {DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, 255, 0};
   VC_RECT_T src_rect = {0};
   VC_RECT_T dest_rect = {0};
   uint32_t disp_num = 0;
   uint32_t layer_num = 0;
   DISPMANX_ELEMENT_HANDLE_T elem;
   DISPMANX_UPDATE_HANDLE_T update;

   alpha.opacity = raspitex_state->opacity;
   dest_rect.x = raspitex_state->x;
   dest_rect.y = raspitex_state->y;
   dest_rect.width = raspitex_state->width;
   dest_rect.height = raspitex_state->height;

   vcos_log_trace("%s: %d,%d,%d,%d %d,%d,0x%x,0x%x", VCOS_FUNCTION,
                  src_rect.x, src_rect.y, src_rect.width, src_rect.height,
                  dest_rect.x, dest_rect.y, dest_rect.width, dest_rect.height);

   src_rect.width = dest_rect.width << 16;
   src_rect.height = dest_rect.height << 16;

   raspitex_state->disp = vc_dispmanx_display_open(disp_num);
   if (raspitex_state->disp == DISPMANX_NO_HANDLE)
   {
      vcos_log_error("Failed to open display handle");
      goto error;
   }

   update = vc_dispmanx_update_start(0);
   if (update == DISPMANX_NO_HANDLE)
   {
      vcos_log_error("Failed to open update handle");
      goto error;
   }

   elem = vc_dispmanx_element_add(update, raspitex_state->disp, layer_num,
                                  &dest_rect, 0, &src_rect, DISPMANX_PROTECTION_NONE, &alpha, ((void*)0),
                                  DISPMANX_NO_ROTATE);
   if (elem == DISPMANX_NO_HANDLE)
   {
      vcos_log_error("Failed to create element handle");
      goto error;
   }

   raspitex_state->win.element = elem;
   raspitex_state->win.width = raspitex_state->width;
   raspitex_state->win.height = raspitex_state->height;
   vc_dispmanx_update_submit_sync(update);

   raspitex_state->native_window = (EGLNativeWindowType*) &raspitex_state->win;

   return 0;
error:
   return -1;
}
