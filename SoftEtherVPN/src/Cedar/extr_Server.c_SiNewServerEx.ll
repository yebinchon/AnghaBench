; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiNewServerEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiNewServerEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, i32, %struct.TYPE_21__*, i32, i8*, i32, i8*, i32, i32*, i8*, %struct.TYPE_20__*, i32, i32, i8*, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i8*, i32, %struct.TYPE_21__* }

@DEFAULT_GETIP_THREAD_MAX_NUM = common dso_local global i32 0, align 4
@CompareServerListener = common dso_local global i32* null, align 8
@SERVER_LOG_DIR_NAME = common dso_local global i32 0, align 4
@BRIDGE_LOG_DIR_NAME = common dso_local global i32 0, align 4
@SERVER_LOG_PERFIX = common dso_local global i32 0, align 4
@LOG_SWITCH_DAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"L_LINE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"LS_START_2\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LS_START_3\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"LS_START_UTF8\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"LS_START_1\00", align 1
@MEM_FIFO_REALLOC_MEM_SIZE = common dso_local global i32 0, align 4
@SERVER_TYPE_FARM_MEMBER = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@CompareHubList = common dso_local global i32* null, align 8
@LISTENER_INPROC = common dso_local global i32 0, align 4
@LISTENER_REVERSE = common dso_local global i32 0, align 4
@LISTENER_RUDP = common dso_local global i32 0, align 4
@TCPAcceptedThread = common dso_local global i32 0, align 4
@RAND_PORT_ID_SERVER_LISTEN = common dso_local global i32 0, align 4
@LISTENER_ICMP = common dso_local global i32 0, align 4
@LISTENER_DNS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @SiNewServerEx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @DEFAULT_GETIP_THREAD_MAX_NUM, align 4
  %13 = call i32 @SetGetIpThreadMaxNum(i32 %12)
  %14 = call i8* @ZeroMalloc(i32 200)
  %15 = bitcast i8* %14 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = call i32 @SetEraserCheckInterval(i32 0)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %18 = call i32 @SiInitHubCreateHistory(%struct.TYPE_19__* %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = call i32 @InitServerCapsCache(%struct.TYPE_19__* %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 29
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Rand(i32 %23, i32 4)
  %25 = call i8* (...) @NewLock()
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 28
  store i8* %25, i8** %27, align 8
  %28 = call i8* (...) @NewLock()
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 27
  store i8* %28, i8** %30, align 8
  %31 = call i8* (...) @NewLock()
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 26
  store i8* %31, i8** %33, align 8
  %34 = call i32 (...) @NewRef()
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 25
  store i32 %34, i32* %36, align 8
  %37 = call %struct.TYPE_21__* @NewCedar(i32* null, i32* null)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 4
  store %struct.TYPE_21__* %37, %struct.TYPE_21__** %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  store %struct.TYPE_19__* %40, %struct.TYPE_19__** %44, align 8
  %45 = call i32 (...) @UnixIsInVm()
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 24
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32*, i32** @CompareServerListener, align 8
  %53 = call i8* @NewList(i32* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 22
  store i8* %53, i8** %55, align 8
  %56 = call i32 (...) @SystemTime64()
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 21
  store i32 %56, i32* %58, align 8
  %59 = call i8* (...) @NewLock()
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 20
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %3
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = call i32 @SetCedarVpnBridge(%struct.TYPE_21__* %67)
  br label %69

69:                                               ; preds = %64, %3
  %70 = call i32 (...) @StartKeep()
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 19
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @SERVER_LOG_DIR_NAME, align 4
  br label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @BRIDGE_LOG_DIR_NAME, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i32 @MakeDir(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @SERVER_LOG_DIR_NAME, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @BRIDGE_LOG_DIR_NAME, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* @SERVER_LOG_PERFIX, align 4
  %91 = load i32, i32* @LOG_SWITCH_DAY, align 4
  %92 = call i32 @NewLog(i32 %89, i32 %90, i32 %91)
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 18
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = call i32 (%struct.TYPE_21__*, i8*, ...) @SLog(%struct.TYPE_21__* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.TYPE_21__*, i8*, ...) @SLog(%struct.TYPE_21__* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 4
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (%struct.TYPE_21__*, i8*, ...) @SLog(%struct.TYPE_21__* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 4
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = call i32 (%struct.TYPE_21__*, i8*, ...) @SLog(%struct.TYPE_21__* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = call i32 (%struct.TYPE_21__*, i8*, ...) @SLog(%struct.TYPE_21__* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %131 = call i32 @SiInitConfiguration(%struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 16
  %138 = call i32 @NewSysLog(i32* null, i32 0, i32* %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 17
  store i32 %138, i32* %140, align 4
  %141 = call i8* (...) @NewLock()
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 15
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* @MEM_FIFO_REALLOC_MEM_SIZE, align 4
  %145 = call i32 @SetFifoCurrentReallocMemSize(i32 %144)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %88
  %151 = call i32 (...) @OSSetHighPriority()
  br label %152

152:                                              ; preds = %150, %88
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SERVER_TYPE_FARM_MEMBER, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = call i32 @SiStartConnectToController(%struct.TYPE_19__* %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 14
  store i32 %160, i32* %162, align 4
  br label %208

163:                                              ; preds = %152
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %207

169:                                              ; preds = %163
  %170 = call i8* @NewList(i32* null)
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 11
  store i8* %170, i8** %172, align 8
  %173 = call i8* @ZeroMalloc(i32 32)
  %174 = bitcast i8* %173 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %174, %struct.TYPE_20__** %11, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 4
  store %struct.TYPE_21__* %177, %struct.TYPE_21__** %179, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @GetMachineName(i32 %182, i32 4)
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load i32*, i32** @CompareHubList, align 8
  %187 = call i8* @NewList(i32* %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 12
  store %struct.TYPE_20__* %195, %struct.TYPE_20__** %197, align 8
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 11
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %202 = call i32 @Add(i8* %200, %struct.TYPE_20__* %201)
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %204 = call i32 @SiStartFarmControl(%struct.TYPE_19__* %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 2
  store i32 1, i32* %206, align 8
  br label %207

207:                                              ; preds = %169, %163
  br label %208

208:                                              ; preds = %207, %158
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %210, align 8
  %212 = load i32, i32* @LISTENER_INPROC, align 4
  %213 = call i32* @NewListener(%struct.TYPE_21__* %211, i32 %212, i32 0)
  store i32* %213, i32** %8, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @ReleaseListener(i32* %214)
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 10
  %218 = load i32*, i32** %217, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %208
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %222, align 8
  %224 = load i32, i32* @LISTENER_REVERSE, align 4
  %225 = call i32* @NewListener(%struct.TYPE_21__* %223, i32 %224, i32 0)
  store i32* %225, i32** %9, align 8
  %226 = load i32*, i32** %9, align 8
  %227 = call i32 @ReleaseListener(i32* %226)
  br label %228

228:                                              ; preds = %220, %208
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %252

233:                                              ; preds = %228
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 4
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %233
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = load i32, i32* @LISTENER_RUDP, align 4
  %245 = load i32, i32* @TCPAcceptedThread, align 4
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 9
  %248 = load i32, i32* @RAND_PORT_ID_SERVER_LISTEN, align 4
  %249 = call i32* @NewListenerEx4(%struct.TYPE_21__* %243, i32 %244, i32 0, i32 %245, i32* null, i32 0, i32 0, i32* %247, i32 %248)
  store i32* %249, i32** %10, align 8
  %250 = load i32*, i32** %10, align 8
  %251 = call i32 @ReleaseListener(i32* %250)
  br label %252

252:                                              ; preds = %240, %233, %228
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %254, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 7
  %258 = load i32, i32* @LISTENER_ICMP, align 4
  %259 = call i8* @NewDynamicListener(%struct.TYPE_21__* %255, i32* %257, i32 %258, i32 0)
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 8
  store i8* %259, i8** %261, align 8
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %263, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 5
  %267 = load i32, i32* @LISTENER_DNS, align 4
  %268 = call i8* @NewDynamicListener(%struct.TYPE_21__* %264, i32* %266, i32 %267, i32 53)
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 6
  store i8* %268, i8** %270, align 8
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %272 = call i32 @SiInitDeadLockCheck(%struct.TYPE_19__* %271)
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %274, align 8
  %276 = call i32 @SiUpdateCurrentRegion(%struct.TYPE_21__* %275, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 1)
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  ret %struct.TYPE_19__* %277
}

declare dso_local i32 @SetGetIpThreadMaxNum(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @SetEraserCheckInterval(i32) #1

declare dso_local i32 @SiInitHubCreateHistory(%struct.TYPE_19__*) #1

declare dso_local i32 @InitServerCapsCache(%struct.TYPE_19__*) #1

declare dso_local i32 @Rand(i32, i32) #1

declare dso_local i8* @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local %struct.TYPE_21__* @NewCedar(i32*, i32*) #1

declare dso_local i32 @UnixIsInVm(...) #1

declare dso_local i8* @NewList(i32*) #1

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32 @SetCedarVpnBridge(%struct.TYPE_21__*) #1

declare dso_local i32 @StartKeep(...) #1

declare dso_local i32 @MakeDir(i32) #1

declare dso_local i32 @NewLog(i32, i32, i32) #1

declare dso_local i32 @SLog(%struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @SiInitConfiguration(%struct.TYPE_19__*) #1

declare dso_local i32 @NewSysLog(i32*, i32, i32*) #1

declare dso_local i32 @SetFifoCurrentReallocMemSize(i32) #1

declare dso_local i32 @OSSetHighPriority(...) #1

declare dso_local i32 @SiStartConnectToController(%struct.TYPE_19__*) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i32 @Add(i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @SiStartFarmControl(%struct.TYPE_19__*) #1

declare dso_local i32* @NewListener(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ReleaseListener(i32*) #1

declare dso_local i32* @NewListenerEx4(%struct.TYPE_21__*, i32, i32, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i8* @NewDynamicListener(%struct.TYPE_21__*, i32*, i32, i32) #1

declare dso_local i32 @SiInitDeadLockCheck(%struct.TYPE_19__*) #1

declare dso_local i32 @SiUpdateCurrentRegion(%struct.TYPE_21__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
