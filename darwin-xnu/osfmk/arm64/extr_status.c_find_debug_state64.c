
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_4__* thread_t ;
typedef int arm_debug_state64_t ;
struct TYPE_8__ {TYPE_2__* DebugData; } ;
struct TYPE_9__ {TYPE_3__ machine; } ;
struct TYPE_6__ {int ds64; } ;
struct TYPE_7__ {TYPE_1__ uds; } ;



arm_debug_state64_t *
find_debug_state64(
             thread_t thread)
{
 if (thread && thread->machine.DebugData)
  return &(thread->machine.DebugData->uds.ds64);
 else
  return ((void*)0);
}
