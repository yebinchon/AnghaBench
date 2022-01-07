
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_item; } ;
typedef TYPE_1__ SL_LIST ;



void SlDeleteAll(SL_LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 o->num_item = 0;
}
