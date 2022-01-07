
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_6__ {TYPE_1__* package; } ;
struct TYPE_8__ {TYPE_2__ lcpu; } ;
struct TYPE_7__ {scalar_t__ nLThreadsPerPackage; } ;
struct TYPE_5__ {scalar_t__ num_idle; } ;


 TYPE_4__* current_cpu_datap () ;
 scalar_t__ get_interrupt_level () ;
 TYPE_3__ topoParms ;

void ml_get_power_state(boolean_t *icp, boolean_t *pidlep) {
 *icp = (get_interrupt_level() != 0);




 *pidlep = (current_cpu_datap()->lcpu.package->num_idle == topoParms.nLThreadsPerPackage);
}
