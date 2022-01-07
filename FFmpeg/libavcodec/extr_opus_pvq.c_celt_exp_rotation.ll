; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_exp_rotation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_exp_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CELT_SPREAD_NONE = common dso_local global i32 0, align 4
@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32, i32, i32)* @celt_exp_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_exp_rotation(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = mul nsw i32 2, %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @CELT_SPREAD_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %6
  br label %141

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = sitofp i32 %29 to float
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = mul i32 5, %32
  %34 = sub i32 20, %33
  %35 = load i32, i32* %10, align 4
  %36 = mul i32 %34, %35
  %37 = add i32 %31, %36
  %38 = uitofp i32 %37 to float
  %39 = fdiv float %30, %38
  store float %39, float* %16, align 4
  %40 = load float, float* @M_PI, align 4
  %41 = load float, float* %16, align 4
  %42 = fmul float %40, %41
  %43 = load float, float* %16, align 4
  %44 = fmul float %42, %43
  %45 = fdiv float %44, 4.000000e+00
  store float %45, float* %17, align 4
  %46 = load float, float* %17, align 4
  %47 = call float @cosf(float %46) #3
  store float %47, float* %14, align 4
  %48 = load float, float* %17, align 4
  %49 = call float @sinf(float %48) #3
  store float %49, float* %15, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 3
  %53 = icmp sge i32 %50, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 2
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %55

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %28
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sdiv i32 %74, %73
  store i32 %75, i32* %8, align 4
  store i32 0, i32* %18, align 4
  br label %76

76:                                               ; preds = %138, %72
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %111

83:                                               ; preds = %80
  %84 = load float*, float** %7, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %84, i64 %88
  %90 = load i32, i32* %8, align 4
  %91 = load float, float* %14, align 4
  %92 = load float, float* %15, align 4
  %93 = fneg float %92
  %94 = call i32 @celt_exp_rotation_impl(float* %89, i32 %90, i32 1, float %91, float %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %83
  %98 = load float*, float** %7, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %98, i64 %102
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load float, float* %15, align 4
  %107 = load float, float* %14, align 4
  %108 = fneg float %107
  %109 = call i32 @celt_exp_rotation_impl(float* %103, i32 %104, i32 %105, float %106, float %108)
  br label %110

110:                                              ; preds = %97, %83
  br label %137

111:                                              ; preds = %80
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load float*, float** %7, align 8
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %8, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %115, i64 %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load float, float* %15, align 4
  %124 = load float, float* %14, align 4
  %125 = call i32 @celt_exp_rotation_impl(float* %120, i32 %121, i32 %122, float %123, float %124)
  br label %126

126:                                              ; preds = %114, %111
  %127 = load float*, float** %7, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %8, align 4
  %130 = mul nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %127, i64 %131
  %133 = load i32, i32* %8, align 4
  %134 = load float, float* %14, align 4
  %135 = load float, float* %15, align 4
  %136 = call i32 @celt_exp_rotation_impl(float* %132, i32 %133, i32 1, float %134, float %135)
  br label %137

137:                                              ; preds = %126, %110
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %18, align 4
  br label %76

141:                                              ; preds = %27, %76
  ret void
}

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

declare dso_local i32 @celt_exp_rotation_impl(float*, i32, i32, float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
