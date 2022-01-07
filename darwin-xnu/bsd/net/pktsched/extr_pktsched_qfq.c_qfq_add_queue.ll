; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_add_queue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/pktsched/extr_pktsched_qfq.c_qfq_add_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_if = type { i64, i32 }
%struct.qfq_class = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QFQ_MAX_WEIGHT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QFQ_ONE_FP = common dso_local global i32 0, align 4
@QFQ_MAX_WSUM = common dso_local global i64 0, align 8
@QFQ_MTU_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qfq_add_queue(%struct.qfq_if* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.qfq_class** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qfq_if*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qfq_class**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qfq_class*, align 8
  %19 = alloca i32, align 4
  store %struct.qfq_if* %0, %struct.qfq_if** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.qfq_class** %6, %struct.qfq_class*** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.qfq_if*, %struct.qfq_if** %10, align 8
  %21 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IFCQ_LOCK_ASSERT_HELD(i32 %22)
  %24 = load %struct.qfq_if*, %struct.qfq_if** %10, align 8
  %25 = load i32, i32* %15, align 4
  %26 = call i32* @qfq_clh_to_clp(%struct.qfq_if* %24, i32 %25)
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %9, align 4
  br label %85

30:                                               ; preds = %8
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @QFQ_MAX_WEIGHT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %30
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %9, align 4
  br label %85

39:                                               ; preds = %33
  %40 = load i32, i32* @QFQ_ONE_FP, align 4
  %41 = load i32, i32* @QFQ_ONE_FP, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sdiv i32 %41, %42
  %44 = sdiv i32 %40, %43
  store i32 %44, i32* %19, align 4
  %45 = load %struct.qfq_if*, %struct.qfq_if** %10, align 8
  %46 = getelementptr inbounds %struct.qfq_if, %struct.qfq_if* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i64, i64* @QFQ_MAX_WSUM, align 8
  %52 = icmp sgt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %9, align 4
  br label %85

55:                                               ; preds = %39
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @QFQ_MTU_SHIFT, align 4
  %61 = shl i32 1, %60
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %9, align 4
  br label %85

65:                                               ; preds = %58
  %66 = load %struct.qfq_if*, %struct.qfq_if** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call %struct.qfq_class* @qfq_class_create(%struct.qfq_if* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  store %struct.qfq_class* %73, %struct.qfq_class** %18, align 8
  %74 = load %struct.qfq_class*, %struct.qfq_class** %18, align 8
  %75 = icmp eq %struct.qfq_class* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %9, align 4
  br label %85

78:                                               ; preds = %65
  %79 = load %struct.qfq_class**, %struct.qfq_class*** %16, align 8
  %80 = icmp ne %struct.qfq_class** %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.qfq_class*, %struct.qfq_class** %18, align 8
  %83 = load %struct.qfq_class**, %struct.qfq_class*** %16, align 8
  store %struct.qfq_class* %82, %struct.qfq_class** %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %84, %76, %63, %53, %37, %28
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @IFCQ_LOCK_ASSERT_HELD(i32) #1

declare dso_local i32* @qfq_clh_to_clp(%struct.qfq_if*, i32) #1

declare dso_local %struct.qfq_class* @qfq_class_create(%struct.qfq_if*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
