
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int name ;
typedef int UINT64 ;
struct TYPE_9__ {int Size; int Buf; } ;
struct TYPE_8__ {char OsType; char* KernelName; char* KernelVersion; char* OsProductName; char OsServicePack; char* OsSystemName; char* OsVendorName; char* OsVersion; } ;
typedef TYPE_1__ OS_INFO ;
typedef TYPE_2__ BUF ;


 int FreeBuf (TYPE_2__*) ;
 int GetHostIPAddressListHash () ;
 int GetMachineName (char*,int) ;
 TYPE_1__* GetOsInfo () ;
 TYPE_2__* NewBuf () ;
 int Sha0 (void*,int ,int ) ;
 int StrLen (char*) ;
 int WriteBuf (TYPE_2__*,char*,int) ;
 int WriteBufInt64 (TYPE_2__*,int ) ;

void GenerateMachineUniqueHash(void *data)
{
 BUF *b;
 char name[64];
 OS_INFO *osinfo;
 UINT64 iphash = 0;

 if (data == ((void*)0))
 {
  return;
 }

 iphash = GetHostIPAddressListHash();

 b = NewBuf();
 GetMachineName(name, sizeof(name));

 osinfo = GetOsInfo();

 WriteBuf(b, name, StrLen(name));

 WriteBufInt64(b, iphash);

 WriteBuf(b, &osinfo->OsType, sizeof(osinfo->OsType));
 WriteBuf(b, osinfo->KernelName, StrLen(osinfo->KernelName));
 WriteBuf(b, osinfo->KernelVersion, StrLen(osinfo->KernelVersion));
 WriteBuf(b, osinfo->OsProductName, StrLen(osinfo->OsProductName));
 WriteBuf(b, &osinfo->OsServicePack, sizeof(osinfo->OsServicePack));
 WriteBuf(b, osinfo->OsSystemName, StrLen(osinfo->OsSystemName));
 WriteBuf(b, osinfo->OsVendorName, StrLen(osinfo->OsVendorName));
 WriteBuf(b, osinfo->OsVersion, StrLen(osinfo->OsVersion));

 Sha0(data, b->Buf, b->Size);

 FreeBuf(b);
}
