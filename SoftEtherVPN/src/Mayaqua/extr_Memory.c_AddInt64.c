
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int LIST ;


 int Add (int *,int ) ;
 int Clone (int *,int) ;

void AddInt64(LIST *o, UINT64 i)
{

 if (o == ((void*)0))
 {
  return;
 }

 Add(o, Clone(&i, sizeof(UINT64)));
}
