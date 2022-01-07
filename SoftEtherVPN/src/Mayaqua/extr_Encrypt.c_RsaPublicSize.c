
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Size; } ;
typedef int K ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* RsaPublicToBuf (int *) ;

UINT RsaPublicSize(K *k)
{
 BUF *b;
 UINT ret;

 b = RsaPublicToBuf(k);
 if (b == ((void*)0))
 {
  return 0;
 }

 ret = b->Size;

 FreeBuf(b);

 return ret;
}
