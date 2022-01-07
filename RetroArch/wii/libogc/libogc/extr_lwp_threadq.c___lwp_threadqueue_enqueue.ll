; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_enqueue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threadq.c___lwp_threadqueue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@_thr_executing = common dso_local global %struct.TYPE_16__* null, align 8
@__lwp_threadqueue_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_threadqueue_enqueue(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** @_thr_executing, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__lwp_thread_setstate(%struct.TYPE_16__* %7, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load i32, i32* @__lwp_threadqueue_timeout, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = call i32 @__lwp_wd_initialize(i32* %16, i32 %17, i32 %21, %struct.TYPE_16__* %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @__lwp_wd_insert_ticks(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %14, %2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %42 [
    i32 129, label %32
    i32 128, label %37
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @__lwp_threadqueue_enqueuefifo(%struct.TYPE_15__* %33, %struct.TYPE_16__* %34, i32 %35)
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @__lwp_threadqueue_enqueuepriority(%struct.TYPE_15__* %38, %struct.TYPE_16__* %39, i32 %40)
  br label %42

42:                                               ; preds = %28, %37, %32
  ret void
}

declare dso_local i32 @__lwp_thread_setstate(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @__lwp_wd_initialize(i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @__lwp_wd_insert_ticks(i32*, i32) #1

declare dso_local i32 @__lwp_threadqueue_enqueuefifo(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @__lwp_threadqueue_enqueuepriority(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
