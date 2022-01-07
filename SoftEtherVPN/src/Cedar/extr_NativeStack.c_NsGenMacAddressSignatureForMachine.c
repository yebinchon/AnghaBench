
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int machine_name ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (int *,int *,int) ;
 int FreeBuf (TYPE_1__*) ;
 int GetMachineHostName (char*,int) ;
 int MAX_SIZE ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int ) ;
 int StrUpper (char*) ;
 int Trim (char*) ;
 int WriteBuf (TYPE_1__*,int *,int) ;
 int WriteBufStr (TYPE_1__*,char*) ;

void NsGenMacAddressSignatureForMachine(UCHAR *dst_last_2, UCHAR *src_mac_addr_4)
{
 char machine_name[MAX_SIZE];
 BUF *b;
 UCHAR hash[SHA1_SIZE];

 if (dst_last_2 == ((void*)0) || src_mac_addr_4 == ((void*)0))
 {
  return;
 }

 GetMachineHostName(machine_name, sizeof(machine_name));

 Trim(machine_name);
 StrUpper(machine_name);

 b = NewBuf();
 WriteBuf(b, src_mac_addr_4, 4);
 WriteBufStr(b, machine_name);

 Sha1(hash, b->Buf, b->Size);

 FreeBuf(b);

 Copy(dst_last_2, hash, 2);
}
