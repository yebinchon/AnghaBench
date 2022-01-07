
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int uu_workq_stackaddr; } ;
typedef int event_t ;



__attribute__((used)) static inline event_t
workq_parked_wait_event(struct uthread *uth)
{
 return (event_t)&uth->uu_workq_stackaddr;
}
