
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd_addr {int dummy; } ;


 int LOG (char*) ;

void lp_connect_ind(struct bd_addr *bdaddr)
{
 LOG("lp_connect_ind\n");
}
