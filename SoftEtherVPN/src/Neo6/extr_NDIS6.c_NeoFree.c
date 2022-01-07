
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NdisFreeMemory (void*,int ,int ) ;

void NeoFree(void *p)
{

 if (p == ((void*)0))
 {
  return;
 }


 NdisFreeMemory(p, 0, 0);
}
