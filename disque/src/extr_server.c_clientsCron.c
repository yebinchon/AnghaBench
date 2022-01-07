
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int listNode ;
typedef int client ;
struct TYPE_2__ {int hz; int mstime; int clients; } ;


 int CLIENTS_CRON_MIN_ITERATIONS ;
 scalar_t__ clientsCronHandleDelayedJobReplication (int *) ;
 scalar_t__ clientsCronHandleTimeout (int *,int ) ;
 scalar_t__ clientsCronResizeQueryBuffer (int *) ;
 scalar_t__ clientsCronSendNeedJobs (int *) ;
 int * listFirst (int ) ;
 int listLength (int ) ;
 int * listNodeValue (int *) ;
 int listRotate (int ) ;
 int mstime () ;
 TYPE_1__ server ;

void clientsCron(void) {




    int numclients = listLength(server.clients);
    int iterations = numclients/server.hz;
    server.mstime = mstime();




    if (iterations < CLIENTS_CRON_MIN_ITERATIONS)
        iterations = (numclients < CLIENTS_CRON_MIN_ITERATIONS) ?
                     numclients : CLIENTS_CRON_MIN_ITERATIONS;

    while(listLength(server.clients) && iterations--) {
        client *c;
        listNode *head;




        listRotate(server.clients);
        head = listFirst(server.clients);
        c = listNodeValue(head);



        if (clientsCronHandleTimeout(c,server.mstime)) continue;
        if (clientsCronResizeQueryBuffer(c)) continue;
        if (clientsCronHandleDelayedJobReplication(c)) continue;
        if (clientsCronSendNeedJobs(c)) continue;
    }
}
