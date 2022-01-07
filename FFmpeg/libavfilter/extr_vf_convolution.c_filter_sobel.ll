; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_sobel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_sobel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter_sobel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_sobel(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store float %2, float* %13, align 4
  store float %3, float* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32** %5, i32*** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %32 = load i32**, i32*** %16, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %21, align 8
  %35 = load i32**, i32*** %16, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %22, align 8
  %38 = load i32**, i32*** %16, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %23, align 8
  %41 = load i32**, i32*** %16, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 3
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %24, align 8
  %44 = load i32**, i32*** %16, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 5
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %25, align 8
  %47 = load i32**, i32*** %16, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 6
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %26, align 8
  %50 = load i32**, i32*** %16, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 7
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %27, align 8
  %53 = load i32**, i32*** %16, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 8
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %28, align 8
  store i32 0, i32* %29, align 4
  br label %56

56:                                               ; preds = %162, %10
  %57 = load i32, i32* %29, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %165

60:                                               ; preds = %56
  %61 = load i32*, i32** %21, align 8
  %62 = load i32, i32* %29, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, -1
  %67 = load i32*, i32** %22, align 8
  %68 = load i32, i32* %29, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, -2
  %73 = add nsw i32 %66, %72
  %74 = load i32*, i32** %23, align 8
  %75 = load i32, i32* %29, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, -1
  %80 = add nsw i32 %73, %79
  %81 = load i32*, i32** %26, align 8
  %82 = load i32, i32* %29, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 1
  %87 = add nsw i32 %80, %86
  %88 = load i32*, i32** %27, align 8
  %89 = load i32, i32* %29, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %87, %93
  %95 = load i32*, i32** %28, align 8
  %96 = load i32, i32* %29, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 1
  %101 = add nsw i32 %94, %100
  %102 = sitofp i32 %101 to float
  store float %102, float* %30, align 4
  %103 = load i32*, i32** %21, align 8
  %104 = load i32, i32* %29, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, -1
  %109 = load i32*, i32** %23, align 8
  %110 = load i32, i32* %29, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 1
  %115 = add nsw i32 %108, %114
  %116 = load i32*, i32** %24, align 8
  %117 = load i32, i32* %29, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %120, -2
  %122 = add nsw i32 %115, %121
  %123 = load i32*, i32** %25, align 8
  %124 = load i32, i32* %29, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 2
  %129 = add nsw i32 %122, %128
  %130 = load i32*, i32** %26, align 8
  %131 = load i32, i32* %29, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %134, -1
  %136 = add nsw i32 %129, %135
  %137 = load i32*, i32** %28, align 8
  %138 = load i32, i32* %29, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %141, 1
  %143 = add nsw i32 %136, %142
  %144 = sitofp i32 %143 to float
  store float %144, float* %31, align 4
  %145 = load float, float* %30, align 4
  %146 = load float, float* %30, align 4
  %147 = fmul float %145, %146
  %148 = load float, float* %31, align 4
  %149 = load float, float* %31, align 4
  %150 = fmul float %148, %149
  %151 = fadd float %147, %150
  %152 = call float @sqrtf(float %151) #3
  %153 = load float, float* %13, align 4
  %154 = fmul float %152, %153
  %155 = load float, float* %14, align 4
  %156 = fadd float %154, %155
  %157 = call i32 @av_clip_uint8(float %156)
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %29, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %60
  %163 = load i32, i32* %29, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %29, align 4
  br label %56

165:                                              ; preds = %56
  ret void
}

declare dso_local i32 @av_clip_uint8(float) #1

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
