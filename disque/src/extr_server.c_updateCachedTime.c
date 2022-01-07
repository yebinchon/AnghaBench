
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mstime; int unixtime; } ;


 int mstime () ;
 TYPE_1__ server ;
 int time (int *) ;

void updateCachedTime(void) {
    server.unixtime = time(((void*)0));
    server.mstime = mstime();
}
