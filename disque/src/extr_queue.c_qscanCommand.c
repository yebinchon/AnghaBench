
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct qscanFilter {int member_0; int member_1; int member_2; long minlen; long maxlen; long importrate; } ;
typedef int robj ;
typedef int listNode ;
typedef int list ;
struct TYPE_13__ {int argc; TYPE_6__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_16__ {char* ptr; } ;
struct TYPE_15__ {int queues; } ;
struct TYPE_14__ {int syntaxerr; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 long QSCAN_DEFAULT_COUNT ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulk (TYPE_1__*,int *) ;
 int addReplyBulkLongLong (TYPE_1__*,unsigned long) ;
 int addReplyMultiBulkLen (TYPE_1__*,int) ;
 int decrRefCount (int *) ;
 unsigned long dictScan (int ,unsigned long,int ,void**) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,TYPE_6__*,long*,int *) ;
 int * listCreate () ;
 int listDelNode (int *,int *) ;
 int * listFirst (int *) ;
 int listLength (int *) ;
 int * listNodeValue (int *) ;
 int listRelease (int *) ;
 scalar_t__ parseScanCursorOrReply (TYPE_1__*,TYPE_6__*,unsigned long*) ;
 int qscanCallback ;
 TYPE_3__ server ;
 TYPE_2__ shared ;
 int strcasecmp (char*,char*) ;

void qscanCommand(client *c) {
    struct qscanFilter filter = {-1,-1,-1};
    int busyloop = 0;
    long count = QSCAN_DEFAULT_COUNT;
    long maxiterations;
    unsigned long cursor = 0;
    int cursor_set = 0, j;


    for (j = 1; j < c->argc; j++) {
        int remaining = c->argc - j -1;
        char *opt = c->argv[j]->ptr;

        if (!strcasecmp(opt,"count") && remaining) {
            if (getLongFromObjectOrReply(c, c->argv[j+1], &count, ((void*)0)) !=
                C_OK) return;
            j++;
        } else if (!strcasecmp(opt,"busyloop")) {
            busyloop = 1;
        } else if (!strcasecmp(opt,"minlen") && remaining) {
            if (getLongFromObjectOrReply(c, c->argv[j+1],&filter.minlen,((void*)0)) !=
                C_OK) return;
            j++;
        } else if (!strcasecmp(opt,"maxlen") && remaining) {
            if (getLongFromObjectOrReply(c, c->argv[j+1],&filter.maxlen,((void*)0)) !=
                C_OK) return;
            j++;
        } else if (!strcasecmp(opt,"importrate") && remaining) {
            if (getLongFromObjectOrReply(c, c->argv[j+1],
                &filter.importrate,((void*)0)) != C_OK) return;
            j++;
        } else {
            if (cursor_set != 0) {
                addReply(c,shared.syntaxerr);
                return;
            }
            if (parseScanCursorOrReply(c,c->argv[j],&cursor) == C_ERR)
                return;
            cursor_set = 1;
        }
    }


    maxiterations = count*10;




    void *privdata[2];
    list *list = listCreate();
    privdata[0] = list;
    privdata[1] = &filter;
    do {
        cursor = dictScan(server.queues,cursor,qscanCallback,privdata);
    } while (cursor &&
             (busyloop ||
              (maxiterations-- &&
               listLength(list) < (unsigned long)count)));


    addReplyMultiBulkLen(c, 2);
    addReplyBulkLongLong(c,cursor);

    addReplyMultiBulkLen(c, listLength(list));
    listNode *node;
    while ((node = listFirst(list)) != ((void*)0)) {
        robj *kobj = listNodeValue(node);
        addReplyBulk(c, kobj);
        decrRefCount(kobj);
        listDelNode(list, node);
    }
    listRelease(list);
}
