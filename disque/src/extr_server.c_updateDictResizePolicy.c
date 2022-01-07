
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_child_pid; } ;


 int dictDisableResize () ;
 int dictEnableResize () ;
 TYPE_1__ server ;

void updateDictResizePolicy(void) {
    if (server.aof_child_pid == -1)
        dictEnableResize();
    else
        dictDisableResize();
}
