
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_address_t ;


 int sharedpage_rw_addr ;

vm_address_t
_get_commpage_priv_address(void)
{
 return sharedpage_rw_addr;
}
