
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sds ;
typedef int listNode ;
typedef int listIter ;
struct TYPE_2__ {int clients; } ;


 int catClientInfoString (int ,int) ;
 int client ;
 int listLength (int ) ;
 int * listNext (int *) ;
 int listNodeValue (int *) ;
 int listRewind (int ,int *) ;
 int sdsMakeRoomFor (int ,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdsempty () ;
 TYPE_1__ server ;

sds getAllClientsInfoString(void) {
    listNode *ln;
    listIter li;
    client *client;
    sds o = sdsempty();

    o = sdsMakeRoomFor(o,200*listLength(server.clients));
    listRewind(server.clients,&li);
    while ((ln = listNext(&li)) != ((void*)0)) {
        client = listNodeValue(ln);
        o = catClientInfoString(o,client);
        o = sdscatlen(o,"\n",1);
    }
    return o;
}
