
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int r ;
struct TYPE_2__ {int command; int key; } ;
typedef TYPE_1__ mach_voucher_attr_recipe_data_t ;
typedef int mach_voucher_attr_raw_recipe_array_t ;
typedef scalar_t__ mach_port_t ;
typedef int kern_return_t ;


 scalar_t__ MACH_PORT_NULL ;
 int MACH_VOUCHER_ATTR_ATM_CREATE ;
 int MACH_VOUCHER_ATTR_KEY_ATM ;
 int T_ASSERT_MACH_SUCCESS (int ,char*,unsigned int) ;
 int host_create_mach_voucher (int ,int ,int,scalar_t__*) ;
 int mach_host_self () ;

__attribute__((used)) static mach_port_t get_atm_voucher(void)
{
 mach_voucher_attr_recipe_data_t r = {
  .key = MACH_VOUCHER_ATTR_KEY_ATM,
  .command = MACH_VOUCHER_ATTR_ATM_CREATE
 };
 mach_port_t port = MACH_PORT_NULL;
 kern_return_t kr = host_create_mach_voucher(mach_host_self(),
                                             (mach_voucher_attr_raw_recipe_array_t)&r,
                                             sizeof(r), &port);
 T_ASSERT_MACH_SUCCESS(kr, "Create ATM voucher: 0x%x", (unsigned int)port);

 return port;
}
