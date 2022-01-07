; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_reqthreads.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_reqthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.workqueue = type { i64, i32, i32, i32*, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.uthread = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i64 }

@WQ_FLAG_THREAD_NEWSPI = common dso_local global i64 0, align 8
@UINT16_MAX = common dso_local global i64 0, align 8
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TRACE_wq_wqops_reqthreads = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@workq_zone_threadreq = common dso_local global i32 0, align 4
@TR_STATE_NEW = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_OVERCOMMIT_FLAG = common dso_local global i32 0, align 4
@TR_FLAG_OVERCOMMIT = common dso_local global i32 0, align 4
@WQ_FLAG_THREAD_OVERCOMMIT = common dso_local global i64 0, align 8
@TRACE_wq_thread_request_initiate = common dso_local global i32 0, align 4
@TR_FLAG_WL_PARAMS = common dso_local global i32 0, align 4
@UT_WORKQ_EARLY_BOUND = common dso_local global i32 0, align 4
@UT_WORKQ_OVERCOMMIT = common dso_local global i32 0, align 4
@wq_max_threads = common dso_local global i64 0, align 8
@WORKQ_THREADREQ_CAN_CREATE_THREADS = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i64, i32)* @workq_reqthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_reqthreads(%struct.proc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.workqueue*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.uthread*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @_pthread_priority_thread_qos(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load %struct.proc*, %struct.proc** %5, align 8
  %17 = call %struct.workqueue* @proc_get_wqptr(%struct.proc* %16)
  store %struct.workqueue* %17, %struct.workqueue** %9, align 8
  %18 = load i64, i64* @WQ_FLAG_THREAD_NEWSPI, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %20 = icmp eq %struct.workqueue* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @UINT16_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24, %21, %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %239

34:                                               ; preds = %28
  %35 = load i32, i32* @TRACE_wq_wqops_reqthreads, align 4
  %36 = load i32, i32* @DBG_FUNC_NONE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @WQ_TRACE_WQ(i32 %37, %struct.workqueue* %38, i64 %39, i32 %40, i64 0, i32 0)
  %42 = load i32, i32* @workq_zone_threadreq, align 4
  %43 = call %struct.TYPE_11__* @zalloc(i32 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %12, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = call i32 @priority_queue_entry_init(i32* %45)
  %47 = load i32, i32* @TR_STATE_NEW, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @_PTHREAD_PRIORITY_OVERCOMMIT_FLAG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %34
  %61 = load i32, i32* @TR_FLAG_OVERCOMMIT, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i64, i64* @WQ_FLAG_THREAD_OVERCOMMIT, align 8
  %67 = load i64, i64* %11, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %60, %34
  %70 = load i32, i32* @TRACE_wq_thread_request_initiate, align 4
  %71 = load i32, i32* @DBG_FUNC_NONE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = call i64 @workq_trace_req_id(%struct.TYPE_11__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @WQ_TRACE_WQ(i32 %72, %struct.workqueue* %73, i64 %75, i32 %78, i64 %79, i32 0)
  %81 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %82 = call i32 @workq_lock_spin(%struct.workqueue* %81)
  br label %83

83:                                               ; preds = %209, %69
  %84 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %85 = call i64 @_wq_exiting(%struct.workqueue* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %232

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = icmp sgt i64 %89, 1
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TR_FLAG_OVERCOMMIT, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %91
  %99 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %100 = load i64, i64* %8, align 8
  %101 = call i64 @workq_constrained_allowance(%struct.workqueue* %99, i64 %100, i32* null, i32 0)
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub nsw i64 %103, 1
  %105 = icmp sge i64 %102, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i64, i64* %6, align 8
  %108 = sub nsw i64 %107, 1
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %106, %98
  br label %113

110:                                              ; preds = %91, %88
  %111 = load i64, i64* %6, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %10, align 8
  br label %113

113:                                              ; preds = %110, %109
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TR_FLAG_WL_PARAMS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  br label %123

123:                                              ; preds = %177, %113
  %124 = load i64, i64* %10, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %128 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %126, %123
  %132 = phi i1 [ false, %123 ], [ %130, %126 ]
  br i1 %132, label %133, label %194

133:                                              ; preds = %131
  %134 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %135 = call %struct.uthread* @workq_pop_idle_thread(%struct.workqueue* %134)
  store %struct.uthread* %135, %struct.uthread** %13, align 8
  %136 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @_wq_thactive_inc(%struct.workqueue* %136, i64 %137)
  %139 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %140 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i64 @_wq_bucket(i64 %142)
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %148 = load %struct.uthread*, %struct.uthread** %13, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = call i32 @workq_thread_reset_pri(%struct.workqueue* %147, %struct.uthread* %148, %struct.TYPE_11__* %149)
  %151 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %152 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* @UT_WORKQ_EARLY_BOUND, align 4
  %156 = load %struct.uthread*, %struct.uthread** %13, align 8
  %157 = getelementptr inbounds %struct.uthread, %struct.uthread* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @TR_FLAG_OVERCOMMIT, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %133
  %167 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.uthread*, %struct.uthread** %13, align 8
  %170 = getelementptr inbounds %struct.uthread, %struct.uthread* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %174 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %166, %133
  %178 = load i64, i64* %11, align 8
  %179 = load %struct.uthread*, %struct.uthread** %13, align 8
  %180 = getelementptr inbounds %struct.uthread, %struct.uthread* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  store i64 %178, i64* %182, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %184 = load %struct.uthread*, %struct.uthread** %13, align 8
  %185 = getelementptr inbounds %struct.uthread, %struct.uthread* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  store %struct.TYPE_11__* %183, %struct.TYPE_11__** %187, align 8
  %188 = load %struct.uthread*, %struct.uthread** %13, align 8
  %189 = call i32 @workq_thread_wakeup(%struct.uthread* %188)
  %190 = load i64, i64* %10, align 8
  %191 = add nsw i64 %190, -1
  store i64 %191, i64* %10, align 8
  %192 = load i64, i64* %6, align 8
  %193 = add nsw i64 %192, -1
  store i64 %193, i64* %6, align 8
  br label %123

194:                                              ; preds = %131
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %10, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %200 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @wq_max_threads, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %198
  %205 = load %struct.proc*, %struct.proc** %5, align 8
  %206 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %207 = call i64 @workq_add_new_idle_thread(%struct.proc* %205, %struct.workqueue* %206)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %204, %198, %195
  %210 = phi i1 [ false, %198 ], [ false, %195 ], [ %208, %204 ]
  br i1 %210, label %83, label %211

211:                                              ; preds = %209
  %212 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %213 = call i64 @_wq_exiting(%struct.workqueue* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %232

216:                                              ; preds = %211
  %217 = load i64, i64* %6, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 2
  store i64 %217, i64* %219, align 8
  %220 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %222 = call i64 @workq_threadreq_enqueue(%struct.workqueue* %220, %struct.TYPE_11__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = load %struct.proc*, %struct.proc** %5, align 8
  %226 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %227 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  %228 = call i32 @workq_schedule_creator(%struct.proc* %225, %struct.workqueue* %226, i32 %227)
  br label %229

229:                                              ; preds = %224, %216
  %230 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %231 = call i32 @workq_unlock(%struct.workqueue* %230)
  store i32 0, i32* %4, align 4
  br label %239

232:                                              ; preds = %215, %87
  %233 = load %struct.workqueue*, %struct.workqueue** %9, align 8
  %234 = call i32 @workq_unlock(%struct.workqueue* %233)
  %235 = load i32, i32* @workq_zone_threadreq, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %237 = call i32 @zfree(i32 %235, %struct.TYPE_11__* %236)
  %238 = load i32, i32* @ECANCELED, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %232, %229, %32
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local %struct.workqueue* @proc_get_wqptr(%struct.proc*) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i64, i32, i64, i32) #1

declare dso_local %struct.TYPE_11__* @zalloc(i32) #1

declare dso_local i32 @priority_queue_entry_init(i32*) #1

declare dso_local i64 @workq_trace_req_id(%struct.TYPE_11__*) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

declare dso_local i64 @_wq_exiting(%struct.workqueue*) #1

declare dso_local i64 @workq_constrained_allowance(%struct.workqueue*, i64, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.uthread* @workq_pop_idle_thread(%struct.workqueue*) #1

declare dso_local i32 @_wq_thactive_inc(%struct.workqueue*, i64) #1

declare dso_local i64 @_wq_bucket(i64) #1

declare dso_local i32 @workq_thread_reset_pri(%struct.workqueue*, %struct.uthread*, %struct.TYPE_11__*) #1

declare dso_local i32 @workq_thread_wakeup(%struct.uthread*) #1

declare dso_local i64 @workq_add_new_idle_thread(%struct.proc*, %struct.workqueue*) #1

declare dso_local i64 @workq_threadreq_enqueue(%struct.workqueue*, %struct.TYPE_11__*) #1

declare dso_local i32 @workq_schedule_creator(%struct.proc*, %struct.workqueue*, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
