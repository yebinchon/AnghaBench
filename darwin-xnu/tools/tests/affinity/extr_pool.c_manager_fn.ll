; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_manager_fn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_pool.c_manager_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_11__*, i32 (i32, i32)*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\0A\00", align 1
@affinity = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Starting %s %d, stage: %d\0A\00", align 1
@funnel = common dso_local global i32 0, align 4
@threads_ready = common dso_local global i64 0, align 8
@threads = common dso_local global i64 0, align 8
@halting = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"  all threads ready for process %d, hit any key to start\00", align 1
@stdout = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"    %s[%d,%d] todo %d waiting for buffer\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"  %s[%d,%d] todo %d work %p data %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"    %s[%d,%d] todo %d signaling work\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Ending %s[%d,%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @manager_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %3, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = call i32 (...) @mach_thread_self()
  %24 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %25 = ptrtoint %struct.TYPE_14__* %9 to i32
  %26 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %27 = call i64 @thread_policy_set(i32 %23, i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @KERN_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i64, i64* %8, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load i64, i64* @affinity, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @affinity_set(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %41, %38, %35
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, i32, i32, i64, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55, i64 %58)
  %60 = call i32 @pthread_mutex_lock(i32* @funnel)
  %61 = load i64, i64* @threads_ready, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @threads_ready, align 8
  %63 = load i64, i64* @threads_ready, align 8
  %64 = load i64, i64* @threads, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %49
  %67 = call i32 @pthread_mutex_unlock(i32* @funnel)
  %68 = load i64, i64* @halting, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = call i32 (...) @getpid()
  %72 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fflush(i32 %73)
  %75 = call i32 (...) @getchar()
  br label %76

76:                                               ; preds = %70, %66
  %77 = call i32 @pthread_cond_broadcast(i32* @barrier)
  %78 = call i32 (...) @mach_absolute_time()
  store i32 %78, i32* @timer, align 4
  br label %82

79:                                               ; preds = %49
  %80 = call i32 @pthread_cond_wait(i32* @barrier, i32* @funnel)
  %81 = call i32 @pthread_mutex_unlock(i32* @funnel)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %257, %82
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 5
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = call i32 @pthread_mutex_lock(i32* %87)
  br label %89

89:                                               ; preds = %83, %109
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = call i32 @pthread_mutex_unlock(i32* %98)
  br label %259

100:                                              ; preds = %89
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = call %struct.TYPE_13__* @TAILQ_FIRST(i32* %104)
  store %struct.TYPE_13__* %105, %struct.TYPE_13__** %10, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %107 = icmp ne %struct.TYPE_13__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %144

109:                                              ; preds = %100
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, i32, i32, i64, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %115, i64 %118, i64 %121)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 5
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = call i32 @pthread_cond_wait(i32* %132, i32* %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 4
  br label %89

144:                                              ; preds = %108
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 5
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %150 = load i32, i32* @link, align 4
  %151 = call i32 @TAILQ_REMOVE(i32* %148, %struct.TYPE_13__* %149, i32 %150)
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, -1
  store i64 %155, i64* %153, align 8
  store i64 %154, i64* %6, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = call i32 @pthread_mutex_unlock(i32* %159)
  %161 = load i32, i32* %5, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %172

163:                                              ; preds = %144
  %164 = load i64, i64* %6, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 8
  br label %190

172:                                              ; preds = %144
  %173 = load i64, i64* @affinity, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @affinity_set(i32 %184)
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %181, %175, %172
  br label %190

190:                                              ; preds = %189, %163
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %6, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i32, i32, i64, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %193, i32 %196, i64 %199, i64 %200, %struct.TYPE_13__* %201, i32 %204)
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 4
  %208 = load i32 (i32, i32)*, i32 (i32, i32)** %207, align 8
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i32 %208(i32 %211, i32 %214)
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = call i32 @pthread_mutex_lock(i32* %219)
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %226 = load i32, i32* @link, align 4
  %227 = call i32 @TAILQ_INSERT_TAIL(i32* %224, %struct.TYPE_13__* %225, i32 %226)
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %190
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %6, align 8
  %245 = call i32 (i8*, i32, i32, i64, ...) @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %237, i32 %240, i64 %243, i64 %244)
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = call i32 @pthread_cond_signal(i32* %249)
  br label %251

251:                                              ; preds = %234, %190
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = call i32 @pthread_mutex_unlock(i32* %255)
  br label %257

257:                                              ; preds = %251
  br i1 true, label %83, label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258, %94
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 3
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 0
  %264 = call i32 @pthread_cond_broadcast(i32* %263)
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = call i32 (i8*, i32, i32, i64, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %267, i32 %270, i64 %273)
  %275 = load i64, i64* %6, align 8
  %276 = inttoptr i64 %275 to i8*
  ret i8* %276
}

declare dso_local i64 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @affinity_set(i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i64, ...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
