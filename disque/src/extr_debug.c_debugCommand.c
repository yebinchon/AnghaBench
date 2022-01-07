
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct timespec {long long tv_sec; long long tv_nsec; } ;
struct sdshdr8 {int dummy; } ;
struct sdshdr64 {int dummy; } ;
struct sdshdr5 {int dummy; } ;
struct sdshdr32 {int dummy; } ;
struct sdshdr16 {int dummy; } ;
typedef int sds ;
typedef int robj ;
typedef int queue ;
typedef int job ;
typedef int dictEntry ;
struct TYPE_16__ {int argc; TYPE_2__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_19__ {scalar_t__ aof_state; int aof_filename; } ;
struct TYPE_18__ {int ok; int err; } ;
struct TYPE_17__ {scalar_t__ ptr; } ;


 scalar_t__ AOF_ON ;
 scalar_t__ C_OK ;
 int LL_WARNING ;
 int RESTART_SERVER_CONFIG_REWRITE ;
 int RESTART_SERVER_GRACEFULLY ;
 int RESTART_SERVER_NONE ;
 int ULONG_MAX ;
 int addReply (TYPE_1__*,int ) ;
 int addReplyBulkSds (TYPE_1__*,int ) ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyErrorFormat (TYPE_1__*,char*,char*) ;
 int addReplySds (TYPE_1__*,int ) ;
 int flushAppendOnlyFile (int) ;
 int flushServerData () ;
 scalar_t__ getLongLongFromObjectOrReply (TYPE_1__*,TYPE_2__*,long long*,int *) ;
 scalar_t__ loadAppendOnlyFile (int ) ;
 int nanosleep (struct timespec*,int *) ;
 int restartServer (int,long long) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,int) ;
 int sdscatsds (int ,scalar_t__) ;
 int sdsempty () ;
 int sdsmapchars (int ,char*,char*,int) ;
 int sdsnewlen (char*,int) ;
 TYPE_7__ server ;
 int serverAssertWithInfo (TYPE_1__*,TYPE_2__*,int) ;
 int serverLog (int ,char*) ;
 TYPE_4__ shared ;
 int strcasecmp (scalar_t__,char*) ;
 double strtod (scalar_t__,int *) ;
 TYPE_2__* tryObjectEncoding (TYPE_2__*) ;
 int zfree (void*) ;
 void* zmalloc (int ) ;

void debugCommand(client *c) {
    if (!strcasecmp(c->argv[1]->ptr,"segfault")) {
        *((char*)-1) = 'x';
    } else if (!strcasecmp(c->argv[1]->ptr,"restart") ||
               !strcasecmp(c->argv[1]->ptr,"crash-and-recover"))
    {
        long long delay = 0;
        if (c->argc >= 3) {
            if (getLongLongFromObjectOrReply(c, c->argv[2], &delay, ((void*)0))
                != C_OK) return;
            if (delay < 0) delay = 0;
        }
        int flags = !strcasecmp(c->argv[1]->ptr,"restart") ?
            (RESTART_SERVER_GRACEFULLY|RESTART_SERVER_CONFIG_REWRITE) :
             RESTART_SERVER_NONE;
        restartServer(flags,delay);
        addReplyError(c,"failed to restart the server. Check server logs.");
    } else if (!strcasecmp(c->argv[1]->ptr,"oom")) {
        void *ptr = zmalloc(ULONG_MAX);
        zfree(ptr);
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"assert")) {
        if (c->argc >= 3) c->argv[2] = tryObjectEncoding(c->argv[2]);
        serverAssertWithInfo(c,c->argv[0],1 == 2);
    } else if (!strcasecmp(c->argv[1]->ptr,"flushall")) {
        flushServerData();
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"loadaof")) {
        if (server.aof_state == AOF_ON) flushAppendOnlyFile(1);
        flushServerData();
        if (loadAppendOnlyFile(server.aof_filename) != C_OK) {
            addReply(c,shared.err);
            return;
        }
        serverLog(LL_WARNING,"Append Only File loaded by DEBUG LOADAOF");
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"sleep") && c->argc == 3) {
        double dtime = strtod(c->argv[2]->ptr,((void*)0));
        long long utime = dtime*1000000;
        struct timespec tv;

        tv.tv_sec = utime / 1000000;
        tv.tv_nsec = (utime % 1000000) * 1000;
        nanosleep(&tv, ((void*)0));
        addReply(c,shared.ok);
    } else if (!strcasecmp(c->argv[1]->ptr,"error") && c->argc == 3) {
        sds errstr = sdsnewlen("-",1);

        errstr = sdscatsds(errstr,c->argv[2]->ptr);
        errstr = sdsmapchars(errstr,"\n\r","  ",2);
        errstr = sdscatlen(errstr,"\r\n",2);
        addReplySds(c,errstr);
    } else if (!strcasecmp(c->argv[1]->ptr,"structsize") && c->argc == 2) {
        sds sizes = sdsempty();
        sizes = sdscatprintf(sizes,"bits:%d ",(sizeof(void*) == 8)?64:32);
        sizes = sdscatprintf(sizes,"job:%d ", (int)sizeof(job));
        sizes = sdscatprintf(sizes,"queue:%d ", (int)sizeof(queue));
        sizes = sdscatprintf(sizes,"robj:%d ",(int)sizeof(robj));
        sizes = sdscatprintf(sizes,"dictentry:%d ",(int)sizeof(dictEntry));
        sizes = sdscatprintf(sizes,"sdshdr5:%d ",(int)sizeof(struct sdshdr5));
        sizes = sdscatprintf(sizes,"sdshdr8:%d ",(int)sizeof(struct sdshdr8));
        sizes = sdscatprintf(sizes,"sdshdr16:%d ",(int)sizeof(struct sdshdr16));
        sizes = sdscatprintf(sizes,"sdshdr32:%d ",(int)sizeof(struct sdshdr32));
        sizes = sdscatprintf(sizes,"sdshdr64:%d ",(int)sizeof(struct sdshdr64));
        addReplyBulkSds(c,sizes);
    } else {
        addReplyErrorFormat(c, "Unknown DEBUG subcommand or wrong number of arguments for '%s'",
            (char*)c->argv[1]->ptr);
    }
}
