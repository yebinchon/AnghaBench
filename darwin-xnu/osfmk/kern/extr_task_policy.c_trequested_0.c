
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* task_t ;
struct task_requested_policy {int dummy; } ;
struct TYPE_3__ {int requested_policy; } ;


 int static_assert (int,char*) ;

__attribute__((used)) static uintptr_t
trequested_0(task_t task)
{
 static_assert(sizeof(struct task_requested_policy) == sizeof(uint64_t), "size invariant violated");

 uintptr_t* raw = (uintptr_t*)&task->requested_policy;

 return raw[0];
}
