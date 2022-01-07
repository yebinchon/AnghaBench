
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_child_pid; } ;


 int incrementallyRehash () ;
 TYPE_1__ server ;
 int tryResizeHashTables () ;

void databasesCron(void) {



    if (server.aof_child_pid == -1) {




        tryResizeHashTables();
        incrementallyRehash();
    }
}
