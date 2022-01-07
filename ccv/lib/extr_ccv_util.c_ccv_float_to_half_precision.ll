; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_float_to_half_precision.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_float_to_half_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ccv_base_table = common dso_local global i64* null, align 8
@_ccv_shift_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_float_to_half_precision(float* %0, i64* %1, i64 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store float* %0, float** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load float*, float** %4, align 8
  %10 = bitcast float* %9 to i32*
  store i32* %10, i32** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %52, %3
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %11
  %17 = load i64*, i64** @_ccv_base_table, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 23
  %24 = and i32 %23, 511
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %17, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 8388607
  %34 = load i32*, i32** @_ccv_shift_table, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 23
  %41 = and i32 %40, 511
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %34, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %33, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %27, %46
  %48 = load i64*, i64** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  br label %52

52:                                               ; preds = %16
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %11

55:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
