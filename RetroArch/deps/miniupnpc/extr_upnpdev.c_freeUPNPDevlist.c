
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct UPNPDev {struct UPNPDev* pNext; } ;


 int free (struct UPNPDev*) ;

void freeUPNPDevlist(struct UPNPDev * devlist)
{
 struct UPNPDev * next;
 while(devlist)
 {
  next = devlist->pNext;
  free(devlist);
  devlist = next;
 }
}
