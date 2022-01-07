; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_task.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_pet.c_pet_sample_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kperf_context = type { i32, i32 }

@pet_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@PERF_PET_SAMPLE_TASK = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@pet_action_id = common dso_local global i32 0, align 4
@pet_sample = common dso_local global i32 0, align 4
@SAMPLE_FLAG_TASK_ONLY = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@kernel_task = common dso_local global i32 0, align 4
@PERF_PET_ERROR = common dso_local global i32 0, align 4
@ERR_THREAD = common dso_local global i32 0, align 4
@pet_threads_count = common dso_local global i32 0, align 4
@pet_threads = common dso_local global i64* null, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@machine_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@kperf_tid_on_cpus = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pet_sample_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pet_sample_task(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kperf_context, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @pet_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @lck_mtx_assert(i32 %12, i32 %13)
  %15 = load i32, i32* @PERF_PET_SAMPLE_TASK, align 4
  %16 = load i32, i32* @DBG_FUNC_START, align 4
  %17 = or i32 %15, %16
  %18 = call i32 (i32, ...) @BUF_VERB(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @task_pid(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @pet_action_id, align 4
  %22 = call i64 @kperf_action_has_task(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.kperf_context, %struct.kperf_context* %6, i32 0, i32 1
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %27, align 4
  %29 = load i32, i32* @pet_sample, align 4
  %30 = load i32, i32* @pet_action_id, align 4
  %31 = load i32, i32* @SAMPLE_FLAG_TASK_ONLY, align 4
  %32 = call i32 @kperf_sample(i32 %29, %struct.kperf_context* %6, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load i32, i32* @pet_action_id, align 4
  %35 = call i32 @kperf_action_has_thread(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @PERF_PET_SAMPLE_TASK, align 4
  %39 = load i32, i32* @DBG_FUNC_END, align 4
  %40 = or i32 %38, %39
  %41 = call i32 (i32, ...) @BUF_VERB(i32 %40)
  br label %140

42:                                               ; preds = %33
  %43 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @kernel_task, align 4
  %46 = icmp ne i32 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %42
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @task_suspend_internal(i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @KERN_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @PERF_PET_SAMPLE_TASK, align 4
  %58 = load i32, i32* @DBG_FUNC_END, align 4
  %59 = or i32 %57, %58
  %60 = call i32 (i32, ...) @BUF_VERB(i32 %59, i32 1)
  br label %140

61:                                               ; preds = %50
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @pet_threads_prepare(i32 %63)
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @KERN_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* @PERF_PET_ERROR, align 4
  %70 = load i32, i32* @ERR_THREAD, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @BUF_INFO(i32 %69, i32 %70, i64 %71)
  br label %128

73:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %124, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @pet_threads_count, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %127

78:                                               ; preds = %74
  %79 = load i64*, i64** @pet_threads, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @THREAD_NULL, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %104, %78
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i64*, i64** @kperf_tid_on_cpus, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @thread_tid(i64 %99)
  %101 = icmp eq i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %107

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  br label %89

107:                                              ; preds = %102, %89
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @pet_sample_thread(i32 %112, i32 %113, i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i64*, i64** @pet_threads, align 8
  %119 = load i32, i32* %9, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @thread_deallocate(i64 %122)
  br label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %74

127:                                              ; preds = %74
  br label %128

128:                                              ; preds = %127, %68
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @task_resume_internal(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @PERF_PET_SAMPLE_TASK, align 4
  %136 = load i32, i32* @DBG_FUNC_END, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @pet_threads_count, align 4
  %139 = call i32 (i32, ...) @BUF_VERB(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %56, %37
  ret void
}

declare dso_local i32 @lck_mtx_assert(i32, i32) #1

declare dso_local i32 @BUF_VERB(i32, ...) #1

declare dso_local i32 @task_pid(i32) #1

declare dso_local i64 @kperf_action_has_task(i32) #1

declare dso_local i32 @kperf_sample(i32, %struct.kperf_context*, i32, i32) #1

declare dso_local i32 @kperf_action_has_thread(i32) #1

declare dso_local i64 @task_suspend_internal(i32) #1

declare dso_local i64 @pet_threads_prepare(i32) #1

declare dso_local i32 @BUF_INFO(i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_tid(i64) #1

declare dso_local i32 @pet_sample_thread(i32, i32, i64, i32) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @task_resume_internal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
