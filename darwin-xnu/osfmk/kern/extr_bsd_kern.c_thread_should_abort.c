
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_3__ {int sched_flags; } ;


 int TH_SFLAG_ABORT ;
 int TH_SFLAG_ABORTED_MASK ;

boolean_t
thread_should_abort(
 thread_t th)
{
 return ((th->sched_flags & TH_SFLAG_ABORTED_MASK) == TH_SFLAG_ABORT);
}
