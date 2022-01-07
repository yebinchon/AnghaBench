; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_manager_fn.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tools/tests/affinity/extr_sets.c_manager_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_12__*, i32 (i32, i32)*, %struct.TYPE_11__*, %struct.TYPE_17__* }
%struct.TYPE_12__ = type { i32, i32, i64, i32 }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@THREAD_EXTENDED_POLICY = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_EXTENDED_POLICY) returned %d\0A\00", align 1
@affinity = common dso_local global i64 0, align 8
@THREAD_AFFINITY_POLICY = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"thread_policy_set(THREAD_AFFINITY_POLICY) returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Starting %s set: %d stage: %d\0A\00", align 1
@funnel = common dso_local global i32 0, align 4
@threads_ready = common dso_local global i64 0, align 8
@threads = common dso_local global i64 0, align 8
@halting = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"  all threads ready for process %d, hit any key to start\00", align 1
@stdout = common dso_local global i32 0, align 4
@barrier = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"    %s[%d,%d] iteration %d waiting for buffer\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@link = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"  %s[%d,%d] iteration %d work %p data %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"    %s[%d,%d] iteration %d signaling work\0A\00", align 1
@iterations = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"Ending %s[%d,%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @manager_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  store i64 0, i64* %6, align 8
  %16 = load i8*, i8** @FALSE, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = call i32 (...) @mach_thread_self()
  %19 = load i32, i32* @THREAD_EXTENDED_POLICY, align 4
  %20 = ptrtoint %struct.TYPE_14__* %7 to i32
  %21 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %22 = call i64 @thread_policy_set(i32 %18, i32 %19, i32 %20, i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i64, i64* @affinity, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = call i32 (...) @mach_thread_self()
  %39 = load i32, i32* @THREAD_AFFINITY_POLICY, align 4
  %40 = ptrtoint %struct.TYPE_15__* %8 to i32
  %41 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %42 = call i64 @thread_policy_set(i32 %38, i32 %39, i32 %40, i32 %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %33
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %33
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = call i32 @pthread_mutex_lock(i32* @funnel)
  %63 = load i64, i64* @threads_ready, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* @threads_ready, align 8
  %65 = load i64, i64* @threads_ready, align 8
  %66 = load i64, i64* @threads, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %51
  %69 = call i32 @pthread_mutex_unlock(i32* @funnel)
  %70 = load i64, i64* @halting, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = call i32 (...) @getpid()
  %74 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @fflush(i32 %75)
  %77 = call i32 (...) @getchar()
  br label %78

78:                                               ; preds = %72, %68
  %79 = call i32 @pthread_cond_broadcast(i32* @barrier)
  %80 = call i32 (...) @mach_absolute_time()
  store i32 %80, i32* @timer, align 4
  br label %84

81:                                               ; preds = %51
  %82 = call i32 @pthread_cond_wait(i32* @barrier, i32* @funnel)
  %83 = call i32 @pthread_mutex_unlock(i32* @funnel)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %210, %84
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  br label %91

91:                                               ; preds = %85, %100
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = call %struct.TYPE_13__* @TAILQ_FIRST(i32* %95)
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %10, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %98 = icmp ne %struct.TYPE_13__* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %131

100:                                              ; preds = %91
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i64 %110)
  %112 = load i8*, i8** @TRUE, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  store i8* %112, i8** %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = call i32 @pthread_cond_wait(i32* %120, i32* %124)
  %126 = load i8*, i8** @FALSE, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  store i8* %126, i8** %130, align 8
  br label %91

131:                                              ; preds = %99
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %137 = load i32, i32* @link, align 4
  %138 = call i32 @TAILQ_REMOVE(i32* %135, %struct.TYPE_13__* %136, i32 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = call i32 @pthread_mutex_unlock(i32* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i64 %153, %struct.TYPE_13__* %154, i32 %157)
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i32 (i32, i32)*, i32 (i32, i32)** %160, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 %161(i32 %164, i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = call i32 @pthread_mutex_lock(i32* %172)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %179 = load i32, i32* @link, align 4
  %180 = call i32 @TAILQ_INSERT_TAIL(i32* %177, %struct.TYPE_13__* %178, i32 %179)
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %131
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %190, i32 %193, i32 %196, i64 %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = call i32 @pthread_cond_signal(i32* %202)
  br label %204

204:                                              ; preds = %187, %131
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = call i32 @pthread_mutex_unlock(i32* %208)
  br label %210

210:                                              ; preds = %204
  %211 = load i64, i64* %6, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %6, align 8
  %213 = load i64, i64* @iterations, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %85, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i8*, i32, i32, i32, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %218, i32 %221, i32 %224)
  %226 = load i64, i64* %6, align 8
  %227 = inttoptr i64 %226 to i8*
  ret i8* %227
}

declare dso_local i64 @thread_policy_set(i32, i32, i32, i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, ...) #1

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
