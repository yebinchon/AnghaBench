
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rand_data ;
typedef int now ;
typedef int UINT64 ;
typedef int UCHAR ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int Rand (int*,int) ;
 int SHA1_SIZE ;
 int Sha0 (int*,int ,int ) ;
 int SystemTime64 () ;
 int WriteBuf (TYPE_1__*,int*,int) ;

void GenMacAddress(UCHAR *mac)
{
 UCHAR rand_data[32];
 UINT64 now;
 BUF *b;
 UCHAR hash[SHA1_SIZE];

 if (mac == ((void*)0))
 {
  return;
 }


 now = SystemTime64();


 Rand(rand_data, sizeof(rand_data));


 b = NewBuf();
 WriteBuf(b, &now, sizeof(now));
 WriteBuf(b, rand_data, sizeof(rand_data));


 Sha0(hash, b->Buf, b->Size);


 mac[0] = 0x5E;
 mac[1] = hash[0];
 mac[2] = hash[1];
 mac[3] = hash[2];
 mac[4] = hash[3];
 mac[5] = hash[4];

 FreeBuf(b);
}
