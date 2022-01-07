
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd_addr {int dummy; } ;
typedef int err_t ;


 int ERR_OK ;
 int hci_write_link_policy_settings (struct bd_addr*,int) ;

err_t acl_conn_complete(void *arg,struct bd_addr *bdaddr)
{



 hci_write_link_policy_settings(bdaddr,0x0005);
 return ERR_OK;
}
