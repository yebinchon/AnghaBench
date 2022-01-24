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
struct rewriteConfigState {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
struct TYPE_2__ {int daemonize; int syslog_enabled; scalar_t__ aof_state; int aof_no_fsync_on_rewrite; int activerehashing; int aof_rewrite_incremental_fsync; int aof_load_truncated; int aof_enqueue_jobs_once; int /*<<< orphan*/  configfile; int /*<<< orphan*/  hz; int /*<<< orphan*/  slowlog_max_len; int /*<<< orphan*/  latency_monitor_threshold; int /*<<< orphan*/  slowlog_log_slower_than; int /*<<< orphan*/  cluster_node_timeout; int /*<<< orphan*/  cluster_configfile; int /*<<< orphan*/  aof_rewrite_min_size; int /*<<< orphan*/  aof_rewrite_perc; int /*<<< orphan*/  aof_fsync; int /*<<< orphan*/  aof_filename; int /*<<< orphan*/  maxmemory_samples; int /*<<< orphan*/  maxmemory_policy; int /*<<< orphan*/  maxmemory; int /*<<< orphan*/  maxclients; int /*<<< orphan*/  requirepass; int /*<<< orphan*/  syslog_ident; int /*<<< orphan*/  logfile; int /*<<< orphan*/  verbosity; int /*<<< orphan*/  tcpkeepalive; int /*<<< orphan*/  maxidletime; int /*<<< orphan*/  unixsocketperm; int /*<<< orphan*/  unixsocket; int /*<<< orphan*/  tcp_backlog; int /*<<< orphan*/  port; int /*<<< orphan*/  pidfile; } ;

/* Variables and functions */
 scalar_t__ AOF_OFF ; 
 int /*<<< orphan*/  AOF_REWRITE_MIN_SIZE ; 
 int /*<<< orphan*/  AOF_REWRITE_PERC ; 
 int /*<<< orphan*/  CLUSTER_DEFAULT_NODE_TIMEOUT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_ACTIVE_REHASHING ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_AOF_FILENAME ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_FSYNC ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_LOAD_TRUNCATED ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_CLIENT_TIMEOUT ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_HZ ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_LOGFILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY_POLICY ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAXMEMORY_SAMPLES ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_MAX_CLIENTS ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_PID_FILE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SERVER_PORT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SLOWLOG_MAX_LEN ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_SYSLOG_ENABLED ; 
 int /*<<< orphan*/ * CONFIG_DEFAULT_SYSLOG_IDENT ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_TCP_BACKLOG ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_TCP_KEEPALIVE ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_UNIX_SOCKET_PERM ; 
 int /*<<< orphan*/  CONFIG_DEFAULT_VERBOSITY ; 
 int /*<<< orphan*/  aof_fsync_enum ; 
 int /*<<< orphan*/  loglevel_enum ; 
 int /*<<< orphan*/  maxmemory_policy_enum ; 
 int /*<<< orphan*/  FUNC0 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC1 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC3 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC4 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC6 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rewriteConfigState* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC11 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC12 (struct rewriteConfigState*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rewriteConfigState*) ; 
 int /*<<< orphan*/  FUNC14 (struct rewriteConfigState*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__ server ; 

int FUNC16(char *path) {
    struct rewriteConfigState *state;
    sds newcontent;
    int retval;

    /* Step 1: read the old config into our rewrite state. */
    if ((state = FUNC9(path)) == NULL) return -1;

    /* Step 2: rewrite every single option, replacing or appending it inside
     * the rewrite state. */

    FUNC14(state,"daemonize",server.daemonize,0);
    FUNC12(state,"pidfile",server.pidfile,CONFIG_DEFAULT_PID_FILE);
    FUNC6(state,"port",server.port,CONFIG_DEFAULT_SERVER_PORT);
    FUNC6(state,"tcp-backlog",server.tcp_backlog,CONFIG_DEFAULT_TCP_BACKLOG);
    FUNC0(state);
    FUNC12(state,"unixsocket",server.unixsocket,NULL);
    FUNC7(state,"unixsocketperm",server.unixsocketperm,CONFIG_DEFAULT_UNIX_SOCKET_PERM);
    FUNC6(state,"timeout",server.maxidletime,CONFIG_DEFAULT_CLIENT_TIMEOUT);
    FUNC6(state,"tcp-keepalive",server.tcpkeepalive,CONFIG_DEFAULT_TCP_KEEPALIVE);
    FUNC4(state,"loglevel",server.verbosity,loglevel_enum,CONFIG_DEFAULT_VERBOSITY);
    FUNC12(state,"logfile",server.logfile,CONFIG_DEFAULT_LOGFILE);
    FUNC14(state,"syslog-enabled",server.syslog_enabled,CONFIG_DEFAULT_SYSLOG_ENABLED);
    FUNC12(state,"syslog-ident",server.syslog_ident,CONFIG_DEFAULT_SYSLOG_IDENT);
    FUNC13(state);
    FUNC3(state);
    FUNC12(state,"requirepass",server.requirepass,NULL);
    FUNC6(state,"maxclients",server.maxclients,CONFIG_DEFAULT_MAX_CLIENTS);
    FUNC1(state,"maxmemory",server.maxmemory,CONFIG_DEFAULT_MAXMEMORY);
    FUNC4(state,"maxmemory-policy",server.maxmemory_policy,maxmemory_policy_enum,CONFIG_DEFAULT_MAXMEMORY_POLICY);
    FUNC6(state,"maxmemory-samples",server.maxmemory_samples,CONFIG_DEFAULT_MAXMEMORY_SAMPLES);
    FUNC14(state,"appendonly",server.aof_state != AOF_OFF,0);
    FUNC12(state,"appendfilename",server.aof_filename,CONFIG_DEFAULT_AOF_FILENAME);
    FUNC4(state,"appendfsync",server.aof_fsync,aof_fsync_enum,CONFIG_DEFAULT_AOF_FSYNC);
    FUNC14(state,"no-appendfsync-on-rewrite",server.aof_no_fsync_on_rewrite,CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE);
    FUNC6(state,"auto-aof-rewrite-percentage",server.aof_rewrite_perc,AOF_REWRITE_PERC);
    FUNC1(state,"auto-aof-rewrite-min-size",server.aof_rewrite_min_size,AOF_REWRITE_MIN_SIZE);
    FUNC12(state,"cluster-config-file",server.cluster_configfile,CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    FUNC6(state,"cluster-node-timeout",server.cluster_node_timeout,CLUSTER_DEFAULT_NODE_TIMEOUT);
    FUNC6(state,"slowlog-log-slower-than",server.slowlog_log_slower_than,CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN);
    FUNC6(state,"latency-monitor-threshold",server.latency_monitor_threshold,CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD);
    FUNC6(state,"slowlog-max-len",server.slowlog_max_len,CONFIG_DEFAULT_SLOWLOG_MAX_LEN);
    FUNC14(state,"activerehashing",server.activerehashing,CONFIG_DEFAULT_ACTIVE_REHASHING);
    FUNC2(state);
    FUNC6(state,"hz",server.hz,CONFIG_DEFAULT_HZ);
    FUNC14(state,"aof-rewrite-incremental-fsync",server.aof_rewrite_incremental_fsync,CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC);
    FUNC14(state,"aof-load-truncated",server.aof_load_truncated,CONFIG_DEFAULT_AOF_LOAD_TRUNCATED);
    FUNC14(state,"aof-enqueue-jobs-once",server.aof_enqueue_jobs_once,CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE);

    /* Step 3: remove all the orphaned lines in the old file, that is, lines
     * that were used by a config option and are no longer used, like in case
     * of multiple "save" options or duplicated options. */
    FUNC11(state);

    /* Step 4: generate a new configuration file from the modified state
     * and write it into the original file. */
    newcontent = FUNC5(state);
    retval = FUNC8(server.configfile,newcontent);

    FUNC15(newcontent);
    FUNC10(state);
    return retval;
}