
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NAT ;


 int NiInitDefaultConfig (int *) ;

void NiInitConfig(NAT *n)
{

 if (n == ((void*)0))
 {
  return;
 }


 NiInitDefaultConfig(n);
}
