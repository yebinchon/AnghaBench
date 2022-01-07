; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_kalman_smoothen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_kalman_smoothen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, float*, float*, i32)* @kalman_smoothen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kalman_smoothen(%struct.TYPE_3__* %0, i32 %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store float 0.000000e+00, float* %13, align 4
  %18 = load float*, float** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 3
  %24 = call i64 @FFMAX(i32 %21, i32 %23)
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds float, float* %18, i64 %25
  store float* %26, float** %15, align 8
  %27 = load float*, float** %9, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 3
  %33 = call i64 @FFMIN(i32 %30, i32 %32)
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds float, float* %27, i64 %34
  store float* %35, float** %16, align 8
  store float* null, float** %17, align 8
  br label %36

36:                                               ; preds = %48, %5
  %37 = load float*, float** %9, align 8
  %38 = load float*, float** %15, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call float @avpriv_scalarproduct_float_c(float* %37, float* %38, i32 %39)
  store float %40, float* %14, align 4
  %41 = load float, float* %14, align 4
  %42 = load float, float* %13, align 4
  %43 = fcmp ogt float %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load float, float* %14, align 4
  store float %45, float* %13, align 4
  %46 = load float*, float** %15, align 8
  store float* %46, float** %17, align 8
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47
  %49 = load float*, float** %15, align 8
  %50 = getelementptr inbounds float, float* %49, i32 -1
  store float* %50, float** %15, align 8
  %51 = load float*, float** %16, align 8
  %52 = icmp uge float* %50, %51
  br i1 %52, label %36, label %53

53:                                               ; preds = %48
  %54 = load float, float* %13, align 4
  %55 = fcmp ole float %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %6, align 4
  br label %114

57:                                               ; preds = %53
  %58 = load float*, float** %17, align 8
  %59 = load float*, float** %17, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call float @avpriv_scalarproduct_float_c(float* %58, float* %59, i32 %60)
  store float %61, float* %14, align 4
  %62 = load float, float* %14, align 4
  %63 = fcmp ole float %62, 0.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %6, align 4
  br label %114

65:                                               ; preds = %57
  %66 = load float, float* %13, align 4
  %67 = load float, float* %14, align 4
  %68 = fcmp ole float %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load float, float* %14, align 4
  %71 = fpext float %70 to double
  %72 = load float, float* %14, align 4
  %73 = fpext float %72 to double
  %74 = load float, float* %13, align 4
  %75 = fpext float %74 to double
  %76 = fmul double 6.000000e-01, %75
  %77 = fadd double %73, %76
  %78 = fdiv double %71, %77
  %79 = fptrunc double %78 to float
  store float %79, float* %14, align 4
  br label %81

80:                                               ; preds = %65
  store float 6.250000e-01, float* %14, align 4
  br label %81

81:                                               ; preds = %80, %69
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %110, %81
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load float*, float** %17, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load float, float* %14, align 4
  %93 = load float*, float** %9, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = load float*, float** %17, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fsub float %97, %102
  %104 = fmul float %92, %103
  %105 = fadd float %91, %104
  %106 = load float*, float** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %105, float* %109, align 4
  br label %110

110:                                              ; preds = %86
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %82

113:                                              ; preds = %82
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %64, %56
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local float @avpriv_scalarproduct_float_c(float*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
