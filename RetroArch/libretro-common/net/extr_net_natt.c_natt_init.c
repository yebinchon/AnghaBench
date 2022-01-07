
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct UPNPUrls {int dummy; } ;
struct UPNPDev {int descURL; struct UPNPDev* pNext; int st; } ;
struct IGDdatas {int dummy; } ;


 int GetUPNPUrls (int *,int *,int ,int ) ;
 int data ;
 int free (char*) ;
 int freeUPNPDevlist (struct UPNPDev*) ;
 int memset (int *,int ,int) ;
 scalar_t__ miniwget (int ,int*,int ,int *) ;
 int parserootdesc (char*,int,int *) ;
 scalar_t__ strstr (int ,char*) ;
 struct UPNPDev* upnpDiscover (int,int *,int *,int ,int ,int,int*) ;
 int urls ;

void natt_init(void)
{
}
