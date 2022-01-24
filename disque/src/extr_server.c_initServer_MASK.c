#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ port; scalar_t__* ipfd; int ipfd_count; scalar_t__ sofd; int aof_child_pid; scalar_t__ aof_state; int aof_fd; int arch_bits; long long maxmemory; int /*<<< orphan*/  maxmemory_policy; int /*<<< orphan*/  aof_filename; int /*<<< orphan*/  el; scalar_t__ aof_last_write_errno; int /*<<< orphan*/  aof_last_write_status; scalar_t__ resident_set_size; scalar_t__ stat_peak_memory; int /*<<< orphan*/  stat_starttime; int /*<<< orphan*/  aof_buf; scalar_t__ cronloops; int /*<<< orphan*/  awakeme; void* ready_queues; void* queues; void* jobs; int /*<<< orphan*/  neterr; int /*<<< orphan*/  tcp_backlog; int /*<<< orphan*/  unixsocketperm; int /*<<< orphan*/ * unixsocket; scalar_t__ maxclients; scalar_t__ clients_paused; void* ready_keys; void* unblocked_clients; void* clients_pending_write; void* monitors; void* clients_to_close; void* clients; int /*<<< orphan*/ * current_client; int /*<<< orphan*/  pid; int /*<<< orphan*/  syslog_facility; int /*<<< orphan*/  syslog_ident; scalar_t__ syslog_enabled; } ;

/* Variables and functions */
 scalar_t__ AE_ERR ; 
 int /*<<< orphan*/  AE_READABLE ; 
 scalar_t__ ANET_ERR ; 
 scalar_t__ AOF_ON ; 
 scalar_t__ CONFIG_FDSET_INCR ; 
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  C_OK ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int LOG_NDELAY ; 
 int LOG_NOWAIT ; 
 int LOG_PID ; 
 int /*<<< orphan*/  MAXMEMORY_NO_EVICTION ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  acceptTcpHandler ; 
 int /*<<< orphan*/  acceptUnixHandler ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  jobsDictType ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* FUNC14 () ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__*,int*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processJobs ; 
 int /*<<< orphan*/  queuesDictType ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  serverCron ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  setDictType ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  skiplistCompareJobsToAwake ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 () ; 

void FUNC30(void) {
    int j;

    FUNC23(SIGHUP, SIG_IGN);
    FUNC23(SIGPIPE, SIG_IGN);
    FUNC22();

    if (server.syslog_enabled) {
        FUNC17(server.syslog_ident, LOG_PID | LOG_NDELAY | LOG_NOWAIT,
            server.syslog_facility);
    }

    server.pid = FUNC12();
    server.current_client = NULL;
    server.clients = FUNC14();
    server.clients_to_close = FUNC14();
    server.monitors = FUNC14();
    server.clients_pending_write = FUNC14();
    server.unblocked_clients = FUNC14();
    server.ready_keys = FUNC14();
    server.clients_paused = 0;

    FUNC9();
    FUNC0();
    server.el = FUNC1(server.maxclients+CONFIG_FDSET_INCR);
    /* Open the TCP listening socket for the user commands. */
    if (server.port != 0 &&
        FUNC15(server.port,server.ipfd,&server.ipfd_count) == C_ERR)
        FUNC11(1);

    /* Open the listening Unix domain socket. */
    if (server.unixsocket != NULL) {
        FUNC28(server.unixsocket); /* don't care if this fails */
        server.sofd = FUNC5(server.neterr,server.unixsocket,
            server.unixsocketperm, server.tcp_backlog);
        if (server.sofd == ANET_ERR) {
            FUNC20(LL_WARNING, "Opening Unix socket: %s", server.neterr);
            FUNC11(1);
        }
        FUNC4(NULL,server.sofd);
    }

    /* Abort if there are no listening sockets at all. */
    if (server.ipfd_count == 0 && server.sofd < 0) {
        FUNC20(LL_WARNING, "Configured to not listen anywhere, exiting.");
        FUNC11(1);
    }

    /* Create the Disque data structures, and init other internal state. */
    server.jobs = FUNC10(&jobsDictType,NULL);
    server.queues = FUNC10(&queuesDictType,NULL);
    server.ready_queues = FUNC10(&setDictType,NULL);
    server.awakeme = FUNC24(skiplistCompareJobsToAwake);
    server.cronloops = 0;
    server.aof_child_pid = -1;
    FUNC6();
    server.aof_buf = FUNC19();
    FUNC18();

    /* A few stats we don't want to reset: server startup time, and peak mem. */
    server.stat_starttime = FUNC27(NULL);
    server.stat_peak_memory = 0;
    server.resident_set_size = 0;
    server.aof_last_write_status = C_OK;
    server.aof_last_write_errno = 0;
    FUNC29();

    /* Create the serverCron() time event, that's our main way to process
     * background operations. */
    if(FUNC3(server.el, 1, serverCron, NULL, NULL) == AE_ERR ||
       FUNC3(server.el, 1, processJobs, NULL, NULL) == AE_ERR)
    {
        FUNC21("Can't create the serverCron or processJobs time event.");
        FUNC11(1);
    }

    /* Create an event handler for accepting new connections in TCP and Unix
     * domain sockets. */
    for (j = 0; j < server.ipfd_count; j++) {
        if (FUNC2(server.el, server.ipfd[j], AE_READABLE,
            acceptTcpHandler,NULL) == AE_ERR)
            {
                FUNC21(
                    "Unrecoverable error creating server.ipfd file event.");
            }
    }
    if (server.sofd > 0 && FUNC2(server.el,server.sofd,AE_READABLE,
        acceptUnixHandler,NULL) == AE_ERR) FUNC21("Unrecoverable error creating server.sofd file event.");

    /* Open the AOF file if needed. */
    if (server.aof_state == AOF_ON) {
        server.aof_fd = FUNC16(server.aof_filename,
                               O_WRONLY|O_APPEND|O_CREAT,0644);
        if (server.aof_fd == -1) {
            FUNC20(LL_WARNING, "Can't open the append-only file: %s",
                FUNC26(errno));
            FUNC11(1);
        }
    }

    /* 32 bit instances are limited to 4GB of address space, so if there is
     * no explicit limit in the user provided configuration we set a limit
     * at 3 GB using maxmemory with 'noeviction' policy'. This avoids
     * useless crashes of the Disque instance for out of memory. */
    if (server.arch_bits == 32 && server.maxmemory == 0) {
        FUNC20(LL_WARNING,"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.");
        server.maxmemory = 3072LL*(1024*1024); /* 3 GB */
        server.maxmemory_policy = MAXMEMORY_NO_EVICTION;
    }

    FUNC8();
    FUNC25();
    FUNC13();
    FUNC7();
}