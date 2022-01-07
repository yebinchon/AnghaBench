; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_tickle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_watchdog.c___lwp_wd_tickle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 (i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_wd_tickle(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @__lwp_queue_isempty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %55

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call %struct.TYPE_6__* @__lwp_wd_first(i32* %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %3, align 8
  %13 = call i32 (...) @gettime()
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @diff_ticks(i32 %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %49, %21
  %23 = load i32*, i32** %2, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i32 @__lwp_wd_remove(i32* %23, %struct.TYPE_6__* %24)
  switch i32 %25, label %37 [
    i32 131, label %26
    i32 130, label %34
    i32 129, label %35
    i32 128, label %36
  ]

26:                                               ; preds = %22
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %29(i32 %32)
  br label %37

34:                                               ; preds = %22
  br label %37

35:                                               ; preds = %22
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %22, %36, %35, %34, %26
  %38 = load i32*, i32** %2, align 8
  %39 = call %struct.TYPE_6__* @__lwp_wd_first(i32* %38)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %3, align 8
  br label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @__lwp_queue_isempty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ false, %40 ], [ %48, %44 ]
  br i1 %50, label %22, label %51

51:                                               ; preds = %49
  br label %55

52:                                               ; preds = %10
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = call i32 @__lwp_wd_reset(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %9, %52, %51
  ret void
}

declare dso_local i64 @__lwp_queue_isempty(i32*) #1

declare dso_local %struct.TYPE_6__* @__lwp_wd_first(i32*) #1

declare dso_local i32 @gettime(...) #1

declare dso_local i32 @diff_ticks(i32, i32) #1

declare dso_local i32 @__lwp_wd_remove(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @__lwp_wd_reset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
