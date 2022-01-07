; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_make_lpf.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_make_lpf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32, float, float, float, float, i32)* @make_lpf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @make_lpf(i32 %0, float %1, float %2, float %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call float* @av_calloc(i32 %24, i32 4)
  store float* %25, float** %15, align 8
  store float 0.000000e+00, float* %16, align 4
  %26 = load float, float* %11, align 4
  %27 = load float, float* %9, align 4
  %28 = call float @bessel_I_0(float %27)
  %29 = fdiv float %26, %28
  store float %29, float* %17, align 4
  %30 = load i32, i32* %14, align 4
  %31 = sitofp i32 %30 to float
  %32 = fmul float 5.000000e-01, %31
  %33 = load float, float* %10, align 4
  %34 = fadd float %32, %33
  %35 = fdiv float 1.000000e+00, %34
  store float %35, float* %18, align 4
  %36 = load float, float* %8, align 4
  %37 = fcmp oge float %36, 0.000000e+00
  br i1 %37, label %38, label %41

38:                                               ; preds = %6
  %39 = load float, float* %8, align 4
  %40 = fcmp ole float %39, 1.000000e+00
  br label %41

41:                                               ; preds = %38, %6
  %42 = phi i1 [ false, %6 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @av_assert0(i32 %43)
  store i32 0, i32* %13, align 4
  br label %45

45:                                               ; preds = %123, %41
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sdiv i32 %47, 2
  %49 = icmp sle i32 %46, %48
  br i1 %49, label %50, label %126

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = sitofp i32 %51 to float
  %53 = load i32, i32* %14, align 4
  %54 = sitofp i32 %53 to float
  %55 = fmul float 5.000000e-01, %54
  %56 = fsub float %52, %55
  store float %56, float* %19, align 4
  %57 = load float, float* %19, align 4
  %58 = load float, float* @M_PI, align 4
  %59 = fmul float %57, %58
  store float %59, float* %20, align 4
  %60 = load float, float* %19, align 4
  %61 = load float, float* %18, align 4
  %62 = fmul float %60, %61
  store float %62, float* %21, align 4
  %63 = load float, float* %20, align 4
  %64 = fcmp une float %63, 0.000000e+00
  br i1 %64, label %65, label %72

65:                                               ; preds = %50
  %66 = load float, float* %8, align 4
  %67 = load float, float* %20, align 4
  %68 = fmul float %66, %67
  %69 = call float @sinf(float %68) #3
  %70 = load float, float* %20, align 4
  %71 = fdiv float %69, %70
  br label %74

72:                                               ; preds = %50
  %73 = load float, float* %8, align 4
  br label %74

74:                                               ; preds = %72, %65
  %75 = phi float [ %71, %65 ], [ %73, %72 ]
  %76 = load float*, float** %15, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  store float %75, float* %79, align 4
  %80 = load float, float* %9, align 4
  %81 = load float, float* %21, align 4
  %82 = load float, float* %21, align 4
  %83 = fmul float %81, %82
  %84 = fsub float 1.000000e+00, %83
  %85 = call float @sqrtf(float %84) #3
  %86 = fmul float %80, %85
  %87 = call float @bessel_I_0(float %86)
  %88 = load float, float* %17, align 4
  %89 = fmul float %87, %88
  %90 = load float*, float** %15, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %94, %89
  store float %95, float* %93, align 4
  %96 = load float, float* %16, align 4
  %97 = fadd float %96, %95
  store float %97, float* %16, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %74
  %104 = load float*, float** %15, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %104, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float*, float** %15, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %109, i64 %113
  store float %108, float* %114, align 4
  %115 = load float*, float** %15, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float, float* %16, align 4
  %121 = fadd float %120, %119
  store float %121, float* %16, align 4
  br label %122

122:                                              ; preds = %103, %74
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %45

126:                                              ; preds = %45
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %146, %126
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %149

136:                                              ; preds = %134
  %137 = load float, float* %11, align 4
  %138 = load float, float* %16, align 4
  %139 = fdiv float %137, %138
  %140 = load float*, float** %15, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fmul float %144, %139
  store float %145, float* %143, align 4
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %127

149:                                              ; preds = %134
  %150 = load float*, float** %15, align 8
  ret float* %150
}

declare dso_local float* @av_calloc(i32, i32) #1

declare dso_local float @bessel_I_0(float) #1

declare dso_local i32 @av_assert0(i32) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #2

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
