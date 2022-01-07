
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int LIST ;


 int AddInt64 (int *,int ) ;
 int IsInt64InList (int *,int ) ;

void AddInt64Distinct(LIST *o, UINT64 i)
{

 if (o == ((void*)0))
 {
  return;
 }

 if (IsInt64InList(o, i) == 0)
 {
  AddInt64(o, i);
 }
}
