
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char wchar_t ;
typedef int machine_name ;
typedef int exe_path ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int LIST ;
typedef char IP ;
typedef TYPE_1__ BUF ;


 int Free (char*) ;
 int FreeBuf (TYPE_1__*) ;
 int FreeHostIPAddressList (int *) ;
 int GetExeNameW (char*,int) ;
 int * GetHostIPAddressList () ;
 int GetMachineHostName (char*,int) ;
 char* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 char* MsRegReadStr (int ,char*,char*) ;
 TYPE_1__* NewBuf () ;
 int REG_LOCAL_MACHINE ;
 int Sha1 (void*,int ,int ) ;
 int StrSize (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int UniStrSize (char*) ;
 int UniStrUpper (char*) ;
 int UniTrim (char*) ;
 int WriteBuf (TYPE_1__*,char*,int) ;

void GetCurrentMachineIpProcessHashInternal(void *hash)
{
 BUF *b;
 LIST *ip_list;
 char machine_name[MAX_SIZE];
 wchar_t exe_path[MAX_PATH];
 char *product_id = ((void*)0);

 if (hash == ((void*)0))
 {
  return;
 }
 b = NewBuf();

 GetMachineHostName(machine_name, sizeof(machine_name));
 Trim(machine_name);
 StrUpper(machine_name);

 GetExeNameW(exe_path, sizeof(exe_path));
 UniTrim(exe_path);
 UniStrUpper(exe_path);

 WriteBuf(b, machine_name, StrSize(machine_name));
 WriteBuf(b, exe_path, UniStrSize(exe_path));
 WriteBuf(b, product_id, StrSize(product_id));

 ip_list = GetHostIPAddressList();
 if (ip_list != ((void*)0))
 {
  UINT i;
  for (i = 0;i < LIST_NUM(ip_list);i++)
  {
   IP *ip = LIST_DATA(ip_list, i);

   WriteBuf(b, ip, sizeof(IP));
  }
 }
 FreeHostIPAddressList(ip_list);

 Sha1(hash, b->Buf, b->Size);

 FreeBuf(b);

 Free(product_id);
}
