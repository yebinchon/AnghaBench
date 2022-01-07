
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kperf_kdebug_filter {int n_debugids; } ;


 int assert (int ) ;
 int kperf_init () ;
 struct kperf_kdebug_filter* kperf_kdebug_filter ;

uint32_t
kperf_kdebug_get_filter(struct kperf_kdebug_filter **filter)
{
 int err;

 if ((err = kperf_init())) {
  return 0;
 }

 assert(filter != ((void*)0));

 *filter = kperf_kdebug_filter;
 return kperf_kdebug_filter->n_debugids;
}
