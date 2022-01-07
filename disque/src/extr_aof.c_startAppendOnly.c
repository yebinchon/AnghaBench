
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aof_fd; scalar_t__ aof_state; int aof_filename; int unixtime; int aof_last_fsync; } ;


 scalar_t__ AOF_OFF ;
 scalar_t__ AOF_WAIT_REWRITE ;
 int C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int errno ;
 int open (int ,int,int) ;
 int rewriteAppendOnlyFileBackground () ;
 TYPE_1__ server ;
 int serverAssert (int) ;
 int serverLog (int ,char*,...) ;
 int strerror (int ) ;

int startAppendOnly(void) {
    server.aof_last_fsync = server.unixtime;
    server.aof_fd = open(server.aof_filename,O_WRONLY|O_APPEND|O_CREAT,0644);
    serverAssert(server.aof_state == AOF_OFF);
    if (server.aof_fd == -1) {
        serverLog(LL_WARNING,"Disque needs to enable the AOF but can't open the append only file: %s",strerror(errno));
        return C_ERR;
    }
    if (rewriteAppendOnlyFileBackground() == C_ERR) {
        close(server.aof_fd);
        serverLog(LL_WARNING,"Disque needs to enable the AOF but can't trigger a background AOF rewrite operation. Check the above logs for more info about the error.");
        return C_ERR;
    }


    server.aof_state = AOF_WAIT_REWRITE;
    return C_OK;
}
