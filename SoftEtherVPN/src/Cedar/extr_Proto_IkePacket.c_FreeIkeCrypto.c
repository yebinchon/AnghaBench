
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_CRYPTO ;


 int Free (int *) ;

void FreeIkeCrypto(IKE_CRYPTO *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 Free(c);
}
