
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LIST ;


 int Add (int *,int ) ;
 int Clone (int *,int) ;

void AddInt(LIST *o, UINT i)
{

 if (o == ((void*)0))
 {
  return;
 }

 Add(o, Clone(&i, sizeof(UINT)));
}
