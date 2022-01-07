
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int Add (int *,void*) ;
 int * NewListFast (int *) ;

LIST *NewListSingle(void *p)
{
 LIST *o = NewListFast(((void*)0));

 Add(o, p);

 return o;
}
