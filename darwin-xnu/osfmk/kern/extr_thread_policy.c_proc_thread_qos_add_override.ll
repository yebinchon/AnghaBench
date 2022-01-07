; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_add_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_add_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@IMP_USYNCH_QOS_OVERRIDE = common dso_local global i32 0, align 4
@IMP_USYNCH_ADD_OVERRIDE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_thread_qos_add_override(i64 %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %21 = icmp eq %struct.TYPE_7__* %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %7
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call %struct.TYPE_7__* @task_findtid(i64 %23, i32 %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %10, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @THREAD_NULL, align 8
  %28 = icmp eq %struct.TYPE_7__* %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load i32, i32* @IMP_USYNCH_QOS_OVERRIDE, align 4
  %31 = load i32, i32* @IMP_USYNCH_ADD_OVERRIDE, align 4
  %32 = call i32 @IMPORTANCE_CODE(i32 %30, i32 %31)
  %33 = load i32, i32* @DBG_FUNC_NONE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %34, i32 %35, i32 0, i32 57005, i32 0, i32 0)
  %37 = load i32, i32* @ESRCH, align 4
  store i32 %37, i32* %8, align 4
  br label %62

38:                                               ; preds = %22
  %39 = load i64, i64* @TRUE, align 8
  store i64 %39, i64* %16, align 8
  br label %48

40:                                               ; preds = %7
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %40, %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @proc_thread_qos_add_override_internal(%struct.TYPE_7__* %49, i32 %50, i64 %51, i32 %52, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i64, i64* %16, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = call i32 @thread_deallocate(%struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %57, %48
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %29
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_7__* @task_findtid(i64, i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @proc_thread_qos_add_override_internal(%struct.TYPE_7__*, i32, i64, i32, i32) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
