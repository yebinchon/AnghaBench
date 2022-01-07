
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int AddInt (int *,int ) ;
 int IsIntInList (int *,int ) ;

void AddIntDistinct(LIST *o, UINT i)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (IsIntInList(o, i) == 0)
 {
  AddInt(o, i);
 }
}
