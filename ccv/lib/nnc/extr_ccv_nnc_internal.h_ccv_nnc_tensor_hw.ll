; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_internal.h_ccv_nnc_tensor_hw.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_internal.h_ccv_nnc_tensor_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@CCV_TENSOR_FORMAT_CHWN = common dso_local global i64 0, align 8
@CCV_TENSOR_FORMAT_NHWC = common dso_local global i64 0, align 8
@CCV_NNC_MAX_DIM = common dso_local global i32 0, align 4
@CCV_TENSOR_FORMAT_NCHW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @ccv_nnc_tensor_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccv_nnc_tensor_hw(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %5, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CCV_TENSOR_FORMAT_CHWN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %57

22:                                               ; preds = %16, %11
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CCV_TENSOR_FORMAT_NHWC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %30 = add nsw i32 %29, 2
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %40 = add nsw i32 %39, 1
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %27
  store i32 1, i32* %3, align 4
  br label %57

43:                                               ; preds = %37, %32
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CCV_TENSOR_FORMAT_NCHW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CCV_NNC_MAX_DIM, align 4
  %51 = add nsw i32 %50, 2
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 2, i32* %3, align 4
  br label %57

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %42, %21
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
