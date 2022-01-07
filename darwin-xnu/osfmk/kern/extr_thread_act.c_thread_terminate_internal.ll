; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_terminate_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_terminate_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@THREAD_INTERRUPTED = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_terminate_internal(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %5)
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i64, i64* @FALSE, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @act_abort(%struct.TYPE_11__* %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = load i32, i32* @THREAD_INTERRUPTED, align 4
  %24 = call i32 @clear_wait(%struct.TYPE_11__* %22, i32 %23)
  br label %28

25:                                               ; preds = %11
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = call i32 @thread_start(%struct.TYPE_11__* %26)
  br label %28

28:                                               ; preds = %25, %21
  br label %31

29:                                               ; preds = %1
  %30 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i32 @thread_affinity_terminate(%struct.TYPE_11__* %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %41 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = call %struct.TYPE_11__* (...) @current_thread()
  %44 = icmp ne %struct.TYPE_11__* %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* @KERN_SUCCESS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = load i64, i64* @FALSE, align 8
  %52 = call i32 @thread_wait(%struct.TYPE_11__* %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %45, %39
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @act_abort(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_wait(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @thread_start(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_affinity_terminate(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @current_thread(...) #1

declare dso_local i32 @thread_wait(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
