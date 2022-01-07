; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_remove_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_remove_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@IMP_USYNCH_QOS_OVERRIDE = common dso_local global i32 0, align 4
@IMP_USYNCH_REMOVE_OVERRIDE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_thread_qos_remove_override(i64 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %16 = icmp eq %struct.TYPE_7__* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.TYPE_7__* @task_findtid(i64 %18, i32 %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %23 = icmp eq %struct.TYPE_7__* %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load i32, i32* @IMP_USYNCH_QOS_OVERRIDE, align 4
  %26 = load i32, i32* @IMP_USYNCH_REMOVE_OVERRIDE, align 4
  %27 = call i32 @IMPORTANCE_CODE(i32 %25, i32 %26)
  %28 = load i32, i32* @DBG_FUNC_NONE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %29, i32 %30, i32 0, i32 57005, i32 0, i32 0)
  %32 = load i32, i32* @ESRCH, align 4
  store i32 %32, i32* %6, align 4
  br label %55

33:                                               ; preds = %17
  %34 = load i64, i64* @TRUE, align 8
  store i64 %34, i64* %12, align 8
  br label %43

35:                                               ; preds = %5
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %35, %33
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* @FALSE, align 8
  %48 = call i32 @proc_thread_qos_remove_override_internal(%struct.TYPE_7__* %44, i32 %45, i32 %46, i64 %47)
  %49 = load i64, i64* %12, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %53 = call i32 @thread_deallocate(%struct.TYPE_7__* %52)
  br label %54

54:                                               ; preds = %51, %43
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_7__* @task_findtid(i64, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_thread_qos_remove_override_internal(%struct.TYPE_7__*, i32, i32, i64) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
