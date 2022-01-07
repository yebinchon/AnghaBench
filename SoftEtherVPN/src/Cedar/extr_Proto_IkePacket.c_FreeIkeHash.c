
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_HASH ;


 int Free (int *) ;

void FreeIkeHash(IKE_HASH *h)
{

 if (h == ((void*)0))
 {
  return;
 }

 Free(h);
}
