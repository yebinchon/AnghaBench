
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ disp; } ;
typedef TYPE_1__ RASPITEX_STATE ;


 scalar_t__ DISPMANX_NO_HANDLE ;
 int VCOS_FUNCTION ;
 int vc_dispmanx_display_close (scalar_t__) ;
 int vcos_log_trace (char*,int ) ;

void raspitexutil_destroy_native_window(RASPITEX_STATE *raspitex_state)
{
   vcos_log_trace("%s", VCOS_FUNCTION);
   if (raspitex_state->disp != DISPMANX_NO_HANDLE)
   {
      vc_dispmanx_display_close(raspitex_state->disp);
      raspitex_state->disp = DISPMANX_NO_HANDLE;
   }
}
