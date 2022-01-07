
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KernelVersion; int KernelName; int OsVersion; int OsVendorName; int OsProductName; int OsSystemName; int OsServicePack; int OsType; } ;
typedef int PACK ;
typedef TYPE_1__ OS_INFO ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcOsInfo(PACK *p, OS_INFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "OsType", t->OsType);
 PackAddInt(p, "OsServicePack", t->OsServicePack);
 PackAddStr(p, "OsSystemName", t->OsSystemName);
 PackAddStr(p, "OsProductName", t->OsProductName);
 PackAddStr(p, "OsVendorName", t->OsVendorName);
 PackAddStr(p, "OsVersion", t->OsVersion);
 PackAddStr(p, "KernelName", t->KernelName);
 PackAddStr(p, "KernelVersion", t->KernelVersion);
}
