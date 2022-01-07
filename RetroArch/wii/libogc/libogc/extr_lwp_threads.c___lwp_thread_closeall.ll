; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_closeall.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_closeall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@LWP_MAXPRIORITIES = common dso_local global i64 0, align 8
@_lwp_thr_ready = common dso_local global %struct.TYPE_11__* null, align 8
@_thr_executing = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_closeall() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @_CPU_ISR_Disable(i64 %6)
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %44, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @LWP_MAXPRIORITIES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_lwp_thr_ready, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i64 %14
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %3, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  br label %20

20:                                               ; preds = %41, %12
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_lwp_thr_ready, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i64 %23
  %25 = call i64 @__lwp_queue_tail(%struct.TYPE_11__* %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_12__*
  %27 = icmp ne %struct.TYPE_12__* %21, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %5, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_thr_executing, align 8
  %37 = icmp ne %struct.TYPE_12__* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @__lwp_thread_close(%struct.TYPE_12__* %39)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %4, align 8
  br label %20

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %1, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %1, align 8
  br label %8

47:                                               ; preds = %8
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @_CPU_ISR_Restore(i64 %48)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i64 @__lwp_queue_tail(%struct.TYPE_11__*) #1

declare dso_local i32 @__lwp_thread_close(%struct.TYPE_12__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
