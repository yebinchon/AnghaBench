
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int SEC_OBJ ;
typedef int LIST ;


 int Add (int *,int ) ;
 int CloneSecObject (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int * NewListFast (int *) ;

LIST *CloneEnumSecObject(LIST *o)
{
 LIST *ret;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 ret = NewListFast(((void*)0));
 for (i = 0;i < LIST_NUM(o);i++)
 {
  SEC_OBJ *obj = LIST_DATA(o, i);

  Add(ret, CloneSecObject(obj));
 }

 return ret;
}
