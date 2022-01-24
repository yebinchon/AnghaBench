#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dictEntry {int dummy; } ;
typedef  char* sds ;
typedef  int /*<<< orphan*/  rio ;
typedef  int mstime_t ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_6__ {char* aof_child_diff; int /*<<< orphan*/  aof_pipe_read_ack_from_parent; int /*<<< orphan*/  aof_pipe_write_ack_to_parent; int /*<<< orphan*/  aof_pipe_read_data_from_parent; int /*<<< orphan*/  jobs; scalar_t__ aof_rewrite_incremental_fsync; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ ANET_OK ; 
 int /*<<< orphan*/  AOF_AUTOSYNC_BYTES ; 
 int C_ERR ; 
 int C_OK ; 
 scalar_t__ EOF ; 
 scalar_t__ JOB_STATE_ACTIVE ; 
 scalar_t__ JOB_STATE_QUEUED ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  SER_STORAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct dictEntry*) ; 
 struct dictEntry* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (char*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int FUNC21 (char*) ; 
 char* FUNC22 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,char*,int) ; 
 double FUNC25 (int /*<<< orphan*/ ) ; 
 int FUNC26 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int FUNC28 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC29(char *filename, int background) {
    dictIterator *di = NULL;
    rio aof;
    FILE *fp;
    char tmpfile[256];
    char byte;

    /* Note that we have to use a different temp name here compared to the
     * one used by rewriteAppendOnlyFileBackground() function. */
    FUNC24(tmpfile,256,"temp-rewriteaof-%d.aof", (int) FUNC12());
    fp = FUNC10(tmpfile,"w");
    if (!fp) {
        FUNC23(LL_WARNING, "Opening the temp file for AOF rewrite in rewriteAppendOnlyFile(): %s", FUNC25(errno));
        return C_ERR;
    }

    if (background) server.aof_child_diff = FUNC19();
    FUNC15(&aof,fp);
    if (server.aof_rewrite_incremental_fsync)
        FUNC16(&aof,AOF_AUTOSYNC_BYTES);

    /* Rerwite jobs that are in interesting states: active or queued.
     * ad LOADJOB commands. */
    di = FUNC3(server.jobs);
    struct dictEntry *de;
    while((de = FUNC5(di)) != NULL) {
        job *job = FUNC4(de);
        if (job->state != JOB_STATE_ACTIVE &&
            job->state != JOB_STATE_QUEUED) continue;

        char cmd[] = "*2\r\n$7\r\nLOADJOB\r\n";
        sds serialized = FUNC22(FUNC19(),job,SER_STORAGE);
        if (FUNC17(&aof,cmd,sizeof(cmd)-1) == 0) goto werr;
        if (FUNC18(&aof,serialized,FUNC21(serialized)) == 0)
            goto werr;
        FUNC20(serialized);
    }
    FUNC6(di);
    di = NULL; /* Don't free it at end. */

    /* If this is a synchronous rewrite, skip all the child-parent
     * handshake about the difference buffer. */
    if (!background) goto flush_and_rename;

    /* Do an initial slow fsync here while the parent is still sending
     * data, in order to make the next final fsync faster. */
    if (FUNC8(fp) == EOF) goto werr;
    if (FUNC11(FUNC9(fp)) == -1) goto werr;

    /* Read again a few times to get more data from the parent.
     * We can't read forever (the server may receive data from clients
     * faster than it is able to send data to the child), so we try to read
     * some more data in a loop as soon as there is a good chance more data
     * will come. If it looks like we are wasting time, we abort (this
     * happens after 20 ms without new data). */
    int nodata = 0;
    mstime_t start = FUNC13();
    while(FUNC13()-start < 1000 && nodata < 20) {
        if (FUNC0(server.aof_pipe_read_data_from_parent, AE_READABLE, 1) <= 0)
        {
            nodata++;
            continue;
        }
        nodata = 0; /* Start counting from zero, we stop on N *contiguous*
                       timeouts. */
        FUNC2();
    }

    /* Ask the master to stop sending diffs. */
    if (FUNC28(server.aof_pipe_write_ack_to_parent,"!",1) != 1) goto werr;
    if (FUNC1(NULL,server.aof_pipe_read_ack_from_parent) != ANET_OK)
        goto werr;
    /* We read the ACK from the server using a 10 seconds timeout. Normally
     * it should reply ASAP, but just in case we lose its reply, we are sure
     * the child will eventually get terminated. */
    if (FUNC26(server.aof_pipe_read_ack_from_parent,&byte,1,5000) != 1 ||
        byte != '!') goto werr;
    FUNC23(LL_NOTICE,"Parent agreed to stop sending diffs. Finalizing AOF...");

    /* Read the final diff if any. */
    FUNC2();

    /* Write the received diff to the file. */
    FUNC23(LL_NOTICE,
        "Concatenating %.2f MB of AOF diff received from parent.",
        (double) FUNC21(server.aof_child_diff) / (1024*1024));
    if (FUNC17(&aof,server.aof_child_diff,FUNC21(server.aof_child_diff)) == 0)
        goto werr;

flush_and_rename:
    /* Make sure data will not remain on the OS's output buffers */
    if (FUNC8(fp) == EOF) goto werr;
    if (FUNC11(FUNC9(fp)) == -1) goto werr;
    if (FUNC7(fp) == EOF) goto werr;

    /* Use RENAME to make sure the AOF file is changed atomically only
     * if the generate AOF file is ok. */
    if (FUNC14(tmpfile,filename) == -1) {
        FUNC23(LL_WARNING,"Error moving temp append only file on the final destination: %s", FUNC25(errno));
        FUNC27(tmpfile);
        return C_ERR;
    }
    FUNC23(LL_NOTICE,"SYNC append only file rewrite performed");
    return C_OK;

werr:
    FUNC23(LL_WARNING,"Write error writing append only file on disk: %s", FUNC25(errno));
    FUNC7(fp);
    FUNC27(tmpfile);
    if (di) FUNC6(di);
    return C_ERR;
}