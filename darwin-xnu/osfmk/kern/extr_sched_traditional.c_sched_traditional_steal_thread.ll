; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_traditional.c_sched_traditional_steal_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_traditional.c_sched_traditional_steal_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@PROCESSOR_RUNNING = common dso_local global i64 0, align 8
@PROCESSOR_DISPATCHING = common dso_local global i64 0, align 8
@processor_array = common dso_local global i32* null, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @sched_traditional_steal_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sched_traditional_steal_thread(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  br label %11

11:                                               ; preds = %70, %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @PROCESSOR_RUNNING, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @PROCESSOR_DISPATCHING, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %17, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @lsb_first(i32 %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %53, %11
  %28 = load i32, i32* %9, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32*, i32** @processor_array, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_9__* @runq_for_processor(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @sched_traditional_steal_processor_thread(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @THREAD_NULL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = call i32 @pset_unlock(%struct.TYPE_8__* %48)
  %50 = load i64, i64* %7, align 8
  store i64 %50, i64* %2, align 8
  br label %78

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @lsb_next(i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  br label %27

57:                                               ; preds = %27
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = call %struct.TYPE_8__* @next_pset(%struct.TYPE_8__* %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %4, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = icmp ne %struct.TYPE_8__* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = call i32 @pset_unlock(%struct.TYPE_8__* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %5, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = call i32 @pset_lock(%struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = icmp ne %struct.TYPE_8__* %71, %72
  br i1 %73, label %11, label %74

74:                                               ; preds = %70
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = call i32 @pset_unlock(%struct.TYPE_8__* %75)
  %77 = load i64, i64* @THREAD_NULL, align 8
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %74, %47
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local i32 @lsb_first(i32) #1

declare dso_local %struct.TYPE_9__* @runq_for_processor(i32) #1

declare dso_local i64 @sched_traditional_steal_processor_thread(i32) #1

declare dso_local i32 @pset_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @lsb_next(i32, i32) #1

declare dso_local %struct.TYPE_8__* @next_pset(%struct.TYPE_8__*) #1

declare dso_local i32 @pset_lock(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
