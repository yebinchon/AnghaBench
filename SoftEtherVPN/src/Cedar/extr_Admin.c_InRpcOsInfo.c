
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {void* KernelVersion; void* KernelName; void* OsVersion; void* OsVendorName; void* OsProductName; void* OsSystemName; void* OsServicePack; void* OsType; } ;
typedef int PACK ;
typedef TYPE_1__ OS_INFO ;


 void* CopyStr (char*) ;
 int MAX_SIZE ;
 void* PackGetInt (int *,char*) ;
 scalar_t__ PackGetStr (int *,char*,char*,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcOsInfo(OS_INFO *t, PACK *p)
{
 char tmp[MAX_SIZE];

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(OS_INFO));
 t->OsType = PackGetInt(p, "OsType");
 t->OsServicePack = PackGetInt(p, "OsServicePack");
 if (PackGetStr(p, "OsSystemName", tmp, sizeof(tmp)))
 {
  t->OsSystemName = CopyStr(tmp);
 }
 if (PackGetStr(p, "OsProductName", tmp, sizeof(tmp)))
 {
  t->OsProductName = CopyStr(tmp);
 }
 if (PackGetStr(p, "OsVendorName", tmp, sizeof(tmp)))
 {
  t->OsVendorName = CopyStr(tmp);
 }
 if (PackGetStr(p, "OsVersion", tmp, sizeof(tmp)))
 {
  t->OsVersion = CopyStr(tmp);
 }
 if (PackGetStr(p, "KernelName", tmp, sizeof(tmp)))
 {
  t->KernelName = CopyStr(tmp);
 }
 if (PackGetStr(p, "KernelVersion", tmp, sizeof(tmp)))
 {
  t->KernelVersion = CopyStr(tmp);
 }
}
