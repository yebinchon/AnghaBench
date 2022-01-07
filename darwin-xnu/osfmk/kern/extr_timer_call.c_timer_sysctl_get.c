
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int interval; int scans; int preempts; int latency; int latency_min; int latency_max; } ;
struct TYPE_6__ {int count; } ;
struct TYPE_7__ {int enqueues; int dequeues; int escalates; int scan_limit; int scan_interval; int scan_pauses; TYPE_1__ threshold; TYPE_2__ queue; } ;
typedef TYPE_3__ timer_longterm_t ;
 int NSEC_PER_MSEC ;







 int TIMER_LONGTERM_NONE ;
 TYPE_3__ timer_longterm ;

uint64_t
timer_sysctl_get(int oid)
{
 timer_longterm_t *tlp = &timer_longterm;

 switch (oid) {
 case 128:
  return (tlp->threshold.interval == TIMER_LONGTERM_NONE) ?
   0 : tlp->threshold.interval / NSEC_PER_MSEC;
 case 132:
  return tlp->queue.count;
 case 139:
  return tlp->enqueues;
 case 140:
  return tlp->dequeues;
 case 138:
  return tlp->escalates;
 case 131:
  return tlp->threshold.scans;
 case 133:
  return tlp->threshold.preempts;
 case 137:
  return tlp->threshold.latency;
 case 135:
  return tlp->threshold.latency_min;
 case 136:
  return tlp->threshold.latency_max;
 case 129:
  return tlp->scan_limit;
 case 130:
  return tlp->scan_interval;
 case 134:
  return tlp->scan_pauses;
 default:
  return 0;
 }
}
