
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int el; } ;


 int AE_DONT_WAIT ;
 int AE_FILE_EVENTS ;
 scalar_t__ aeProcessEvents (int ,int) ;
 scalar_t__ handleClientsWithPendingWrites () ;
 TYPE_1__ server ;

int processEventsWhileBlocked(void) {
    int iterations = 4;
    int count = 0;
    while (iterations--) {
        int events = 0;
        events += aeProcessEvents(server.el, AE_FILE_EVENTS|AE_DONT_WAIT);
        events += handleClientsWithPendingWrites();
        if (!events) break;
        count += events;
    }
    return count;
}
