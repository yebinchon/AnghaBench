
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; int aof_fd; int aof_selected_db; int aof_child_pid; int aof_rewrite_time_start; } ;


 scalar_t__ AOF_OFF ;
 int LL_NOTICE ;
 int SIGUSR1 ;
 int aofClosePipes () ;
 int aofRemoveTempFile (int) ;
 int aofRewriteBufferReset () ;
 int aof_fsync (int) ;
 int close (int) ;
 int flushAppendOnlyFile (int) ;
 int kill (int,int ) ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,long) ;
 int wait3 (int*,int ,int *) ;

void stopAppendOnly(void) {
    serverAssert(server.aof_state != AOF_OFF);
    flushAppendOnlyFile(1);
    aof_fsync(server.aof_fd);
    close(server.aof_fd);

    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_state = AOF_OFF;

    if (server.aof_child_pid != -1) {
        int statloc;

        serverLog(LL_NOTICE,"Killing running AOF rewrite child: %ld",
            (long) server.aof_child_pid);
        if (kill(server.aof_child_pid,SIGUSR1) != -1)
            wait3(&statloc,0,((void*)0));

        aofRewriteBufferReset();
        aofRemoveTempFile(server.aof_child_pid);
        server.aof_child_pid = -1;
        server.aof_rewrite_time_start = -1;

        aofClosePipes();
    }
}
