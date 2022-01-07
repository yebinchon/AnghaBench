; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_delayed_thread_creation.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_schedule_delayed_thread_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.workqueue = type { i32, i32, i32, i32 }

@WQ_DELAYED_CALL_SCHEDULED = common dso_local global i64 0, align 8
@WQ_DELAYED_CALL_PENDED = common dso_local global i32 0, align 4
@WQ_IMMEDIATE_CALL_PENDED = common dso_local global i32 0, align 4
@WQ_IMMEDIATE_CALL_SCHEDULED = common dso_local global i32 0, align 4
@WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART = common dso_local global i32 0, align 4
@wq_max_timer_interval = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@wq_stalled_window = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TRACE_wq_start_add_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"delayed_call was already enqueued\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue*, i32)* @workq_schedule_delayed_thread_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_schedule_delayed_thread_creation(%struct.workqueue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.workqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.workqueue* %0, %struct.workqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @preemption_enabled()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %16 = load i64, i64* @WQ_DELAYED_CALL_SCHEDULED, align 8
  %17 = load i32, i32* @WQ_DELAYED_CALL_PENDED, align 4
  %18 = load i32, i32* @WQ_IMMEDIATE_CALL_PENDED, align 4
  %19 = load i32, i32* @WQ_IMMEDIATE_CALL_SCHEDULED, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @workq_thread_call_prepost(%struct.workqueue* %15, i64 %16, i32 %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

24:                                               ; preds = %2
  %25 = call i32 (...) @mach_absolute_time()
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @WORKQ_SCHEDULE_DELAYED_THREAD_CREATION_RESTART, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %84

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %34 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  %37 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %38 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %36, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %31
  %42 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %43 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %43, align 4
  %46 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %47 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wq_max_timer_interval, i32 0, i32 0), align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %41
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @wq_max_timer_interval, i32 0, i32 0), align 4
  %53 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %54 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %41
  br label %83

56:                                               ; preds = %31
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %59 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %63 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 2, %64
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %56
  %68 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %69 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %69, align 4
  %72 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %73 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wq_stalled_window, i32 0, i32 0), align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wq_stalled_window, i32 0, i32 0), align 4
  %79 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %80 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %67
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %30
  %85 = load i32, i32* @TRACE_wq_start_add_timer, align 4
  %86 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %87 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %88 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %91 = call i32 @_wq_flags(%struct.workqueue* %90)
  %92 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %93 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @WQ_TRACE_WQ(i32 %85, %struct.workqueue* %86, i32 %89, i32 %91, i32 %94, i32 0)
  %96 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %97 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %7, align 4
  %99 = load i64, i64* @WQ_DELAYED_CALL_SCHEDULED, align 8
  store i64 %99, i64* %8, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %102 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %8, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @thread_call_enter1_delayed(i32 %105, i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %84
  %112 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %84
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @preemption_enabled(...) #1

declare dso_local i32 @workq_thread_call_prepost(%struct.workqueue*, i64, i32, i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @_wq_flags(%struct.workqueue*) #1

declare dso_local i64 @thread_call_enter1_delayed(i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
