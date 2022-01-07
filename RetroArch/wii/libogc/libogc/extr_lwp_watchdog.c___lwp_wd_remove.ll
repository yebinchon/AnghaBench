; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_remove.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@_wd_sync_count = common dso_local global i32 0, align 4
@_wd_sync_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lwp_wd_remove(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @_CPU_ISR_Disable(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %43 [
    i32 130, label %14
    i32 129, label %15
    i32 131, label %18
    i32 128, label %18
  ]

14:                                               ; preds = %2
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 130, i32* %17, align 4
  br label %43

18:                                               ; preds = %2, %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32 130, i32* %20, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call %struct.TYPE_8__* @__lwp_wd_next(%struct.TYPE_8__* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %7, align 8
  %23 = load i32, i32* @_wd_sync_count, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (...) @__lwp_isr_in_progress()
  store i32 %26, i32* @_wd_sync_level, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = call i32 @__lwp_queue_extractI(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @__lwp_queue_isempty(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_8__* @__lwp_wd_first(i32* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = icmp eq %struct.TYPE_8__* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i32 @__lwp_wd_settimer(%struct.TYPE_8__* %40)
  br label %42

42:                                               ; preds = %39, %34, %27
  br label %43

43:                                               ; preds = %2, %42, %15, %14
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @_CPU_ISR_Restore(i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local %struct.TYPE_8__* @__lwp_wd_next(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_isr_in_progress(...) #1

declare dso_local i32 @__lwp_queue_extractI(i32*) #1

declare dso_local i32 @__lwp_queue_isempty(i32*) #1

declare dso_local %struct.TYPE_8__* @__lwp_wd_first(i32*) #1

declare dso_local i32 @__lwp_wd_settimer(%struct.TYPE_8__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
