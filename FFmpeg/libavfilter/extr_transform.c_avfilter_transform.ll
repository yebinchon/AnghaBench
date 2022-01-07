; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_transform.c_avfilter_transform.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_transform.c_avfilter_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avfilter_transform(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, float* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32 (float, float, i32*, i32, i32, i32, i32)*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store float* %6, float** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 (float, float, i32*, i32, i32, i32, i32)* null, i32 (float, float, i32*, i32, i32, i32, i32)** %25, align 8
  %26 = load i32, i32* %18, align 4
  switch i32 %26, label %30 [
    i32 128, label %27
    i32 130, label %28
    i32 129, label %29
  ]

27:                                               ; preds = %9
  store i32 (float, float, i32*, i32, i32, i32, i32)* @interpolate_nearest, i32 (float, float, i32*, i32, i32, i32, i32)** %25, align 8
  br label %33

28:                                               ; preds = %9
  store i32 (float, float, i32*, i32, i32, i32, i32)* @interpolate_bilinear, i32 (float, float, i32*, i32, i32, i32, i32)** %25, align 8
  br label %33

29:                                               ; preds = %9
  store i32 (float, float, i32*, i32, i32, i32, i32)* @interpolate_biquadratic, i32 (float, float, i32*, i32, i32, i32, i32)** %25, align 8
  br label %33

30:                                               ; preds = %9
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %10, align 4
  br label %177

33:                                               ; preds = %29, %28, %27
  store i32 0, i32* %21, align 4
  br label %34

34:                                               ; preds = %173, %33
  %35 = load i32, i32* %21, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %176

38:                                               ; preds = %34
  store i32 0, i32* %20, align 4
  br label %39

39:                                               ; preds = %169, %38
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %172

43:                                               ; preds = %39
  %44 = load i32, i32* %20, align 4
  %45 = sitofp i32 %44 to float
  %46 = load float*, float** %17, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = fmul float %45, %48
  %50 = load i32, i32* %21, align 4
  %51 = sitofp i32 %50 to float
  %52 = load float*, float** %17, align 8
  %53 = getelementptr inbounds float, float* %52, i64 1
  %54 = load float, float* %53, align 4
  %55 = fmul float %51, %54
  %56 = fadd float %49, %55
  %57 = load float*, float** %17, align 8
  %58 = getelementptr inbounds float, float* %57, i64 2
  %59 = load float, float* %58, align 4
  %60 = fadd float %56, %59
  store float %60, float* %22, align 4
  %61 = load i32, i32* %20, align 4
  %62 = sitofp i32 %61 to float
  %63 = load float*, float** %17, align 8
  %64 = getelementptr inbounds float, float* %63, i64 3
  %65 = load float, float* %64, align 4
  %66 = fmul float %62, %65
  %67 = load i32, i32* %21, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float*, float** %17, align 8
  %70 = getelementptr inbounds float, float* %69, i64 4
  %71 = load float, float* %70, align 4
  %72 = fmul float %68, %71
  %73 = fadd float %66, %72
  %74 = load float*, float** %17, align 8
  %75 = getelementptr inbounds float, float* %74, i64 5
  %76 = load float, float* %75, align 4
  %77 = fadd float %73, %76
  store float %77, float* %23, align 4
  %78 = load i32, i32* %19, align 4
  switch i32 %78, label %151 [
    i32 131, label %79
    i32 133, label %89
    i32 132, label %109
  ]

79:                                               ; preds = %43
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %13, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %80, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %24, align 4
  br label %151

89:                                               ; preds = %43
  %90 = load float, float* %23, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %91, 1
  %93 = call float @av_clipf(float %90, i32 0, i32 %92)
  store float %93, float* %23, align 4
  %94 = load float, float* %22, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call float @av_clipf(float %94, i32 0, i32 %96)
  store float %97, float* %22, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load float, float* %23, align 4
  %100 = fptosi float %99 to i32
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load float, float* %22, align 4
  %104 = fptosi float %103 to i32
  %105 = add nsw i32 %102, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %24, align 4
  br label %151

109:                                              ; preds = %43
  %110 = load float, float* %22, align 4
  %111 = load i32, i32* %15, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call float @avpriv_mirror(float %110, i32 %112)
  store float %113, float* %22, align 4
  %114 = load float, float* %23, align 4
  %115 = load i32, i32* %16, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call float @avpriv_mirror(float %114, i32 %116)
  store float %117, float* %23, align 4
  %118 = load float, float* %22, align 4
  %119 = fcmp oge float %118, 0.000000e+00
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load float, float* %23, align 4
  %122 = fcmp oge float %121, 0.000000e+00
  br label %123

123:                                              ; preds = %120, %109
  %124 = phi i1 [ false, %109 ], [ %122, %120 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @av_assert2(i32 %125)
  %127 = load float, float* %22, align 4
  %128 = load i32, i32* %15, align 4
  %129 = sitofp i32 %128 to float
  %130 = fcmp olt float %127, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = load float, float* %23, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sitofp i32 %133 to float
  %135 = fcmp olt float %132, %134
  br label %136

136:                                              ; preds = %131, %123
  %137 = phi i1 [ false, %123 ], [ %135, %131 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @av_assert2(i32 %138)
  %140 = load i32*, i32** %11, align 8
  %141 = load float, float* %23, align 4
  %142 = fptosi float %141 to i32
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load float, float* %22, align 4
  %146 = fptosi float %145 to i32
  %147 = add nsw i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %140, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %24, align 4
  br label %151

151:                                              ; preds = %136, %43, %89, %79
  %152 = load i32 (float, float, i32*, i32, i32, i32, i32)*, i32 (float, float, i32*, i32, i32, i32, i32)** %25, align 8
  %153 = load float, float* %22, align 4
  %154 = load float, float* %23, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 %152(float %153, float %154, i32* %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %14, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %161, i64 %167
  store i32 %160, i32* %168, align 4
  br label %169

169:                                              ; preds = %151
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %39

172:                                              ; preds = %39
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %21, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %21, align 4
  br label %34

176:                                              ; preds = %34
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %176, %30
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local i32 @interpolate_nearest(float, float, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @interpolate_bilinear(float, float, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @interpolate_biquadratic(float, float, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local float @av_clipf(float, i32, i32) #1

declare dso_local float @avpriv_mirror(float, i32) #1

declare dso_local i32 @av_assert2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
