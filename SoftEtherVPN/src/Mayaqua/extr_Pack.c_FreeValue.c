
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* UniStr; struct TYPE_4__* Str; struct TYPE_4__* Data; } ;
typedef TYPE_1__ VALUE ;
typedef int UINT ;


 int Free (TYPE_1__*) ;






void FreeValue(VALUE *v, UINT type)
{

 if (v == ((void*)0))
 {
  return;
 }

 switch (type)
 {
 case 131:
 case 130:
  break;
 case 132:
  Free(v->Data);
  break;
 case 129:
  Free(v->Str);
  break;
 case 128:
  Free(v->UniStr);
  break;
 }


 Free(v);
}
