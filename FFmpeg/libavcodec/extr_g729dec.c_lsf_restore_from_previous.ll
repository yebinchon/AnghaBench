; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_lsf_restore_from_previous.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729dec.c_lsf_restore_from_previous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_NP = common dso_local global i64 0, align 8
@cb_ma_predictor = common dso_local global i32*** null, align 8
@cb_ma_predictor_sum_inv = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32)* @lsf_restore_from_previous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf_restore_from_previous(i32* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @MA_NP, align 8
  %12 = add i64 %11, 1
  %13 = load i32**, i32*** %5, align 8
  %14 = load i64, i64* @MA_NP, align 8
  %15 = getelementptr inbounds i32*, i32** %13, i64 %14
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %79, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %82

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 15
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %58, %20
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @MA_NP, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32***, i32**** @cb_ma_predictor, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32**, i32*** %42, i64 %44
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %41, %54
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %32
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %27

61:                                               ; preds = %27
  %62 = load i32, i32* %10, align 4
  %63 = ashr i32 %62, 15
  %64 = load i32**, i32*** @cb_ma_predictor_sum_inv, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %63, %72
  %74 = ashr i32 %73, 12
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %17

82:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
