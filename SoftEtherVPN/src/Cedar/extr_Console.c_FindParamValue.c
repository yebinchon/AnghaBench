
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {char* Name; } ;
typedef TYPE_1__ PARAM_VALUE ;
typedef int LIST ;


 TYPE_1__* Search (int *,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

PARAM_VALUE *FindParamValue(LIST *o, char *name)
{
 PARAM_VALUE t, *ret;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }
 if (name == ((void*)0))
 {
  name = "";
 }

 Zero(&t, sizeof(t));
 t.Name = name;

 ret = Search(o, &t);

 return ret;
}
