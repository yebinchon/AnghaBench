; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_1_s16p_flt_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_mix_2_to_1_s16p_flt_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, float**, i32, i32, i32)* @mix_2_to_1_s16p_flt_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_2_to_1_s16p_flt_c(i32** %0, float** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca float**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store i32** %0, i32*** %6, align 8
  store float** %1, float*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32**, i32*** %6, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %11, align 8
  store i32* %22, i32** %13, align 8
  %23 = load float**, float*** %7, align 8
  %24 = getelementptr inbounds float*, float** %23, i64 0
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  store float %27, float* %14, align 4
  %28 = load float**, float*** %7, align 8
  %29 = getelementptr inbounds float*, float** %28, i64 0
  %30 = load float*, float** %29, align 8
  %31 = getelementptr inbounds float, float* %30, i64 1
  %32 = load float, float* %31, align 4
  store float %32, float* %15, align 4
  br label %33

33:                                               ; preds = %36, %5
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %111

36:                                               ; preds = %33
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %11, align 8
  %39 = load i32, i32* %37, align 4
  %40 = sitofp i32 %39 to float
  %41 = load float, float* %14, align 4
  %42 = fmul float %40, %41
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %12, align 8
  %45 = load i32, i32* %43, align 4
  %46 = sitofp i32 %45 to float
  %47 = load float, float* %15, align 4
  %48 = fmul float %46, %47
  %49 = fadd float %42, %48
  %50 = call i32 @lrintf(float %49)
  %51 = call i8* @av_clip_int16(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %13, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  %57 = load i32, i32* %55, align 4
  %58 = sitofp i32 %57 to float
  %59 = load float, float* %14, align 4
  %60 = fmul float %58, %59
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %12, align 8
  %63 = load i32, i32* %61, align 4
  %64 = sitofp i32 %63 to float
  %65 = load float, float* %15, align 4
  %66 = fmul float %64, %65
  %67 = fadd float %60, %66
  %68 = call i32 @lrintf(float %67)
  %69 = call i8* @av_clip_int16(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  %71 = load i32*, i32** %13, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %13, align 8
  store i32 %70, i32* %71, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %11, align 8
  %75 = load i32, i32* %73, align 4
  %76 = sitofp i32 %75 to float
  %77 = load float, float* %14, align 4
  %78 = fmul float %76, %77
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  %81 = load i32, i32* %79, align 4
  %82 = sitofp i32 %81 to float
  %83 = load float, float* %15, align 4
  %84 = fmul float %82, %83
  %85 = fadd float %78, %84
  %86 = call i32 @lrintf(float %85)
  %87 = call i8* @av_clip_int16(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  %93 = load i32, i32* %91, align 4
  %94 = sitofp i32 %93 to float
  %95 = load float, float* %14, align 4
  %96 = fmul float %94, %95
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %12, align 8
  %99 = load i32, i32* %97, align 4
  %100 = sitofp i32 %99 to float
  %101 = load float, float* %15, align 4
  %102 = fmul float %100, %101
  %103 = fadd float %96, %102
  %104 = call i32 @lrintf(float %103)
  %105 = call i8* @av_clip_int16(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %13, align 8
  store i32 %106, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 4
  store i32 %110, i32* %8, align 4
  br label %33

111:                                              ; preds = %33
  br label %112

112:                                              ; preds = %115, %111
  %113 = load i32, i32* %8, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %112
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* %116, align 4
  %119 = sitofp i32 %118 to float
  %120 = load float, float* %14, align 4
  %121 = fmul float %119, %120
  %122 = load i32*, i32** %12, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %12, align 8
  %124 = load i32, i32* %122, align 4
  %125 = sitofp i32 %124 to float
  %126 = load float, float* %15, align 4
  %127 = fmul float %125, %126
  %128 = fadd float %121, %127
  %129 = call i32 @lrintf(float %128)
  %130 = call i8* @av_clip_int16(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %13, align 8
  store i32 %131, i32* %132, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %8, align 4
  br label %112

136:                                              ; preds = %112
  ret void
}

declare dso_local i8* @av_clip_int16(i32) #1

declare dso_local i32 @lrintf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
