; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_dup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AFFINITY_SET_NULL = common dso_local global i64 0, align 8
@KERN_ABORTED = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_dup(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = call %struct.TYPE_15__* (...) @current_thread()
  store %struct.TYPE_15__* %6, %struct.TYPE_15__** %4, align 8
  %7 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** @THREAD_NULL, align 8
  %10 = icmp eq %struct.TYPE_15__* %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = icmp eq %struct.TYPE_15__* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %16, i32* %2, align 4
  br label %65

17:                                               ; preds = %11
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %17
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @thread_hold(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @thread_stop(%struct.TYPE_15__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %24
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %34)
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @machine_thread_dup(%struct.TYPE_15__* %36, %struct.TYPE_15__* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AFFINITY_SET_NULL, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = call i32 @thread_affinity_dup(%struct.TYPE_15__* %46, %struct.TYPE_15__* %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = call i32 @thread_unstop(%struct.TYPE_15__* %50)
  br label %56

52:                                               ; preds = %24
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %53)
  %55 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i32 @thread_release(%struct.TYPE_15__* %57)
  br label %61

59:                                               ; preds = %17
  %60 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_15__* @current_thread(...) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_hold(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_15__*) #1

declare dso_local i64 @thread_stop(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @machine_thread_dup(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @thread_affinity_dup(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
