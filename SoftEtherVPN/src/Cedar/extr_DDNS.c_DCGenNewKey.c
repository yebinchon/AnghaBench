
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int rand ;
typedef int hash ;
typedef int UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 int GetCurrentMachineIpProcessHash (int*) ;
 TYPE_1__* NewBuf () ;
 int Rand (int*,int) ;
 int SHA1_SIZE ;
 int Sha1 (int*,int ,int ) ;
 int SystemTime64 () ;
 int Tick64 () ;
 int TickHighres64 () ;
 int WriteBuf (TYPE_1__*,int*,int) ;
 int WriteBufInt64 (TYPE_1__*,int ) ;

void DCGenNewKey(UCHAR *key)
{
 BUF *b;
 UINT64 tick;
 UCHAR hash[SHA1_SIZE];
 UCHAR rand[SHA1_SIZE];
 UINT i;

 if (key == ((void*)0))
 {
  return;
 }

 b = NewBuf();

 Rand(rand, sizeof(rand));
 WriteBuf(b, rand, sizeof(rand));

 tick = TickHighres64();
 WriteBufInt64(b, tick);

 tick = Tick64();
 WriteBufInt64(b, tick);

 tick = SystemTime64();
 WriteBufInt64(b, tick);

 GetCurrentMachineIpProcessHash(hash);
 WriteBuf(b, hash, sizeof(hash));

 Sha1(key, b->Buf, b->Size);
 Rand(rand, sizeof(rand));

 for (i = 0;i < SHA1_SIZE;i++)
 {
  key[i] = key[i] ^ rand[i];
 }

 FreeBuf(b);
}
