; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___thread_dispatch_fp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___thread_dispatch_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@_thr_executing = common dso_local global %struct.TYPE_7__* null, align 8
@_thr_allocated_fp = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__thread_dispatch_fp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @_CPU_ISR_Disable(i32 %3)
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_executing, align 8
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = call i32 @__lwp_thread_isallocatedfp(%struct.TYPE_7__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %21, label %9

9:                                                ; preds = %0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_allocated_fp, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_thr_allocated_fp, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i32 @_cpu_context_save_fp(i32* %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = call i32 @_cpu_context_restore_fp(i32* %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** @_thr_allocated_fp, align 8
  br label %21

21:                                               ; preds = %16, %0
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @_CPU_ISR_Restore(i32 %22)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__lwp_thread_isallocatedfp(%struct.TYPE_7__*) #1

declare dso_local i32 @_cpu_context_save_fp(i32*) #1

declare dso_local i32 @_cpu_context_restore_fp(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
