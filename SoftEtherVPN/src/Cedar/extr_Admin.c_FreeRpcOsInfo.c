
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int KernelVersion; int KernelName; int OsVersion; int OsVendorName; int OsProductName; int OsSystemName; } ;
typedef TYPE_1__ OS_INFO ;


 int Free (int ) ;

void FreeRpcOsInfo(OS_INFO *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t->OsSystemName);
 Free(t->OsProductName);
 Free(t->OsVendorName);
 Free(t->OsVersion);
 Free(t->KernelName);
 Free(t->KernelVersion);
}
