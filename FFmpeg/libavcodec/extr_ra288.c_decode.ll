; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_decode.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ra288.c_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, float*, float*, i32 }

@codetable = common dso_local global double** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, i32)* @decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode(%struct.TYPE_3__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca float, align 4
  %10 = alloca [5 x float], align 16
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load float*, float** %14, align 8
  %16 = getelementptr inbounds float, float* %15, i64 70
  %17 = getelementptr inbounds float, float* %16, i64 36
  store float* %17, float** %11, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds float, float* %20, i64 28
  store float* %21, float** %12, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load float*, float** %23, align 8
  %25 = getelementptr inbounds float, float* %24, i64 70
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load float*, float** %27, align 8
  %29 = getelementptr inbounds float, float* %28, i64 75
  %30 = call i32 @memmove(float* %25, float* %29, i32 144)
  store float 3.200000e+01, float* %9, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %51, %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load float*, float** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 9, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %35, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  %48 = fmul float %40, %47
  %49 = load float, float* %9, align 4
  %50 = fsub float %49, %48
  store float %50, float* %9, align 4
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load float, float* %9, align 4
  %56 = call float @av_clipf(float %55, i32 0, i32 60)
  store float %56, float* %9, align 4
  %57 = load float, float* %9, align 4
  %58 = fpext float %57 to double
  %59 = fmul double %58, 0x3FBD791C5F88877E
  %60 = fptrunc double %59 to float
  %61 = call float @exp(float %60)
  %62 = load float, float* %5, align 4
  %63 = fmul float %61, %62
  %64 = fpext float %63 to double
  %65 = fmul double %64, 0x3E80000000000000
  store double %65, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %85, %54
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 5
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load double**, double*** @codetable, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double*, double** %70, i64 %72
  %74 = load double*, double** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load double, double* %8, align 8
  %80 = fmul double %78, %79
  %81 = fptrunc double %80 to float
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [5 x float], [5 x float]* %10, i64 0, i64 %83
  store float %81, float* %84, align 4
  br label %85

85:                                               ; preds = %69
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %66

88:                                               ; preds = %66
  %89 = getelementptr inbounds [5 x float], [5 x float]* %10, i64 0, i64 0
  %90 = getelementptr inbounds [5 x float], [5 x float]* %10, i64 0, i64 0
  %91 = call float @avpriv_scalarproduct_float_c(float* %89, float* %90, i32 5)
  store float %91, float* %9, align 4
  %92 = load float, float* %9, align 4
  %93 = call float @FFMAX(float %92, double 0x3E94000000000000)
  store float %93, float* %9, align 4
  %94 = load float*, float** %12, align 8
  %95 = load float*, float** %12, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  %97 = call i32 @memmove(float* %94, float* %96, i32 36)
  %98 = load float, float* %9, align 4
  %99 = fptosi float %98 to i32
  %100 = call i32 @log10(i32 %99)
  %101 = mul nsw i32 10, %100
  %102 = call i32 @log10(i32 3355443)
  %103 = mul nsw i32 10, %102
  %104 = sub nsw i32 %103, 32
  %105 = add nsw i32 %101, %104
  %106 = sitofp i32 %105 to float
  %107 = load float*, float** %12, align 8
  %108 = getelementptr inbounds float, float* %107, i64 9
  store float %106, float* %108, align 4
  %109 = load float*, float** %11, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [5 x float], [5 x float]* %10, i64 0, i64 0
  %114 = call i32 @ff_celp_lp_synthesis_filterf(float* %109, i32 %112, float* %113, i32 5, i32 36)
  ret void
}

declare dso_local i32 @memmove(float*, float*, i32) #1

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local float @exp(float) #1

declare dso_local float @avpriv_scalarproduct_float_c(float*, float*, i32) #1

declare dso_local float @FFMAX(float, double) #1

declare dso_local i32 @log10(i32) #1

declare dso_local i32 @ff_celp_lp_synthesis_filterf(float*, i32, float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
