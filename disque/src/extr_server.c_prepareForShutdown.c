
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ aof_state; int aof_child_pid; int pidfile; scalar_t__ daemonize; int aof_filename; int aof_fd; } ;


 scalar_t__ AOF_OFF ;
 scalar_t__ AOF_WAIT_REWRITE ;
 int C_ERR ;
 int C_OK ;
 int LL_NOTICE ;
 int LL_WARNING ;
 int SHUTDOWN_REWRITE_AOF ;
 int SIGUSR1 ;
 int aof_fsync (int ) ;
 int closeListeningSockets (int) ;
 int kill (int,int ) ;
 int rewriteAppendOnlyFile (int ,int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*) ;
 int unlink (int ) ;

int prepareForShutdown(int flags) {
    int rewrite = flags & SHUTDOWN_REWRITE_AOF;

    serverLog(LL_WARNING,"User requested shutdown...");



    if (server.aof_state != AOF_OFF) {


        if (server.aof_child_pid != -1) {


            if (server.aof_state == AOF_WAIT_REWRITE) {
                serverLog(LL_WARNING, "Writing initial AOF, can't exit.");
                return C_ERR;
            }
            serverLog(LL_WARNING,
                "There is a child rewriting the AOF. Killing it!");
            kill(server.aof_child_pid,SIGUSR1);
        }

        serverLog(LL_NOTICE,"Calling fsync() on the AOF file.");
        aof_fsync(server.aof_fd);
    }


    if (rewrite) {
        if (rewriteAppendOnlyFile(server.aof_filename,0) == C_ERR)
            return C_ERR;
    }

    if (server.daemonize) {
        serverLog(LL_NOTICE,"Removing the pid file.");
        unlink(server.pidfile);
    }


    closeListeningSockets(1);
    serverLog(LL_WARNING,"Disque is now ready to exit, bye bye...");
    return C_OK;
}
