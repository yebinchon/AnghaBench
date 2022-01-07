
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int name ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int Copy (int*,int*,int) ;
 int FreeBuf (TYPE_1__*) ;
 int GetMachineHostName (char*,int) ;
 int MAX_SIZE ;
 int MsGetCurrentProcessId () ;
 TYPE_1__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha1 (int*,int ,int ) ;
 int WriteBufInt (TYPE_1__*,int ) ;
 int WriteBufStr (TYPE_1__*,char*) ;

void NullGenerateMacAddress(UCHAR *mac, UINT id, UINT seq)
{
 UCHAR hash[SHA1_SIZE];
 char name[MAX_SIZE];
 BUF *b;

 if (mac == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 WriteBufInt(b, id);
 WriteBufInt(b, seq);
 GetMachineHostName(name, sizeof(name));



 WriteBufStr(b, name);

 Sha1(hash, b->Buf, b->Size);

 FreeBuf(b);

 Copy(mac, hash, 6);
 mac[0] = 0x7E;
}
