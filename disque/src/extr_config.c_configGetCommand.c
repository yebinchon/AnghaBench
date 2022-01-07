
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char* sds ;
struct TYPE_13__ {char* ptr; } ;
typedef TYPE_2__ robj ;
struct TYPE_14__ {TYPE_2__** argv; } ;
typedef TYPE_3__ client ;
typedef int buf ;
struct TYPE_15__ {scalar_t__ aof_state; int unixsocketperm; int bindaddr_count; int bindaddr; TYPE_1__* client_obuf_limits; int syslog_facility; int aof_fsync; int verbosity; int maxmemory_policy; int aof_enqueue_jobs_once; int aof_load_truncated; int aof_rewrite_incremental_fsync; int activerehashing; int daemonize; int aof_no_fsync_on_rewrite; int tcpkeepalive; int cluster_node_timeout; int hz; int watchdog_period; int maxclients; int dbnum; int tcp_backlog; int port; int slowlog_max_len; int latency_monitor_threshold; int slowlog_log_slower_than; int aof_rewrite_min_size; int aof_rewrite_perc; int maxidletime; int maxmemory_samples; int maxmemory; int pidfile; int logfile; int unixsocket; int requirepass; } ;
struct TYPE_12__ {scalar_t__ soft_limit_seconds; int soft_limit_bytes; int hard_limit_bytes; } ;


 scalar_t__ AOF_OFF ;
 int CLIENT_TYPE_COUNT ;
 void* addDeferredMultiBulkLength (TYPE_3__*) ;
 int addReplyBulkCString (TYPE_3__*,char*) ;
 int aof_fsync_enum ;
 int config_get_bool_field (char*,int ) ;
 int config_get_enum_field (char*,int ,int ) ;
 int config_get_numerical_field (char*,int ) ;
 int config_get_string_field (char*,int ) ;
 int getClientTypeName (int) ;
 int * getcwd (char*,int) ;
 int loglevel_enum ;
 int maxmemory_policy_enum ;
 int sdsEncodedObject (TYPE_2__*) ;
 char* sdscatlen (char*,char*,int) ;
 char* sdscatprintf (char*,char*,int ,int ,int ,long) ;
 char* sdsempty () ;
 int sdsfree (char*) ;
 char* sdsjoin (int ,int ,char*) ;
 TYPE_7__ server ;
 int serverAssertWithInfo (TYPE_3__*,TYPE_2__*,int ) ;
 int setDeferredMultiBulkLength (TYPE_3__*,void*,int) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ stringmatch (char*,char*,int ) ;
 int syslog_facility_enum ;

void configGetCommand(client *c) {
    robj *o = c->argv[2];
    void *replylen = addDeferredMultiBulkLength(c);
    char *pattern = o->ptr;
    char buf[128];
    int matches = 0;
    serverAssertWithInfo(c,o,sdsEncodedObject(o));


    config_get_string_field("requirepass",server.requirepass);
    config_get_string_field("unixsocket",server.unixsocket);
    config_get_string_field("logfile",server.logfile);
    config_get_string_field("pidfile",server.pidfile);


    config_get_numerical_field("maxmemory",server.maxmemory);
    config_get_numerical_field("maxmemory-samples",server.maxmemory_samples);
    config_get_numerical_field("timeout",server.maxidletime);
    config_get_numerical_field("auto-aof-rewrite-percentage",
            server.aof_rewrite_perc);
    config_get_numerical_field("auto-aof-rewrite-min-size",
            server.aof_rewrite_min_size);
    config_get_numerical_field("slowlog-log-slower-than",
            server.slowlog_log_slower_than);
    config_get_numerical_field("latency-monitor-threshold",
            server.latency_monitor_threshold);
    config_get_numerical_field("slowlog-max-len",
            server.slowlog_max_len);
    config_get_numerical_field("port",server.port);
    config_get_numerical_field("tcp-backlog",server.tcp_backlog);
    config_get_numerical_field("databases",server.dbnum);
    config_get_numerical_field("maxclients",server.maxclients);
    config_get_numerical_field("watchdog-period",server.watchdog_period);
    config_get_numerical_field("hz",server.hz);
    config_get_numerical_field("cluster-node-timeout",server.cluster_node_timeout);


    config_get_bool_field("tcp-keepalive",server.tcpkeepalive);
    config_get_bool_field("no-appendfsync-on-rewrite",
            server.aof_no_fsync_on_rewrite);
    config_get_bool_field("daemonize", server.daemonize);
    config_get_bool_field("activerehashing", server.activerehashing);
    config_get_bool_field("aof-rewrite-incremental-fsync",
            server.aof_rewrite_incremental_fsync);
    config_get_bool_field("aof-load-truncated",
            server.aof_load_truncated);
    config_get_bool_field("aof-enqueue-jobs-once",
            server.aof_enqueue_jobs_once);


    config_get_enum_field("maxmemory-policy",
            server.maxmemory_policy,maxmemory_policy_enum);
    config_get_enum_field("loglevel",
            server.verbosity,loglevel_enum);
    config_get_enum_field("appendfsync",
            server.aof_fsync,aof_fsync_enum);
    config_get_enum_field("syslog-facility",
            server.syslog_facility,syslog_facility_enum);



    if (stringmatch(pattern,"appendonly",0)) {
        addReplyBulkCString(c,"appendonly");
        addReplyBulkCString(c,server.aof_state == AOF_OFF ? "no" : "yes");
        matches++;
    }
    if (stringmatch(pattern,"dir",0)) {
        char buf[1024];

        if (getcwd(buf,sizeof(buf)) == ((void*)0))
            buf[0] = '\0';

        addReplyBulkCString(c,"dir");
        addReplyBulkCString(c,buf);
        matches++;
    }
    if (stringmatch(pattern,"client-output-buffer-limit",0)) {
        sds buf = sdsempty();
        int j;

        for (j = 0; j < CLIENT_TYPE_COUNT; j++) {
            buf = sdscatprintf(buf,"%s %llu %llu %ld",
                    getClientTypeName(j),
                    server.client_obuf_limits[j].hard_limit_bytes,
                    server.client_obuf_limits[j].soft_limit_bytes,
                    (long) server.client_obuf_limits[j].soft_limit_seconds);
            if (j != CLIENT_TYPE_COUNT-1)
                buf = sdscatlen(buf," ",1);
        }
        addReplyBulkCString(c,"client-output-buffer-limit");
        addReplyBulkCString(c,buf);
        sdsfree(buf);
        matches++;
    }
    if (stringmatch(pattern,"unixsocketperm",0)) {
        char buf[32];
        snprintf(buf,sizeof(buf),"%o",server.unixsocketperm);
        addReplyBulkCString(c,"unixsocketperm");
        addReplyBulkCString(c,buf);
        matches++;
    }
    if (stringmatch(pattern,"bind",0)) {
        sds aux = sdsjoin(server.bindaddr,server.bindaddr_count," ");

        addReplyBulkCString(c,"bind");
        addReplyBulkCString(c,aux);
        sdsfree(aux);
        matches++;
    }
    setDeferredMultiBulkLength(c,replylen,matches*2);
}
