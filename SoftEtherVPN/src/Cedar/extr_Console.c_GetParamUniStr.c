
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int * UniStrValue; } ;
typedef TYPE_1__ PARAM_VALUE ;
typedef int LIST ;


 TYPE_1__* FindParamValue (int *,char*) ;

wchar_t *GetParamUniStr(LIST *o, char *name)
{
 PARAM_VALUE *v;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 v = FindParamValue(o, name);
 if (v == ((void*)0))
 {
  return ((void*)0);
 }
 else
 {
  return v->UniStrValue;
 }
}
