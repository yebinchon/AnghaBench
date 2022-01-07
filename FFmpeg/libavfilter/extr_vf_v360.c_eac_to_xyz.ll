; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_eac_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_eac_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, float*)* @eac_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eac_to_xyz(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  store float 2.000000e+00, float* %13, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sitofp i32 %24 to float
  %26 = fdiv float 2.000000e+00, %25
  store float %26, float* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float 2.000000e+00, %28
  store float %29, float* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to float
  %32 = fadd float %31, 5.000000e-01
  %33 = load i32, i32* %10, align 4
  %34 = sitofp i32 %33 to float
  %35 = fdiv float %32, %34
  store float %35, float* %22, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, 5.000000e-01
  %39 = load i32, i32* %11, align 4
  %40 = sitofp i32 %39 to float
  %41 = fdiv float %38, %40
  store float %41, float* %23, align 4
  %42 = load float, float* %22, align 4
  %43 = load float, float* %14, align 4
  %44 = fsub float %42, %43
  %45 = fmul float 3.000000e+00, %44
  %46 = load float, float* %14, align 4
  %47 = fmul float 2.000000e+00, %46
  %48 = fsub float 1.000000e+00, %47
  %49 = fdiv float %45, %48
  store float %49, float* %22, align 4
  %50 = load float, float* %22, align 4
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %55

52:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %53 = load float, float* %22, align 4
  %54 = fsub float %53, 5.000000e-01
  store float %54, float* %22, align 4
  br label %68

55:                                               ; preds = %6
  %56 = load float, float* %22, align 4
  %57 = fcmp oge float %56, 3.000000e+00
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  store i32 2, i32* %16, align 4
  %59 = load float, float* %22, align 4
  %60 = fsub float %59, 2.500000e+00
  store float %60, float* %22, align 4
  br label %67

61:                                               ; preds = %55
  %62 = load float, float* %22, align 4
  %63 = call i32 @floorf(float %62)
  store i32 %63, i32* %16, align 4
  %64 = load float, float* %22, align 4
  %65 = call float @fmodf(float %64, float 1.000000e+00) #3
  %66 = fsub float %65, 5.000000e-01
  store float %66, float* %22, align 4
  br label %67

67:                                               ; preds = %61, %58
  br label %68

68:                                               ; preds = %67, %52
  %69 = load float, float* %23, align 4
  %70 = fmul float %69, 2.000000e+00
  %71 = call i32 @floorf(float %70)
  store i32 %71, i32* %17, align 4
  %72 = load float, float* %23, align 4
  %73 = load float, float* %15, align 4
  %74 = fsub float %72, %73
  %75 = load i32, i32* %17, align 4
  %76 = sitofp i32 %75 to float
  %77 = fmul float 5.000000e-01, %76
  %78 = fsub float %74, %77
  %79 = load float, float* %15, align 4
  %80 = fmul float 2.000000e+00, %79
  %81 = fsub float 5.000000e-01, %80
  %82 = fdiv float %78, %81
  %83 = fsub float %82, 5.000000e-01
  store float %83, float* %23, align 4
  %84 = load float, float* %22, align 4
  %85 = fcmp oge float %84, -5.000000e-01
  br i1 %85, label %86, label %94

86:                                               ; preds = %68
  %87 = load float, float* %22, align 4
  %88 = fcmp olt float %87, 5.000000e-01
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load float, float* @M_PI_2, align 4
  %91 = load float, float* %22, align 4
  %92 = fmul float %90, %91
  %93 = call float @tanf(float %92) #3
  store float %93, float* %22, align 4
  br label %97

94:                                               ; preds = %86, %68
  %95 = load float, float* %22, align 4
  %96 = fmul float 2.000000e+00, %95
  store float %96, float* %22, align 4
  br label %97

97:                                               ; preds = %94, %89
  %98 = load float, float* %23, align 4
  %99 = fcmp oge float %98, -5.000000e-01
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load float, float* %23, align 4
  %102 = fcmp olt float %101, 5.000000e-01
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load float, float* @M_PI_2, align 4
  %105 = load float, float* %23, align 4
  %106 = fmul float %104, %105
  %107 = call float @tanf(float %106) #3
  store float %107, float* %23, align 4
  br label %111

108:                                              ; preds = %100, %97
  %109 = load float, float* %23, align 4
  %110 = fmul float 2.000000e+00, %109
  store float %110, float* %23, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = mul nsw i32 3, %113
  %115 = add nsw i32 %112, %114
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  switch i32 %116, label %143 [
    i32 130, label %117
    i32 129, label %122
    i32 128, label %126
    i32 133, label %130
    i32 132, label %134
    i32 131, label %138
  ]

117:                                              ; preds = %111
  store float -1.000000e+00, float* %19, align 4
  %118 = load float, float* %23, align 4
  %119 = fneg float %118
  store float %119, float* %20, align 4
  %120 = load float, float* %22, align 4
  %121 = fneg float %120
  store float %121, float* %21, align 4
  br label %145

122:                                              ; preds = %111
  %123 = load float, float* %22, align 4
  store float %123, float* %19, align 4
  %124 = load float, float* %23, align 4
  %125 = fneg float %124
  store float %125, float* %20, align 4
  store float -1.000000e+00, float* %21, align 4
  br label %145

126:                                              ; preds = %111
  store float 1.000000e+00, float* %19, align 4
  %127 = load float, float* %23, align 4
  %128 = fneg float %127
  store float %128, float* %20, align 4
  %129 = load float, float* %22, align 4
  store float %129, float* %21, align 4
  br label %145

130:                                              ; preds = %111
  %131 = load float, float* %23, align 4
  %132 = fneg float %131
  store float %132, float* %19, align 4
  store float -1.000000e+00, float* %20, align 4
  %133 = load float, float* %22, align 4
  store float %133, float* %21, align 4
  br label %145

134:                                              ; preds = %111
  %135 = load float, float* %23, align 4
  %136 = fneg float %135
  store float %136, float* %19, align 4
  %137 = load float, float* %22, align 4
  store float %137, float* %20, align 4
  store float 1.000000e+00, float* %21, align 4
  br label %145

138:                                              ; preds = %111
  %139 = load float, float* %23, align 4
  %140 = fneg float %139
  store float %140, float* %19, align 4
  store float 1.000000e+00, float* %20, align 4
  %141 = load float, float* %22, align 4
  %142 = fneg float %141
  store float %142, float* %21, align 4
  br label %145

143:                                              ; preds = %111
  %144 = call i32 @av_assert0(i32 0)
  br label %145

145:                                              ; preds = %143, %138, %134, %130, %126, %122, %117
  %146 = load float, float* %19, align 4
  %147 = load float*, float** %12, align 8
  %148 = getelementptr inbounds float, float* %147, i64 0
  store float %146, float* %148, align 4
  %149 = load float, float* %20, align 4
  %150 = load float*, float** %12, align 8
  %151 = getelementptr inbounds float, float* %150, i64 1
  store float %149, float* %151, align 4
  %152 = load float, float* %21, align 4
  %153 = load float*, float** %12, align 8
  %154 = getelementptr inbounds float, float* %153, i64 2
  store float %152, float* %154, align 4
  %155 = load float*, float** %12, align 8
  %156 = call i32 @normalize_vector(float* %155)
  ret void
}

declare dso_local i32 @floorf(float) #1

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #2

; Function Attrs: nounwind
declare dso_local float @tanf(float) #2

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @normalize_vector(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
