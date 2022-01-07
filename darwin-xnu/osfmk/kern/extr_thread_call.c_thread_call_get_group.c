
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_call_t ;
typedef size_t thread_call_index_t ;
typedef int * thread_call_group_t ;
struct TYPE_3__ {size_t tc_index; } ;


 size_t THREAD_CALL_INDEX_MAX ;
 int assert (int) ;
 int * thread_call_groups ;

__attribute__((used)) static inline thread_call_group_t
thread_call_get_group(thread_call_t call)
{
 thread_call_index_t index = call->tc_index;

 assert(index >= 0 && index < THREAD_CALL_INDEX_MAX);

 return &thread_call_groups[index];
}
