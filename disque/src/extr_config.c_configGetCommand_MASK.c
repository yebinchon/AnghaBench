#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_13__ {char* ptr; } ;
typedef  TYPE_2__ robj ;
struct TYPE_14__ {TYPE_2__** argv; } ;
typedef  TYPE_3__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_15__ {scalar_t__ aof_state; int unixsocketperm; int /*<<< orphan*/  bindaddr_count; int /*<<< orphan*/  bindaddr; TYPE_1__* client_obuf_limits; int /*<<< orphan*/  syslog_facility; int /*<<< orphan*/  aof_fsync; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  maxmemory_policy; int /*<<< orphan*/  aof_enqueue_jobs_once; int /*<<< orphan*/  aof_load_truncated; int /*<<< orphan*/  aof_rewrite_incremental_fsync; int /*<<< orphan*/  activerehashing; int /*<<< orphan*/  daemonize; int /*<<< orphan*/  aof_no_fsync_on_rewrite; int /*<<< orphan*/  tcpkeepalive; int /*<<< orphan*/  cluster_node_timeout; int /*<<< orphan*/  hz; int /*<<< orphan*/  watchdog_period; int /*<<< orphan*/  maxclients; int /*<<< orphan*/  dbnum; int /*<<< orphan*/  tcp_backlog; int /*<<< orphan*/  port; int /*<<< orphan*/  slowlog_max_len; int /*<<< orphan*/  latency_monitor_threshold; int /*<<< orphan*/  slowlog_log_slower_than; int /*<<< orphan*/  aof_rewrite_min_size; int /*<<< orphan*/  aof_rewrite_perc; int /*<<< orphan*/  maxidletime; int /*<<< orphan*/  maxmemory_samples; int /*<<< orphan*/  maxmemory; int /*<<< orphan*/  pidfile; int /*<<< orphan*/  logfile; int /*<<< orphan*/  unixsocket; int /*<<< orphan*/  requirepass; } ;
struct TYPE_12__ {scalar_t__ soft_limit_seconds; int /*<<< orphan*/  soft_limit_bytes; int /*<<< orphan*/  hard_limit_bytes; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int CLIENT_TYPE_COUNT ; 
 void* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  aof_fsync_enum ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int) ; 
 int /*<<< orphan*/  loglevel_enum ; 
 int /*<<< orphan*/  maxmemory_policy_enum ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 char* FUNC9 (char*,char*,int) ; 
 char* FUNC10 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 char* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_7__ server ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,int) ; 
 scalar_t__ FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  syslog_facility_enum ; 

void FUNC18(client *c) {
    robj *o = c->argv[2];
    void *replylen = FUNC0(c);
    char *pattern = o->ptr;
    char buf[128];
    int matches = 0;
    FUNC14(c,o,FUNC8(o));

    /* String values */
    FUNC5("requirepass",server.requirepass);
    FUNC5("unixsocket",server.unixsocket);
    FUNC5("logfile",server.logfile);
    FUNC5("pidfile",server.pidfile);

    /* Numerical values */
    FUNC4("maxmemory",server.maxmemory);
    FUNC4("maxmemory-samples",server.maxmemory_samples);
    FUNC4("timeout",server.maxidletime);
    FUNC4("auto-aof-rewrite-percentage",
            server.aof_rewrite_perc);
    FUNC4("auto-aof-rewrite-min-size",
            server.aof_rewrite_min_size);
    FUNC4("slowlog-log-slower-than",
            server.slowlog_log_slower_than);
    FUNC4("latency-monitor-threshold",
            server.latency_monitor_threshold);
    FUNC4("slowlog-max-len",
            server.slowlog_max_len);
    FUNC4("port",server.port);
    FUNC4("tcp-backlog",server.tcp_backlog);
    FUNC4("databases",server.dbnum);
    FUNC4("maxclients",server.maxclients);
    FUNC4("watchdog-period",server.watchdog_period);
    FUNC4("hz",server.hz);
    FUNC4("cluster-node-timeout",server.cluster_node_timeout);

    /* Bool (yes/no) values */
    FUNC2("tcp-keepalive",server.tcpkeepalive);
    FUNC2("no-appendfsync-on-rewrite",
            server.aof_no_fsync_on_rewrite);
    FUNC2("daemonize", server.daemonize);
    FUNC2("activerehashing", server.activerehashing);
    FUNC2("aof-rewrite-incremental-fsync",
            server.aof_rewrite_incremental_fsync);
    FUNC2("aof-load-truncated",
            server.aof_load_truncated);
    FUNC2("aof-enqueue-jobs-once",
            server.aof_enqueue_jobs_once);

    /* Enum values */
    FUNC3("maxmemory-policy",
            server.maxmemory_policy,maxmemory_policy_enum);
    FUNC3("loglevel",
            server.verbosity,loglevel_enum);
    FUNC3("appendfsync",
            server.aof_fsync,aof_fsync_enum);
    FUNC3("syslog-facility",
            server.syslog_facility,syslog_facility_enum);

    /* Everything we can't handle with macros follows. */

    if (FUNC17(pattern,"appendonly",0)) {
        FUNC1(c,"appendonly");
        FUNC1(c,server.aof_state == AOF_OFF ? "no" : "yes");
        matches++;
    }
    if (FUNC17(pattern,"dir",0)) {
        char buf[1024];

        if (FUNC7(buf,sizeof(buf)) == NULL)
            buf[0] = '\0';

        FUNC1(c,"dir");
        FUNC1(c,buf);
        matches++;
    }
    if (FUNC17(pattern,"client-output-buffer-limit",0)) {
        sds buf = FUNC11();
        int j;

        for (j = 0; j < CLIENT_TYPE_COUNT; j++) {
            buf = FUNC10(buf,"%s %llu %llu %ld",
                    FUNC6(j),
                    server.client_obuf_limits[j].hard_limit_bytes,
                    server.client_obuf_limits[j].soft_limit_bytes,
                    (long) server.client_obuf_limits[j].soft_limit_seconds);
            if (j != CLIENT_TYPE_COUNT-1)
                buf = FUNC9(buf," ",1);
        }
        FUNC1(c,"client-output-buffer-limit");
        FUNC1(c,buf);
        FUNC12(buf);
        matches++;
    }
    if (FUNC17(pattern,"unixsocketperm",0)) {
        char buf[32];
        FUNC16(buf,sizeof(buf),"%o",server.unixsocketperm);
        FUNC1(c,"unixsocketperm");
        FUNC1(c,buf);
        matches++;
    }
    if (FUNC17(pattern,"bind",0)) {
        sds aux = FUNC13(server.bindaddr,server.bindaddr_count," ");

        FUNC1(c,"bind");
        FUNC1(c,aux);
        FUNC12(aux);
        matches++;
    }
    FUNC15(c,replylen,matches*2);
}