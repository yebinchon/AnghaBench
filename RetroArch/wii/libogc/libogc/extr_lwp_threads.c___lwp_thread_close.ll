; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_close.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_threads.c___lwp_thread_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, i32, i64, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@LWP_STATES_TRANSIENT = common dso_local global i32 0, align 4
@LWP_CPU_BUDGET_ALGO_NONE = common dso_local global i32 0, align 4
@_thr_executing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_thread_close(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = load i32, i32* @LWP_STATES_TRANSIENT, align 4
  %8 = call i32 @__lwp_thread_setstate(%struct.TYPE_13__* %6, i32 %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %10 = call i32 @__lwp_threadqueue_extractproxy(%struct.TYPE_13__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 5
  %15 = call i64 @__lwp_wd_isactive(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 5
  %20 = call i32 @__lwp_wd_remove_ticks(i32* %19)
  br label %21

21:                                               ; preds = %17, %12
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @_CPU_ISR_Disable(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8**
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %35, %22
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 4
  %33 = call %struct.TYPE_13__* @__lwp_threadqueue_dequeue(i32* %32)
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %5, align 8
  %34 = icmp ne %struct.TYPE_13__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i8**, i8*** %4, align 8
  %37 = bitcast i8** %36 to i8*
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8**
  store i8* %37, i8** %42, align 8
  br label %30

43:                                               ; preds = %30
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @LWP_CPU_BUDGET_ALGO_NONE, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @_CPU_ISR_Restore(i32 %49)
  %51 = load i32, i32* @_thr_executing, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %53 = call i32 @__libc_delete_hook(i32 %51, %struct.TYPE_13__* %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %55 = call i64 @__lwp_thread_isallocatedfp(%struct.TYPE_13__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 (...) @__lwp_thread_deallocatefp()
  br label %59

59:                                               ; preds = %57, %43
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = call i32 @__lwp_stack_free(%struct.TYPE_13__* %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = call i32 @__lwp_objmgr_close(i32 %65, %struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = call i32 @__lwp_objmgr_free(i32 %72, %struct.TYPE_14__* %74)
  ret void
}

declare dso_local i32 @__lwp_thread_setstate(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @__lwp_threadqueue_extractproxy(%struct.TYPE_13__*) #1

declare dso_local i64 @__lwp_wd_isactive(i32*) #1

declare dso_local i32 @__lwp_wd_remove_ticks(i32*) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local %struct.TYPE_13__* @__lwp_threadqueue_dequeue(i32*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @__libc_delete_hook(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @__lwp_thread_isallocatedfp(%struct.TYPE_13__*) #1

declare dso_local i32 @__lwp_thread_deallocatefp(...) #1

declare dso_local i32 @__lwp_stack_free(%struct.TYPE_13__*) #1

declare dso_local i32 @__lwp_objmgr_close(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @__lwp_objmgr_free(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
