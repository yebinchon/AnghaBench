
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wps_registrar {scalar_t__ pbc; scalar_t__ selected_registrar; int cb_ctx; int (* set_sel_reg_cb ) (int ,scalar_t__,int ,int) ;TYPE_1__* wps; } ;
struct TYPE_2__ {int config_methods; } ;


 int DEV_PW_DEFAULT ;
 int DEV_PW_PUSHBUTTON ;
 int MSG_DEBUG ;
 int WPS_CONFIG_PHY_PUSHBUTTON ;
 int WPS_CONFIG_PUSHBUTTON ;
 int WPS_CONFIG_VIRT_PUSHBUTTON ;
 int stub1 (int ,scalar_t__,int ,int) ;
 int wpa_printf (int ,char*,scalar_t__,int,scalar_t__,int) ;
 int wps_set_pushbutton (int*,int) ;

__attribute__((used)) static void wps_cb_set_sel_reg(struct wps_registrar *reg)
{
 u16 methods = 0;
 if (reg->set_sel_reg_cb == ((void*)0))
  return;

 if (reg->selected_registrar) {
  methods = reg->wps->config_methods & ~WPS_CONFIG_PUSHBUTTON;




  if (reg->pbc)
   wps_set_pushbutton(&methods, reg->wps->config_methods);
 }

 wpa_printf(MSG_DEBUG, "WPS: wps_cb_set_sel_reg: sel_reg=%d "
     "config_methods=0x%x pbc=%d methods=0x%x",
     reg->selected_registrar, reg->wps->config_methods,
     reg->pbc, methods);

 reg->set_sel_reg_cb(reg->cb_ctx, reg->selected_registrar,
       reg->pbc ? DEV_PW_PUSHBUTTON : DEV_PW_DEFAULT,
       methods);
}
