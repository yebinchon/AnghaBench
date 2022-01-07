; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_stereo_merge.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_stereo_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float, i32)* @celt_stereo_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @celt_stereo_merge(float* %0, float* %1, float %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca float, align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float %2, float* %7, align 4
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %47, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load float*, float** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  %25 = load float, float* %24, align 4
  %26 = load float*, float** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fmul float %25, %30
  %32 = load float, float* %10, align 4
  %33 = fadd float %32, %31
  store float %33, float* %10, align 4
  %34 = load float*, float** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = load float*, float** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds float, float* %39, i64 %41
  %43 = load float, float* %42, align 4
  %44 = fmul float %38, %43
  %45 = load float, float* %11, align 4
  %46 = fadd float %45, %44
  store float %46, float* %11, align 4
  br label %47

47:                                               ; preds = %20
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %16

50:                                               ; preds = %16
  %51 = load float, float* %7, align 4
  %52 = load float, float* %10, align 4
  %53 = fmul float %52, %51
  store float %53, float* %10, align 4
  %54 = load float, float* %7, align 4
  store float %54, float* %13, align 4
  %55 = load float, float* %13, align 4
  %56 = load float, float* %13, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* %11, align 4
  %59 = fadd float %57, %58
  %60 = load float, float* %10, align 4
  %61 = fmul float 2.000000e+00, %60
  %62 = fsub float %59, %61
  %63 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  store float %62, float* %63, align 4
  %64 = load float, float* %13, align 4
  %65 = load float, float* %13, align 4
  %66 = fmul float %64, %65
  %67 = load float, float* %11, align 4
  %68 = fadd float %66, %67
  %69 = load float, float* %10, align 4
  %70 = fmul float 2.000000e+00, %69
  %71 = fadd float %68, %70
  %72 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  store float %71, float* %72, align 4
  %73 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %74 = load float, float* %73, align 4
  %75 = fcmp olt float %74, 0x3F43A92A40000000
  br i1 %75, label %80, label %76

76:                                               ; preds = %50
  %77 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %78 = load float, float* %77, align 4
  %79 = fcmp olt float %78, 0x3F43A92A40000000
  br i1 %79, label %80, label %99

80:                                               ; preds = %76, %50
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load float*, float** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load float*, float** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %91, i64 %93
  store float %90, float* %94, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %81

98:                                               ; preds = %81
  br label %156

99:                                               ; preds = %76
  %100 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 0
  %101 = load float, float* %100, align 4
  %102 = call float @sqrtf(float %101) #2
  %103 = fdiv float 1.000000e+00, %102
  %104 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 0
  store float %103, float* %104, align 4
  %105 = getelementptr inbounds [2 x float], [2 x float]* %12, i64 0, i64 1
  %106 = load float, float* %105, align 4
  %107 = call float @sqrtf(float %106) #2
  %108 = fdiv float 1.000000e+00, %107
  %109 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 1
  store float %108, float* %109, align 4
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %153, %99
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  %115 = load float, float* %7, align 4
  %116 = load float*, float** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = fmul float %115, %120
  %122 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  store float %121, float* %122, align 4
  %123 = load float*, float** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  store float %127, float* %128, align 4
  %129 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 0
  %130 = load float, float* %129, align 4
  %131 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %132 = load float, float* %131, align 4
  %133 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %134 = load float, float* %133, align 4
  %135 = fsub float %132, %134
  %136 = fmul float %130, %135
  %137 = load float*, float** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  store float %136, float* %140, align 4
  %141 = getelementptr inbounds [2 x float], [2 x float]* %14, i64 0, i64 1
  %142 = load float, float* %141, align 4
  %143 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 0
  %144 = load float, float* %143, align 4
  %145 = getelementptr inbounds [2 x float], [2 x float]* %15, i64 0, i64 1
  %146 = load float, float* %145, align 4
  %147 = fadd float %144, %146
  %148 = fmul float %142, %147
  %149 = load float*, float** %6, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %149, i64 %151
  store float %148, float* %152, align 4
  br label %153

153:                                              ; preds = %114
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %110

156:                                              ; preds = %98, %110
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
