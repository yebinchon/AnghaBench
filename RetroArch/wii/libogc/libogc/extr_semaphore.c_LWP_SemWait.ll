; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_semaphore.c_LWP_SemWait.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_semaphore.c_LWP_SemWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@LWP_THREADQ_NOTIMEOUT = common dso_local global i32 0, align 4
@_thr_executing = common dso_local global %struct.TYPE_9__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LWP_SemWait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.TYPE_8__* @__lwp_sema_open(i32 %5)
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %4, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TRUE, align 4
  %18 = load i32, i32* @LWP_THREADQ_NOTIMEOUT, align 4
  %19 = call i32 @__lwp_sema_seize(i32* %12, i32 %16, i32 %17, i32 %18)
  %20 = call i32 (...) @__lwp_thread_dispatchenable()
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_thr_executing, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 130, label %25
    i32 128, label %26
    i32 131, label %28
    i32 129, label %30
  ]

25:                                               ; preds = %10
  br label %32

26:                                               ; preds = %10
  %27 = load i32, i32* @EAGAIN, align 4
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %10
  %29 = load i32, i32* @EAGAIN, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %10
  %31 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %10, %25
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %30, %28, %26, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.TYPE_8__* @__lwp_sema_open(i32) #1

declare dso_local i32 @__lwp_sema_seize(i32*, i32, i32, i32) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
