; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_3x3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_convolution.c_filter_3x3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, float, float, i32*, i32**, i32, i32, i32, i32)* @filter_3x3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_3x3(i32* %0, i32 %1, float %2, float %3, i32* %4, i32** %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  %45 = getelementptr inbounds i32*, i32** %44, i64 4
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %25, align 8
  %47 = load i32**, i32*** %16, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 5
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %26, align 8
  %50 = load i32**, i32*** %16, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 6
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %27, align 8
  %53 = load i32**, i32*** %16, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 7
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %28, align 8
  %56 = load i32**, i32*** %16, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 8
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %29, align 8
  store i32 0, i32* %30, align 4
  br label %59

59:                                               ; preds = %167, %10
  %60 = load i32, i32* %30, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %170

63:                                               ; preds = %59
  %64 = load i32*, i32** %21, align 8
  %65 = load i32, i32* %30, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load i32*, i32** %22, align 8
  %74 = load i32, i32* %30, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = add nsw i32 %72, %81
  %83 = load i32*, i32** %23, align 8
  %84 = load i32, i32* %30, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = add nsw i32 %82, %91
  %93 = load i32*, i32** %24, align 8
  %94 = load i32, i32* %30, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = add nsw i32 %92, %101
  %103 = load i32*, i32** %25, align 8
  %104 = load i32, i32* %30, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = add nsw i32 %102, %111
  %113 = load i32*, i32** %26, align 8
  %114 = load i32, i32* %30, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %117, %120
  %122 = add nsw i32 %112, %121
  %123 = load i32*, i32** %27, align 8
  %124 = load i32, i32* %30, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %127, %130
  %132 = add nsw i32 %122, %131
  %133 = load i32*, i32** %28, align 8
  %134 = load i32, i32* %30, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 7
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %137, %140
  %142 = add nsw i32 %132, %141
  %143 = load i32*, i32** %29, align 8
  %144 = load i32, i32* %30, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %15, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 8
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = add nsw i32 %142, %151
  store i32 %152, i32* %31, align 4
  %153 = load i32, i32* %31, align 4
  %154 = sitofp i32 %153 to float
  %155 = load float, float* %13, align 4
  %156 = fmul float %154, %155
  %157 = load float, float* %14, align 4
  %158 = fadd float %156, %157
  %159 = fadd float %158, 5.000000e-01
  %160 = fptosi float %159 to i32
  store i32 %160, i32* %31, align 4
  %161 = load i32, i32* %31, align 4
  %162 = call i32 @av_clip_uint8(i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %30, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %63
  %168 = load i32, i32* %30, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %30, align 4
  br label %59

170:                                              ; preds = %59
  ret void
}

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
