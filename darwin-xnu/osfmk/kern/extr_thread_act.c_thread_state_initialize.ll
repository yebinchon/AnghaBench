; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_state_initialize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_state_initialize.c"
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
define dso_local i32 @thread_state_initialize(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %5 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %8 = icmp eq %struct.TYPE_12__* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %11
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = call %struct.TYPE_12__* (...) @current_thread()
  %21 = icmp ne %struct.TYPE_12__* %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = call i32 @thread_hold(%struct.TYPE_12__* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %26 = call i32 @thread_mtx_unlock(%struct.TYPE_12__* %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i64 @thread_stop(%struct.TYPE_12__* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %33 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @machine_thread_state_initialize(%struct.TYPE_12__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = call i32 @thread_unstop(%struct.TYPE_12__* %36)
  br label %42

38:                                               ; preds = %22
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %39)
  %41 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i32 @thread_release(%struct.TYPE_12__* %43)
  br label %48

45:                                               ; preds = %18
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = call i32 @machine_thread_state_initialize(%struct.TYPE_12__* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %51

49:                                               ; preds = %11
  %50 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = call i32 @thread_mtx_unlock(%struct.TYPE_12__* %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @current_thread(...) #1

declare dso_local i32 @thread_hold(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_12__*) #1

declare dso_local i64 @thread_stop(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @machine_thread_state_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
