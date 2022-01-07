; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c__wq_thactive_aggregate_downto_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c__wq_thactive_aggregate_downto_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32*, i32* }

@WORKQ_THREAD_QOS_MIN = common dso_local global i64 0, align 8
@WORKQ_THREAD_QOS_MAX = common dso_local global i64 0, align 8
@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@WQ_THACTIVE_BUCKET_WIDTH = common dso_local global i32 0, align 4
@WORKQ_NUM_QOS_BUCKETS = common dso_local global i32 0, align 4
@WQ_THACTIVE_BUCKET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue*, i32, i64, i32*, i32*)* @_wq_thactive_aggregate_downto_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wq_thactive_aggregate_downto_qos(%struct.workqueue* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.workqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.workqueue* %0, %struct.workqueue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i64, i64* @WORKQ_THREAD_QOS_MIN, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @WORKQ_THREAD_QOS_MAX, align 8
  %21 = icmp sle i64 %19, %20
  br label %22

22:                                               ; preds = %18, %5
  %23 = phi i1 [ false, %5 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 (...) @mach_absolute_time()
  store i32 %29, i32* %13, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i64, i64* @THREAD_QOS_LAST, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %34, %31
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @_wq_bucket(i64 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @WQ_THACTIVE_BUCKET_WIDTH, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %87, %40
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @WORKQ_NUM_QOS_BUCKETS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @WQ_THACTIVE_BUCKET_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %86

61:                                               ; preds = %52
  %62 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %63 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.workqueue*, %struct.workqueue** %6, align 8
  %74 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i64 @workq_thread_is_busy(i32 %72, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %81, %71
  br label %86

86:                                               ; preds = %85, %61, %52
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* @WQ_THACTIVE_BUCKET_WIDTH, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %48

93:                                               ; preds = %48
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @_wq_bucket(i64) #1

declare dso_local i64 @workq_thread_is_busy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
