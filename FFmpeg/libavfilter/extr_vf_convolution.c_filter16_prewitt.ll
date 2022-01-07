; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_prewitt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_prewitt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter16_prewitt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter16_prewitt(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
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
  %25 = load i32*, i32** %11, align 8
  store i32* %25, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %26

26:                                               ; preds = %169, %10
  %27 = load i32, i32* %22, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %172

30:                                               ; preds = %26
  %31 = load i32**, i32*** %16, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %22, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = call i32 @AV_RN16A(i32* %37)
  %39 = mul nsw i32 %38, -1
  %40 = load i32**, i32*** %16, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %22, align 4
  %44 = mul nsw i32 2, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = call i32 @AV_RN16A(i32* %46)
  %48 = mul nsw i32 %47, -1
  %49 = add nsw i32 %39, %48
  %50 = load i32**, i32*** %16, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %22, align 4
  %54 = mul nsw i32 2, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32 @AV_RN16A(i32* %56)
  %58 = mul nsw i32 %57, -1
  %59 = add nsw i32 %49, %58
  %60 = load i32**, i32*** %16, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 6
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %22, align 4
  %64 = mul nsw i32 2, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @AV_RN16A(i32* %66)
  %68 = mul nsw i32 %67, 1
  %69 = add nsw i32 %59, %68
  %70 = load i32**, i32*** %16, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 7
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %22, align 4
  %74 = mul nsw i32 2, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = call i32 @AV_RN16A(i32* %76)
  %78 = mul nsw i32 %77, 1
  %79 = add nsw i32 %69, %78
  %80 = load i32**, i32*** %16, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %22, align 4
  %84 = mul nsw i32 2, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = call i32 @AV_RN16A(i32* %86)
  %88 = mul nsw i32 %87, 1
  %89 = add nsw i32 %79, %88
  %90 = sitofp i32 %89 to float
  store float %90, float* %23, align 4
  %91 = load i32**, i32*** %16, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %22, align 4
  %95 = mul nsw i32 2, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = call i32 @AV_RN16A(i32* %97)
  %99 = mul nsw i32 %98, -1
  %100 = load i32**, i32*** %16, align 8
  %101 = getelementptr inbounds i32*, i32** %100, i64 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %22, align 4
  %104 = mul nsw i32 2, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = call i32 @AV_RN16A(i32* %106)
  %108 = mul nsw i32 %107, 1
  %109 = add nsw i32 %99, %108
  %110 = load i32**, i32*** %16, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = mul nsw i32 2, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = call i32 @AV_RN16A(i32* %116)
  %118 = mul nsw i32 %117, -1
  %119 = add nsw i32 %109, %118
  %120 = load i32**, i32*** %16, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 5
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %22, align 4
  %124 = mul nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = call i32 @AV_RN16A(i32* %126)
  %128 = mul nsw i32 %127, 1
  %129 = add nsw i32 %119, %128
  %130 = load i32**, i32*** %16, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 6
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %22, align 4
  %134 = mul nsw i32 2, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  %137 = call i32 @AV_RN16A(i32* %136)
  %138 = mul nsw i32 %137, -1
  %139 = add nsw i32 %129, %138
  %140 = load i32**, i32*** %16, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 8
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %22, align 4
  %144 = mul nsw i32 2, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = call i32 @AV_RN16A(i32* %146)
  %148 = mul nsw i32 %147, 1
  %149 = add nsw i32 %139, %148
  %150 = sitofp i32 %149 to float
  store float %150, float* %24, align 4
  %151 = load float, float* %23, align 4
  %152 = load float, float* %23, align 4
  %153 = fmul float %151, %152
  %154 = load float, float* %24, align 4
  %155 = load float, float* %24, align 4
  %156 = fmul float %154, %155
  %157 = fadd float %153, %156
  %158 = call float @sqrtf(float %157) #3
  %159 = load float, float* %13, align 4
  %160 = fmul float %158, %159
  %161 = load float, float* %14, align 4
  %162 = fadd float %160, %161
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @av_clip(float %162, i32 0, i32 %163)
  %165 = load i32*, i32** %21, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %30
  %170 = load i32, i32* %22, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %22, align 4
  br label %26

172:                                              ; preds = %26
  ret void
}

declare dso_local i32 @AV_RN16A(i32*) #1

declare dso_local i32 @av_clip(float, i32, i32) #1

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
