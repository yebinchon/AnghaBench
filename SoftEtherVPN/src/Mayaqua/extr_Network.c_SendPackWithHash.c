
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int Size; int * Buf; } ;
struct TYPE_8__ {scalar_t__ Type; int SecureMode; } ;
typedef TYPE_1__ SOCK ;
typedef int PACK ;
typedef TYPE_2__ BUF ;


 int Endian32 (int) ;
 int FreeBuf (TYPE_2__*) ;
 TYPE_2__* PackToBuf (int *) ;
 int SHA1_SIZE ;
 scalar_t__ SOCK_TCP ;
 int SendAdd (TYPE_1__*,int *,int) ;
 int SendNow (TYPE_1__*,int ) ;
 int Sha1 (int *,int *,int) ;

bool SendPackWithHash(SOCK *s, PACK *p)
{
 BUF *b;
 UINT sz;
 UCHAR hash[SHA1_SIZE];

 if (s == ((void*)0) || p == ((void*)0) || s->Type != SOCK_TCP)
 {
  return 0;
 }

 b = PackToBuf(p);
 sz = Endian32(b->Size);

 SendAdd(s, &sz, sizeof(UINT));
 SendAdd(s, b->Buf, b->Size);
 Sha1(hash, b->Buf, b->Size);
 SendAdd(s, hash, sizeof(hash));

 FreeBuf(b);

 return SendNow(s, s->SecureMode);
}
