; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_processor_csw_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_processor_csw_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i64, i32 }

@AST_PREEMPT = common dso_local global i32 0, align 4
@AST_URGENT = common dso_local global i32 0, align 4
@AST_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @sched_multiq_processor_csw_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_multiq_processor_csw_check(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 (...) @current_thread()
  %10 = call i64 @sched_multiq_thread_avoid_processor(%struct.TYPE_11__* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @AST_PREEMPT, align 4
  %14 = load i32, i32* @AST_URGENT, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call %struct.TYPE_12__* @multiq_main_entryq(%struct.TYPE_11__* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = call %struct.TYPE_10__* @multiq_bound_runq(%struct.TYPE_11__* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MAX(i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %52

45:                                               ; preds = %16
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @AST_PREEMPT, align 4
  %62 = load i32, i32* @AST_URGENT, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %55
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @AST_PREEMPT, align 4
  %71 = load i32, i32* @AST_URGENT, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @AST_PREEMPT, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %52
  %76 = load i32, i32* @AST_NONE, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %73, %69, %60, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @sched_multiq_thread_avoid_processor(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.TYPE_12__* @multiq_main_entryq(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @multiq_bound_runq(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
