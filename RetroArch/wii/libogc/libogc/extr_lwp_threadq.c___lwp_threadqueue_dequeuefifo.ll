; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_dequeuefifo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_dequeuefifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@_thr_executing = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @__lwp_threadqueue_dequeuefifo(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @_CPU_ISR_Disable(i32 %6)
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = call i32 @__lwp_queue_isempty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i64 @__lwp_queue_firstnodeI(i32* %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @__lwp_wd_isactive(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @_CPU_ISR_Restore(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @__lwp_thread_unblock(%struct.TYPE_10__* %26)
  br label %39

28:                                               ; preds = %13
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = call i32 @__lwp_wd_deactivate(i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @_CPU_ISR_Restore(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = call i32 @__lwp_wd_remove_ticks(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @__lwp_thread_unblock(%struct.TYPE_10__* %37)
  br label %39

39:                                               ; preds = %28, %23
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %2, align 8
  br label %55

41:                                               ; preds = %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %54 [
    i32 129, label %45
    i32 130, label %45
    i32 131, label %48
    i32 128, label %48
  ]

45:                                               ; preds = %41, %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @_CPU_ISR_Restore(i32 %46)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %55

48:                                               ; preds = %41, %41
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 130, i32* %50, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @_CPU_ISR_Restore(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_thr_executing, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %2, align 8
  br label %55

54:                                               ; preds = %41
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %55

55:                                               ; preds = %54, %48, %45, %39
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %56
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_queue_isempty(i32*) #1

declare dso_local i64 @__lwp_queue_firstnodeI(i32*) #1

declare dso_local i32 @__lwp_wd_isactive(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__lwp_thread_unblock(%struct.TYPE_10__*) #1

declare dso_local i32 @__lwp_wd_deactivate(i32*) #1

declare dso_local i32 @__lwp_wd_remove_ticks(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
