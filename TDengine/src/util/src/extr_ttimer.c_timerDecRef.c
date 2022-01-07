
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refCount; } ;
typedef TYPE_1__ tmr_obj_t ;


 scalar_t__ atomic_sub_fetch_8 (int *,int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void timerDecRef(tmr_obj_t* timer) {
  if (atomic_sub_fetch_8(&timer->refCount, 1) == 0) {
    free(timer);
  }
}
