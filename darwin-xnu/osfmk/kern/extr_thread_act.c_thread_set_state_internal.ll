; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_set_state_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_set_state_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i64 0, align 8
@KERN_TERMINATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i32, i32, i32, i64)* @thread_set_state_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_set_state_internal(%struct.TYPE_14__* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** @THREAD_NULL, align 8
  %16 = icmp eq %struct.TYPE_14__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %6, align 8
  br label %94

19:                                               ; preds = %5
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = call i32 @thread_mtx_lock(%struct.TYPE_14__* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %19
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @machine_thread_state_convert_from_user(%struct.TYPE_14__* %30, i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @KERN_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %90

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %26
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %42 = call %struct.TYPE_14__* (...) @current_thread()
  %43 = icmp ne %struct.TYPE_14__* %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = call i32 @thread_hold(%struct.TYPE_14__* %45)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = call i32 @thread_mtx_unlock(%struct.TYPE_14__* %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i64 @thread_stop(%struct.TYPE_14__* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = call i32 @thread_mtx_lock(%struct.TYPE_14__* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @machine_thread_set_state(%struct.TYPE_14__* %56, i32 %57, i32 %58, i32 %59)
  store i64 %60, i64* %12, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = call i32 @thread_unstop(%struct.TYPE_14__* %61)
  br label %67

63:                                               ; preds = %44
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %65 = call i32 @thread_mtx_lock(%struct.TYPE_14__* %64)
  %66 = load i64, i64* @KERN_ABORTED, align 8
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %63, %53
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = call i32 @thread_release(%struct.TYPE_14__* %68)
  br label %76

70:                                               ; preds = %40
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @machine_thread_set_state(%struct.TYPE_14__* %71, i32 %72, i32 %73, i32 %74)
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %70, %67
  br label %79

77:                                               ; preds = %19
  %78 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %78, i64* %12, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @KERN_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i64, i64* %11, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = call i32 @extmod_statistics_incr_thread_set_state(%struct.TYPE_14__* %87)
  br label %89

89:                                               ; preds = %86, %83, %79
  br label %90

90:                                               ; preds = %89, %38
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = call i32 @thread_mtx_unlock(%struct.TYPE_14__* %91)
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %90, %17
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_14__*) #1

declare dso_local i64 @machine_thread_state_convert_from_user(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i32 @thread_hold(%struct.TYPE_14__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_14__*) #1

declare dso_local i64 @thread_stop(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @machine_thread_set_state(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_14__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_14__*) #1

declare dso_local i32 @extmod_statistics_incr_thread_set_state(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
