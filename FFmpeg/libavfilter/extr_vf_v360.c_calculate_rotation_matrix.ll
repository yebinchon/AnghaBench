; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_rotation_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_calculate_rotation_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, [3 x float]*, i32*)* @calculate_rotation_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calculate_rotation_matrix(float %0, float %1, float %2, [3 x float]* %3, i32* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float]*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca [3 x [3 x [3 x float]]], align 16
  %21 = alloca [3 x [3 x float]], align 16
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store [3 x float]* %3, [3 x float]** %9, align 8
  store i32* %4, i32** %10, align 8
  %22 = load float, float* %6, align 4
  %23 = load float, float* @M_PI, align 4
  %24 = fmul float %22, %23
  %25 = fdiv float %24, 1.800000e+02
  store float %25, float* %11, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* @M_PI, align 4
  %28 = fmul float %26, %27
  %29 = fdiv float %28, 1.800000e+02
  store float %29, float* %12, align 4
  %30 = load float, float* %8, align 4
  %31 = load float, float* @M_PI, align 4
  %32 = fmul float %30, %31
  %33 = fdiv float %32, 1.800000e+02
  store float %33, float* %13, align 4
  %34 = load float, float* %11, align 4
  %35 = fneg float %34
  %36 = call float @sinf(float %35) #3
  store float %36, float* %14, align 4
  %37 = load float, float* %11, align 4
  %38 = fneg float %37
  %39 = call float @cosf(float %38) #3
  store float %39, float* %15, align 4
  %40 = load float, float* %12, align 4
  %41 = call float @sinf(float %40) #3
  store float %41, float* %16, align 4
  %42 = load float, float* %12, align 4
  %43 = call float @cosf(float %42) #3
  store float %43, float* %17, align 4
  %44 = load float, float* %13, align 4
  %45 = call float @sinf(float %44) #3
  store float %45, float* %18, align 4
  %46 = load float, float* %13, align 4
  %47 = call float @cosf(float %46) #3
  store float %47, float* %19, align 4
  %48 = load float, float* %15, align 4
  %49 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %50 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %49, i64 0, i64 0
  %51 = getelementptr inbounds [3 x float], [3 x float]* %50, i64 0, i64 0
  store float %48, float* %51, align 16
  %52 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %53 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %52, i64 0, i64 0
  %54 = getelementptr inbounds [3 x float], [3 x float]* %53, i64 0, i64 1
  store float 0.000000e+00, float* %54, align 4
  %55 = load float, float* %14, align 4
  %56 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %57 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %56, i64 0, i64 0
  %58 = getelementptr inbounds [3 x float], [3 x float]* %57, i64 0, i64 2
  store float %55, float* %58, align 8
  %59 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %60 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %59, i64 0, i64 1
  %61 = getelementptr inbounds [3 x float], [3 x float]* %60, i64 0, i64 0
  store float 0.000000e+00, float* %61, align 4
  %62 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %63 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %62, i64 0, i64 1
  %64 = getelementptr inbounds [3 x float], [3 x float]* %63, i64 0, i64 1
  store float 1.000000e+00, float* %64, align 4
  %65 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %66 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %65, i64 0, i64 1
  %67 = getelementptr inbounds [3 x float], [3 x float]* %66, i64 0, i64 2
  store float 0.000000e+00, float* %67, align 4
  %68 = load float, float* %14, align 4
  %69 = fneg float %68
  %70 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %71 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %70, i64 0, i64 2
  %72 = getelementptr inbounds [3 x float], [3 x float]* %71, i64 0, i64 0
  store float %69, float* %72, align 8
  %73 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %74 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %73, i64 0, i64 2
  %75 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0, i64 1
  store float 0.000000e+00, float* %75, align 4
  %76 = load float, float* %15, align 4
  %77 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 0
  %78 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %77, i64 0, i64 2
  %79 = getelementptr inbounds [3 x float], [3 x float]* %78, i64 0, i64 2
  store float %76, float* %79, align 8
  %80 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %81 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %80, i64 0, i64 0
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 0
  store float 1.000000e+00, float* %82, align 4
  %83 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %84 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %83, i64 0, i64 0
  %85 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 0, i64 1
  store float 0.000000e+00, float* %85, align 4
  %86 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %87 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %86, i64 0, i64 0
  %88 = getelementptr inbounds [3 x float], [3 x float]* %87, i64 0, i64 2
  store float 0.000000e+00, float* %88, align 4
  %89 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %90 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %89, i64 0, i64 1
  %91 = getelementptr inbounds [3 x float], [3 x float]* %90, i64 0, i64 0
  store float 0.000000e+00, float* %91, align 4
  %92 = load float, float* %17, align 4
  %93 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %94 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %93, i64 0, i64 1
  %95 = getelementptr inbounds [3 x float], [3 x float]* %94, i64 0, i64 1
  store float %92, float* %95, align 4
  %96 = load float, float* %16, align 4
  %97 = fneg float %96
  %98 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %99 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %98, i64 0, i64 1
  %100 = getelementptr inbounds [3 x float], [3 x float]* %99, i64 0, i64 2
  store float %97, float* %100, align 4
  %101 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %102 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %101, i64 0, i64 2
  %103 = getelementptr inbounds [3 x float], [3 x float]* %102, i64 0, i64 0
  store float 0.000000e+00, float* %103, align 4
  %104 = load float, float* %16, align 4
  %105 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %106 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %105, i64 0, i64 2
  %107 = getelementptr inbounds [3 x float], [3 x float]* %106, i64 0, i64 1
  store float %104, float* %107, align 4
  %108 = load float, float* %17, align 4
  %109 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 1
  %110 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %109, i64 0, i64 2
  %111 = getelementptr inbounds [3 x float], [3 x float]* %110, i64 0, i64 2
  store float %108, float* %111, align 4
  %112 = load float, float* %19, align 4
  %113 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %114 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %113, i64 0, i64 0
  %115 = getelementptr inbounds [3 x float], [3 x float]* %114, i64 0, i64 0
  store float %112, float* %115, align 8
  %116 = load float, float* %18, align 4
  %117 = fneg float %116
  %118 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %119 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %118, i64 0, i64 0
  %120 = getelementptr inbounds [3 x float], [3 x float]* %119, i64 0, i64 1
  store float %117, float* %120, align 4
  %121 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %122 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %121, i64 0, i64 0
  %123 = getelementptr inbounds [3 x float], [3 x float]* %122, i64 0, i64 2
  store float 0.000000e+00, float* %123, align 8
  %124 = load float, float* %18, align 4
  %125 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %126 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %125, i64 0, i64 1
  %127 = getelementptr inbounds [3 x float], [3 x float]* %126, i64 0, i64 0
  store float %124, float* %127, align 4
  %128 = load float, float* %19, align 4
  %129 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %130 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %129, i64 0, i64 1
  %131 = getelementptr inbounds [3 x float], [3 x float]* %130, i64 0, i64 1
  store float %128, float* %131, align 4
  %132 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %133 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %132, i64 0, i64 1
  %134 = getelementptr inbounds [3 x float], [3 x float]* %133, i64 0, i64 2
  store float 0.000000e+00, float* %134, align 4
  %135 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %136 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %135, i64 0, i64 2
  %137 = getelementptr inbounds [3 x float], [3 x float]* %136, i64 0, i64 0
  store float 0.000000e+00, float* %137, align 8
  %138 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %139 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %138, i64 0, i64 2
  %140 = getelementptr inbounds [3 x float], [3 x float]* %139, i64 0, i64 1
  store float 0.000000e+00, float* %140, align 4
  %141 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 2
  %142 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %141, i64 0, i64 2
  %143 = getelementptr inbounds [3 x float], [3 x float]* %142, i64 0, i64 2
  store float 1.000000e+00, float* %143, align 8
  %144 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %21, i64 0, i64 0
  %145 = bitcast [3 x float]* %144 to float**
  %146 = load i32*, i32** %10, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 %149
  %151 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %150, i64 0, i64 0
  %152 = bitcast [3 x float]* %151 to float**
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 %156
  %158 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %157, i64 0, i64 0
  %159 = bitcast [3 x float]* %158 to float**
  %160 = call i32 @multiply_matrix(float** %145, float** %152, float** %159)
  %161 = load [3 x float]*, [3 x float]** %9, align 8
  %162 = bitcast [3 x float]* %161 to float**
  %163 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %21, i64 0, i64 0
  %164 = bitcast [3 x float]* %163 to float**
  %165 = load i32*, i32** %10, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x [3 x [3 x float]]], [3 x [3 x [3 x float]]]* %20, i64 0, i64 %168
  %170 = getelementptr inbounds [3 x [3 x float]], [3 x [3 x float]]* %169, i64 0, i64 0
  %171 = bitcast [3 x float]* %170 to float**
  %172 = call i32 @multiply_matrix(float** %162, float** %164, float** %171)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @multiply_matrix(float**, float**, float**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
