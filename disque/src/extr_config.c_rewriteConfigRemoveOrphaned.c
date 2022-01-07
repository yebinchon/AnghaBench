
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rewriteConfigState {int * lines; int rewritten; int option_to_line; } ;
typedef int sds ;
struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ listNode ;
typedef int list ;
typedef int dictIterator ;
typedef int dictEntry ;


 int LL_DEBUG ;
 int * dictFind (int ,int ) ;
 int * dictGetIterator (int ) ;
 int dictGetKey (int *) ;
 int * dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int listDelNode (int *,TYPE_1__*) ;
 TYPE_1__* listFirst (int *) ;
 scalar_t__ listLength (int *) ;
 int sdsempty () ;
 int sdsfree (int ) ;
 int serverLog (int ,char*,int ) ;

void rewriteConfigRemoveOrphaned(struct rewriteConfigState *state) {
    dictIterator *di = dictGetIterator(state->option_to_line);
    dictEntry *de;

    while((de = dictNext(di)) != ((void*)0)) {
        list *l = dictGetVal(de);
        sds option = dictGetKey(de);



        if (dictFind(state->rewritten,option) == ((void*)0)) {
            serverLog(LL_DEBUG,"Not rewritten option: %s", option);
            continue;
        }

        while(listLength(l)) {
            listNode *ln = listFirst(l);
            int linenum = (long) ln->value;

            sdsfree(state->lines[linenum]);
            state->lines[linenum] = sdsempty();
            listDelNode(l,ln);
        }
    }
    dictReleaseIterator(di);
}
