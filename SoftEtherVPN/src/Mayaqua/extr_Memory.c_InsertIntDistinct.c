
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int InsertInt (int *,int ) ;
 int IsIntInList (int *,int ) ;

void InsertIntDistinct(LIST *o, UINT i)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (IsIntInList(o, i) == 0)
 {
  InsertInt(o, i);
 }
}
