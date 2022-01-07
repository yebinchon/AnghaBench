; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSystem.c_taos_init_imp.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSystem.c_taos_init_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8**, i8** }
%struct.stat = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32, i32*, i8*, i64, i8*, i8*, i64, i8* }

@tscEmbedded = common dso_local global i64 0, align 8
@tsLocalIp = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@logDir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/taoslog\00", align 1
@tsNumOfLogLines = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to open log file in directory:%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"starting to initialize TAOS client ...\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Local IP address is:%s\00", align 1
@slaveIndex = common dso_local global i32 0, align 4
@tsMaxVnodeConnections = common dso_local global i32 0, align 4
@tsMaxMeterConnections = common dso_local global i32 0, align 4
@tsMaxMgmtConnections = common dso_local global i32 0, align 4
@tsNumOfCores = common dso_local global double 0.000000e+00, align 8
@tsNumOfThreadsPerCore = common dso_local global double 0.000000e+00, align 8
@tscNumOfThreads = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"tsc\00", align 1
@tscQhandle = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to init scheduler\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"TSC-vnode\00", align 1
@tscProcessMsgFromServer = common dso_local global i8* null, align 8
@TAOS_ID_FREE = common dso_local global i8* null, align 8
@pVnodeConn = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"failed to init connection to vnode\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"TSC-vnode, failed to open rpc chann\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"TSC-mgmt\00", align 1
@pTscMgmtConn = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to init connection to mgmt\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"TSC\00", align 1
@tscTmr = common dso_local global i32 0, align 4
@tscCheckDiskUsage = common dso_local global i32 0, align 4
@tscCheckDiskUsageTmr = common dso_local global i32 0, align 4
@tsMetricMetaKeepTimer = common dso_local global i64 0, align 8
@tsMeterMetaKeepTimer = common dso_local global i64 0, align 8
@tscCacheHandle = common dso_local global i32* null, align 8
@taosCloseRpcConn = common dso_local global i32 0, align 4
@tsShellActivityTimer = common dso_local global i32 0, align 4
@tscConnCache = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"client is initialized successfully\00", align 1
@tsRpcHeadSize = common dso_local global i64 0, align 8
@tsInsertHeadSize = common dso_local global i64 0, align 8
@tsMasterIp = common dso_local global i8* null, align 8
@tsSecondIp = common dso_local global i8* null, align 8
@tscMgmtIpList = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taos_init_imp() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca %struct.stat, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 (...) @taosGetTimestampSec()
  %9 = call i32 @srand(i32 %8)
  %10 = load i64, i64* @tscEmbedded, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %0
  %13 = load i8*, i8** @tsLocalIp, align 8
  %14 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @tsReadGlobalLogConfig()
  %16 = load i8*, i8** @logDir, align 8
  %17 = call i64 @stat(i8* %16, %struct.stat* %2)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** @logDir, align 8
  %21 = call i32 @mkdir(i8* %20, i32 493)
  br label %22

22:                                               ; preds = %19, %12
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %24 = load i8*, i8** @logDir, align 8
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %27 = load i32, i32* @tsNumOfLogLines, align 4
  %28 = call i64 @taosInitLog(i8* %26, i32 %27, i32 10)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i8*, i8** @logDir, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = call i32 (...) @tsReadGlobalConfig()
  %35 = call i32 (...) @tsPrintGlobalConfig()
  %36 = call i32 (i8*, ...) @tscTrace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i8*, i8** @tsLocalIp, align 8
  %38 = call i32 (i8*, ...) @tscTrace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %33, %0
  %40 = call i32 (...) @tscInitMsgs()
  %41 = call i32 (...) @rand()
  store i32 %41, i32* @slaveIndex, align 4
  %42 = load i32, i32* @tsMaxVnodeConnections, align 4
  %43 = load i32, i32* @tsMaxMeterConnections, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @tsMaxMgmtConnections, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @tsMaxMgmtConnections, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = load i64, i64* @tscEmbedded, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %39
  %52 = load double, double* @tsNumOfCores, align 8
  %53 = load double, double* @tsNumOfThreadsPerCore, align 8
  %54 = fmul double %52, %53
  %55 = fdiv double %54, 2.000000e+00
  %56 = fptosi double %55 to i32
  store i32 %56, i32* @tscNumOfThreads, align 4
  br label %63

57:                                               ; preds = %39
  %58 = load double, double* @tsNumOfCores, align 8
  %59 = load double, double* @tsNumOfThreadsPerCore, align 8
  %60 = fmul double %58, %59
  %61 = fdiv double %60, 4.000000e+00
  %62 = fptosi double %61 to i32
  store i32 %62, i32* @tscNumOfThreads, align 4
  br label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @tscNumOfThreads, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 2, i32* @tscNumOfThreads, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @tscNumOfThreads, align 4
  %70 = call i32* @taosInitScheduler(i32 %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %70, i32** @tscQhandle, align 8
  %71 = load i32*, i32** @tscQhandle, align 8
  %72 = icmp eq i32* null, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @tscError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %206

75:                                               ; preds = %67
  %76 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 80)
  %77 = load i8*, i8** @tsLocalIp, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 11
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 10
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @tscNumOfThreads, align 4
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 %81, i32* %82, align 8
  %83 = load i8*, i8** @tscProcessMsgFromServer, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 9
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 20, i32* %85, align 4
  %86 = load i32, i32* @tscNumOfThreads, align 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* @tsMaxVnodeConnections, align 4
  %89 = load i32, i32* @tscNumOfThreads, align 4
  %90 = sdiv i32 %88, %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load i8*, i8** @TAOS_ID_FREE, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 8
  store i8* %92, i8** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 7
  store i64 0, i64* %94, align 8
  %95 = call i8* (...) @TAOS_CONN_SOCKET_TYPE_C()
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 6
  store i8* %95, i8** %96, align 8
  %97 = load i32*, i32** @tscQhandle, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store i32* %97, i32** %98, align 8
  %99 = call i8* @taosOpenRpc(%struct.TYPE_5__* %3)
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** @pVnodeConn, align 8
  %101 = load i32*, i32** @pVnodeConn, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %75
  %104 = call i32 @tscError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %206

105:                                              ; preds = %75
  store i32 0, i32* %5, align 4
  br label %106

106:                                              ; preds = %123, %105
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @tscNumOfThreads, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %106
  %111 = load i32*, i32** @pVnodeConn, align 8
  %112 = load i32, i32* %5, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @taosOpenRpcChann(i32* %111, i32 %112, i32 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 0, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = call i32 @tError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %120 = load i32*, i32** @pVnodeConn, align 8
  %121 = call i32 @taosCloseRpc(i32* %120)
  br label %206

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %106

126:                                              ; preds = %106
  %127 = call i32 @memset(%struct.TYPE_5__* %3, i32 0, i32 80)
  %128 = load i8*, i8** @tsLocalIp, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 11
  store i8* %128, i8** %129, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 10
  store i64 0, i64* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  store i32 1, i32* %132, align 8
  %133 = load i8*, i8** @tscProcessMsgFromServer, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 9
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 2
  store i32 20, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 3
  store i32 1, i32* %136, align 8
  %137 = load i32, i32* @tsMaxMgmtConnections, align 4
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 4
  store i32 %137, i32* %138, align 4
  %139 = load i8*, i8** @TAOS_ID_FREE, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 8
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 7
  store i64 0, i64* %141, align 8
  %142 = call i8* (...) @TAOS_CONN_SOCKET_TYPE_C()
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 6
  store i8* %142, i8** %143, align 8
  %144 = load i32*, i32** @tscQhandle, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 5
  store i32* %144, i32** %145, align 8
  %146 = call i8* @taosOpenRpc(%struct.TYPE_5__* %3)
  %147 = bitcast i8* %146 to i32*
  store i32* %147, i32** @pTscMgmtConn, align 8
  %148 = load i32*, i32** @pTscMgmtConn, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %126
  %151 = call i32 @tscError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  br label %206

152:                                              ; preds = %126
  %153 = load i32, i32* @tsMaxMgmtConnections, align 4
  %154 = mul nsw i32 %153, 2
  %155 = call i32 @taosTmrInit(i32 %154, i32 200, i32 60000, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 %155, i32* @tscTmr, align 4
  %156 = load i64, i64* @tscEmbedded, align 8
  %157 = icmp eq i64 0, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @tscCheckDiskUsage, align 4
  %160 = load i32, i32* @tscTmr, align 4
  %161 = call i32 @taosTmrReset(i32 %159, i32 10, i32* null, i32 %160, i32* @tscCheckDiskUsageTmr)
  br label %162

162:                                              ; preds = %158, %152
  %163 = load i64, i64* @tsMetricMetaKeepTimer, align 8
  %164 = load i64, i64* @tsMeterMetaKeepTimer, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* @tsMetricMetaKeepTimer, align 8
  br label %170

168:                                              ; preds = %162
  %169 = load i64, i64* @tsMeterMetaKeepTimer, align 8
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i64 [ %167, %166 ], [ %169, %168 ]
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp sgt i32 %173, 2
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %178

176:                                              ; preds = %170
  %177 = load i32, i32* %7, align 4
  br label %178

178:                                              ; preds = %176, %175
  %179 = phi i32 [ 2, %175 ], [ %177, %176 ]
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %182
  %186 = phi i32 [ 1, %182 ], [ %184, %183 ]
  store i32 %186, i32* %7, align 4
  %187 = load i32*, i32** @tscCacheHandle, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32, i32* @tsMaxMeterConnections, align 4
  %191 = sdiv i32 %190, 2
  %192 = load i32, i32* @tscTmr, align 4
  %193 = load i32, i32* %7, align 4
  %194 = call i32* @taosInitDataCache(i32 %191, i32 %192, i32 %193)
  store i32* %194, i32** @tscCacheHandle, align 8
  br label %195

195:                                              ; preds = %189, %185
  %196 = load i32, i32* @tsMaxMeterConnections, align 4
  %197 = mul nsw i32 %196, 2
  %198 = load i32, i32* @taosCloseRpcConn, align 4
  %199 = load i32, i32* @tscTmr, align 4
  %200 = load i32, i32* @tsShellActivityTimer, align 4
  %201 = mul nsw i32 %200, 1000
  %202 = call i32 @taosOpenConnCache(i32 %197, i32 %198, i32 %199, i32 %201)
  store i32 %202, i32* @tscConnCache, align 4
  store i32 1, i32* @initialized, align 4
  %203 = call i32 (i8*, ...) @tscTrace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %204 = load i64, i64* @tsRpcHeadSize, align 8
  %205 = add i64 %204, 4
  store i64 %205, i64* @tsInsertHeadSize, align 8
  br label %206

206:                                              ; preds = %195, %150, %118, %103, %73
  ret void
}

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @taosGetTimestampSec(...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @tsReadGlobalLogConfig(...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @taosInitLog(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @tsReadGlobalConfig(...) #1

declare dso_local i32 @tsPrintGlobalConfig(...) #1

declare dso_local i32 @tscTrace(i8*, ...) #1

declare dso_local i32 @tscInitMsgs(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32* @taosInitScheduler(i32, i32, i8*) #1

declare dso_local i32 @tscError(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @TAOS_CONN_SOCKET_TYPE_C(...) #1

declare dso_local i8* @taosOpenRpc(%struct.TYPE_5__*) #1

declare dso_local i32 @taosOpenRpcChann(i32*, i32, i32) #1

declare dso_local i32 @tError(i8*) #1

declare dso_local i32 @taosCloseRpc(i32*) #1

declare dso_local i32 @taosTmrInit(i32, i32, i32, i8*) #1

declare dso_local i32 @taosTmrReset(i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @taosInitDataCache(i32, i32, i32) #1

declare dso_local i32 @taosOpenConnCache(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
