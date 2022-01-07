
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* runid; char* jobid_seed; int arch_bits; int sofd; int active_expire_enabled; int aof_rewrite_time_last; int aof_rewrite_time_start; int aof_fd; int aof_selected_db; int next_client_id; int loading_process_events_interval_bytes; char* assert_failed; char* assert_file; scalar_t__ watchdog_period; scalar_t__ bug_report_start; scalar_t__ assert_line; int latency_monitor_threshold; int slowlog_max_len; int slowlog_log_slower_than; void* rpopCommand; void* lpopCommand; void* lpushCommand; void* multiCommand; void* delCommand; void* orig_commands; void* commands; int * client_obuf_limits; void* cluster_configfile; int cluster_node_timeout; scalar_t__ shutdown_asap; int maxmemory_samples; int maxmemory_policy; int maxmemory; scalar_t__ bpop_blocked_clients; int maxclients; int activerehashing; int * requirepass; void* aof_filename; void* pidfile; int aof_enqueue_jobs_once; int aof_load_truncated; int aof_rewrite_incremental_fsync; scalar_t__ aof_flush_postponed_start; scalar_t__ aof_delayed_fsync; int aof_lastbgrewrite_status; int aof_last_fsync; scalar_t__ aof_rewrite_scheduled; scalar_t__ aof_rewrite_base_size; int aof_rewrite_min_size; int aof_rewrite_perc; int aof_no_fsync_on_rewrite; int aof_fsync; int aof_state; int daemonize; int syslog_facility; void* syslog_ident; int syslog_enabled; void* logfile; scalar_t__ loading; int client_max_querybuf_len; int tcpkeepalive; int maxidletime; int verbosity; int dbnum; scalar_t__ ipfd_count; int unixsocketperm; int * unixsocket; scalar_t__ bindaddr_count; int tcp_backlog; int port; int hz; int * executable; int * configfile; } ;


 int AOF_OFF ;
 int AOF_REWRITE_MIN_SIZE ;
 int AOF_REWRITE_PERC ;
 int CLIENT_TYPE_COUNT ;
 int CLUSTER_DEFAULT_NODE_TIMEOUT ;
 int CONFIG_DEFAULT_ACTIVE_REHASHING ;
 int CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE ;
 int CONFIG_DEFAULT_AOF_FILENAME ;
 int CONFIG_DEFAULT_AOF_FSYNC ;
 int CONFIG_DEFAULT_AOF_LOAD_TRUNCATED ;
 int CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE ;
 int CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC ;
 int CONFIG_DEFAULT_CLIENT_TIMEOUT ;
 int CONFIG_DEFAULT_CLUSTER_CONFIG_FILE ;
 int CONFIG_DEFAULT_DAEMONIZE ;
 int CONFIG_DEFAULT_DBNUM ;
 int CONFIG_DEFAULT_HZ ;
 int CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD ;
 int CONFIG_DEFAULT_LOGFILE ;
 int CONFIG_DEFAULT_MAXMEMORY ;
 int CONFIG_DEFAULT_MAXMEMORY_POLICY ;
 int CONFIG_DEFAULT_MAXMEMORY_SAMPLES ;
 int CONFIG_DEFAULT_MAX_CLIENTS ;
 int CONFIG_DEFAULT_PID_FILE ;
 int CONFIG_DEFAULT_SERVER_PORT ;
 int CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN ;
 int CONFIG_DEFAULT_SLOWLOG_MAX_LEN ;
 int CONFIG_DEFAULT_SYSLOG_ENABLED ;
 int CONFIG_DEFAULT_SYSLOG_IDENT ;
 int CONFIG_DEFAULT_TCP_BACKLOG ;
 int CONFIG_DEFAULT_TCP_KEEPALIVE ;
 int CONFIG_DEFAULT_UNIX_SOCKET_PERM ;
 int CONFIG_DEFAULT_VERBOSITY ;
 size_t CONFIG_RUN_ID_SIZE ;
 int C_OK ;
 int LOG_LOCAL0 ;
 int PROTO_MAX_QUERYBUF_LEN ;
 double R_Nan ;
 double R_NegInf ;
 double R_PosInf ;
 double R_Zero ;
 int * clientBufferLimitsDefaults ;
 int commandTableDictType ;
 void* dictCreate (int *,int *) ;
 int getRandomHexChars (char*,size_t) ;
 void* lookupCommandByCString (char*) ;
 int populateCommandTable () ;
 TYPE_1__ server ;
 int time (int *) ;
 void* zstrdup (int ) ;

void initServerConfig(void) {
    int j;

    getRandomHexChars(server.runid,CONFIG_RUN_ID_SIZE);
    getRandomHexChars(server.jobid_seed,CONFIG_RUN_ID_SIZE);
    server.configfile = ((void*)0);
    server.executable = ((void*)0);
    server.hz = CONFIG_DEFAULT_HZ;
    server.runid[CONFIG_RUN_ID_SIZE] = '\0';
    server.arch_bits = (sizeof(long) == 8) ? 64 : 32;
    server.port = CONFIG_DEFAULT_SERVER_PORT;
    server.tcp_backlog = CONFIG_DEFAULT_TCP_BACKLOG;
    server.bindaddr_count = 0;
    server.unixsocket = ((void*)0);
    server.unixsocketperm = CONFIG_DEFAULT_UNIX_SOCKET_PERM;
    server.ipfd_count = 0;
    server.sofd = -1;
    server.dbnum = CONFIG_DEFAULT_DBNUM;
    server.verbosity = CONFIG_DEFAULT_VERBOSITY;
    server.maxidletime = CONFIG_DEFAULT_CLIENT_TIMEOUT;
    server.tcpkeepalive = CONFIG_DEFAULT_TCP_KEEPALIVE;
    server.active_expire_enabled = 1;
    server.client_max_querybuf_len = PROTO_MAX_QUERYBUF_LEN;
    server.loading = 0;
    server.logfile = zstrdup(CONFIG_DEFAULT_LOGFILE);
    server.syslog_enabled = CONFIG_DEFAULT_SYSLOG_ENABLED;
    server.syslog_ident = zstrdup(CONFIG_DEFAULT_SYSLOG_IDENT);
    server.syslog_facility = LOG_LOCAL0;
    server.daemonize = CONFIG_DEFAULT_DAEMONIZE;
    server.aof_state = AOF_OFF;
    server.aof_fsync = CONFIG_DEFAULT_AOF_FSYNC;
    server.aof_no_fsync_on_rewrite = CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE;
    server.aof_rewrite_perc = AOF_REWRITE_PERC;
    server.aof_rewrite_min_size = AOF_REWRITE_MIN_SIZE;
    server.aof_rewrite_base_size = 0;
    server.aof_rewrite_scheduled = 0;
    server.aof_last_fsync = time(((void*)0));
    server.aof_rewrite_time_last = -1;
    server.aof_rewrite_time_start = -1;
    server.aof_lastbgrewrite_status = C_OK;
    server.aof_delayed_fsync = 0;
    server.aof_fd = -1;
    server.aof_selected_db = -1;
    server.aof_flush_postponed_start = 0;
    server.aof_rewrite_incremental_fsync = CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC;
    server.aof_load_truncated = CONFIG_DEFAULT_AOF_LOAD_TRUNCATED;
    server.aof_enqueue_jobs_once = CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE;
    server.pidfile = zstrdup(CONFIG_DEFAULT_PID_FILE);
    server.aof_filename = zstrdup(CONFIG_DEFAULT_AOF_FILENAME);
    server.requirepass = ((void*)0);
    server.activerehashing = CONFIG_DEFAULT_ACTIVE_REHASHING;
    server.maxclients = CONFIG_DEFAULT_MAX_CLIENTS;
    server.bpop_blocked_clients = 0;
    server.maxmemory = CONFIG_DEFAULT_MAXMEMORY;
    server.maxmemory_policy = CONFIG_DEFAULT_MAXMEMORY_POLICY;
    server.maxmemory_samples = CONFIG_DEFAULT_MAXMEMORY_SAMPLES;
    server.shutdown_asap = 0;
    server.cluster_node_timeout = CLUSTER_DEFAULT_NODE_TIMEOUT;
    server.cluster_configfile = zstrdup(CONFIG_DEFAULT_CLUSTER_CONFIG_FILE);
    server.next_client_id = 1;
    server.loading_process_events_interval_bytes = (1024*1024*2);


    for (j = 0; j < CLIENT_TYPE_COUNT; j++)
        server.client_obuf_limits[j] = clientBufferLimitsDefaults[j];


    R_Zero = 0.0;
    R_PosInf = 1.0/R_Zero;
    R_NegInf = -1.0/R_Zero;
    R_Nan = R_Zero/R_Zero;




    server.commands = dictCreate(&commandTableDictType,((void*)0));
    server.orig_commands = dictCreate(&commandTableDictType,((void*)0));
    populateCommandTable();
    server.delCommand = lookupCommandByCString("del");
    server.multiCommand = lookupCommandByCString("multi");
    server.lpushCommand = lookupCommandByCString("lpush");
    server.lpopCommand = lookupCommandByCString("lpop");
    server.rpopCommand = lookupCommandByCString("rpop");


    server.slowlog_log_slower_than = CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN;
    server.slowlog_max_len = CONFIG_DEFAULT_SLOWLOG_MAX_LEN;


    server.latency_monitor_threshold = CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD;


    server.assert_failed = "<no assertion failed>";
    server.assert_file = "<no file>";
    server.assert_line = 0;
    server.bug_report_start = 0;
    server.watchdog_period = 0;
}
