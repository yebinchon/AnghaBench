
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dictIterator ;
typedef int dictEntry ;
struct TYPE_10__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {int commands; } ;
struct TYPE_9__ {int ptr; } ;


 int addReplyCommand (TYPE_2__*,int ) ;
 int addReplyError (TYPE_2__*,char*) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplyMultiBulkLen (TYPE_2__*,int) ;
 int dictFetchValue (int ,int ) ;
 int * dictGetIterator (int ) ;
 int dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 TYPE_3__ server ;
 int strcasecmp (int ,char*) ;

void commandCommand(client *c) {
    dictIterator *di;
    dictEntry *de;

    if (c->argc == 1) {
        addReplyMultiBulkLen(c, dictSize(server.commands));
        di = dictGetIterator(server.commands);
        while ((de = dictNext(di)) != ((void*)0)) {
            addReplyCommand(c, dictGetVal(de));
        }
        dictReleaseIterator(di);
    } else if (!strcasecmp(c->argv[1]->ptr, "info")) {
        int i;
        addReplyMultiBulkLen(c, c->argc-2);
        for (i = 2; i < c->argc; i++) {
            addReplyCommand(c, dictFetchValue(server.commands, c->argv[i]->ptr));
        }
    } else if (!strcasecmp(c->argv[1]->ptr, "count") && c->argc == 2) {
        addReplyLongLong(c, dictSize(server.commands));
    } else {
        addReplyError(c, "Unknown subcommand or wrong number of arguments.");
        return;
    }
}
