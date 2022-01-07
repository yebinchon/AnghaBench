
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queues; int jobs; } ;


 int dictResize (int ) ;
 scalar_t__ htNeedsResize (int ) ;
 TYPE_1__ server ;

void tryResizeHashTables(void) {
    if (htNeedsResize(server.jobs)) dictResize(server.jobs);
    if (htNeedsResize(server.queues)) dictResize(server.queues);
}
