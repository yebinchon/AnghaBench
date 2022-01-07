
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aeEventLoop {int dummy; } ;
struct TYPE_2__ {int unblocked_clients; } ;


 int UNUSED (struct aeEventLoop*) ;
 int clusterBeforeSleep () ;
 int flushAppendOnlyFile (int ) ;
 int handleClientsBlockedOnQueues () ;
 int handleClientsWithPendingWrites () ;
 scalar_t__ listLength (int ) ;
 int processUnblockedClients () ;
 TYPE_1__ server ;

void beforeSleep(struct aeEventLoop *eventLoop) {
    UNUSED(eventLoop);




    clusterBeforeSleep();




    handleClientsBlockedOnQueues();


    if (listLength(server.unblocked_clients))
        processUnblockedClients();


    flushAppendOnlyFile(0);


    handleClientsWithPendingWrites();
}
