
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef int SOCK ;
typedef int IP ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int * NewUDPEx2 (scalar_t__,int,int *) ;
 scalar_t__ RAND_UDP_PORT_DEFAULT_NUM_RETRY ;
 scalar_t__ RAND_UDP_PORT_END ;
 scalar_t__ RAND_UDP_PORT_START ;
 scalar_t__ READ_UINT (int *) ;
 int SHA1_SIZE ;
 int Sha1 (int *,int ,int ) ;
 int WriteBuf (TYPE_1__*,void*,scalar_t__) ;
 int WriteBufInt (TYPE_1__*,scalar_t__) ;

SOCK *NewUDPEx2Rand(bool ipv6, IP *ip, void *rand_seed, UINT rand_seed_size, UINT num_retry)
{
 UINT i;

 if (rand_seed == ((void*)0) || rand_seed_size == 0)
 {
  return ((void*)0);
 }
 if (num_retry == 0)
 {
  num_retry = RAND_UDP_PORT_DEFAULT_NUM_RETRY;
 }

 for (i = 0; i < (num_retry + 1);i++)
 {
  BUF *buf = NewBuf();
  UCHAR hash[SHA1_SIZE];
  UINT port = 0;
  SOCK *s;

  WriteBuf(buf, rand_seed, rand_seed_size);
  WriteBufInt(buf, i);

  Sha1(hash, buf->Buf, buf->Size);

  FreeBuf(buf);

  port = READ_UINT(hash);

  port = RAND_UDP_PORT_START + (port % (RAND_UDP_PORT_END - RAND_UDP_PORT_START));

  s = NewUDPEx2(port, ipv6, ip);

  if (s != ((void*)0))
  {
   return s;
  }
 }

 return NewUDPEx2(0, ipv6, ip);
}
