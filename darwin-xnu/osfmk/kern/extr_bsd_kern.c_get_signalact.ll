; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_bsd_kern.c_get_signalact.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_bsd_kern.c_get_signalact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32, i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@TH_SFLAG_ABORTED_MASK = common dso_local global i32 0, align 4
@TH_SFLAG_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_signalact(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @THREAD_NULL, align 8
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %10, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = call i32 @task_lock(%struct.TYPE_12__* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i32 @task_unlock(%struct.TYPE_12__* %20)
  %22 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %22, i32* %4, align 4
  br label %86

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = call i64 @queue_first(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %9, align 8
  br label %29

29:                                               ; preds = %54, %23
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = ptrtoint %struct.TYPE_11__* %32 to i32
  %34 = call i32 @queue_end(i32* %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %62

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TH_SFLAG_ABORTED_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @TH_SFLAG_ABORT, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %10, align 8
  br label %62

54:                                               ; preds = %44, %37
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = call i64 @queue_next(i32* %58)
  %60 = inttoptr i64 %59 to i8*
  %61 = bitcast i8* %60 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %9, align 8
  br label %29

62:                                               ; preds = %52, %29
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  %64 = icmp ne %struct.TYPE_11__** %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %6, align 8
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %67, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = icmp ne %struct.TYPE_11__* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = call i32 @act_set_astbsd(%struct.TYPE_11__* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %78)
  br label %82

80:                                               ; preds = %68
  %81 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = call i32 @task_unlock(%struct.TYPE_12__* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %19
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @task_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @task_unlock(%struct.TYPE_12__*) #1

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #1

declare dso_local i64 @queue_next(i32*) #1

declare dso_local i32 @act_set_astbsd(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
