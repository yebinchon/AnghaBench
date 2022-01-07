; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_configGetCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_configGetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"requirepass\00", align 1
@server = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"unixsocket\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"logfile\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"maxmemory-samples\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"auto-aof-rewrite-percentage\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"auto-aof-rewrite-min-size\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"slowlog-log-slower-than\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"latency-monitor-threshold\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"slowlog-max-len\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"tcp-backlog\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"databases\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"maxclients\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"watchdog-period\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"cluster-node-timeout\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"tcp-keepalive\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"no-appendfsync-on-rewrite\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"daemonize\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"activerehashing\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"aof-rewrite-incremental-fsync\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"aof-load-truncated\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"aof-enqueue-jobs-once\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"maxmemory-policy\00", align 1
@maxmemory_policy_enum = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"loglevel\00", align 1
@loglevel_enum = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"appendfsync\00", align 1
@aof_fsync_enum = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"syslog-facility\00", align 1
@syslog_facility_enum = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"appendonly\00", align 1
@AOF_OFF = common dso_local global i64 0, align 8
@.str.31 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"client-output-buffer-limit\00", align 1
@CLIENT_TYPE_COUNT = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [17 x i8] c"%s %llu %llu %ld\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"unixsocketperm\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"bind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configGetCommand(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %15, i64 2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = call i8* @addDeferredMultiBulkLength(%struct.TYPE_14__* %18)
  store i8* %19, i8** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = call i32 @sdsEncodedObject(%struct.TYPE_13__* %25)
  %27 = call i32 @serverAssertWithInfo(%struct.TYPE_14__* %23, %struct.TYPE_13__* %24, i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 34), align 4
  %29 = call i32 @config_get_string_field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 33), align 8
  %31 = call i32 @config_get_string_field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 32), align 4
  %33 = call i32 @config_get_string_field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 31), align 8
  %35 = call i32 @config_get_string_field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 30), align 4
  %37 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 29), align 8
  %39 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 28), align 4
  %41 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 27), align 8
  %43 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 26), align 4
  %45 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 25), align 8
  %47 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 24), align 4
  %49 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 23), align 8
  %51 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 22), align 4
  %53 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 21), align 8
  %55 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 20), align 4
  %57 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 19), align 8
  %59 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 18), align 4
  %61 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 17), align 8
  %63 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 16), align 4
  %65 = call i32 @config_get_numerical_field(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 15), align 8
  %67 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 14), align 4
  %69 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 13), align 8
  %71 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 12), align 4
  %73 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 11), align 8
  %75 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 10), align 4
  %77 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 9), align 8
  %79 = call i32 @config_get_bool_field(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 8), align 4
  %81 = load i32, i32* @maxmemory_policy_enum, align 4
  %82 = call i32 @config_get_enum_field(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 7), align 8
  %84 = load i32, i32* @loglevel_enum, align 4
  %85 = call i32 @config_get_enum_field(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 6), align 4
  %87 = load i32, i32* @aof_fsync_enum, align 4
  %88 = call i32 @config_get_enum_field(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 5), align 8
  %90 = load i32, i32* @syslog_facility_enum, align 4
  %91 = call i32 @config_get_enum_field(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @stringmatch(i8* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %97 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 0), align 8
  %100 = load i64, i64* @AOF_OFF, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)
  %104 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %98, i8* %103)
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %95, %1
  %108 = load i8*, i8** %5, align 8
  %109 = call i64 @stringmatch(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0), i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %107
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %113 = call i32* @getcwd(i8* %112, i32 1024)
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %116, align 16
  br label %117

117:                                              ; preds = %115, %111
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %119 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %122 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %120, i8* %121)
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %117, %107
  %126 = load i8*, i8** %5, align 8
  %127 = call i64 @stringmatch(i8* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 0)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %179

129:                                              ; preds = %125
  %130 = call i8* (...) @sdsempty()
  store i8* %130, i8** %9, align 8
  store i32 0, i32* %10, align 4
  br label %131

131:                                              ; preds = %166, %129
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @CLIENT_TYPE_COUNT, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %169

135:                                              ; preds = %131
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @getClientTypeName(i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 4), align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 4), align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 4), align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @sdscatprintf(i8* %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i32 %138, i32 %144, i32 %150, i64 %156)
  store i8* %157, i8** %9, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @CLIENT_TYPE_COUNT, align 4
  %160 = sub nsw i32 %159, 1
  %161 = icmp ne i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %135
  %163 = load i8*, i8** %9, align 8
  %164 = call i8* @sdscatlen(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0), i32 1)
  store i8* %164, i8** %9, align 8
  br label %165

165:                                              ; preds = %162, %135
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %131

169:                                              ; preds = %131
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %170, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %172, i8* %173)
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @sdsfree(i8* %175)
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %169, %125
  %180 = load i8*, i8** %5, align 8
  %181 = call i64 @stringmatch(i8* %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i32 0)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %179
  %184 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 1), align 8
  %186 = call i32 @snprintf(i8* %184, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 %185)
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %188 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0))
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %190 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %191 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %189, i8* %190)
  %192 = load i32, i32* %7, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %183, %179
  %195 = load i8*, i8** %5, align 8
  %196 = call i64 @stringmatch(i8* %195, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i32 0)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 3), align 8
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @server, i32 0, i32 2), align 4
  %201 = call i8* @sdsjoin(i32 %199, i32 %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  store i8* %201, i8** %12, align 8
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %203 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0))
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = call i32 @addReplyBulkCString(%struct.TYPE_14__* %204, i8* %205)
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 @sdsfree(i8* %207)
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %198, %194
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load i32, i32* %7, align 4
  %215 = mul nsw i32 %214, 2
  %216 = call i32 @setDeferredMultiBulkLength(%struct.TYPE_14__* %212, i8* %213, i32 %215)
  ret void
}

declare dso_local i8* @addDeferredMultiBulkLength(%struct.TYPE_14__*) #1

declare dso_local i32 @serverAssertWithInfo(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @sdsEncodedObject(%struct.TYPE_13__*) #1

declare dso_local i32 @config_get_string_field(i8*, i32) #1

declare dso_local i32 @config_get_numerical_field(i8*, i32) #1

declare dso_local i32 @config_get_bool_field(i8*, i32) #1

declare dso_local i32 @config_get_enum_field(i8*, i32, i32) #1

declare dso_local i64 @stringmatch(i8*, i8*, i32) #1

declare dso_local i32 @addReplyBulkCString(%struct.TYPE_14__*, i8*) #1

declare dso_local i32* @getcwd(i8*, i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @sdscatprintf(i8*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @getClientTypeName(i32) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @sdsjoin(i32, i32, i8*) #1

declare dso_local i32 @setDeferredMultiBulkLength(%struct.TYPE_14__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
