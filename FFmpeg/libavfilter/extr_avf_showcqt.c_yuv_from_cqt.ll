; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_yuv_from_cqt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_yuv_from_cqt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { float, float, float }
%struct.TYPE_7__ = type { float, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, float, i32, [3 x float]*, float*)* @yuv_from_cqt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv_from_cqt(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, float %2, i32 %3, [3 x float]* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x float]*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store [3 x float]* %4, [3 x float]** %11, align 8
  store float* %5, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %172, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %175

21:                                               ; preds = %17
  %22 = load float*, float** %12, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  %24 = load float, float* %23, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load float, float* %29, align 4
  %31 = fmul float %24, %30
  %32 = load float*, float** %12, align 8
  %33 = getelementptr inbounds float, float* %32, i64 3
  %34 = load float, float* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fmul float %34, %40
  %42 = fadd float %31, %41
  %43 = call i32 @FFMIN(float 1.000000e+00, float %42)
  %44 = load float, float* %9, align 4
  %45 = call float @calculate_gamma(i32 %43, float %44)
  store float %45, float* %14, align 4
  %46 = load float*, float** %12, align 8
  %47 = getelementptr inbounds float, float* %46, i64 1
  %48 = load float, float* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 4
  %55 = fmul float %48, %54
  %56 = load float*, float** %12, align 8
  %57 = getelementptr inbounds float, float* %56, i64 4
  %58 = load float, float* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  %65 = fmul float %58, %64
  %66 = fadd float %55, %65
  %67 = call i32 @FFMIN(float 1.000000e+00, float %66)
  %68 = load float, float* %9, align 4
  %69 = call float @calculate_gamma(i32 %67, float %68)
  store float %69, float* %15, align 4
  %70 = load float*, float** %12, align 8
  %71 = getelementptr inbounds float, float* %70, i64 2
  %72 = load float, float* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load float, float* %77, align 4
  %79 = fmul float %72, %78
  %80 = load float*, float** %12, align 8
  %81 = getelementptr inbounds float, float* %80, i64 5
  %82 = load float, float* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = fmul float %82, %88
  %90 = fadd float %79, %89
  %91 = call i32 @FFMIN(float 1.000000e+00, float %90)
  %92 = load float, float* %9, align 4
  %93 = call float @calculate_gamma(i32 %91, float %92)
  store float %93, float* %16, align 4
  %94 = load [3 x float]*, [3 x float]** %11, align 8
  %95 = getelementptr inbounds [3 x float], [3 x float]* %94, i64 0
  %96 = getelementptr inbounds [3 x float], [3 x float]* %95, i64 0, i64 0
  %97 = load float, float* %96, align 4
  %98 = load float, float* %14, align 4
  %99 = fmul float %97, %98
  %100 = load [3 x float]*, [3 x float]** %11, align 8
  %101 = getelementptr inbounds [3 x float], [3 x float]* %100, i64 0
  %102 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 0, i64 1
  %103 = load float, float* %102, align 4
  %104 = load float, float* %15, align 4
  %105 = fmul float %103, %104
  %106 = fadd float %99, %105
  %107 = load [3 x float]*, [3 x float]** %11, align 8
  %108 = getelementptr inbounds [3 x float], [3 x float]* %107, i64 0
  %109 = getelementptr inbounds [3 x float], [3 x float]* %108, i64 0, i64 2
  %110 = load float, float* %109, align 4
  %111 = load float, float* %16, align 4
  %112 = fmul float %110, %111
  %113 = fadd float %106, %112
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store float %113, float* %119, align 4
  %120 = load [3 x float]*, [3 x float]** %11, align 8
  %121 = getelementptr inbounds [3 x float], [3 x float]* %120, i64 1
  %122 = getelementptr inbounds [3 x float], [3 x float]* %121, i64 0, i64 0
  %123 = load float, float* %122, align 4
  %124 = load float, float* %14, align 4
  %125 = fmul float %123, %124
  %126 = load [3 x float]*, [3 x float]** %11, align 8
  %127 = getelementptr inbounds [3 x float], [3 x float]* %126, i64 1
  %128 = getelementptr inbounds [3 x float], [3 x float]* %127, i64 0, i64 1
  %129 = load float, float* %128, align 4
  %130 = load float, float* %15, align 4
  %131 = fmul float %129, %130
  %132 = fadd float %125, %131
  %133 = load [3 x float]*, [3 x float]** %11, align 8
  %134 = getelementptr inbounds [3 x float], [3 x float]* %133, i64 1
  %135 = getelementptr inbounds [3 x float], [3 x float]* %134, i64 0, i64 2
  %136 = load float, float* %135, align 4
  %137 = load float, float* %16, align 4
  %138 = fmul float %136, %137
  %139 = fadd float %132, %138
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store float %139, float* %145, align 4
  %146 = load [3 x float]*, [3 x float]** %11, align 8
  %147 = getelementptr inbounds [3 x float], [3 x float]* %146, i64 2
  %148 = getelementptr inbounds [3 x float], [3 x float]* %147, i64 0, i64 0
  %149 = load float, float* %148, align 4
  %150 = load float, float* %14, align 4
  %151 = fmul float %149, %150
  %152 = load [3 x float]*, [3 x float]** %11, align 8
  %153 = getelementptr inbounds [3 x float], [3 x float]* %152, i64 2
  %154 = getelementptr inbounds [3 x float], [3 x float]* %153, i64 0, i64 1
  %155 = load float, float* %154, align 4
  %156 = load float, float* %15, align 4
  %157 = fmul float %155, %156
  %158 = fadd float %151, %157
  %159 = load [3 x float]*, [3 x float]** %11, align 8
  %160 = getelementptr inbounds [3 x float], [3 x float]* %159, i64 2
  %161 = getelementptr inbounds [3 x float], [3 x float]* %160, i64 0, i64 2
  %162 = load float, float* %161, align 4
  %163 = load float, float* %16, align 4
  %164 = fmul float %162, %163
  %165 = fadd float %158, %164
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  store float %165, float* %171, align 4
  br label %172

172:                                              ; preds = %21
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %17

175:                                              ; preds = %17
  ret void
}

declare dso_local float @calculate_gamma(i32, float) #1

declare dso_local i32 @FFMIN(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
