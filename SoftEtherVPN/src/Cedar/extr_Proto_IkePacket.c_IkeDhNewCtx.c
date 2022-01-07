
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int DhId; } ;
typedef TYPE_1__ IKE_DH ;
typedef int DH_CTX ;


 int * DhNew2048 () ;
 int * DhNew3072 () ;
 int * DhNew4096 () ;
 int * DhNewGroup1 () ;
 int * DhNewGroup2 () ;
 int * DhNewGroup5 () ;







DH_CTX *IkeDhNewCtx(IKE_DH *d)
{

 if (d == ((void*)0))
 {
  return ((void*)0);
 }

 switch (d->DhId)
 {
 case 133:
  return DhNewGroup1();

 case 131:
  return DhNewGroup2();

 case 128:
  return DhNewGroup5();

 case 132:
  return DhNew2048();

 case 130:
  return DhNew3072();

 case 129:
  return DhNew4096();
 }

 return ((void*)0);
}
