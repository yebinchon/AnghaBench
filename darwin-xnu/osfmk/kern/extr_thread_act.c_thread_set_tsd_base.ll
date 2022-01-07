; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_set_tsd_base.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_set_tsd_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_tsd_base(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %10 = icmp eq %struct.TYPE_12__* %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %12, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %13
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = call %struct.TYPE_12__* (...) @current_thread()
  %23 = icmp ne %struct.TYPE_12__* %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = call i32 @thread_hold(%struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = call i32 @thread_mtx_unlock(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @thread_stop(%struct.TYPE_12__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @machine_thread_set_tsd_base(%struct.TYPE_12__* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = call i32 @thread_unstop(%struct.TYPE_12__* %39)
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %42)
  %44 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %33
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = call i32 @thread_release(%struct.TYPE_12__* %46)
  br label %52

48:                                               ; preds = %20
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @machine_thread_set_tsd_base(%struct.TYPE_12__* %49, i32 %50)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %45
  br label %55

53:                                               ; preds = %13
  %54 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = call i32 @thread_mtx_unlock(%struct.TYPE_12__* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @current_thread(...) #1

declare dso_local i32 @thread_hold(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_12__*) #1

declare dso_local i64 @thread_stop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @machine_thread_set_tsd_base(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
