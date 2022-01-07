
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* KernelVersion; void* KernelName; void* OsVersion; void* OsVendorName; void* OsProductName; void* OsSystemName; int OsServicePack; int OsType; } ;
typedef TYPE_1__ OS_INFO ;


 void* CopyStr (void*) ;

void CopyOsInfo(OS_INFO *dst, OS_INFO *info)
{

 if (info == ((void*)0) || dst == ((void*)0))
 {
  return;
 }

 dst->OsType = info->OsType;
 dst->OsServicePack = info->OsServicePack;
 dst->OsSystemName = CopyStr(info->OsSystemName);
 dst->OsProductName = CopyStr(info->OsProductName);
 dst->OsVendorName = CopyStr(info->OsVendorName);
 dst->OsVersion = CopyStr(info->OsVersion);
 dst->KernelName = CopyStr(info->KernelName);
 dst->KernelVersion = CopyStr(info->KernelVersion);
}
