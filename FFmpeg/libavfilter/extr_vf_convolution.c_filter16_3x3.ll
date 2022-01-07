; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_3x3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter16_3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter16_3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter16_3x3(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %23 = alloca i32, align 4
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
  %24 = load i32*, i32** %11, align 8
  store i32* %24, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %25

25:                                               ; preds = %161, %10
  %26 = load i32, i32* %22, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %164

29:                                               ; preds = %25
  %30 = load i32**, i32*** %16, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %22, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = call i32 @AV_RN16A(i32* %36)
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32**, i32*** %16, align 8
  %43 = getelementptr inbounds i32*, i32** %42, i64 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %22, align 4
  %46 = mul nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = call i32 @AV_RN16A(i32* %48)
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = add nsw i32 %41, %53
  %55 = load i32**, i32*** %16, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %22, align 4
  %59 = mul nsw i32 2, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @AV_RN16A(i32* %61)
  %63 = load i32*, i32** %15, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %62, %65
  %67 = add nsw i32 %54, %66
  %68 = load i32**, i32*** %16, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %22, align 4
  %72 = mul nsw i32 2, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = call i32 @AV_RN16A(i32* %74)
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = add nsw i32 %67, %79
  %81 = load i32**, i32*** %16, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 4
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %22, align 4
  %85 = mul nsw i32 2, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = call i32 @AV_RN16A(i32* %87)
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = add nsw i32 %80, %92
  %94 = load i32**, i32*** %16, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %22, align 4
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = call i32 @AV_RN16A(i32* %100)
  %102 = load i32*, i32** %15, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = add nsw i32 %93, %105
  %107 = load i32**, i32*** %16, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %22, align 4
  %111 = mul nsw i32 2, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = call i32 @AV_RN16A(i32* %113)
  %115 = load i32*, i32** %15, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %106, %118
  %120 = load i32**, i32*** %16, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 7
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %22, align 4
  %124 = mul nsw i32 2, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = call i32 @AV_RN16A(i32* %126)
  %128 = load i32*, i32** %15, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = add nsw i32 %119, %131
  %133 = load i32**, i32*** %16, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 8
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %22, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  %140 = call i32 @AV_RN16A(i32* %139)
  %141 = load i32*, i32** %15, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 8
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = add nsw i32 %132, %144
  store i32 %145, i32* %23, align 4
  %146 = load i32, i32* %23, align 4
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %13, align 4
  %149 = fmul float %147, %148
  %150 = load float, float* %14, align 4
  %151 = fadd float %149, %150
  %152 = fadd float %151, 5.000000e-01
  %153 = fptosi float %152 to i32
  store i32 %153, i32* %23, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @av_clip(i32 %154, i32 0, i32 %155)
  %157 = load i32*, i32** %21, align 8
  %158 = load i32, i32* %22, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %156, i32* %160, align 4
  br label %161

161:                                              ; preds = %29
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %22, align 4
  br label %25

164:                                              ; preds = %25
  ret void
}

declare dso_local i32 @AV_RN16A(i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
