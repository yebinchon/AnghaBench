
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef int arm_debug_state_t ;
struct TYPE_4__ {int * DebugData; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;



arm_debug_state_t *
find_debug_state(
             thread_t thread)
{
       return thread->machine.DebugData;
}
