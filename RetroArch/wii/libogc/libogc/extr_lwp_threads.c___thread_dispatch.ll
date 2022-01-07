; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___thread_dispatch.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___thread_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@_thr_executing = common dso_local global %struct.TYPE_4__* null, align 8
@_context_switch_want = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@_thr_heir = common dso_local global %struct.TYPE_4__* null, align 8
@_thread_dispatch_disable_level = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@__lwp_thr_libc_reent = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__thread_dispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @_CPU_ISR_Disable(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_thr_executing, align 8
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %2, align 8
  br label %7

7:                                                ; preds = %28, %0
  %8 = load i64, i64* @_context_switch_want, align 8
  %9 = load i64, i64* @TRUE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_thr_heir, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* @_thread_dispatch_disable_level, align 4
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* @_context_switch_want, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** @_thr_executing, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @_CPU_ISR_Restore(i32 %15)
  %17 = load i32*, i32** @__lwp_thr_libc_reent, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  %20 = load i32*, i32** @__lwp_thr_libc_reent, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @__lwp_thr_libc_reent, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %11
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to i8*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast i32* %33 to i8*
  %35 = call i32 @_cpu_context_switch(i8* %31, i8* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @_thr_executing, align 8
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %2, align 8
  %37 = load i32, i32* %1, align 4
  %38 = call i32 @_CPU_ISR_Disable(i32 %37)
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* @_thread_dispatch_disable_level, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @_CPU_ISR_Restore(i32 %40)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @_cpu_context_switch(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
