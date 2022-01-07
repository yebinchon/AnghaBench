
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH_CTX ;


 int DhFree (int *) ;

void IkeDhFreeCtx(DH_CTX *dh)
{

 if (dh == ((void*)0))
 {
  return;
 }

 DhFree(dh);
}
