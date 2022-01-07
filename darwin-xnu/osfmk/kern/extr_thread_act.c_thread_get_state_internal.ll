; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_get_state_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_get_state_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_13__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_ABORTED = common dso_local global i64 0, align 8
@KERN_TERMINATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32, i32, i32*, i64)* @thread_get_state_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thread_get_state_internal(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** @THREAD_NULL, align 8
  %16 = icmp eq %struct.TYPE_13__* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %18, i64* %6, align 8
  br label %94

19:                                               ; preds = %5
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %21 = call i32 @thread_mtx_lock(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %19
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = call %struct.TYPE_13__* (...) @current_thread()
  %29 = icmp ne %struct.TYPE_13__* %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = call i32 @thread_hold(%struct.TYPE_13__* %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = call i32 @thread_mtx_unlock(%struct.TYPE_13__* %33)
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @thread_stop(%struct.TYPE_13__* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %41 = call i32 @thread_mtx_lock(%struct.TYPE_13__* %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i64 @machine_thread_get_state(%struct.TYPE_13__* %42, i32 %43, i32 %44, i32* %45)
  store i64 %46, i64* %12, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = call i32 @thread_unstop(%struct.TYPE_13__* %47)
  br label %53

49:                                               ; preds = %30
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = call i32 @thread_mtx_lock(%struct.TYPE_13__* %50)
  %52 = load i64, i64* @KERN_ABORTED, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = call i32 @thread_release(%struct.TYPE_13__* %54)
  br label %62

56:                                               ; preds = %26
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i64 @machine_thread_get_state(%struct.TYPE_13__* %57, i32 %58, i32 %59, i32* %60)
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %56, %53
  br label %77

63:                                               ; preds = %19
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 @machine_thread_get_state(%struct.TYPE_13__* %69, i32 %70, i32 %71, i32* %72)
  store i64 %73, i64* %12, align 8
  br label %76

74:                                               ; preds = %63
  %75 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i64, i64* %11, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @KERN_SUCCESS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = call i64 @machine_thread_state_convert_to_user(%struct.TYPE_13__* %85, i32 %86, i32 %87, i32* %88)
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %84, %80, %77
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call i32 @thread_mtx_unlock(%struct.TYPE_13__* %91)
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %90, %17
  %95 = load i64, i64* %6, align 8
  ret i64 %95
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @current_thread(...) #1

declare dso_local i32 @thread_hold(%struct.TYPE_13__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_13__*) #1

declare dso_local i64 @thread_stop(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @machine_thread_get_state(%struct.TYPE_13__*, i32, i32, i32*) #1

declare dso_local i32 @thread_unstop(%struct.TYPE_13__*) #1

declare dso_local i32 @thread_release(%struct.TYPE_13__*) #1

declare dso_local i64 @machine_thread_state_convert_to_user(%struct.TYPE_13__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
