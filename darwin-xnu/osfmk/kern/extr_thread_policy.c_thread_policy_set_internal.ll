; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_set_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_set_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.task_pend_token = type { i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@THREAD_EXTENDED_POLICY_COUNT = common dso_local global i32 0, align 4
@TH_MODE_TIMESHARE = common dso_local global i32 0, align 4
@TH_MODE_FIXED = common dso_local global i32 0, align 4
@THREAD_TIME_CONSTRAINT_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@max_rt_quantum = common dso_local global i32 0, align 4
@min_rt_quantum = common dso_local global i32 0, align 4
@TH_MODE_REALTIME = common dso_local global i32 0, align 4
@THREAD_PRECEDENCE_POLICY_COUNT = common dso_local global i32 0, align 4
@KERN_NOT_SUPPORTED = common dso_local global i32 0, align 4
@THREAD_AFFINITY_POLICY_COUNT = common dso_local global i32 0, align 4
@THREAD_THROUGHPUT_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_THROUGH_QOS = common dso_local global i32 0, align 4
@THREAD_LATENCY_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@TASK_POLICY_LATENCY_QOS = common dso_local global i32 0, align 4
@THREAD_QOS_POLICY_COUNT = common dso_local global i32 0, align 4
@THREAD_QOS_LAST = common dso_local global i32 0, align 4
@THREAD_QOS_MIN_TIER_IMPORTANCE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_AND_RELPRIO = common dso_local global i32 0, align 4
@KERN_PROTECTION_FAILURE = common dso_local global i32 0, align 4
@TASK_POLICY_DARWIN_BG = common dso_local global i32 0, align 4
@TASK_POLICY_DISABLE = common dso_local global i32 0, align 4
@TASK_POLICY_ENABLE = common dso_local global i32 0, align 4
@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_INTERNAL = common dso_local global i32 0, align 4
@THREAD_BACKGROUND_POLICY_COUNT = common dso_local global i32 0, align 4
@THREAD_BACKGROUND_POLICY_DARWIN_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_policy_set_internal(%struct.TYPE_26__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.task_pend_token, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %26, i32* %10, align 4
  %27 = bitcast %struct.task_pend_token* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = call i32 @thread_mtx_lock(%struct.TYPE_26__* %28)
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %36 = call i32 @thread_mtx_unlock(%struct.TYPE_26__* %35)
  %37 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %37, i32* %5, align 4
  br label %308

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %300 [
    i32 133, label %40
    i32 128, label %73
    i32 131, label %140
    i32 135, label %164
    i32 129, label %186
    i32 132, label %213
    i32 130, label %240
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @THREAD_EXTENDED_POLICY_COUNT, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %48, %struct.TYPE_30__** %13, align 8
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @TH_MODE_TIMESHARE, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @TH_MODE_FIXED, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %14, align 4
  %62 = call i32 (...) @splsched()
  store i32 %62, i32* %15, align 4
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %64 = call i32 @thread_lock(%struct.TYPE_26__* %63)
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @thread_set_user_sched_mode_and_recompute_pri(%struct.TYPE_26__* %65, i32 %66)
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %69 = call i32 @thread_unlock(%struct.TYPE_26__* %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @splx(i32 %70)
  %72 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %11, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %302

73:                                               ; preds = %38
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @THREAD_TIME_CONSTRAINT_POLICY_COUNT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %78, i32* %10, align 4
  br label %302

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %82, %struct.TYPE_24__** %16, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %79
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @max_rt_quantum, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @min_rt_quantum, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96, %90, %79
  %103 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %103, i32* %10, align 4
  br label %302

104:                                              ; preds = %96
  %105 = call i32 (...) @splsched()
  store i32 %105, i32* %17, align 4
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %107 = call i32 @thread_lock(%struct.TYPE_26__* %106)
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 3
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  store i32 %116, i32* %119, align 4
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  store i32 %122, i32* %125, align 4
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 4
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %133 = load i32, i32* @TH_MODE_REALTIME, align 4
  %134 = call i32 @thread_set_user_sched_mode_and_recompute_pri(%struct.TYPE_26__* %132, i32 %133)
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = call i32 @thread_unlock(%struct.TYPE_26__* %135)
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @splx(i32 %137)
  %139 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %11, i32 0, i32 0
  store i32 1, i32* %139, align 4
  br label %302

140:                                              ; preds = %38
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @THREAD_PRECEDENCE_POLICY_COUNT, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %145, i32* %10, align 4
  br label %302

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %149, %struct.TYPE_28__** %18, align 8
  %150 = call i32 (...) @splsched()
  store i32 %150, i32* %19, align 4
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %152 = call i32 @thread_lock(%struct.TYPE_26__* %151)
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %159 = call i32 @thread_recompute_priority(%struct.TYPE_26__* %158)
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %161 = call i32 @thread_unlock(%struct.TYPE_26__* %160)
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @splx(i32 %162)
  br label %302

164:                                              ; preds = %38
  %165 = call i32 (...) @thread_affinity_is_supported()
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %169, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* @KERN_NOT_SUPPORTED, align 4
  store i32 %168, i32* %10, align 4
  br label %302

169:                                              ; preds = %164
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* @THREAD_AFFINITY_POLICY_COUNT, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %174, i32* %10, align 4
  br label %302

175:                                              ; preds = %169
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %178, %struct.TYPE_22__** %20, align 8
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %180 = call i32 @thread_mtx_unlock(%struct.TYPE_26__* %179)
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @thread_affinity_set(%struct.TYPE_26__* %181, i32 %184)
  store i32 %185, i32* %5, align 4
  br label %308

186:                                              ; preds = %38
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %21, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* @THREAD_THROUGHPUT_QOS_POLICY_COUNT, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %194, i32* %10, align 4
  br label %302

195:                                              ; preds = %186
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @qos_throughput_policy_validate(i32 %198)
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* @KERN_SUCCESS, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  br label %302

203:                                              ; preds = %195
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @qos_extract(i32 %206)
  store i32 %207, i32* %22, align 4
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %210 = load i32, i32* @TASK_POLICY_THROUGH_QOS, align 4
  %211 = load i32, i32* %22, align 4
  %212 = call i32 @proc_set_thread_policy_locked(%struct.TYPE_26__* %208, i32 %209, i32 %210, i32 %211, i32 0, %struct.task_pend_token* %11)
  br label %302

213:                                              ; preds = %38
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = inttoptr i64 %215 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %216, %struct.TYPE_29__** %23, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* @THREAD_LATENCY_QOS_POLICY_COUNT, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %221, i32* %10, align 4
  br label %302

222:                                              ; preds = %213
  %223 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @qos_latency_policy_validate(i32 %225)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* @KERN_SUCCESS, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %222
  br label %302

230:                                              ; preds = %222
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @qos_extract(i32 %233)
  store i32 %234, i32* %24, align 4
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %236 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %237 = load i32, i32* @TASK_POLICY_LATENCY_QOS, align 4
  %238 = load i32, i32* %24, align 4
  %239 = call i32 @proc_set_thread_policy_locked(%struct.TYPE_26__* %235, i32 %236, i32 %237, i32 %238, i32 0, %struct.task_pend_token* %11)
  br label %302

240:                                              ; preds = %38
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = inttoptr i64 %242 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %243, %struct.TYPE_27__** %25, align 8
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* @THREAD_QOS_POLICY_COUNT, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %249

247:                                              ; preds = %240
  %248 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %248, i32* %10, align 4
  br label %302

249:                                              ; preds = %240
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @THREAD_QOS_LAST, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %254, %249
  %261 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %261, i32* %10, align 4
  br label %302

262:                                              ; preds = %254
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %269 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @THREAD_QOS_MIN_TIER_IMPORTANCE, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %267, %262
  %274 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %274, i32* %10, align 4
  br label %302

275:                                              ; preds = %267
  %276 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %277 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %275
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %287, i32* %10, align 4
  br label %302

288:                                              ; preds = %281, %275
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %290 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %291 = load i32, i32* @TASK_POLICY_QOS_AND_RELPRIO, align 4
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %25, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub nsw i32 0, %297
  %299 = call i32 @proc_set_thread_policy_locked(%struct.TYPE_26__* %289, i32 %290, i32 %291, i32 %294, i32 %298, %struct.task_pend_token* %11)
  br label %302

300:                                              ; preds = %38
  %301 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %301, i32* %10, align 4
  br label %302

302:                                              ; preds = %300, %288, %286, %273, %260, %247, %230, %229, %220, %203, %202, %193, %173, %167, %146, %144, %104, %102, %77, %60
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %304 = call i32 @thread_mtx_unlock(%struct.TYPE_26__* %303)
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %306 = call i32 @thread_policy_update_complete_unlocked(%struct.TYPE_26__* %305, %struct.task_pend_token* %11)
  %307 = load i32, i32* %10, align 4
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %302, %175, %34
  %309 = load i32, i32* %5, align 4
  ret i32 %309
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_26__*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_26__*) #2

declare dso_local i32 @splsched(...) #2

declare dso_local i32 @thread_lock(%struct.TYPE_26__*) #2

declare dso_local i32 @thread_set_user_sched_mode_and_recompute_pri(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @thread_unlock(%struct.TYPE_26__*) #2

declare dso_local i32 @splx(i32) #2

declare dso_local i32 @thread_recompute_priority(%struct.TYPE_26__*) #2

declare dso_local i32 @thread_affinity_is_supported(...) #2

declare dso_local i32 @thread_affinity_set(%struct.TYPE_26__*, i32) #2

declare dso_local i32 @qos_throughput_policy_validate(i32) #2

declare dso_local i32 @qos_extract(i32) #2

declare dso_local i32 @proc_set_thread_policy_locked(%struct.TYPE_26__*, i32, i32, i32, i32, %struct.task_pend_token*) #2

declare dso_local i32 @qos_latency_policy_validate(i32) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(%struct.TYPE_26__*, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
