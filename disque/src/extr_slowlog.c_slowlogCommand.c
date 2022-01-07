
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_18__ {int argc; int * argv; int duration; int time; int id; } ;
typedef TYPE_1__ slowlogEntry ;
struct TYPE_19__ {TYPE_1__* value; } ;
typedef TYPE_2__ listNode ;
typedef int listIter ;
struct TYPE_20__ {int argc; TYPE_10__** argv; } ;
typedef TYPE_3__ client ;
struct TYPE_22__ {int slowlog; } ;
struct TYPE_21__ {int ok; } ;
struct TYPE_17__ {int ptr; } ;


 scalar_t__ C_OK ;
 void* addDeferredMultiBulkLength (TYPE_3__*) ;
 int addReply (TYPE_3__*,int ) ;
 int addReplyBulk (TYPE_3__*,int ) ;
 int addReplyError (TYPE_3__*,char*) ;
 int addReplyLongLong (TYPE_3__*,int ) ;
 int addReplyMultiBulkLen (TYPE_3__*,int) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_3__*,TYPE_10__*,long*,int *) ;
 int listLength (int ) ;
 TYPE_2__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_7__ server ;
 int setDeferredMultiBulkLength (TYPE_3__*,void*,long) ;
 TYPE_5__ shared ;
 int slowlogReset () ;
 int strcasecmp (int ,char*) ;

void slowlogCommand(client *c) {
    if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"reset")) {
        slowlogReset();
        addReply(c,shared.ok);
    } else if (c->argc == 2 && !strcasecmp(c->argv[1]->ptr,"len")) {
        addReplyLongLong(c,listLength(server.slowlog));
    } else if ((c->argc == 2 || c->argc == 3) &&
               !strcasecmp(c->argv[1]->ptr,"get"))
    {
        long count = 10, sent = 0;
        listIter li;
        void *totentries;
        listNode *ln;
        slowlogEntry *se;

        if (c->argc == 3 &&
            getLongFromObjectOrReply(c,c->argv[2],&count,((void*)0)) != C_OK)
            return;

        listRewind(server.slowlog,&li);
        totentries = addDeferredMultiBulkLength(c);
        while(count-- && (ln = listNext(&li))) {
            int j;

            se = ln->value;
            addReplyMultiBulkLen(c,4);
            addReplyLongLong(c,se->id);
            addReplyLongLong(c,se->time);
            addReplyLongLong(c,se->duration);
            addReplyMultiBulkLen(c,se->argc);
            for (j = 0; j < se->argc; j++)
                addReplyBulk(c,se->argv[j]);
            sent++;
        }
        setDeferredMultiBulkLength(c,totentries,sent);
    } else {
        addReplyError(c,
            "Unknown SLOWLOG subcommand or wrong # of args. Try GET, RESET, LEN.");
    }
}
