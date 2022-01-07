
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_DH ;


 int Free (int *) ;

void FreeIkeDh(IKE_DH *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 Free(d);
}
