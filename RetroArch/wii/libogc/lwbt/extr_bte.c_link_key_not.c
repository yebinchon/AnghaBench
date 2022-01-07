
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct bd_addr {int dummy; } ;
typedef int err_t ;


 int hci_write_stored_link_key (struct bd_addr*,int *) ;

err_t link_key_not(void *arg,struct bd_addr *bdaddr,u8_t *key)
{

 return hci_write_stored_link_key(bdaddr,key);
}
