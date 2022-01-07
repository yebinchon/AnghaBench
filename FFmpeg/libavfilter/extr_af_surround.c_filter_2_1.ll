; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_2_1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_2_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @filter_2_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_2_1(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %3, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to float*
  store float* %35, float** %4, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to float*
  store float* %43, float** %5, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to float*
  store float* %51, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %172, %1
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %175

58:                                               ; preds = %52
  %59 = load float*, float** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 2, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %59, i64 %62
  %64 = load float, float* %63, align 4
  store float %64, float* %8, align 4
  %65 = load float*, float** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 2, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %65, i64 %68
  %70 = load float, float* %69, align 4
  store float %70, float* %9, align 4
  %71 = load float*, float** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 2, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %71, i64 %75
  %77 = load float, float* %76, align 4
  store float %77, float* %10, align 4
  %78 = load float*, float** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %78, i64 %82
  %84 = load float, float* %83, align 4
  store float %84, float* %11, align 4
  %85 = load float*, float** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 2, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %85, i64 %88
  %90 = load float, float* %89, align 4
  store float %90, float* %12, align 4
  %91 = load float*, float** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %91, i64 %95
  %97 = load float, float* %96, align 4
  store float %97, float* %13, align 4
  %98 = load float, float* %10, align 4
  %99 = load float, float* %11, align 4
  %100 = fadd float %98, %99
  %101 = load float, float* %8, align 4
  %102 = load float, float* %9, align 4
  %103 = fadd float %101, %102
  %104 = call float @atan2f(float %100, float %103) #4
  store float %104, float* %14, align 4
  %105 = load float, float* %8, align 4
  %106 = load float, float* %10, align 4
  %107 = call float @hypotf(float %105, float %106) #4
  store float %107, float* %15, align 4
  %108 = load float, float* %9, align 4
  %109 = load float, float* %11, align 4
  %110 = call float @hypotf(float %108, float %109) #4
  store float %110, float* %16, align 4
  %111 = load float, float* %10, align 4
  %112 = load float, float* %8, align 4
  %113 = call float @atan2f(float %111, float %112) #4
  store float %113, float* %17, align 4
  %114 = load float, float* %11, align 4
  %115 = load float, float* %9, align 4
  %116 = call float @atan2f(float %114, float %115) #4
  store float %116, float* %18, align 4
  %117 = load float, float* %17, align 4
  %118 = load float, float* %18, align 4
  %119 = fsub float %117, %118
  %120 = call float @llvm.fabs.f32(float %119)
  store float %120, float* %19, align 4
  %121 = load float, float* %15, align 4
  %122 = load float, float* %16, align 4
  %123 = fadd float %121, %122
  store float %123, float* %20, align 4
  %124 = load float, float* %20, align 4
  %125 = fpext float %124 to double
  %126 = fcmp olt double %125, 0x3EB0C6F7A0B5ED8D
  br i1 %126, label %127, label %131

127:                                              ; preds = %58
  %128 = load float, float* %15, align 4
  %129 = load float, float* %16, align 4
  %130 = call float @FFDIFFSIGN(float %128, float %129)
  br label %137

131:                                              ; preds = %58
  %132 = load float, float* %15, align 4
  %133 = load float, float* %16, align 4
  %134 = fsub float %132, %133
  %135 = load float, float* %20, align 4
  %136 = fdiv float %134, %135
  br label %137

137:                                              ; preds = %131, %127
  %138 = phi float [ %130, %127 ], [ %136, %131 ]
  store float %138, float* %21, align 4
  %139 = load float, float* %15, align 4
  %140 = load float, float* %16, align 4
  %141 = call float @hypotf(float %139, float %140) #4
  store float %141, float* %22, align 4
  %142 = load float, float* %19, align 4
  %143 = load float, float* @M_PI, align 4
  %144 = fcmp ogt float %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load float, float* @M_PI, align 4
  %147 = fmul float 2.000000e+00, %146
  %148 = load float, float* %19, align 4
  %149 = fsub float %147, %148
  store float %149, float* %19, align 4
  br label %150

150:                                              ; preds = %145, %137
  %151 = load float, float* %21, align 4
  %152 = load float, float* %19, align 4
  %153 = call i32 @stereo_position(float %151, float %152, float* %23, float* %24)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @stereo_transform(float* %23, float* %24, i32 %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, i32)*, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, float, i32)** %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %162 = load float, float* %17, align 4
  %163 = load float, float* %18, align 4
  %164 = load float, float* %14, align 4
  %165 = load float, float* %22, align 4
  %166 = load float, float* %12, align 4
  %167 = load float, float* %13, align 4
  %168 = load float, float* %23, align 4
  %169 = load float, float* %24, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 %160(%struct.TYPE_8__* %161, float %162, float %163, float %164, float %165, float %166, float %167, float %168, float %169, i32 %170)
  br label %172

172:                                              ; preds = %150
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %52

175:                                              ; preds = %52
  ret void
}

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @FFDIFFSIGN(float, float) #3

declare dso_local i32 @stereo_position(float, float, float*, float*) #3

declare dso_local i32 @stereo_transform(float*, float*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
