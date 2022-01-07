
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int Add (int *,void*) ;
 scalar_t__ IsInList (int *,void*) ;

void AddDistinct(LIST *o, void *p)
{

 if (o == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 if (IsInList(o, p))
 {
  return;
 }

 Add(o, p);
}
