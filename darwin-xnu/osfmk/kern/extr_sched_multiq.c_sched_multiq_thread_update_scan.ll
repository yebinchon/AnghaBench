; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_thread_update_scan.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_multiq.c_sched_multiq_thread_update_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__* }

@FALSE = common dso_local global i64 0, align 8
@processor_list = common dso_local global %struct.TYPE_12__* null, align 8
@THREAD_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@sched_tick = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@pset0 = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sched_multiq_thread_update_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sched_multiq_thread_update_scan(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @processor_list, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  br label %10

10:                                               ; preds = %58, %1
  br label %11

11:                                               ; preds = %51, %10
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  %15 = call i32 (...) @splsched()
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = call i32 @pset_lock(%struct.TYPE_13__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i32 @multiq_bound_runq(%struct.TYPE_12__* %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @runq_scan(i32 %19, i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call i32 @pset_unlock(%struct.TYPE_13__* %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @splx(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  br label %56

29:                                               ; preds = %11
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %6, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @THREAD_NULL, align 8
  %35 = icmp ne %struct.TYPE_11__* %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @sched_tick, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = call i64 @thread_update_add_thread(%struct.TYPE_11__* %43)
  %45 = load i64, i64* @FALSE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %3, align 8
  br label %56

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %36, %29
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %4, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %11, label %56

56:                                               ; preds = %51, %47, %28
  %57 = call i32 (...) @thread_update_process_threads()
  br label %58

58:                                               ; preds = %56
  %59 = load i64, i64* %3, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %10, label %61

61:                                               ; preds = %58
  store %struct.TYPE_13__* @pset0, %struct.TYPE_13__** %5, align 8
  br label %62

62:                                               ; preds = %86, %61
  br label %63

63:                                               ; preds = %79, %62
  %64 = call i32 (...) @splsched()
  store i32 %64, i32* %7, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = call i32 @pset_lock(%struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %2, align 4
  %70 = call i64 @group_scan(i32* %68, i32 %69)
  store i64 %70, i64* %3, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = call i32 @pset_unlock(%struct.TYPE_13__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @splx(i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %84

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  store %struct.TYPE_13__* %82, %struct.TYPE_13__** %5, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %63, label %84

84:                                               ; preds = %79, %77
  %85 = call i32 (...) @thread_update_process_threads()
  br label %86

86:                                               ; preds = %84
  %87 = load i64, i64* %3, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %62, label %89

89:                                               ; preds = %86
  ret void
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @pset_lock(%struct.TYPE_13__*) #1

declare dso_local i64 @runq_scan(i32, i32) #1

declare dso_local i32 @multiq_bound_runq(%struct.TYPE_12__*) #1

declare dso_local i32 @pset_unlock(%struct.TYPE_13__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @thread_update_add_thread(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_update_process_threads(...) #1

declare dso_local i64 @group_scan(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
