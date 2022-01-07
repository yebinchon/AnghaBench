; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_half_precision_to_float.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_util.c_ccv_half_precision_to_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ccv_mantissa_table = common dso_local global i64* null, align 8
@_ccv_offset_table = common dso_local global i32* null, align 8
@_ccv_exponent_table = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccv_half_precision_to_float(i32* %0, float* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store float* %1, float** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load float*, float** %5, align 8
  %10 = bitcast float* %9 to i64*
  store i64* %10, i64** %8, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %53, %3
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %11
  %17 = load i64*, i64** @_ccv_mantissa_table, align 8
  %18 = load i32*, i32** @_ccv_offset_table, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1023
  %34 = add nsw i32 %27, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %17, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @_ccv_exponent_table, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 10
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %38, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %37, %47
  %49 = load i64*, i64** %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  br label %53

53:                                               ; preds = %16
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %11

56:                                               ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
