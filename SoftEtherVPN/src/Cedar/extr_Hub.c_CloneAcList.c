
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 int * NewAcList () ;
 int SetAcList (int *,int *) ;

LIST *CloneAcList(LIST *o)
{
 LIST *ret;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 ret = NewAcList();
 SetAcList(ret, o);

 return ret;
}
