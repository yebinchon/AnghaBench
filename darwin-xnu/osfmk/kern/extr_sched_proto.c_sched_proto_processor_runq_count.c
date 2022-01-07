
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ processor_t ;
struct TYPE_2__ {int count; } ;


 TYPE_1__* global_runq ;
 scalar_t__ master_processor ;

__attribute__((used)) static int
sched_proto_processor_runq_count(processor_t processor)
{
 if (master_processor == processor) {
  return global_runq->count;
 } else {
  return 0;
 }
}
