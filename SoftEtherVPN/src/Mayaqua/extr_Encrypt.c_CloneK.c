
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int private_key; } ;
typedef TYPE_1__ K ;
typedef int BUF ;


 TYPE_1__* BufToK (int *,int ,int,int *) ;
 int FreeBuf (int *) ;
 int * KToBuf (TYPE_1__*,int,int *) ;

K *CloneK(K *k)
{
 BUF *b;
 K *ret;

 if (k == ((void*)0))
 {
  return ((void*)0);
 }

 b = KToBuf(k, 0, ((void*)0));
 if (b == ((void*)0))
 {
  return ((void*)0);
 }

 ret = BufToK(b, k->private_key, 0, ((void*)0));
 FreeBuf(b);

 return ret;
}
