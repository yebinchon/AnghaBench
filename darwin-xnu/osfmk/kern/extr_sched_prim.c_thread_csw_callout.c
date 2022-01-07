
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef int perfcontrol_event ;
struct TYPE_6__ {int state; int same_pri_latency; } ;


 int CONTEXT_SWITCH ;
 int IDLE ;
 int TH_IDLE ;
 int machine_switch_perfcontrol_context (int ,int ,int ,int ,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static void
thread_csw_callout(
 thread_t old,
 thread_t new,
 uint64_t timestamp)
{
 perfcontrol_event event = (new->state & TH_IDLE) ? IDLE : CONTEXT_SWITCH;
 uint64_t same_pri_latency = (new->state & TH_IDLE) ? 0 : new->same_pri_latency;
 machine_switch_perfcontrol_context(event, timestamp, 0,
  same_pri_latency, old, new);
}
