
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int Clone (int *,int) ;
 int Insert (int *,int ) ;

void InsertInt(LIST *o, UINT i)
{

 if (o == ((void*)0))
 {
  return;
 }

 Insert(o, Clone(&i, sizeof(UINT)));
}
