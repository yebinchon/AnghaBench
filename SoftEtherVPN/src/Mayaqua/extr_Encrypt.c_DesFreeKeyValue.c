
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* KeySchedule; } ;
typedef TYPE_1__ DES_KEY_VALUE ;


 int Free (TYPE_1__*) ;

void DesFreeKeyValue(DES_KEY_VALUE *v)
{

 if (v == ((void*)0))
 {
  return;
 }

 Free(v->KeySchedule);
 Free(v);
}
