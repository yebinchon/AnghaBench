
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dictEntry {int dummy; } ;
typedef char* sds ;
typedef int rio ;
typedef int mstime_t ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ job ;
typedef int dictIterator ;
typedef int cmd ;
struct TYPE_6__ {char* aof_child_diff; int aof_pipe_read_ack_from_parent; int aof_pipe_write_ack_to_parent; int aof_pipe_read_data_from_parent; int jobs; scalar_t__ aof_rewrite_incremental_fsync; } ;
typedef int FILE ;


 int AE_READABLE ;
 scalar_t__ ANET_OK ;
 int AOF_AUTOSYNC_BYTES ;
 int C_ERR ;
 int C_OK ;
 scalar_t__ EOF ;
 scalar_t__ JOB_STATE_ACTIVE ;
 scalar_t__ JOB_STATE_QUEUED ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int SER_STORAGE ;
 scalar_t__ aeWait (int ,int ,int) ;
 scalar_t__ anetNonBlock (int *,int ) ;
 int aofReadDiffFromParent () ;
 int * dictGetIterator (int ) ;
 TYPE_1__* dictGetKey (struct dictEntry*) ;
 struct dictEntry* dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fsync (int ) ;
 scalar_t__ getpid () ;
 int mstime () ;
 int rename (char*,char*) ;
 int rioInitWithFile (int *,int *) ;
 int rioSetAutoSync (int *,int ) ;
 scalar_t__ rioWrite (int *,char*,int) ;
 scalar_t__ rioWriteBulkString (int *,char*,int) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 int sdslen (char*) ;
 char* serializeJob (char*,TYPE_1__*,int ) ;
 TYPE_2__ server ;
 int serverLog (int ,char*,...) ;
 int snprintf (char*,int,char*,int) ;
 double strerror (int ) ;
 int syncRead (int ,char*,int,int) ;
 int unlink (char*) ;
 int write (int ,char*,int) ;

int rewriteAppendOnlyFile(char *filename, int background) {
    dictIterator *di = ((void*)0);
    rio aof;
    FILE *fp;
    char tmpfile[256];
    char byte;



    snprintf(tmpfile,256,"temp-rewriteaof-%d.aof", (int) getpid());
    fp = fopen(tmpfile,"w");
    if (!fp) {
        serverLog(LL_WARNING, "Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s", strerror(errno));
        return C_ERR;
    }

    if (background) server.aof_child_diff = sdsempty();
    rioInitWithFile(&aof,fp);
    if (server.aof_rewrite_incremental_fsync)
        rioSetAutoSync(&aof,AOF_AUTOSYNC_BYTES);



    di = dictGetIterator(server.jobs);
    struct dictEntry *de;
    while((de = dictNext(di)) != ((void*)0)) {
        job *job = dictGetKey(de);
        if (job->state != JOB_STATE_ACTIVE &&
            job->state != JOB_STATE_QUEUED) continue;

        char cmd[] = "*2\r\n$7\r\nLOADJOB\r\n";
        sds serialized = serializeJob(sdsempty(),job,SER_STORAGE);
        if (rioWrite(&aof,cmd,sizeof(cmd)-1) == 0) goto werr;
        if (rioWriteBulkString(&aof,serialized,sdslen(serialized)) == 0)
            goto werr;
        sdsfree(serialized);
    }
    dictReleaseIterator(di);
    di = ((void*)0);



    if (!background) goto flush_and_rename;



    if (fflush(fp) == EOF) goto werr;
    if (fsync(fileno(fp)) == -1) goto werr;







    int nodata = 0;
    mstime_t start = mstime();
    while(mstime()-start < 1000 && nodata < 20) {
        if (aeWait(server.aof_pipe_read_data_from_parent, AE_READABLE, 1) <= 0)
        {
            nodata++;
            continue;
        }
        nodata = 0;

        aofReadDiffFromParent();
    }


    if (write(server.aof_pipe_write_ack_to_parent,"!",1) != 1) goto werr;
    if (anetNonBlock(((void*)0),server.aof_pipe_read_ack_from_parent) != ANET_OK)
        goto werr;



    if (syncRead(server.aof_pipe_read_ack_from_parent,&byte,1,5000) != 1 ||
        byte != '!') goto werr;
    serverLog(LL_NOTICE,"Parent agreed to stop sending diffs. Finalizing AOF...");


    aofReadDiffFromParent();


    serverLog(LL_NOTICE,
        "Concatenating %.2f MB of AOF diff received from parent.",
        (double) sdslen(server.aof_child_diff) / (1024*1024));
    if (rioWrite(&aof,server.aof_child_diff,sdslen(server.aof_child_diff)) == 0)
        goto werr;

flush_and_rename:

    if (fflush(fp) == EOF) goto werr;
    if (fsync(fileno(fp)) == -1) goto werr;
    if (fclose(fp) == EOF) goto werr;



    if (rename(tmpfile,filename) == -1) {
        serverLog(LL_WARNING,"Error moving temp append only file on the final destination: %s", strerror(errno));
        unlink(tmpfile);
        return C_ERR;
    }
    serverLog(LL_NOTICE,"SYNC append only file rewrite performed");
    return C_OK;

werr:
    serverLog(LL_WARNING,"Write error writing append only file on disk: %s", strerror(errno));
    fclose(fp);
    unlink(tmpfile);
    if (di) dictReleaseIterator(di);
    return C_ERR;
}
