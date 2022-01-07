; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_expand.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLT_EPSILON = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"coeff: %f of z^%d is not real; poles/zeros are not complex conjugates.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, double*, i32, double*)* @expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand(i32* %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  %11 = load double*, double** %9, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  store double 1.000000e+00, double* %12, align 8
  %13 = load double*, double** %9, align 8
  %14 = getelementptr inbounds double, double* %13, i64 1
  store double 0.000000e+00, double* %14, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %33, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load double*, double** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, 1
  %23 = mul nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %20, i64 %24
  store double 0.000000e+00, double* %25, align 8
  %26 = load double*, double** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %26, i64 %31
  store double 0.000000e+00, double* %32, align 8
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %15

36:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load double*, double** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %42, i64 %45
  %47 = load double, double* %46, align 8
  %48 = load double*, double** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %48, i64 %52
  %54 = load double, double* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load double*, double** %9, align 8
  %57 = call i32 @multiply(double %47, double %54, i32 %55, double* %56)
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %93, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %96

67:                                               ; preds = %62
  %68 = load double*, double** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 2, %69
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %68, i64 %72
  %74 = load double, double* %73, align 8
  %75 = call i64 @fabs(double %74)
  %76 = load i64, i64* @FLT_EPSILON, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %67
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* @AV_LOG_ERROR, align 4
  %81 = load double*, double** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %81, i64 %85
  %87 = load double, double* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @av_log(i32* %79, i32 %80, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), double %87, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %5, align 4
  br label %97

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %62

96:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @multiply(double, double, i32, double*) #1

declare dso_local i64 @fabs(double) #1

declare dso_local i32 @av_log(i32*, i32, i8*, double, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
