
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ hv_volatile_state_t ;
struct TYPE_3__ {int * ids; } ;
struct TYPE_4__ {TYPE_1__ machine; } ;


 scalar_t__ HV_DEBUG_STATE ;
 TYPE_2__* current_thread () ;

int
hv_get_volatile_state(hv_volatile_state_t state) {
 int is_volatile = 0;


 if (state == HV_DEBUG_STATE) {
  is_volatile = (current_thread()->machine.ids != ((void*)0));
 }


 return is_volatile;
}
