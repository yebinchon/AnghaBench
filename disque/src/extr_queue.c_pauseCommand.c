
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sds ;
struct TYPE_13__ {int flags; } ;
typedef TYPE_1__ queue ;
struct TYPE_14__ {int argc; TYPE_7__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_16__ {int ptr; } ;
struct TYPE_15__ {int syntaxerr; } ;


 int QUEUE_FLAG_PAUSED_ALL ;
 int QUEUE_FLAG_PAUSED_IN ;
 int QUEUE_FLAG_PAUSED_OUT ;
 int addReply (TYPE_2__*,int ) ;
 int addReplySds (TYPE_2__*,int ) ;
 int clusterBroadcastPause (TYPE_7__*,int) ;
 TYPE_1__* createQueue (TYPE_7__*) ;
 TYPE_1__* lookupQueue (TYPE_7__*) ;
 int queueChangePausedState (TYPE_1__*,int,int) ;
 int queueGetPausedStateString (int) ;
 int sdscat (int ,int ) ;
 int sdscatlen (int ,char*,int) ;
 int sdsnewlen (char*,int) ;
 TYPE_3__ shared ;
 int strcasecmp (int ,char*) ;

void pauseCommand(client *c) {
    int j, bcast = 0, update = 0;
    uint32_t old_flags = 0, new_flags = 0;

    queue *q = lookupQueue(c->argv[1]);
    if (q) old_flags = q->flags;

    for (j = 2; j < c->argc; j++) {
        if (!strcasecmp(c->argv[j]->ptr,"none")) {
            new_flags = 0;
            update = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"in")) {
            new_flags |= QUEUE_FLAG_PAUSED_IN; update = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"out")) {
            new_flags |= QUEUE_FLAG_PAUSED_OUT; update = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"all")) {
            new_flags |= QUEUE_FLAG_PAUSED_ALL; update = 1;
        } else if (!strcasecmp(c->argv[j]->ptr,"state")) {

        } else if (!strcasecmp(c->argv[j]->ptr,"bcast")) {
            bcast = 1;
        } else {
            addReply(c,shared.syntaxerr);
            return;
        }
    }


    if (!q && update && old_flags != new_flags) q = createQueue(c->argv[1]);
    if (q && update) {
        queueChangePausedState(q,QUEUE_FLAG_PAUSED_IN,
            (new_flags & QUEUE_FLAG_PAUSED_IN) != 0);
        queueChangePausedState(q,QUEUE_FLAG_PAUSED_OUT,
            (new_flags & QUEUE_FLAG_PAUSED_OUT) != 0);
    }


    new_flags = q ? q->flags : 0;
    new_flags &= QUEUE_FLAG_PAUSED_ALL;


    if (bcast) clusterBroadcastPause(c->argv[1],new_flags);


    sds reply = sdsnewlen("+",1);
    reply = sdscat(reply,queueGetPausedStateString(new_flags));
    reply = sdscatlen(reply,"\r\n",2);
    addReplySds(c,reply);
}
