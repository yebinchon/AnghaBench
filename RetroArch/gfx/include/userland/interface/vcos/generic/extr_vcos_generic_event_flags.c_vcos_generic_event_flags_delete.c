
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ VCOS_EVENT_FLAGS_T ;


 int vcos_mutex_delete (int *) ;

void vcos_generic_event_flags_delete(VCOS_EVENT_FLAGS_T *flags)
{
   vcos_mutex_delete(&flags->lock);
}
