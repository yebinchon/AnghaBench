; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_find_form_factor.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_utils.h_find_form_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, float, float*, float)* @find_form_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @find_form_factor(i32 %0, i32 %1, float %2, float* %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store float* %3, float** %10, align 8
  store float %4, float* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sitofp i32 %27 to float
  %29 = fdiv float 1.000000e+00, %28
  store float %29, float* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sitofp i32 %31 to float
  %33 = fdiv float 1.000000e+00, %32
  store float %33, float* %13, align 4
  %34 = load float, float* %9, align 4
  store float %34, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  store float 0.000000e+00, float* %16, align 4
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %159, %5
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %35
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %40
  %45 = load float*, float** %10, align 8
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 %46, 128
  %48 = load i32, i32* %18, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %45, i64 %50
  %52 = load float, float* %51, align 4
  %53 = call float @llvm.fabs.f32(float %52)
  store float %53, float* %24, align 4
  %54 = load float, float* %22, align 4
  %55 = load float, float* %24, align 4
  %56 = call float @FFMAX(float %54, float %55)
  store float %56, float* %22, align 4
  %57 = load float, float* %24, align 4
  %58 = load float, float* %19, align 4
  %59 = fadd float %58, %57
  store float %59, float* %19, align 4
  %60 = load float, float* %24, align 4
  %61 = load float, float* %24, align 4
  %62 = fmul float %61, %60
  store float %62, float* %24, align 4
  %63 = load float, float* %20, align 4
  %64 = fadd float %63, %62
  store float %64, float* %20, align 4
  %65 = load float, float* %24, align 4
  %66 = load float, float* %14, align 4
  %67 = fcmp oge float %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load float, float* %23, align 4
  %70 = fadd float %69, 1.000000e+00
  store float %70, float* %23, align 4
  br label %94

71:                                               ; preds = %44
  %72 = load float, float* %11, align 4
  %73 = fcmp oeq float %72, 2.000000e+00
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load float, float* %24, align 4
  %76 = load float, float* %14, align 4
  %77 = fdiv float %75, %76
  %78 = load float, float* %24, align 4
  %79 = load float, float* %14, align 4
  %80 = fdiv float %78, %79
  %81 = fmul float %77, %80
  %82 = load float, float* %23, align 4
  %83 = fadd float %82, %81
  store float %83, float* %23, align 4
  br label %93

84:                                               ; preds = %71
  %85 = load float, float* %24, align 4
  %86 = load float, float* %14, align 4
  %87 = fdiv float %85, %86
  %88 = load float, float* %11, align 4
  %89 = call i64 @ff_fast_powf(float %87, float %88)
  %90 = sitofp i64 %89 to float
  %91 = load float, float* %23, align 4
  %92 = fadd float %91, %90
  store float %92, float* %23, align 4
  br label %93

93:                                               ; preds = %84, %74
  br label %94

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %40

98:                                               ; preds = %40
  %99 = load float, float* %20, align 4
  %100 = load float, float* %9, align 4
  %101 = fcmp ogt float %99, %100
  br i1 %101, label %102, label %158

102:                                              ; preds = %98
  %103 = load float, float* %12, align 4
  %104 = load float, float* %19, align 4
  %105 = fmul float %104, %103
  store float %105, float* %19, align 4
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %127, %102
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %130

110:                                              ; preds = %106
  %111 = load float*, float** %10, align 8
  %112 = load i32, i32* %17, align 4
  %113 = mul nsw i32 %112, 128
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %111, i64 %116
  %118 = load float, float* %117, align 4
  %119 = call float @llvm.fabs.f32(float %118)
  %120 = load float, float* %19, align 4
  %121 = fsub float %119, %120
  store float %121, float* %26, align 4
  %122 = load float, float* %26, align 4
  %123 = load float, float* %26, align 4
  %124 = fmul float %122, %123
  %125 = load float, float* %21, align 4
  %126 = fadd float %125, %124
  store float %126, float* %21, align 4
  br label %127

127:                                              ; preds = %110
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %106

130:                                              ; preds = %106
  %131 = load float, float* %21, align 4
  %132 = load float, float* %13, align 4
  %133 = fmul float %131, %132
  %134 = call float @sqrtf(float %133) #4
  store float %134, float* %21, align 4
  %135 = load float, float* %12, align 4
  %136 = load float, float* %20, align 4
  %137 = fmul float %136, %135
  store float %137, float* %20, align 4
  %138 = load float, float* %19, align 4
  %139 = load float, float* %19, align 4
  %140 = load float, float* %21, align 4
  %141 = fmul float 4.000000e+00, %140
  %142 = fadd float %139, %141
  %143 = load float, float* %22, align 4
  %144 = call float @FFMIN(float %142, float %143)
  %145 = fdiv float %138, %144
  store float %145, float* %25, align 4
  %146 = load float, float* %20, align 4
  %147 = load float, float* %25, align 4
  %148 = call float @sqrtf(float %147) #4
  %149 = fmul float %146, %148
  %150 = load float, float* %23, align 4
  %151 = call float @FFMAX(float 5.000000e-01, float %150)
  %152 = fdiv float %149, %151
  %153 = load float, float* %15, align 4
  %154 = fadd float %153, %152
  store float %154, float* %15, align 4
  %155 = load float, float* %20, align 4
  %156 = load float, float* %16, align 4
  %157 = fadd float %156, %155
  store float %157, float* %16, align 4
  br label %158

158:                                              ; preds = %130, %98
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %17, align 4
  br label %35

162:                                              ; preds = %35
  %163 = load float, float* %16, align 4
  %164 = fcmp ogt float %163, 0.000000e+00
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load float, float* %15, align 4
  %167 = load float, float* %16, align 4
  %168 = fdiv float %166, %167
  store float %168, float* %6, align 4
  br label %170

169:                                              ; preds = %162
  store float 1.000000e+00, float* %6, align 4
  br label %170

170:                                              ; preds = %169, %165
  %171 = load float, float* %6, align 4
  ret float %171
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

declare dso_local float @FFMAX(float, float) #2

declare dso_local i64 @ff_fast_powf(float, float) #2

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #3

declare dso_local float @FFMIN(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
