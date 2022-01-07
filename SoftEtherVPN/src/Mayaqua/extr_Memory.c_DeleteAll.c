
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_reserved; int p; scalar_t__ num_item; } ;
typedef TYPE_1__ LIST ;


 int INIT_NUM_RESERVED ;
 int ReAlloc (int ,int) ;

void DeleteAll(LIST *o)
{

 if (o == ((void*)0))
 {
  return;
 }

 o->num_item = 0;
 o->num_reserved = INIT_NUM_RESERVED;
 o->p = ReAlloc(o->p, sizeof(void *) * INIT_NUM_RESERVED);
}
