
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int p2p_dev_addr; scalar_t__ pbc; scalar_t__ selected_registrar; } ;


 int ETH_ALEN ;
 int os_memset (int ,int ,int ) ;
 int wps_registrar_remove_authorized_mac (struct wps_registrar*,int *) ;
 int wps_registrar_selected_registrar_changed (struct wps_registrar*) ;

__attribute__((used)) static void wps_registrar_stop_pbc(struct wps_registrar *reg)
{
 reg->selected_registrar = 0;
 reg->pbc = 0;
 os_memset(reg->p2p_dev_addr, 0, ETH_ALEN);
 wps_registrar_remove_authorized_mac(reg,
         (u8 *) "\xff\xff\xff\xff\xff\xff");
 wps_registrar_selected_registrar_changed(reg);
}
