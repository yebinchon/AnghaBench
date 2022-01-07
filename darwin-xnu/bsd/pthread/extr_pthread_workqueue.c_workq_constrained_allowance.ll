; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_constrained_allowance.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_constrained_allowance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64 }
%struct.uthread = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WORKQ_THREAD_QOS_MANAGER = common dso_local global i64 0, align 8
@UT_WORKQ_OVERCOMMIT = common dso_local global i32 0, align 4
@wq_max_constrained_threads = common dso_local global i64 0, align 8
@TRACE_wq_constrained_admission = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@wq_max_parallelism = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.workqueue*, i64, %struct.uthread*, i32)* @workq_constrained_allowance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @workq_constrained_allowance(%struct.workqueue* %0, i64 %1, %struct.uthread* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.workqueue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uthread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.workqueue* %0, %struct.workqueue** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.uthread* %2, %struct.uthread** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @WORKQ_THREAD_QOS_MANAGER, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  store i64 0, i64* %10, align 8
  %19 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %20 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.uthread*, %struct.uthread** %8, align 8
  %23 = icmp ne %struct.uthread* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %4
  %25 = load %struct.uthread*, %struct.uthread** %8, align 8
  %26 = getelementptr inbounds %struct.uthread, %struct.uthread* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UT_WORKQ_OVERCOMMIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %31, %24, %4
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @wq_max_constrained_threads, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @TRACE_wq_constrained_admission, align 4
  %44 = load i32, i32* @DBG_FUNC_NONE, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %47 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %48 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @wq_max_constrained_threads, align 8
  %51 = call i32 @WQ_TRACE_WQ(i32 %45, %struct.workqueue* %46, i32 1, i64 %49, i64 %50, i32 0)
  store i64 0, i64* %5, align 8
  br label %129

52:                                               ; preds = %38
  %53 = load i64, i64* @wq_max_constrained_threads, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %11, align 8
  %56 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %57 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %58 = call i32 @_wq_thactive(%struct.workqueue* %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @_wq_thactive_aggregate_downto_qos(%struct.workqueue* %56, i32 %58, i64 %59, i64* %12, i32* null)
  store i64 %60, i64* %13, align 8
  %61 = load %struct.uthread*, %struct.uthread** %8, align 8
  %62 = icmp ne %struct.uthread* %61, null
  br i1 %62, label %63, label %84

63:                                               ; preds = %52
  %64 = load %struct.uthread*, %struct.uthread** %8, align 8
  %65 = getelementptr inbounds %struct.uthread, %struct.uthread* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WORKQ_THREAD_QOS_MANAGER, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.uthread*, %struct.uthread** %8, align 8
  %73 = getelementptr inbounds %struct.uthread, %struct.uthread* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %71, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i64, i64* %13, align 8
  %79 = icmp sgt i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %13, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %77, %70, %63, %52
  %85 = load i64*, i64** @wq_max_parallelism, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @_wq_bucket(i64 %86)
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %91, %92
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %111

95:                                               ; preds = %84
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %12, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* %10, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i32, i32* @TRACE_wq_constrained_admission, align 4
  %102 = load i32, i32* @DBG_FUNC_NONE, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @WQ_TRACE_WQ(i32 %103, %struct.workqueue* %104, i32 2, i64 %105, i64 %106, i32 0)
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @MIN(i64 %108, i64 %109)
  store i64 %110, i64* %5, align 8
  br label %129

111:                                              ; preds = %84
  %112 = load i32, i32* @TRACE_wq_constrained_admission, align 4
  %113 = load i32, i32* @DBG_FUNC_NONE, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @WQ_TRACE_WQ(i32 %114, %struct.workqueue* %115, i32 3, i64 %116, i64 %117, i32 0)
  br label %119

119:                                              ; preds = %111
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %127 = call i32 @workq_schedule_delayed_thread_creation(%struct.workqueue* %126, i32 0)
  br label %128

128:                                              ; preds = %125, %122, %119
  store i64 0, i64* %5, align 8
  br label %129

129:                                              ; preds = %128, %95, %42
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i64, i64, i32) #1

declare dso_local i64 @_wq_thactive_aggregate_downto_qos(%struct.workqueue*, i32, i64, i64*, i32*) #1

declare dso_local i32 @_wq_thactive(%struct.workqueue*) #1

declare dso_local i64 @_wq_bucket(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @workq_schedule_delayed_thread_creation(%struct.workqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
