; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_exr_half2float.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_exr_half2float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.av_intfloat32 = type { i32 }

@HALF_FLOAT_MAX_BIASED_EXP = common dso_local global i32 0, align 4
@FLOAT_MAX_BIASED_EXP = common dso_local global i32 0, align 4
@HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @exr_half2float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exr_half2float(i32 %0) #0 {
  %2 = alloca %union.av_intfloat32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 15
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 1023
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @HALF_FLOAT_MAX_BIASED_EXP, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @HALF_FLOAT_MAX_BIASED_EXP, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @FLOAT_MAX_BIASED_EXP, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 8388607, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %17
  br label %56

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %37, %29
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 1024
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, 8388608
  store i32 %41, i32* %6, align 4
  br label %33

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 1023
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 13
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %26
  br label %55

48:                                               ; preds = %23
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 13
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 13
  %53 = load i32, i32* @HALF_FLOAT_MIN_BIASED_EXP_AS_SINGLE_FP_EXP, align 4
  %54 = add i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %48, %47
  br label %56

56:                                               ; preds = %55, %22
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, 31
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %60, %61
  %63 = bitcast %union.av_intfloat32* %2 to i32*
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %union.av_intfloat32, %union.av_intfloat32* %2, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
