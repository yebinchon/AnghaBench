
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* run_queue_t ;
typedef scalar_t__ processor_t ;
typedef int ast_t ;
struct TYPE_3__ {int count; int urgency; } ;


 int AST_NONE ;
 int AST_PREEMPT ;
 int AST_URGENT ;
 TYPE_1__* global_runq ;
 scalar_t__ proto_processor ;

__attribute__((used)) static ast_t
sched_proto_processor_csw_check(processor_t processor)
{
 run_queue_t runq;
 int count, urgency;

 runq = global_runq;
 count = runq->count;
 urgency = runq->urgency;

 if (count > 0) {
  if (urgency > 0)
   return (AST_PREEMPT | AST_URGENT);

  return AST_PREEMPT;
 }

 if (proto_processor != processor)
  return AST_PREEMPT;

 return AST_NONE;
}
