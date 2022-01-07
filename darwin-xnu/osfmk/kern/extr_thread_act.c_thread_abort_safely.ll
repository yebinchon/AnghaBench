; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_abort_safely.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_act.c_thread_abort_safely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@THREAD_INTERRUPTED = common dso_local global i32 0, align 4
@TH_SFLAG_ABORT = common dso_local global i32 0, align 4
@TH_SFLAG_ABORTED_MASK = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_abort_safely(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** @THREAD_NULL, align 8
  %9 = icmp eq %struct.TYPE_11__* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %11, i64* %2, align 8
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %13)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %12
  %20 = call i32 (...) @splsched()
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = call i32 @thread_lock(%struct.TYPE_11__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = load i32, i32* @THREAD_INTERRUPTED, align 4
  %30 = call i64 @clear_wait_internal(%struct.TYPE_11__* %28, i32 %29)
  %31 = load i64, i64* @KERN_SUCCESS, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27, %19
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TH_SFLAG_ABORT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @TH_SFLAG_ABORTED_MASK, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = call i32 @thread_set_apc_ast_locked(%struct.TYPE_11__* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = call i32 @thread_depress_abort_locked(%struct.TYPE_11__* %48)
  br label %50

50:                                               ; preds = %40, %33
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = call i32 @thread_unlock(%struct.TYPE_11__* %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @splx(i32 %54)
  br label %58

56:                                               ; preds = %12
  %57 = load i64, i64* @KERN_TERMINATED, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %59)
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %58, %10
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_11__*) #1

declare dso_local i64 @clear_wait_internal(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @thread_set_apc_ast_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_depress_abort_locked(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
