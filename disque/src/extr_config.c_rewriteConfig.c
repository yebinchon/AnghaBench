
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rewriteConfigState {int dummy; } ;
typedef int sds ;
struct TYPE_2__ {int daemonize; int syslog_enabled; scalar_t__ aof_state; int aof_no_fsync_on_rewrite; int activerehashing; int aof_rewrite_incremental_fsync; int aof_load_truncated; int aof_enqueue_jobs_once; int configfile; int hz; int slowlog_max_len; int latency_monitor_threshold; int slowlog_log_slower_than; int cluster_node_timeout; int cluster_configfile; int aof_rewrite_min_size; int aof_rewrite_perc; int aof_fsync; int aof_filename; int maxmemory_samples; int maxmemory_policy; int maxmemory; int maxclients; int requirepass; int syslog_ident; int logfile; int verbosity; int tcpkeepalive; int maxidletime; int unixsocketperm; int unixsocket; int tcp_backlog; int port; int pidfile; } ;


 scalar_t__ AOF_OFF ;
 int AOF_REWRITE_MIN_SIZE ;
 int AOF_REWRITE_PERC ;
 int CLUSTER_DEFAULT_NODE_TIMEOUT ;
 int CONFIG_DEFAULT_ACTIVE_REHASHING ;
 int CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE ;
 int * CONFIG_DEFAULT_AOF_FILENAME ;
 int CONFIG_DEFAULT_AOF_FSYNC ;
 int CONFIG_DEFAULT_AOF_LOAD_TRUNCATED ;
 int CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE ;
 int CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC ;
 int CONFIG_DEFAULT_CLIENT_TIMEOUT ;
 int * CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ;
 int CONFIG_DEFAULT_HZ ;
 int CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ;
 int * CONFIG_DEFAULT_LOGFILE ;
 int CONFIG_DEFAULT_MAXMEMORY ;
 int CONFIG_DEFAULT_MAXMEMORY_POLICY ;
 int CONFIG_DEFAULT_MAXMEMORY_SAMPLES ;
 int CONFIG_DEFAULT_MAX_CLIENTS ;
 int * CONFIG_DEFAULT_PID_FILE ;
 int CONFIG_DEFAULT_SERVER_PORT ;
 int CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ;
 int CONFIG_DEFAULT_SLOWLOG_MAX_LEN ;
 int CONFIG_DEFAULT_SYSLOG_ENABLED ;
 int * CONFIG_DEFAULT_SYSLOG_IDENT ;
 int CONFIG_DEFAULT_TCP_BACKLOG ;
 int CONFIG_DEFAULT_TCP_KEEPALIVE ;
 int CONFIG_DEFAULT_UNIX_SOCKET_PERM ;
 int CONFIG_DEFAULT_VERBOSITY ;
 int aof_fsync_enum ;
 int loglevel_enum ;
 int maxmemory_policy_enum ;
 int rewriteConfigBindOption (struct rewriteConfigState*) ;
 int rewriteConfigBytesOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigClientoutputbufferlimitOption (struct rewriteConfigState*) ;
 int rewriteConfigDirOption (struct rewriteConfigState*) ;
 int rewriteConfigEnumOption (struct rewriteConfigState*,char*,int ,int ,int ) ;
 int rewriteConfigGetContentFromState (struct rewriteConfigState*) ;
 int rewriteConfigNumericalOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigOctalOption (struct rewriteConfigState*,char*,int ,int ) ;
 int rewriteConfigOverwriteFile (int ,int ) ;
 struct rewriteConfigState* rewriteConfigReadOldFile (char*) ;
 int rewriteConfigReleaseState (struct rewriteConfigState*) ;
 int rewriteConfigRemoveOrphaned (struct rewriteConfigState*) ;
 int rewriteConfigStringOption (struct rewriteConfigState*,char*,int ,int *) ;
 int rewriteConfigSyslogfacilityOption (struct rewriteConfigState*) ;
 int rewriteConfigYesNoOption (struct rewriteConfigState*,char*,int,int ) ;
 int sdsfree (int ) ;
 TYPE_1__ server ;

int rewriteConfig(char *path) {
    struct rewriteConfigState *state;
    sds newcontent;
    int retval;


    if ((state = rewriteConfigReadOldFile(path)) == ((void*)0)) return -1;




    rewriteConfigYesNoOption(state,"daemonize",server.daemonize,0);
    rewriteConfigStringOption(state,"pidfile",server.pidfile,CONFIG_DEFAULT_PID_FILE);
    rewriteConfigNumericalOption(state,"port",server.port,CONFIG_DEFAULT_SERVER_PORT);
    rewriteConfigNumericalOption(state,"tcp-backlog",server.tcp_backlog,CONFIG_DEFAULT_TCP_BACKLOG);
    rewriteConfigBindOption(state);
    rewriteConfigStringOption(state,"unixsocket",server.unixsocket,((void*)0));
    rewriteConfigOctalOption(state,"unixsocketperm",server.unixsocketperm,CONFIG_DEFAULT_UNIX_SOCKET_PERM);
    rewriteConfigNumericalOption(state,"timeout",server.maxidletime,CONFIG_DEFAULT_CLIENT_TIMEOUT);
    rewriteConfigNumericalOption(state,"tcp-keepalive",server.tcpkeepalive,CONFIG_DEFAULT_TCP_KEEPALIVE);
    rewriteConfigEnumOption(state,"loglevel",server.verbosity,loglevel_enum,CONFIG_DEFAULT_VERBOSITY);
    rewriteConfigStringOption(state,"logfile",server.logfile,CONFIG_DEFAULT_LOGFILE);
    rewriteConfigYesNoOption(state,"syslog-enabled",server.syslog_enabled,CONFIG_DEFAULT_SYSLOG_ENABLED);
    rewriteConfigStringOption(state,"syslog-ident",server.syslog_ident,CONFIG_DEFAULT_SYSLOG_IDENT);
    rewriteConfigSyslogfacilityOption(state);
    rewriteConfigDirOption(state);
    rewriteConfigStringOption(state,"requirepass",server.requirepass,((void*)0));
    rewriteConfigNumericalOption(state,"maxclients",server.maxclients,CONFIG_DEFAULT_MAX_CLIENTS);
    rewriteConfigBytesOption(state,"maxmemory",server.maxmemory,CONFIG_DEFAULT_MAXMEMORY);
    rewriteConfigEnumOption(state,"maxmemory-policy",server.maxmemory_policy,maxmemory_policy_enum,CONFIG_DEFAULT_MAXMEMORY_POLICY);
    rewriteConfigNumericalOption(state,"maxmemory-samples",server.maxmemory_samples,CONFIG_DEFAULT_MAXMEMORY_SAMPLES);
    rewriteConfigYesNoOption(state,"appendonly",server.aof_state != AOF_OFF,0);
    rewriteConfigStringOption(state,"appendfilename",server.aof_filename,CONFIG_DEFAULT_AOF_FILENAME);
    rewriteConfigEnumOption(state,"appendfsync",server.aof_fsync,aof_fsync_enum,CONFIG_DEFAULT_AOF_FSYNC);
    rewriteConfigYesNoOption(state,"no-appendfsync-on-rewrite",server.aof_no_fsync_on_rewrite,CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE);
    rewriteConfigNumericalOption(state,"auto-aof-rewrite-percentage",server.aof_rewrite_perc,AOF_REWRITE_PERC);
    rewriteConfigBytesOption(state,"auto-aof-rewrite-min-size",server.aof_rewrite_min_size,AOF_REWRITE_MIN_SIZE);
    rewriteConfigStringOption(state,"cluster-config-file",server.cluster_configfile,CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    rewriteConfigNumericalOption(state,"cluster-node-timeout",server.cluster_node_timeout,CLUSTER_DEFAULT_NODE_TIMEOUT);
    rewriteConfigNumericalOption(state,"slowlog-log-slower-than",server.slowlog_log_slower_than,CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN);
    rewriteConfigNumericalOption(state,"latency-monitor-threshold",server.latency_monitor_threshold,CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD);
    rewriteConfigNumericalOption(state,"slowlog-max-len",server.slowlog_max_len,CONFIG_DEFAULT_SLOWLOG_MAX_LEN);
    rewriteConfigYesNoOption(state,"activerehashing",server.activerehashing,CONFIG_DEFAULT_ACTIVE_REHASHING);
    rewriteConfigClientoutputbufferlimitOption(state);
    rewriteConfigNumericalOption(state,"hz",server.hz,CONFIG_DEFAULT_HZ);
    rewriteConfigYesNoOption(state,"aof-rewrite-incremental-fsync",server.aof_rewrite_incremental_fsync,CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC);
    rewriteConfigYesNoOption(state,"aof-load-truncated",server.aof_load_truncated,CONFIG_DEFAULT_AOF_LOAD_TRUNCATED);
    rewriteConfigYesNoOption(state,"aof-enqueue-jobs-once",server.aof_enqueue_jobs_once,CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE);




    rewriteConfigRemoveOrphaned(state);



    newcontent = rewriteConfigGetContentFromState(state);
    retval = rewriteConfigOverwriteFile(server.configfile,newcontent);

    sdsfree(newcontent);
    rewriteConfigReleaseState(state);
    return retval;
}
