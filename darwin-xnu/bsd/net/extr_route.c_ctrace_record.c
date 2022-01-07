
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pc; int th; } ;
typedef TYPE_1__ ctrace_t ;


 int CTRACE_STACK_SIZE ;
 int OSBacktrace (int ,int ) ;
 int bzero (int ,int) ;
 int current_thread () ;

void
ctrace_record(ctrace_t *tr)
{
 tr->th = current_thread();
 bzero(tr->pc, sizeof (tr->pc));
 (void) OSBacktrace(tr->pc, CTRACE_STACK_SIZE);
}
