
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int param ;
struct TYPE_3__ {int in_3d; } ;
typedef TYPE_1__ TV_HDMI_ON_PREFERRED_PARAM_T ;


 int VCOS_FUNCTION ;
 int VC_HTOV32 (int ) ;
 int VC_TV_HDMI_ON_PREFERRED ;
 int tvservice_send_command (int ,TYPE_1__*,int,int) ;
 int vcos_log_trace (char*,int ) ;

__attribute__((used)) static int vc_tv_hdmi_power_on_preferred_actual(uint32_t in_3d) {
   TV_HDMI_ON_PREFERRED_PARAM_T param;
   int success;

   vcos_log_trace("[%s]", VCOS_FUNCTION);
   param.in_3d = VC_HTOV32(in_3d);

   success = tvservice_send_command( VC_TV_HDMI_ON_PREFERRED, &param, sizeof(param), 1);
   return success;
}
