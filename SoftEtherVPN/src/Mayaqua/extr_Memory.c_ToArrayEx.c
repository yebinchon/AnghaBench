
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int CopyToArray (int *,void*) ;
 int LIST_NUM (int *) ;
 void* Malloc (int) ;
 void* MallocFast (int) ;

void *ToArrayEx(LIST *o, bool fast)
{
 void *p;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }


 if (fast == 0)
 {
  p = Malloc(sizeof(void *) * LIST_NUM(o));
 }
 else
 {
  p = MallocFast(sizeof(void *) * LIST_NUM(o));
 }

 CopyToArray(o, p);

 return p;
}
