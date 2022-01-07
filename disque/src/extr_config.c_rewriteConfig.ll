; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfig.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_rewriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rewriteConfigState = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"daemonize\00", align 1
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@CONFIG_DEFAULT_PID_FILE = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@CONFIG_DEFAULT_SERVER_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"tcp-backlog\00", align 1
@CONFIG_DEFAULT_TCP_BACKLOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"unixsocket\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"unixsocketperm\00", align 1
@CONFIG_DEFAULT_UNIX_SOCKET_PERM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@CONFIG_DEFAULT_CLIENT_TIMEOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"tcp-keepalive\00", align 1
@CONFIG_DEFAULT_TCP_KEEPALIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"loglevel\00", align 1
@loglevel_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_VERBOSITY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"logfile\00", align 1
@CONFIG_DEFAULT_LOGFILE = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"syslog-enabled\00", align 1
@CONFIG_DEFAULT_SYSLOG_ENABLED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"syslog-ident\00", align 1
@CONFIG_DEFAULT_SYSLOG_IDENT = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"requirepass\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@CONFIG_DEFAULT_MAX_CLIENTS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@CONFIG_DEFAULT_MAXMEMORY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"maxmemory-policy\00", align 1
@maxmemory_policy_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAXMEMORY_POLICY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"maxmemory-samples\00", align 1
@CONFIG_DEFAULT_MAXMEMORY_SAMPLES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"appendonly\00", align 1
@AOF_OFF = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"appendfilename\00", align 1
@CONFIG_DEFAULT_AOF_FILENAME = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [12 x i8] c"appendfsync\00", align 1
@aof_fsync_enum = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_FSYNC = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"no-appendfsync-on-rewrite\00", align 1
@CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"auto-aof-rewrite-percentage\00", align 1
@AOF_REWRITE_PERC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"auto-aof-rewrite-min-size\00", align 1
@AOF_REWRITE_MIN_SIZE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"cluster-config-file\00", align 1
@CONFIG_DEFAULT_CLUSTER_CONFIG_FILE = common dso_local global i32* null, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"cluster-node-timeout\00", align 1
@CLUSTER_DEFAULT_NODE_TIMEOUT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [24 x i8] c"slowlog-log-slower-than\00", align 1
@CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"latency-monitor-threshold\00", align 1
@CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"slowlog-max-len\00", align 1
@CONFIG_DEFAULT_SLOWLOG_MAX_LEN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [16 x i8] c"activerehashing\00", align 1
@CONFIG_DEFAULT_ACTIVE_REHASHING = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@CONFIG_DEFAULT_HZ = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [30 x i8] c"aof-rewrite-incremental-fsync\00", align 1
@CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"aof-load-truncated\00", align 1
@CONFIG_DEFAULT_AOF_LOAD_TRUNCATED = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [22 x i8] c"aof-enqueue-jobs-once\00", align 1
@CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rewriteConfig(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rewriteConfigState*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.rewriteConfigState* @rewriteConfigReadOldFile(i8* %7)
  store %struct.rewriteConfigState* %8, %struct.rewriteConfigState** %4, align 8
  %9 = icmp eq %struct.rewriteConfigState* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %166

11:                                               ; preds = %1
  %12 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %14 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %13, i32 0)
  %15 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 33), align 8
  %17 = load i32*, i32** @CONFIG_DEFAULT_PID_FILE, align 8
  %18 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32* %17)
  %19 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 32), align 4
  %21 = load i32, i32* @CONFIG_DEFAULT_SERVER_PORT, align 4
  %22 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 31), align 8
  %25 = load i32, i32* @CONFIG_DEFAULT_TCP_BACKLOG, align 4
  %26 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %28 = call i32 @rewriteConfigBindOption(%struct.rewriteConfigState* %27)
  %29 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 30), align 4
  %31 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %30, i32* null)
  %32 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 29), align 8
  %34 = load i32, i32* @CONFIG_DEFAULT_UNIX_SOCKET_PERM, align 4
  %35 = call i32 @rewriteConfigOctalOption(%struct.rewriteConfigState* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 28), align 4
  %38 = load i32, i32* @CONFIG_DEFAULT_CLIENT_TIMEOUT, align 4
  %39 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 27), align 8
  %42 = load i32, i32* @CONFIG_DEFAULT_TCP_KEEPALIVE, align 4
  %43 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 26), align 4
  %46 = load i32, i32* @loglevel_enum, align 4
  %47 = load i32, i32* @CONFIG_DEFAULT_VERBOSITY, align 4
  %48 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 25), align 8
  %51 = load i32*, i32** @CONFIG_DEFAULT_LOGFILE, align 8
  %52 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %50, i32* %51)
  %53 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 4
  %55 = load i32, i32* @CONFIG_DEFAULT_SYSLOG_ENABLED, align 4
  %56 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 24), align 4
  %59 = load i32*, i32** @CONFIG_DEFAULT_SYSLOG_IDENT, align 8
  %60 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %58, i32* %59)
  %61 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %62 = call i32 @rewriteConfigSyslogfacilityOption(%struct.rewriteConfigState* %61)
  %63 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %64 = call i32 @rewriteConfigDirOption(%struct.rewriteConfigState* %63)
  %65 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 23), align 8
  %67 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %66, i32* null)
  %68 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 22), align 4
  %70 = load i32, i32* @CONFIG_DEFAULT_MAX_CLIENTS, align 4
  %71 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %69, i32 %70)
  %72 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 21), align 8
  %74 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY, align 4
  %75 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 20), align 4
  %78 = load i32, i32* @maxmemory_policy_enum, align 4
  %79 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_POLICY, align 4
  %80 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 19), align 8
  %83 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_SAMPLES, align 4
  %84 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %87 = load i64, i64* @AOF_OFF, align 8
  %88 = icmp ne i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32 %89, i32 0)
  %91 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 18), align 4
  %93 = load i32*, i32** @CONFIG_DEFAULT_AOF_FILENAME, align 8
  %94 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %92, i32* %93)
  %95 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 17), align 8
  %97 = load i32, i32* @aof_fsync_enum, align 4
  %98 = load i32, i32* @CONFIG_DEFAULT_AOF_FSYNC, align 4
  %99 = call i32 @rewriteConfigEnumOption(%struct.rewriteConfigState* %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %96, i32 %97, i32 %98)
  %100 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %102 = load i32, i32* @CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE, align 4
  %103 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 16), align 4
  %106 = load i32, i32* @AOF_REWRITE_PERC, align 4
  %107 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 15), align 8
  %110 = load i32, i32* @AOF_REWRITE_MIN_SIZE, align 4
  %111 = call i32 @rewriteConfigBytesOption(%struct.rewriteConfigState* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 14), align 4
  %114 = load i32*, i32** @CONFIG_DEFAULT_CLUSTER_CONFIG_FILE, align 8
  %115 = call i32 @rewriteConfigStringOption(%struct.rewriteConfigState* %112, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %113, i32* %114)
  %116 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  %118 = load i32, i32* @CLUSTER_DEFAULT_NODE_TIMEOUT, align 4
  %119 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 4
  %122 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN, align 4
  %123 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %126 = load i32, i32* @CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD, align 4
  %127 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  %130 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_MAX_LEN, align 4
  %131 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %134 = load i32, i32* @CONFIG_DEFAULT_ACTIVE_REHASHING, align 4
  %135 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %132, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %137 = call i32 @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState* %136)
  %138 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  %140 = load i32, i32* @CONFIG_DEFAULT_HZ, align 4
  %141 = call i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %144 = load i32, i32* @CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC, align 4
  %145 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %142, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 4
  %148 = load i32, i32* @CONFIG_DEFAULT_AOF_LOAD_TRUNCATED, align 4
  %149 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %146, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %147, i32 %148)
  %150 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 8
  %152 = load i32, i32* @CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE, align 4
  %153 = call i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState* %150, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %155 = call i32 @rewriteConfigRemoveOrphaned(%struct.rewriteConfigState* %154)
  %156 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %157 = call i32 @rewriteConfigGetContentFromState(%struct.rewriteConfigState* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @rewriteConfigOverwriteFile(i32 %158, i32 %159)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = call i32 @sdsfree(i32 %161)
  %163 = load %struct.rewriteConfigState*, %struct.rewriteConfigState** %4, align 8
  %164 = call i32 @rewriteConfigReleaseState(%struct.rewriteConfigState* %163)
  %165 = load i32, i32* %6, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %11, %10
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.rewriteConfigState* @rewriteConfigReadOldFile(i8*) #1

declare dso_local i32 @rewriteConfigYesNoOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigStringOption(%struct.rewriteConfigState*, i8*, i32, i32*) #1

declare dso_local i32 @rewriteConfigNumericalOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigBindOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigOctalOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigEnumOption(%struct.rewriteConfigState*, i8*, i32, i32, i32) #1

declare dso_local i32 @rewriteConfigSyslogfacilityOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigDirOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigBytesOption(%struct.rewriteConfigState*, i8*, i32, i32) #1

declare dso_local i32 @rewriteConfigClientoutputbufferlimitOption(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigRemoveOrphaned(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigGetContentFromState(%struct.rewriteConfigState*) #1

declare dso_local i32 @rewriteConfigOverwriteFile(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i32 @rewriteConfigReleaseState(%struct.rewriteConfigState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
