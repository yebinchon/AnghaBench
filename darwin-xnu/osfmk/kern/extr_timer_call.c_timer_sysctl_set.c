
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint64_t ;
struct TYPE_2__ {void* scan_interval; void* scan_limit; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;



 int master_cpu ;
 int timer_call_cpu (int ,void (*) (void*),void*) ;
 TYPE_1__ timer_longterm ;
 int timer_sysctl_set_threshold ;

int
timer_sysctl_set(int oid, uint64_t value)
{
 switch (oid) {
 case 128:
  timer_call_cpu(
   master_cpu,
   (void (*)(void *)) timer_sysctl_set_threshold,
   (void *) value);
  return KERN_SUCCESS;
 case 129:
  timer_longterm.scan_limit = value;
  return KERN_SUCCESS;
 case 130:
  timer_longterm.scan_interval = value;
  return KERN_SUCCESS;
 default:
  return KERN_INVALID_ARGUMENT;
 }
}
