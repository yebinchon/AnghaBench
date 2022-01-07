
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct jscanFilter {int* state; int numstates; TYPE_5__* queue; } ;
typedef int listNode ;
typedef int list ;
typedef int job ;
typedef int filter ;
struct TYPE_15__ {int argc; TYPE_5__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_18__ {char* ptr; } ;
struct TYPE_17__ {int jobs; } ;
struct TYPE_16__ {int syntaxerr; } ;


 scalar_t__ C_ERR ;
 scalar_t__ C_OK ;
 long JSCAN_DEFAULT_COUNT ;
 int JSCAN_REPLY_ALL ;
 int JSCAN_REPLY_ID ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulkLongLong (TYPE_1__*,unsigned long) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyJobID (TYPE_1__*,int *) ;
 int addReplyJobInfo (TYPE_1__*,int *) ;
 int addReplyMultiBulkLen (TYPE_1__*,int) ;
 unsigned long dictScan (int ,unsigned long,int ,void**) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,TYPE_5__*,long*,int *) ;
 int jobStateFromString (char*) ;
 int jscanCallback ;
 int * listCreate () ;
 int listDelNode (int *,int *) ;
 int * listFirst (int *) ;
 int listLength (int *) ;
 int * listNodeValue (int *) ;
 int listRelease (int *) ;
 int memset (struct jscanFilter*,int ,int) ;
 scalar_t__ parseScanCursorOrReply (TYPE_1__*,TYPE_5__*,unsigned long*) ;
 TYPE_3__ server ;
 int serverPanic (char*) ;
 TYPE_2__ shared ;
 int strcasecmp (char*,char*) ;

void jscanCommand(client *c) {
    struct jscanFilter filter;
    int busyloop = 0;
    long count = JSCAN_DEFAULT_COUNT;
    long maxiterations;
    unsigned long cursor = 0;
    int cursor_set = 0, j;
    int reply_type = JSCAN_REPLY_ID;

    memset(&filter,0,sizeof(filter));


    for (j = 1; j < c->argc; j++) {
        int remaining = c->argc - j -1;
        char *opt = c->argv[j]->ptr;

        if (!strcasecmp(opt,"count") && remaining) {
            if (getLongFromObjectOrReply(c, c->argv[j+1], &count, ((void*)0)) !=
                C_OK) return;
            j++;
        } else if (!strcasecmp(opt,"busyloop")) {
            busyloop = 1;
        } else if (!strcasecmp(opt,"queue") && remaining) {
            filter.queue = c->argv[j+1];
            j++;
        } else if (!strcasecmp(opt,"state") && remaining) {
            int jobstate = jobStateFromString(c->argv[j+1]->ptr);
            if (jobstate == -1) {
                addReplyError(c,"Invalid job state name");
                return;
            }
            filter.state[jobstate] = 1;
            filter.numstates++;
            j++;
        } else if (!strcasecmp(opt,"reply") && remaining) {
            if (!strcasecmp(c->argv[j+1]->ptr,"id")) {
                reply_type = JSCAN_REPLY_ID;
            } else if (!strcasecmp(c->argv[j+1]->ptr,"all")) {
                reply_type = JSCAN_REPLY_ALL;
            } else {
                addReplyError(c,"Invalid REPLY type, try ID or ALL");
                return;
            }
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
        cursor = dictScan(server.jobs,cursor,jscanCallback,privdata);
    } while (cursor &&
             (busyloop ||
              (maxiterations-- &&
               listLength(list) < (unsigned long)count)));


    addReplyMultiBulkLen(c, 2);
    addReplyBulkLongLong(c,cursor);

    addReplyMultiBulkLen(c, listLength(list));
    listNode *node;
    while ((node = listFirst(list)) != ((void*)0)) {
        job *j = listNodeValue(node);
        if (reply_type == JSCAN_REPLY_ID) addReplyJobID(c,j);
        else if (reply_type == JSCAN_REPLY_ALL) addReplyJobInfo(c,j);
        else serverPanic("Unknown JSCAN reply type");
        listDelNode(list, node);
    }
    listRelease(list);
}
