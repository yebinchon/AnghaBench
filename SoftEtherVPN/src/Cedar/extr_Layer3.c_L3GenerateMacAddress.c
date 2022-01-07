
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_10__ {int Size; int Buf; } ;
struct TYPE_9__ {int* MacAddress; int IpAddress; int * HubName; TYPE_1__* Switch; } ;
struct TYPE_8__ {int * Name; } ;
typedef TYPE_2__ L3IF ;
typedef TYPE_3__ BUF ;


 int Copy (int*,int *,int) ;
 int FreeBuf (TYPE_3__*) ;
 int GenMacAddress (int*) ;
 TYPE_3__* NewBuf () ;
 int SHA1_SIZE ;
 int Sha0 (int *,int ,int ) ;
 int StrLen (int *) ;
 int WriteBuf (TYPE_3__*,int *,int) ;

void L3GenerateMacAddress(L3IF *f)
{
 BUF *b;
 UCHAR hash[SHA1_SIZE];

 if (f == ((void*)0))
 {
  return;
 }

 b = NewBuf();
 WriteBuf(b, f->Switch->Name, StrLen(f->Switch->Name));
 WriteBuf(b, f->HubName, StrLen(f->HubName));
 WriteBuf(b, &f->IpAddress, sizeof(f->IpAddress));

 GenMacAddress(f->MacAddress);
 Sha0(hash, b->Buf, b->Size);
 Copy(f->MacAddress + 2, hash, 4);
 f->MacAddress[1] = 0xA3;
 FreeBuf(b);
}
