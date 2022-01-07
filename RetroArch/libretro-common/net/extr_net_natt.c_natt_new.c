
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct natt_status {int dummy; } ;


 int memset (struct natt_status*,int ,int) ;

bool natt_new(struct natt_status *status)
{
   memset(status, 0, sizeof(struct natt_status));
   return 1;
}
