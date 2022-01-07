
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRAFFIC ;


 int Free (int *) ;

void FreeTraffic(TRAFFIC *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 Free(t);
}
