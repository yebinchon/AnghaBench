
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {int started; } ;


 int THREAD_AWAKENED ;
 int TRUE ;
 int clear_wait (TYPE_1__*,int ) ;

void
thread_start(
 thread_t thread)
{
 clear_wait(thread, THREAD_AWAKENED);
 thread->started = TRUE;
}
