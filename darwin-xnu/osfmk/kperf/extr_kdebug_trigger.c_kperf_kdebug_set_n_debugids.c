
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ n_debugids; } ;


 int EINVAL ;
 scalar_t__ KPERF_KDEBUG_DEBUGIDS_MAX ;
 int kperf_init () ;
 TYPE_1__* kperf_kdebug_filter ;

int
kperf_kdebug_set_n_debugids(uint32_t n_debugids_in)
{
 int err;

 if ((err = kperf_init())) {
  return EINVAL;
 }

 if (n_debugids_in > KPERF_KDEBUG_DEBUGIDS_MAX) {
  return EINVAL;
 }

 kperf_kdebug_filter->n_debugids = n_debugids_in;

 return 0;
}
