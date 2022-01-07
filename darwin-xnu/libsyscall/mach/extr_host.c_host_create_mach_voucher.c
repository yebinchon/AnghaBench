
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_voucher_attr_recipe_size_t ;
typedef int mach_voucher_attr_raw_recipe_array_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int MACH_SEND_INVALID_DEST ;
 int _kernelrpc_host_create_mach_voucher (int ,int ,int ,int *) ;
 int host_create_mach_voucher_trap (int ,int ,int ,int *) ;

kern_return_t
host_create_mach_voucher(mach_port_name_t host,
                         mach_voucher_attr_raw_recipe_array_t recipes,
                         mach_voucher_attr_recipe_size_t recipesCnt,
                         mach_port_name_t *voucher)
{
 kern_return_t rv;

 rv = host_create_mach_voucher_trap(host, recipes, recipesCnt, voucher);



 if (rv == ((1 << 24) | 70))
  rv = MACH_SEND_INVALID_DEST;






 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_host_create_mach_voucher(host, recipes, recipesCnt, voucher);

 return rv;
}
