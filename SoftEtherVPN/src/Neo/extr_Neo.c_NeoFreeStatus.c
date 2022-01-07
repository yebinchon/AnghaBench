
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NEO_STATUS ;


 int NeoZero (int *,int) ;

void NeoFreeStatus(NEO_STATUS *s)
{

 if (s == ((void*)0))
 {
  return;
 }


 NeoZero(s, sizeof(NEO_STATUS));
}
