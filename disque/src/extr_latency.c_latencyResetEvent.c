
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_2__ {int latency_events; } ;


 int dictDelete (int ,char*) ;
 char* dictGetKey (int *) ;
 int * dictGetSafeIterator (int ) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 TYPE_1__ server ;
 scalar_t__ strcasecmp (char*,char*) ;

int latencyResetEvent(char *event_to_reset) {
    dictIterator *di;
    dictEntry *de;
    int resets = 0;

    di = dictGetSafeIterator(server.latency_events);
    while((de = dictNext(di)) != ((void*)0)) {
        char *event = dictGetKey(de);

        if (event_to_reset == ((void*)0) || strcasecmp(event,event_to_reset) == 0) {
            dictDelete(server.latency_events, event);
            resets++;
        }
    }
    dictReleaseIterator(di);
    return resets;
}
