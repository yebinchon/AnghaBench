; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_creator_should_yield.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_creator_should_yield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64, i64* }
%struct.uthread = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@THREAD_QOS_USER_INTERACTIVE = common dso_local global i64 0, align 8
@wq_max_parallelism = common dso_local global i64* null, align 8
@TRACE_wq_creator_yield = common dso_local global i32 0, align 4
@WORKQ_NUM_QOS_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue*, %struct.uthread*)* @workq_creator_should_yield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_creator_should_yield(%struct.workqueue* %0, %struct.uthread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.workqueue*, align 8
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.workqueue* %0, %struct.workqueue** %4, align 8
  store %struct.uthread* %1, %struct.uthread** %5, align 8
  %11 = load %struct.uthread*, %struct.uthread** %5, align 8
  %12 = getelementptr inbounds %struct.uthread, %struct.uthread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @workq_pri_override(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @THREAD_QOS_USER_INTERACTIVE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.uthread*, %struct.uthread** %5, align 8
  %21 = getelementptr inbounds %struct.uthread, %struct.uthread* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %26 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %86

31:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  %32 = load i64*, i64** @wq_max_parallelism, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @_wq_bucket(i64 %33)
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %38 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load i64, i64* %9, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load i32, i32* @TRACE_wq_creator_yield, align 4
  %46 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %47 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %48 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @WQ_TRACE_WQ(i32 %45, %struct.workqueue* %46, i32 1, i64 %49, i64 %50, i32 0)
  store i32 1, i32* %3, align 4
  br label %86

52:                                               ; preds = %31
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @_wq_bucket(i64 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %70, %52
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @WORKQ_NUM_QOS_BUCKETS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %62 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp sle i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load i32, i32* @TRACE_wq_creator_yield, align 4
  %79 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %80 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %81 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @WQ_TRACE_WQ(i32 %78, %struct.workqueue* %79, i32 2, i64 %82, i64 %83, i32 0)
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %77, %44, %30, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @workq_pri_override(i32) #1

declare dso_local i64 @_wq_bucket(i64) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
