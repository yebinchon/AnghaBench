
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int machine_name ;
typedef int hash ;
typedef int exe_path ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef int SOCK ;
typedef int IP ;
typedef TYPE_1__ BUF ;


 int Free (char*) ;
 int FreeBuf (TYPE_1__*) ;
 int GetExeNameW (char*,int) ;
 int GetMachineHostName (char*,int) ;
 int MAX_PATH ;
 int MAX_SIZE ;
 char* MsRegReadStr (int ,char*,char*) ;
 TYPE_1__* NewBuf () ;
 int * NewUDPEx2Rand (int,int *,int *,int,int ) ;
 int REG_LOCAL_MACHINE ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int ) ;
 int StrSize (char*) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int UniStrSize (char*) ;
 int UniStrUpper (char*) ;
 int UniTrim (char*) ;
 int WriteBuf (TYPE_1__*,char*,int ) ;
 int WriteBufChar (TYPE_1__*,int ) ;

SOCK *NewUDPEx2RandMachineAndExePath(bool ipv6, IP *ip, UINT num_retry, UCHAR rand_port_id)
{
 BUF *b;
 char machine_name[MAX_SIZE];
 wchar_t exe_path[MAX_PATH];
 char *product_id = ((void*)0);
 UCHAR hash[SHA1_SIZE];
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
 WriteBufChar(b, rand_port_id);


 Sha1(hash, b->Buf, b->Size);

 FreeBuf(b);

 Free(product_id);

 return NewUDPEx2Rand(ipv6, ip, hash, sizeof(hash), num_retry);
}
