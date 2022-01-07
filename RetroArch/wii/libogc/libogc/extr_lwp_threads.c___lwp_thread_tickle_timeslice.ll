; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_tickle_timeslice.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_tickle_timeslice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@_thr_executing = common dso_local global %struct.TYPE_3__* null, align 8
@_lwp_wd_timeslice = common dso_local global i32 0, align 4
@_lwp_ticks_per_timeslice = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_tickle_timeslice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @_thr_executing, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @millisecs_to_ticks(i32 1)
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @__lwp_thread_dispatchdisable()
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @__lwp_wd_insert_ticks(i32* @_lwp_wd_timeslice, i32 %13)
  %15 = call i32 (...) @__lwp_thread_dispatchunnest()
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__lwp_stateready(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @__lwp_wd_insert_ticks(i32* @_lwp_wd_timeslice, i32 %23)
  %25 = call i32 (...) @__lwp_thread_dispatchunnest()
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %43 [
    i32 129, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %26
  br label %43

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = call i32 (...) @__lwp_thread_resettimeslice()
  %39 = load i32, i32* @_lwp_ticks_per_timeslice, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %26, %42, %30
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @__lwp_wd_insert_ticks(i32* @_lwp_wd_timeslice, i32 %44)
  %46 = call i32 (...) @__lwp_thread_dispatchunnest()
  br label %47

47:                                               ; preds = %43, %22, %12
  ret void
}

declare dso_local i32 @millisecs_to_ticks(i32) #1

declare dso_local i32 @__lwp_thread_dispatchdisable(...) #1

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i32) #1

declare dso_local i32 @__lwp_thread_dispatchunnest(...) #1

declare dso_local i32 @__lwp_stateready(i32) #1

declare dso_local i32 @__lwp_thread_resettimeslice(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
