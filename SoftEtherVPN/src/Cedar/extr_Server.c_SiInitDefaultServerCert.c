
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int K ;


 int FreeK (int *) ;
 int FreeX (int *) ;
 int SetCedarCert (int ,int *,int *) ;
 int SiGenerateDefaultCert (int **,int **) ;

void SiInitDefaultServerCert(SERVER *s)
{
 X *x = ((void*)0);
 K *k = ((void*)0);

 if (s == ((void*)0))
 {
  return;
 }


 SiGenerateDefaultCert(&x, &k);


 SetCedarCert(s->Cedar, x, k);

 FreeX(x);
 FreeK(k);
}
