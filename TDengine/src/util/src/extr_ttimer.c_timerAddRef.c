
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refCount; } ;
typedef TYPE_1__ tmr_obj_t ;


 int atomic_add_fetch_8 (int *,int) ;

__attribute__((used)) static void timerAddRef(tmr_obj_t* timer) { atomic_add_fetch_8(&timer->refCount, 1); }
