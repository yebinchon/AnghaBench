
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_reserved; void** p; scalar_t__ num_item; int lock; } ;
typedef TYPE_1__ SL_LIST ;


 int SL_INIT_NUM_RESERVED ;
 int SlNewLock () ;
 scalar_t__ SlZeroMalloc (int) ;

SL_LIST *SlNewList()
{
 SL_LIST *o;

 o = (SL_LIST *)SlZeroMalloc(sizeof(SL_LIST));

 o->lock = SlNewLock();

 o->num_item = 0;
 o->num_reserved = SL_INIT_NUM_RESERVED;

 o->p = (void **)SlZeroMalloc(sizeof(void *) * o->num_reserved);

 return o;
}
