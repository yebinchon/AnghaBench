
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* KernelVersion; struct TYPE_3__* KernelName; struct TYPE_3__* OsVersion; struct TYPE_3__* OsVendorName; struct TYPE_3__* OsProductName; struct TYPE_3__* OsSystemName; } ;


 int Free (TYPE_1__*) ;
 TYPE_1__* os_info ;

void FreeOsInfo()
{
 if (os_info == ((void*)0))
 {
  return;
 }

 Free(os_info->OsSystemName);
 Free(os_info->OsProductName);
 Free(os_info->OsVendorName);
 Free(os_info->OsVersion);
 Free(os_info->KernelName);
 Free(os_info->KernelVersion);
 Free(os_info);

 os_info = ((void*)0);
}
