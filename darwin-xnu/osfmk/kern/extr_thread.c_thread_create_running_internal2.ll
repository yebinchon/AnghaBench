; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_create_running_internal2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_create_running_internal2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@TASK_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@kernel_task = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@thread_bootstrap_return = common dso_local global i64 0, align 8
@TH_OPTION_NONE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@tasks_threads_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32, i32, i32, i32*, i64)* @thread_create_running_internal2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_create_running_internal2(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TASK_NULL, align 8
  %18 = icmp eq %struct.TYPE_8__* %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kernel_task, align 8
  %22 = icmp eq %struct.TYPE_8__* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %6
  %24 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %24, i64* %7, align 8
  br label %95

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %27 = load i64, i64* @thread_bootstrap_return, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @TH_OPTION_NONE, align 4
  %30 = call i64 @thread_create_internal(%struct.TYPE_8__* %26, i32 -1, i32 %28, i32* null, i32 %29, i32* %15)
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @KERN_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* %14, align 8
  store i64 %35, i64* %7, align 8
  br label %95

36:                                               ; preds = %25
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @thread_hold(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @machine_thread_state_convert_from_user(i32 %48, i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %14, align 8
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* @KERN_SUCCESS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @machine_thread_set_state(i32 %58, i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* @KERN_SUCCESS, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = call i32 @task_unlock(%struct.TYPE_8__* %68)
  %70 = call i32 @lck_mtx_unlock(i32* @tasks_threads_lock)
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @thread_terminate(i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @thread_deallocate(i32 %73)
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %7, align 8
  br label %95

76:                                               ; preds = %63
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @thread_mtx_lock(i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @thread_start(i32 %79)
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @thread_mtx_unlock(i32 %81)
  %83 = load i64, i64* %13, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = call i32 @extmod_statistics_incr_thread_create(%struct.TYPE_8__* %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i32 @task_unlock(%struct.TYPE_8__* %89)
  %91 = call i32 @lck_mtx_unlock(i32* @tasks_threads_lock)
  %92 = load i32, i32* %15, align 4
  %93 = load i32*, i32** %12, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %88, %67, %34, %23
  %96 = load i64, i64* %7, align 8
  ret i64 %96
}

declare dso_local i64 @thread_create_internal(%struct.TYPE_8__*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @thread_hold(i32) #1

declare dso_local i64 @machine_thread_state_convert_from_user(i32, i32, i32, i32) #1

declare dso_local i64 @machine_thread_set_state(i32, i32, i32, i32) #1

declare dso_local i32 @task_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @thread_terminate(i32) #1

declare dso_local i32 @thread_deallocate(i32) #1

declare dso_local i32 @thread_mtx_lock(i32) #1

declare dso_local i32 @thread_start(i32) #1

declare dso_local i32 @thread_mtx_unlock(i32) #1

declare dso_local i32 @extmod_statistics_incr_thread_create(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
