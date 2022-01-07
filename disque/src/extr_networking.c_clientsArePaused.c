
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int listNode ;
typedef int listIter ;
typedef int client ;
struct TYPE_2__ {int clients_paused; scalar_t__ clients_pause_end_time; scalar_t__ mstime; int unblocked_clients; int clients; } ;


 int listAddNodeTail (int ,int *) ;
 int * listNext (int *) ;
 int * listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 TYPE_1__ server ;

int clientsArePaused(void) {
    if (server.clients_paused && server.clients_pause_end_time < server.mstime) {
        listNode *ln;
        listIter li;
        client *c;

        server.clients_paused = 0;



        listRewind(server.clients,&li);
        while ((ln = listNext(&li)) != ((void*)0)) {
            c = listNodeValue(ln);
            listAddNodeTail(server.unblocked_clients,c);
        }
    }
    return server.clients_paused;
}
