; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_initServerConfig.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_initServerConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i64, i64, i64, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32, i64, i32, i32, i32, i64, i32, i32, i32*, i8*, i8*, i32, i32, i32, i64, i64, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i64, i32, i32, i32, i32, i32, i64, i32, i32*, i64, i32, i32, i32, i32*, i32* }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CONFIG_RUN_ID_SIZE = common dso_local global i64 0, align 8
@CONFIG_DEFAULT_HZ = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_SERVER_PORT = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_TCP_BACKLOG = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_UNIX_SOCKET_PERM = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_DBNUM = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_VERBOSITY = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_CLIENT_TIMEOUT = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_TCP_KEEPALIVE = common dso_local global i32 0, align 4
@PROTO_MAX_QUERYBUF_LEN = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_LOGFILE = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_SYSLOG_ENABLED = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_SYSLOG_IDENT = common dso_local global i32 0, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_DAEMONIZE = common dso_local global i32 0, align 4
@AOF_OFF = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_FSYNC = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE = common dso_local global i32 0, align 4
@AOF_REWRITE_PERC = common dso_local global i32 0, align 4
@AOF_REWRITE_MIN_SIZE = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_LOAD_TRUNCATED = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_PID_FILE = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_AOF_FILENAME = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_ACTIVE_REHASHING = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAX_CLIENTS = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAXMEMORY = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAXMEMORY_POLICY = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_MAXMEMORY_SAMPLES = common dso_local global i32 0, align 4
@CLUSTER_DEFAULT_NODE_TIMEOUT = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_CLUSTER_CONFIG_FILE = common dso_local global i32 0, align 4
@CLIENT_TYPE_COUNT = common dso_local global i32 0, align 4
@clientBufferLimitsDefaults = common dso_local global i32* null, align 8
@R_Zero = common dso_local global double 0.000000e+00, align 8
@R_PosInf = common dso_local global double 0.000000e+00, align 8
@R_NegInf = common dso_local global double 0.000000e+00, align 8
@R_Nan = common dso_local global double 0.000000e+00, align 8
@commandTableDictType = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"multi\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lpush\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"lpop\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rpop\00", align 1
@CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_SLOWLOG_MAX_LEN = common dso_local global i32 0, align 4
@CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"<no assertion failed>\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<no file>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initServerConfig() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %3 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %4 = call i32 @getRandomHexChars(i8* %2, i64 %3)
  %5 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %6 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %7 = call i32 @getRandomHexChars(i8* %5, i64 %6)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 72), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 71), align 8
  %8 = load i32, i32* @CONFIG_DEFAULT_HZ, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 70), align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %10 = load i64, i64* @CONFIG_RUN_ID_SIZE, align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %11, align 1
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %12 = load i32, i32* @CONFIG_DEFAULT_SERVER_PORT, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 69), align 4
  %13 = load i32, i32* @CONFIG_DEFAULT_TCP_BACKLOG, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 68), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 67), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 66), align 8
  %14 = load i32, i32* @CONFIG_DEFAULT_UNIX_SOCKET_PERM, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 65), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 64), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 4
  %15 = load i32, i32* @CONFIG_DEFAULT_DBNUM, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 63), align 8
  %16 = load i32, i32* @CONFIG_DEFAULT_VERBOSITY, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 62), align 4
  %17 = load i32, i32* @CONFIG_DEFAULT_CLIENT_TIMEOUT, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 61), align 8
  %18 = load i32, i32* @CONFIG_DEFAULT_TCP_KEEPALIVE, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 60), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %19 = load i32, i32* @PROTO_MAX_QUERYBUF_LEN, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 59), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 58), align 8
  %20 = load i32, i32* @CONFIG_DEFAULT_LOGFILE, align 4
  %21 = call i8* @zstrdup(i32 %20)
  store i8* %21, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 57), align 8
  %22 = load i32, i32* @CONFIG_DEFAULT_SYSLOG_ENABLED, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 56), align 8
  %23 = load i32, i32* @CONFIG_DEFAULT_SYSLOG_IDENT, align 4
  %24 = call i8* @zstrdup(i32 %23)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 55), align 8
  %25 = load i32, i32* @LOG_LOCAL0, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 54), align 8
  %26 = load i32, i32* @CONFIG_DEFAULT_DAEMONIZE, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 53), align 4
  %27 = load i32, i32* @AOF_OFF, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 52), align 8
  %28 = load i32, i32* @CONFIG_DEFAULT_AOF_FSYNC, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 51), align 4
  %29 = load i32, i32* @CONFIG_DEFAULT_AOF_NO_FSYNC_ON_REWRITE, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 50), align 8
  %30 = load i32, i32* @AOF_REWRITE_PERC, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 49), align 4
  %31 = load i32, i32* @AOF_REWRITE_MIN_SIZE, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 48), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 47), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 46), align 8
  %32 = call i32 @time(i32* null)
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 45), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %33 = load i32, i32* @C_OK, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 44), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 43), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 42), align 8
  %34 = load i32, i32* @CONFIG_DEFAULT_AOF_REWRITE_INCREMENTAL_FSYNC, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 41), align 8
  %35 = load i32, i32* @CONFIG_DEFAULT_AOF_LOAD_TRUNCATED, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 40), align 4
  %36 = load i32, i32* @CONFIG_DEFAULT_AOF_ENQUEUE_JOBS_ONCE, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 39), align 8
  %37 = load i32, i32* @CONFIG_DEFAULT_PID_FILE, align 4
  %38 = call i8* @zstrdup(i32 %37)
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 38), align 8
  %39 = load i32, i32* @CONFIG_DEFAULT_AOF_FILENAME, align 4
  %40 = call i8* @zstrdup(i32 %39)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 37), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 36), align 8
  %41 = load i32, i32* @CONFIG_DEFAULT_ACTIVE_REHASHING, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 35), align 4
  %42 = load i32, i32* @CONFIG_DEFAULT_MAX_CLIENTS, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 34), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 33), align 8
  %43 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 32), align 8
  %44 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_POLICY, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 31), align 4
  %45 = load i32, i32* @CONFIG_DEFAULT_MAXMEMORY_SAMPLES, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 30), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 29), align 8
  %46 = load i32, i32* @CLUSTER_DEFAULT_NODE_TIMEOUT, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 28), align 8
  %47 = load i32, i32* @CONFIG_DEFAULT_CLUSTER_CONFIG_FILE, align 4
  %48 = call i8* @zstrdup(i32 %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 27), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 4
  store i32 2097152, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 8
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %63, %0
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* @CLIENT_TYPE_COUNT, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32*, i32** @clientBufferLimitsDefaults, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 26), align 8
  %60 = load i32, i32* %1, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %49

66:                                               ; preds = %49
  store double 0.000000e+00, double* @R_Zero, align 8
  %67 = load double, double* @R_Zero, align 8
  %68 = fdiv double 1.000000e+00, %67
  store double %68, double* @R_PosInf, align 8
  %69 = load double, double* @R_Zero, align 8
  %70 = fdiv double -1.000000e+00, %69
  store double %70, double* @R_NegInf, align 8
  %71 = load double, double* @R_Zero, align 8
  %72 = load double, double* @R_Zero, align 8
  %73 = fdiv double %71, %72
  store double %73, double* @R_Nan, align 8
  %74 = call i8* @dictCreate(i32* @commandTableDictType, i32* null)
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 25), align 8
  %75 = call i8* @dictCreate(i32* @commandTableDictType, i32* null)
  store i8* %75, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 24), align 8
  %76 = call i32 (...) @populateCommandTable()
  %77 = call i8* @lookupCommandByCString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 23), align 8
  %78 = call i8* @lookupCommandByCString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 22), align 8
  %79 = call i8* @lookupCommandByCString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 21), align 8
  %80 = call i8* @lookupCommandByCString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 20), align 8
  %81 = call i8* @lookupCommandByCString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %81, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 19), align 8
  %82 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_LOG_SLOWER_THAN, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 18), align 8
  %83 = load i32, i32* @CONFIG_DEFAULT_SLOWLOG_MAX_LEN, align 4
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 17), align 4
  %84 = load i32, i32* @CONFIG_DEFAULT_LATENCY_MONITOR_THRESHOLD, align 4
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 16), align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 14), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  ret void
}

declare dso_local i32 @getRandomHexChars(i8*, i64) #1

declare dso_local i8* @zstrdup(i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @populateCommandTable(...) #1

declare dso_local i8* @lookupCommandByCString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
