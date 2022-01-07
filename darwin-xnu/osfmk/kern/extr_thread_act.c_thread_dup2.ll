; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_dup2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AFFINITY_SET_NULL = common dso_local global i64 0, align 8
@KERN_ABORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_dup2(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %8 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %8, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** @THREAD_NULL, align 8
  %11 = icmp eq %struct.TYPE_15__* %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** @THREAD_NULL, align 8
  %15 = icmp eq %struct.TYPE_15__* %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = icmp eq %struct.TYPE_15__* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12, %2
  %21 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %21, i32* %3, align 4
  br label %87

22:                                               ; preds = %16
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %28)
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %22
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %41, %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = call i32 @thread_hold(%struct.TYPE_15__* %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = call i64 @thread_stop(%struct.TYPE_15__* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %74

55:                                               ; preds = %46
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @machine_thread_dup(%struct.TYPE_15__* %58, %struct.TYPE_15__* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AFFINITY_SET_NULL, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = call i32 @thread_affinity_dup(%struct.TYPE_15__* %68, %struct.TYPE_15__* %69)
  br label %71

71:                                               ; preds = %67, %55
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = call i32 @thread_unstop(%struct.TYPE_15__* %72)
  br label %78

74:                                               ; preds = %46
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %76 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %75)
  %77 = load i32, i32* @KERN_ABORTED, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = call i32 @thread_release(%struct.TYPE_15__* %79)
  br label %83

81:                                               ; preds = %41
  %82 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %85 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %32, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @thread_hold(%struct.TYPE_15__*) #1

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
