; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_lsf_decode_fp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sipr.c_lsf_decode_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LP_FILTER_ORDER = common dso_local global i32 0, align 4
@lsf_codebooks = common dso_local global i32 0, align 4
@mean_lsf = common dso_local global float* null, align 8
@LSFQ_DIFF_MIN = common dso_local global i32 0, align 4
@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, %struct.TYPE_3__*)* @lsf_decode_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lsf_decode_fp(float* %0, float* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %10 = load i32, i32* @LP_FILTER_ORDER, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca float, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @lsf_codebooks, align 4
  %18 = call i32 @dequant(float* %13, i32 %16, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %49, %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @LP_FILTER_ORDER, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  %24 = load float*, float** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fmul double %29, 3.300000e-01
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %13, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fpext float %34 to double
  %36 = fadd double %30, %35
  %37 = load float*, float** @mean_lsf, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = fadd double %36, %42
  %44 = fptrunc double %43 to float
  %45 = load float*, float** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  store float %44, float* %48, align 4
  br label %49

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %19

52:                                               ; preds = %19
  %53 = load float*, float** %4, align 8
  %54 = load i32, i32* @LP_FILTER_ORDER, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @ff_sort_nearly_sorted_floats(float* %53, i32 %55)
  %57 = load float*, float** %4, align 8
  %58 = load i32, i32* @LSFQ_DIFF_MIN, align 4
  %59 = load i32, i32* @LP_FILTER_ORDER, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @ff_set_min_dist_lsf(float* %57, i32 %58, i32 %60)
  %62 = load float*, float** %4, align 8
  %63 = load i32, i32* @LP_FILTER_ORDER, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %62, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load double, double* @M_PI, align 8
  %69 = fmul double 1.300000e+00, %68
  %70 = call float @FFMIN(float %67, double %69)
  %71 = load float*, float** %4, align 8
  %72 = getelementptr inbounds float, float* %71, i64 9
  store float %70, float* %72, align 4
  %73 = load float*, float** %5, align 8
  %74 = load i32, i32* @LP_FILTER_ORDER, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(float* %73, float* %13, i32 %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %95, %52
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @LP_FILTER_ORDER, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load float*, float** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = call float @cos(float %89)
  %91 = load float*, float** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %79

98:                                               ; preds = %79
  %99 = load double, double* @M_PI, align 8
  %100 = fdiv double 0x40189D8A54823854, %99
  %101 = load float*, float** %4, align 8
  %102 = load i32, i32* @LP_FILTER_ORDER, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %101, i64 %104
  %106 = load float, float* %105, align 4
  %107 = fpext float %106 to double
  %108 = fmul double %107, %100
  %109 = fptrunc double %108 to float
  store float %109, float* %105, align 4
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dequant(float*, i32, i32) #2

declare dso_local i32 @ff_sort_nearly_sorted_floats(float*, i32) #2

declare dso_local i32 @ff_set_min_dist_lsf(float*, i32, i32) #2

declare dso_local float @FFMIN(float, double) #2

declare dso_local i32 @memcpy(float*, float*, i32) #2

declare dso_local float @cos(float) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
