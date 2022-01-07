
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HCI_POWER_OFF ;
 int bt_send_cmd_ptr (int ,int ) ;
 int btstack_set_power_mode_ptr ;

__attribute__((used)) static void btstack_thread_stop(void *data)
{
   (void)data;
   bt_send_cmd_ptr(btstack_set_power_mode_ptr, HCI_POWER_OFF);
}
