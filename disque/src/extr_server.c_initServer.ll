; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_initServer.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_initServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64*, i32, i64, i32, i64, i32, i32, i64, i32, i32, i32, i64, i32, i64, i64, i32, i32, i64, i32, i8*, i8*, i8*, i32, i32, i32, i32*, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32, i32, i32, i64 }

@SIGHUP = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_NOWAIT = common dso_local global i32 0, align 4
@CONFIG_FDSET_INCR = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i64 0, align 8
@ANET_ERR = common dso_local global i64 0, align 8
@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Opening Unix socket: %s\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Configured to not listen anywhere, exiting.\00", align 1
@jobsDictType = common dso_local global i32 0, align 4
@queuesDictType = common dso_local global i32 0, align 4
@setDictType = common dso_local global i32 0, align 4
@skiplistCompareJobsToAwake = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4
@serverCron = common dso_local global i32 0, align 4
@AE_ERR = common dso_local global i64 0, align 8
@processJobs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Can't create the serverCron or processJobs time event.\00", align 1
@AE_READABLE = common dso_local global i32 0, align 4
@acceptTcpHandler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Unrecoverable error creating server.ipfd file event.\00", align 1
@acceptUnixHandler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"Unrecoverable error creating server.sofd file event.\00", align 1
@AOF_ON = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't open the append-only file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [118 x i8] c"Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.\00", align 1
@MAXMEMORY_NO_EVICTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initServer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SIGHUP, align 4
  %3 = load i32, i32* @SIG_IGN, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  %5 = load i32, i32* @SIGPIPE, align 4
  %6 = load i32, i32* @SIG_IGN, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = call i32 (...) @setupSignalHandlers()
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 39), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 38), align 8
  %13 = load i32, i32* @LOG_PID, align 4
  %14 = load i32, i32* @LOG_NDELAY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @LOG_NOWAIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 37), align 4
  %19 = call i32 @openlog(i32 %12, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %0
  %21 = call i32 (...) @getpid()
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 36), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 35), align 8
  %22 = call i8* (...) @listCreate()
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 34), align 8
  %23 = call i8* (...) @listCreate()
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 33), align 8
  %24 = call i8* (...) @listCreate()
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 32), align 8
  %25 = call i8* (...) @listCreate()
  store i8* %25, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 31), align 8
  %26 = call i8* (...) @listCreate()
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 30), align 8
  %27 = call i8* (...) @listCreate()
  store i8* %27, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 29), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 28), align 8
  %28 = call i32 (...) @createSharedObjects()
  %29 = call i32 (...) @adjustOpenFilesLimit()
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 27), align 8
  %31 = load i64, i64* @CONFIG_FDSET_INCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @aeCreateEventLoop(i64 %32)
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %20
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %38 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %39 = call i64 @listenToPort(i64 %37, i64* %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2))
  %40 = load i64, i64* @C_ERR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %36, %20
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 26), align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 26), align 8
  %49 = call i32 @unlink(i32* %48)
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 23), align 8
  %51 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 26), align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 25), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 24), align 4
  %54 = call i64 @anetUnixServer(i32 %50, i32* %51, i32 %52, i32 %53)
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %56 = load i64, i64* @ANET_ERR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load i32, i32* @LL_WARNING, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 23), align 8
  %61 = call i32 (i32, i8*, ...) @serverLog(i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %47
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %65 = call i32 @anetNonBlock(i32* null, i64 %64)
  br label %66

66:                                               ; preds = %63, %44
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @LL_WARNING, align 4
  %74 = call i32 (i32, i8*, ...) @serverLog(i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %69, %66
  %77 = call i8* @dictCreate(i32* @jobsDictType, i32* null)
  store i8* %77, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 22), align 8
  %78 = call i8* @dictCreate(i32* @queuesDictType, i32* null)
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 21), align 8
  %79 = call i8* @dictCreate(i32* @setDictType, i32* null)
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 20), align 8
  %80 = load i32, i32* @skiplistCompareJobsToAwake, align 4
  %81 = call i32 @skiplistCreate(i32 %80)
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 19), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 18), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 8
  %82 = call i32 (...) @aofRewriteBufferReset()
  %83 = call i32 (...) @sdsempty()
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 17), align 4
  %84 = call i32 (...) @resetServerStats()
  %85 = call i32 @time(i32* null)
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 15), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 14), align 8
  %86 = load i32, i32* @C_OK, align 4
  store i32 %86, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 13), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 12), align 8
  %87 = call i32 (...) @updateCachedTime()
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %89 = load i32, i32* @serverCron, align 4
  %90 = call i64 @aeCreateTimeEvent(i32 %88, i32 1, i32 %89, i32* null, i32* null)
  %91 = load i64, i64* @AE_ERR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %76
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %95 = load i32, i32* @processJobs, align 4
  %96 = call i64 @aeCreateTimeEvent(i32 %94, i32 1, i32 %95, i32* null, i32* null)
  %97 = load i64, i64* @AE_ERR, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %76
  %100 = call i32 @serverPanic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %101 = call i32 @exit(i32 1) #3
  unreachable

102:                                              ; preds = %93
  store i32 0, i32* %1, align 4
  br label %103

103:                                              ; preds = %122, %102
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 8
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %109 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @AE_READABLE, align 4
  %115 = load i32, i32* @acceptTcpHandler, align 4
  %116 = call i64 @aeCreateFileEvent(i32 %108, i64 %113, i32 %114, i32 %115, i32* null)
  %117 = load i64, i64* @AE_ERR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = call i32 @serverPanic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %107
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %1, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %1, align 4
  br label %103

125:                                              ; preds = %103
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 11), align 8
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %131 = load i32, i32* @AE_READABLE, align 4
  %132 = load i32, i32* @acceptUnixHandler, align 4
  %133 = call i64 @aeCreateFileEvent(i32 %129, i64 %130, i32 %131, i32 %132, i32* null)
  %134 = load i64, i64* @AE_ERR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 @serverPanic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %128, %125
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 5), align 8
  %140 = load i64, i64* @AOF_ON, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 10), align 4
  %144 = load i32, i32* @O_WRONLY, align 4
  %145 = load i32, i32* @O_APPEND, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @O_CREAT, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @open(i32 %143, i32 %148, i32 420)
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 6), align 8
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %158

152:                                              ; preds = %142
  %153 = load i32, i32* @LL_WARNING, align 4
  %154 = load i32, i32* @errno, align 4
  %155 = call i32 @strerror(i32 %154)
  %156 = call i32 (i32, i8*, ...) @serverLog(i32 %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %155)
  %157 = call i32 @exit(i32 1) #3
  unreachable

158:                                              ; preds = %142
  br label %159

159:                                              ; preds = %158, %138
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 7), align 4
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* @LL_WARNING, align 4
  %167 = call i32 (i32, i8*, ...) @serverLog(i32 %166, i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.6, i64 0, i64 0))
  store i64 3221225472, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 8), align 8
  %168 = load i32, i32* @MAXMEMORY_NO_EVICTION, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 9), align 8
  br label %169

169:                                              ; preds = %165, %162, %159
  %170 = call i32 (...) @clusterInit()
  %171 = call i32 (...) @slowlogInit()
  %172 = call i32 (...) @latencyMonitorInit()
  %173 = call i32 (...) @bioInit()
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setupSignalHandlers(...) #1

declare dso_local i32 @openlog(i32, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i8* @listCreate(...) #1

declare dso_local i32 @createSharedObjects(...) #1

declare dso_local i32 @adjustOpenFilesLimit(...) #1

declare dso_local i32 @aeCreateEventLoop(i64) #1

declare dso_local i64 @listenToPort(i64, i64*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @unlink(i32*) #1

declare dso_local i64 @anetUnixServer(i32, i32*, i32, i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @anetNonBlock(i32*, i64) #1

declare dso_local i8* @dictCreate(i32*, i32*) #1

declare dso_local i32 @skiplistCreate(i32) #1

declare dso_local i32 @aofRewriteBufferReset(...) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @resetServerStats(...) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @updateCachedTime(...) #1

declare dso_local i64 @aeCreateTimeEvent(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @serverPanic(i8*) #1

declare dso_local i64 @aeCreateFileEvent(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @clusterInit(...) #1

declare dso_local i32 @slowlogInit(...) #1

declare dso_local i32 @latencyMonitorInit(...) #1

declare dso_local i32 @bioInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
