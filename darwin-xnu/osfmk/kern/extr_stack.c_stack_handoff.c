
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;


 int assert (int) ;
 scalar_t__ current_thread () ;
 int machine_stack_handoff (scalar_t__,scalar_t__) ;

void
stack_handoff(thread_t from, thread_t to)
{
 assert(from == current_thread());
 machine_stack_handoff(from, to);
}
