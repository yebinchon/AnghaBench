; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_set_thread_base_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_priority.c_sched_set_thread_base_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i64, i64 }

@MINPRI = common dso_local global i32 0, align 4
@TH_MODE_REALTIME = common dso_local global i64 0, align 8
@BASEPRI_RTQUEUES = common dso_local global i32 0, align 4
@TH_RUN = common dso_local global i32 0, align 4
@THREAD_NOT_RUNNABLE = common dso_local global i64 0, align 8
@PERFCONTROL_ATTR_UPDATE = common dso_local global i32 0, align 4
@PERFCONTROL_CALLOUT_WAKE_UNSAFE = common dso_local global i32 0, align 4
@SETPRI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sched_set_thread_base_priority(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MINPRI, align 4
  %9 = icmp sge i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  store i64 0, i64* %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TH_MODE_REALTIME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BASEPRI_RTQUEUES, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @BASEPRI_RTQUEUES, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TH_RUN, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @TH_RUN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @THREAD_NOT_RUNNABLE, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = call i64 (...) @mach_approximate_time()
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  store i64 %52, i64* %54, align 8
  br label %70

55:                                               ; preds = %29
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @THREAD_NOT_RUNNABLE, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @THREAD_NOT_RUNNABLE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %55, %43
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = call %struct.TYPE_7__* (...) @current_thread()
  %73 = icmp eq %struct.TYPE_7__* %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i64 (...) @mach_approximate_time()
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* @PERFCONTROL_ATTR_UPDATE, align 4
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* @PERFCONTROL_CALLOUT_WAKE_UNSAFE, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = call i32 @machine_switch_perfcontrol_state_update(i32 %84, i64 %85, i32 %86, %struct.TYPE_7__* %87)
  br label %89

89:                                               ; preds = %83, %74, %70
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = call i32 @sched_update_thread_bucket(%struct.TYPE_7__* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = load i32, i32* @SETPRI_DEFAULT, align 4
  %94 = call i32 @thread_recompute_sched_pri(%struct.TYPE_7__* %92, i32 %93)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @mach_approximate_time(...) #1

declare dso_local %struct.TYPE_7__* @current_thread(...) #1

declare dso_local i32 @machine_switch_perfcontrol_state_update(i32, i64, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sched_update_thread_bucket(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_recompute_sched_pri(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
