; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_detect_dequeue_stall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_fq_codel.c_fq_detect_dequeue_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@FQ_MIN_FC_THRESHOLD_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_14__*, i64*)* @fq_detect_dequeue_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_detect_dequeue_stall(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = call i64 @FQ_IS_DELAYHIGH(%struct.TYPE_12__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = call i64 @fq_empty(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FQ_MIN_FC_THRESHOLD_BYTES, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %18, %13, %4
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %9, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i32 @FQ_SET_DELAY_HIGH(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %28, %41, %29
  ret void
}

declare dso_local i64 @FQ_IS_DELAYHIGH(%struct.TYPE_12__*) #1

declare dso_local i64 @fq_empty(%struct.TYPE_12__*) #1

declare dso_local i32 @FQ_SET_DELAY_HIGH(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
