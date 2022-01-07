
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Info; } ;
typedef TYPE_1__ SECURE ;


 int FreeSecInfoMemory (int *) ;

void FreeSecInfo(SECURE *sec)
{

 if (sec == ((void*)0))
 {
  return;
 }
 if (sec->Info == ((void*)0))
 {
  return;
 }

 FreeSecInfoMemory(sec->Info);
 sec->Info = ((void*)0);
}
