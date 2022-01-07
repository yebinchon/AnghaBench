; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_anti_sparseness.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_anti_sparseness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, double*, double*, i32 }

@MODE_8k85 = common dso_local global i64 0, align 8
@ir_filters_lookup = common dso_local global float** null, align 8
@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (%struct.TYPE_3__*, float*, float*)* @anti_sparseness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @anti_sparseness(%struct.TYPE_3__* %0, float* %1, float* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MODE_8k85, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load float*, float** %6, align 8
  store float* %19, float** %4, align 8
  br label %150

20:                                               ; preds = %3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load double*, double** %22, align 8
  %24 = getelementptr inbounds double, double* %23, i64 0
  %25 = load double, double* %24, align 8
  %26 = fcmp olt double %25, 6.000000e-01
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  %33 = load double, double* %32, align 8
  %34 = fcmp olt double %33, 9.000000e-01
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %8, align 4
  br label %37

36:                                               ; preds = %28
  store i32 2, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load double*, double** %40, align 8
  %42 = getelementptr inbounds double, double* %41, i64 0
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load double*, double** %45, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = fmul double 3.000000e+00, %48
  %50 = fcmp ogt double %43, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %93

58:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 6
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load double*, double** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fcmp olt double %69, 6.000000e-01
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %62
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %59

78:                                               ; preds = %59
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  %88 = icmp sgt i32 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %89, %82
  br label %93

93:                                               ; preds = %92, %57
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MODE_8k85, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %148

107:                                              ; preds = %93
  %108 = load float**, float*** @ir_filters_lookup, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float*, float** %108, i64 %110
  %112 = load float*, float** %111, align 8
  store float* %112, float** %12, align 8
  %113 = load float*, float** %7, align 8
  %114 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memset(float* %113, i32 0, i32 %117)
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %143, %107
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %119
  %124 = load float*, float** %6, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fcmp une float %128, 0.000000e+00
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = load float*, float** %7, align 8
  %132 = load float*, float** %7, align 8
  %133 = load float*, float** %12, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load float*, float** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %141 = call i32 @ff_celp_circ_addf(float* %131, float* %132, float* %133, i32 %134, float %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %123
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %119

146:                                              ; preds = %119
  %147 = load float*, float** %7, align 8
  store float* %147, float** %6, align 8
  br label %148

148:                                              ; preds = %146, %93
  %149 = load float*, float** %6, align 8
  store float* %149, float** %4, align 8
  br label %150

150:                                              ; preds = %148, %18
  %151 = load float*, float** %4, align 8
  ret float* %151
}

declare dso_local i32 @memset(float*, i32, i32) #1

declare dso_local i32 @ff_celp_circ_addf(float*, float*, float*, i32, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
