
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_7__ {long when_sec; long long id; long when_ms; int (* timeProc ) (TYPE_2__*,long long,int ) ;struct TYPE_7__* next; int clientData; int (* finalizerProc ) (TYPE_2__*,int ) ;} ;
typedef TYPE_1__ aeTimeEvent ;
struct TYPE_8__ {scalar_t__ lastTime; int timeEventNextId; TYPE_1__* timeEventHead; } ;
typedef TYPE_2__ aeEventLoop ;


 long long AE_DELETED_EVENT_ID ;
 int AE_NOMORE ;
 int aeAddMillisecondsToNow (int,long*,long*) ;
 int aeGetTime (long*,long*) ;
 int stub1 (TYPE_2__*,int ) ;
 int stub2 (TYPE_2__*,long long,int ) ;
 scalar_t__ time (int *) ;
 int zfree (TYPE_1__*) ;

__attribute__((used)) static int processTimeEvents(aeEventLoop *eventLoop) {
    int processed = 0;
    aeTimeEvent *te, *prev;
    long long maxId;
    time_t now = time(((void*)0));
    if (now < eventLoop->lastTime) {
        te = eventLoop->timeEventHead;
        while(te) {
            te->when_sec = 0;
            te = te->next;
        }
    }
    eventLoop->lastTime = now;

    prev = ((void*)0);
    te = eventLoop->timeEventHead;
    maxId = eventLoop->timeEventNextId-1;
    while(te) {
        long now_sec, now_ms;
        long long id;


        if (te->id == AE_DELETED_EVENT_ID) {
            aeTimeEvent *next = te->next;
            if (prev == ((void*)0))
                eventLoop->timeEventHead = te->next;
            else
                prev->next = te->next;
            if (te->finalizerProc)
                te->finalizerProc(eventLoop, te->clientData);
            zfree(te);
            te = next;
            continue;
        }






        if (te->id > maxId) {
            te = te->next;
            continue;
        }
        aeGetTime(&now_sec, &now_ms);
        if (now_sec > te->when_sec ||
            (now_sec == te->when_sec && now_ms >= te->when_ms))
        {
            int retval;

            id = te->id;
            retval = te->timeProc(eventLoop, id, te->clientData);
            processed++;
            if (retval != AE_NOMORE) {
                aeAddMillisecondsToNow(retval,&te->when_sec,&te->when_ms);
            } else {
                te->id = AE_DELETED_EVENT_ID;
            }
        }
        prev = te;
        te = te->next;
    }
    return processed;
}
