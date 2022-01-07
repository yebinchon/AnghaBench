; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_handoff_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_handoff_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@THREAD_NULL = common dso_local global %struct.TYPE_12__* null, align 8
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_SCHED_THREAD_SWITCH = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i8*)* @thread_handoff_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_handoff_internal(%struct.TYPE_12__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %8, align 8
  %15 = call %struct.TYPE_12__* (...) @current_thread()
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %18 = icmp ne %struct.TYPE_12__* %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %3
  %20 = call i32 (...) @splsched()
  store i32 %20, i32* %10, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call %struct.TYPE_12__* @thread_run_queue_remove_for_handoff(%struct.TYPE_12__* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %11, align 8
  %23 = load i32, i32* @DBG_MACH_SCHED, align 4
  %24 = load i32, i32* @MACH_SCHED_THREAD_SWITCH, align 4
  %25 = call i32 @MACHDBG_CODE(i32 %23, i32 %24)
  %26 = load i32, i32* @DBG_FUNC_NONE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = call i32 @thread_tid(%struct.TYPE_12__* %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %34 = icmp ne %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = load i32, i32* @TRUE, align 4
  br label %39

37:                                               ; preds = %19
  %38 = load i32, i32* @FALSE, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %27, i32 %29, i32 %32, i32 %40, i32 0, i32 0)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %44 = icmp ne %struct.TYPE_12__* %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i32 @thread_deallocate_safe(%struct.TYPE_12__* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %56 = call i32 @thread_run(%struct.TYPE_12__* %52, i32* %53, i8* %54, %struct.TYPE_12__* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @splx(i32 %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %77

60:                                               ; preds = %39
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @splx(i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %8, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %5, align 8
  br label %65

65:                                               ; preds = %60, %3
  %66 = load i32*, i32** %6, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @thread_block_parameter(i32* %66, i8* %67)
  store i32 %68, i32* %13, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @THREAD_NULL, align 8
  %71 = icmp ne %struct.TYPE_12__* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = call i32 @thread_deallocate(%struct.TYPE_12__* %73)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %51
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_12__* @current_thread(...) #1

declare dso_local i32 @splsched(...) #1

declare dso_local %struct.TYPE_12__* @thread_run_queue_remove_for_handoff(%struct.TYPE_12__*) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_deallocate_safe(%struct.TYPE_12__*) #1

declare dso_local i32 @thread_run(%struct.TYPE_12__*, i32*, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @thread_block_parameter(i32*, i8*) #1

declare dso_local i32 @thread_deallocate(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
