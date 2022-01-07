
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_debugids; } ;


 int FALSE ;
 int TRUE ;
 int kperf_init () ;
 scalar_t__ kperf_kdebug_action ;
 int kperf_kdebug_active ;
 TYPE_1__* kperf_kdebug_filter ;

__attribute__((used)) static void
kperf_kdebug_update(void)
{
 int err;

 if ((err = kperf_init())) {
  return;
 }

 if (kperf_kdebug_action != 0 &&
     kperf_kdebug_filter->n_debugids != 0)
 {
  kperf_kdebug_active = TRUE;
 } else {
  kperf_kdebug_active = FALSE;
 }
}
