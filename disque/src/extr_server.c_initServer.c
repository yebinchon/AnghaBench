
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ port; scalar_t__* ipfd; int ipfd_count; scalar_t__ sofd; int aof_child_pid; scalar_t__ aof_state; int aof_fd; int arch_bits; long long maxmemory; int maxmemory_policy; int aof_filename; int el; scalar_t__ aof_last_write_errno; int aof_last_write_status; scalar_t__ resident_set_size; scalar_t__ stat_peak_memory; int stat_starttime; int aof_buf; scalar_t__ cronloops; int awakeme; void* ready_queues; void* queues; void* jobs; int neterr; int tcp_backlog; int unixsocketperm; int * unixsocket; scalar_t__ maxclients; scalar_t__ clients_paused; void* ready_keys; void* unblocked_clients; void* clients_pending_write; void* monitors; void* clients_to_close; void* clients; int * current_client; int pid; int syslog_facility; int syslog_ident; scalar_t__ syslog_enabled; } ;


 scalar_t__ AE_ERR ;
 int AE_READABLE ;
 scalar_t__ ANET_ERR ;
 scalar_t__ AOF_ON ;
 scalar_t__ CONFIG_FDSET_INCR ;
 scalar_t__ C_ERR ;
 int C_OK ;
 int LL_WARNING ;
 int LOG_NDELAY ;
 int LOG_NOWAIT ;
 int LOG_PID ;
 int MAXMEMORY_NO_EVICTION ;
 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int SIGHUP ;
 int SIGPIPE ;
 int SIG_IGN ;
 int acceptTcpHandler ;
 int acceptUnixHandler ;
 int adjustOpenFilesLimit () ;
 int aeCreateEventLoop (scalar_t__) ;
 scalar_t__ aeCreateFileEvent (int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ aeCreateTimeEvent (int ,int,int ,int *,int *) ;
 int anetNonBlock (int *,scalar_t__) ;
 scalar_t__ anetUnixServer (int ,int *,int ,int ) ;
 int aofRewriteBufferReset () ;
 int bioInit () ;
 int clusterInit () ;
 int createSharedObjects () ;
 void* dictCreate (int *,int *) ;
 int errno ;
 int exit (int) ;
 int getpid () ;
 int jobsDictType ;
 int latencyMonitorInit () ;
 void* listCreate () ;
 scalar_t__ listenToPort (scalar_t__,scalar_t__*,int*) ;
 int open (int ,int,int) ;
 int openlog (int ,int,int ) ;
 int processJobs ;
 int queuesDictType ;
 int resetServerStats () ;
 int sdsempty () ;
 TYPE_1__ server ;
 int serverCron ;
 int serverLog (int ,char*,...) ;
 int serverPanic (char*) ;
 int setDictType ;
 int setupSignalHandlers () ;
 int signal (int ,int ) ;
 int skiplistCompareJobsToAwake ;
 int skiplistCreate (int ) ;
 int slowlogInit () ;
 int strerror (int ) ;
 int time (int *) ;
 int unlink (int *) ;
 int updateCachedTime () ;

void initServer(void) {
    int j;

    signal(SIGHUP, SIG_IGN);
    signal(SIGPIPE, SIG_IGN);
    setupSignalHandlers();

    if (server.syslog_enabled) {
        openlog(server.syslog_ident, LOG_PID | LOG_NDELAY | LOG_NOWAIT,
            server.syslog_facility);
    }

    server.pid = getpid();
    server.current_client = ((void*)0);
    server.clients = listCreate();
    server.clients_to_close = listCreate();
    server.monitors = listCreate();
    server.clients_pending_write = listCreate();
    server.unblocked_clients = listCreate();
    server.ready_keys = listCreate();
    server.clients_paused = 0;

    createSharedObjects();
    adjustOpenFilesLimit();
    server.el = aeCreateEventLoop(server.maxclients+CONFIG_FDSET_INCR);

    if (server.port != 0 &&
        listenToPort(server.port,server.ipfd,&server.ipfd_count) == C_ERR)
        exit(1);


    if (server.unixsocket != ((void*)0)) {
        unlink(server.unixsocket);
        server.sofd = anetUnixServer(server.neterr,server.unixsocket,
            server.unixsocketperm, server.tcp_backlog);
        if (server.sofd == ANET_ERR) {
            serverLog(LL_WARNING, "Opening Unix socket: %s", server.neterr);
            exit(1);
        }
        anetNonBlock(((void*)0),server.sofd);
    }


    if (server.ipfd_count == 0 && server.sofd < 0) {
        serverLog(LL_WARNING, "Configured to not listen anywhere, exiting.");
        exit(1);
    }


    server.jobs = dictCreate(&jobsDictType,((void*)0));
    server.queues = dictCreate(&queuesDictType,((void*)0));
    server.ready_queues = dictCreate(&setDictType,((void*)0));
    server.awakeme = skiplistCreate(skiplistCompareJobsToAwake);
    server.cronloops = 0;
    server.aof_child_pid = -1;
    aofRewriteBufferReset();
    server.aof_buf = sdsempty();
    resetServerStats();


    server.stat_starttime = time(((void*)0));
    server.stat_peak_memory = 0;
    server.resident_set_size = 0;
    server.aof_last_write_status = C_OK;
    server.aof_last_write_errno = 0;
    updateCachedTime();



    if(aeCreateTimeEvent(server.el, 1, serverCron, ((void*)0), ((void*)0)) == AE_ERR ||
       aeCreateTimeEvent(server.el, 1, processJobs, ((void*)0), ((void*)0)) == AE_ERR)
    {
        serverPanic("Can't create the serverCron or processJobs time event.");
        exit(1);
    }



    for (j = 0; j < server.ipfd_count; j++) {
        if (aeCreateFileEvent(server.el, server.ipfd[j], AE_READABLE,
            acceptTcpHandler,((void*)0)) == AE_ERR)
            {
                serverPanic(
                    "Unrecoverable error creating server.ipfd file event.");
            }
    }
    if (server.sofd > 0 && aeCreateFileEvent(server.el,server.sofd,AE_READABLE,
        acceptUnixHandler,((void*)0)) == AE_ERR) serverPanic("Unrecoverable error creating server.sofd file event.");


    if (server.aof_state == AOF_ON) {
        server.aof_fd = open(server.aof_filename,
                               O_WRONLY|O_APPEND|O_CREAT,0644);
        if (server.aof_fd == -1) {
            serverLog(LL_WARNING, "Can't open the append-only file: %s",
                strerror(errno));
            exit(1);
        }
    }





    if (server.arch_bits == 32 && server.maxmemory == 0) {
        serverLog(LL_WARNING,"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.");
        server.maxmemory = 3072LL*(1024*1024);
        server.maxmemory_policy = MAXMEMORY_NO_EVICTION;
    }

    clusterInit();
    slowlogInit();
    latencyMonitorInit();
    bioInit();
}
