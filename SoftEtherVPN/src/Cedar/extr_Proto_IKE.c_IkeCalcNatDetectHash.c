
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT64 ;
typedef int UINT ;
struct TYPE_16__ {int Size; int Buf; } ;
struct TYPE_15__ {int HashSize; } ;
struct TYPE_14__ {int * addr; int * ipv6_addr; } ;
typedef TYPE_1__ IP ;
typedef int IKE_SERVER ;
typedef TYPE_2__ IKE_HASH ;
typedef TYPE_3__ BUF ;


 int Endian16 (int ) ;
 int FreeBuf (TYPE_3__*) ;
 int IKE_MAX_HASH_SIZE ;
 int IkeHash (TYPE_2__*,int *,int ,int ) ;
 scalar_t__ IsIP6 (TYPE_1__*) ;
 TYPE_3__* MemToBuf (int *,int ) ;
 TYPE_3__* NewBuf () ;
 int WriteBuf (TYPE_3__*,int *,int) ;
 int WriteBufInt64 (TYPE_3__*,int ) ;

BUF *IkeCalcNatDetectHash(IKE_SERVER *ike, IKE_HASH *hash, UINT64 initiator_cookie, UINT64 responder_cookie, IP *ip, UINT port)
{
 BUF *b;
 USHORT us;
 USHORT hash_data[IKE_MAX_HASH_SIZE];

 if (ike == ((void*)0) || ip == ((void*)0) || hash == ((void*)0))
 {
  return NewBuf();
 }

 b = NewBuf();

 WriteBufInt64(b, initiator_cookie);
 WriteBufInt64(b, responder_cookie);

 if (IsIP6(ip))
 {
  WriteBuf(b, ip->ipv6_addr, sizeof(ip->ipv6_addr));
 }
 else
 {
  WriteBuf(b, ip->addr, sizeof(ip->addr));
 }

 us = Endian16((USHORT)port);

 WriteBuf(b, &us, sizeof(USHORT));

 IkeHash(hash, hash_data, b->Buf, b->Size);

 FreeBuf(b);

 return MemToBuf(hash_data, hash->HashSize);
}
