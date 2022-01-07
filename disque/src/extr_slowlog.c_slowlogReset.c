
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slowlog; } ;


 int listDelNode (int ,int ) ;
 int listLast (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_1__ server ;

void slowlogReset(void) {
    while (listLength(server.slowlog) > 0)
        listDelNode(server.slowlog,listLast(server.slowlog));
}
