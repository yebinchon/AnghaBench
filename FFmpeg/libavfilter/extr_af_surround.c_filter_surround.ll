; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_surround.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_surround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @filter_surround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_surround(%struct.TYPE_8__* %0) #0 {
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
  %25 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to float*
  store float* %36, float** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to float*
  store float* %44, float** %5, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to float*
  store float* %52, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %171, %1
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %174

59:                                               ; preds = %53
  %60 = load float*, float** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 2, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %60, i64 %63
  %65 = load float, float* %64, align 4
  store float %65, float* %8, align 4
  %66 = load float*, float** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 2, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %66, i64 %69
  %71 = load float, float* %70, align 4
  store float %71, float* %9, align 4
  %72 = load float*, float** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %72, i64 %76
  %78 = load float, float* %77, align 4
  store float %78, float* %10, align 4
  %79 = load float*, float** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %79, i64 %83
  %85 = load float, float* %84, align 4
  store float %85, float* %11, align 4
  %86 = load float*, float** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 2, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %86, i64 %89
  %91 = load float, float* %90, align 4
  store float %91, float* %12, align 4
  %92 = load float*, float** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %92, i64 %96
  %98 = load float, float* %97, align 4
  store float %98, float* %13, align 4
  %99 = load float, float* %12, align 4
  %100 = load float, float* %13, align 4
  %101 = call float @hypotf(float %99, float %100) #4
  store float %101, float* %14, align 4
  %102 = load float, float* %13, align 4
  %103 = load float, float* %12, align 4
  %104 = call float @atan2f(float %102, float %103) #4
  store float %104, float* %15, align 4
  %105 = load float, float* %8, align 4
  %106 = load float, float* %10, align 4
  %107 = call float @hypotf(float %105, float %106) #4
  store float %107, float* %16, align 4
  %108 = load float, float* %9, align 4
  %109 = load float, float* %11, align 4
  %110 = call float @hypotf(float %108, float %109) #4
  store float %110, float* %17, align 4
  %111 = load float, float* %10, align 4
  %112 = load float, float* %8, align 4
  %113 = call float @atan2f(float %111, float %112) #4
  store float %113, float* %18, align 4
  %114 = load float, float* %11, align 4
  %115 = load float, float* %9, align 4
  %116 = call float @atan2f(float %114, float %115) #4
  store float %116, float* %19, align 4
  %117 = load float, float* %18, align 4
  %118 = load float, float* %19, align 4
  %119 = fsub float %117, %118
  %120 = call float @llvm.fabs.f32(float %119)
  store float %120, float* %20, align 4
  %121 = load float, float* %16, align 4
  %122 = load float, float* %17, align 4
  %123 = fadd float %121, %122
  store float %123, float* %21, align 4
  %124 = load float, float* %21, align 4
  %125 = fpext float %124 to double
  %126 = fcmp olt double %125, 0x3EB0C6F7A0B5ED8D
  br i1 %126, label %127, label %131

127:                                              ; preds = %59
  %128 = load float, float* %16, align 4
  %129 = load float, float* %17, align 4
  %130 = call float @FFDIFFSIGN(float %128, float %129)
  br label %137

131:                                              ; preds = %59
  %132 = load float, float* %16, align 4
  %133 = load float, float* %17, align 4
  %134 = fsub float %132, %133
  %135 = load float, float* %21, align 4
  %136 = fdiv float %134, %135
  br label %137

137:                                              ; preds = %131, %127
  %138 = phi float [ %130, %127 ], [ %136, %131 ]
  store float %138, float* %22, align 4
  %139 = load float, float* %16, align 4
  %140 = load float, float* %17, align 4
  %141 = call float @hypotf(float %139, float %140) #4
  store float %141, float* %23, align 4
  %142 = load float, float* %20, align 4
  %143 = load float, float* @M_PI, align 4
  %144 = fcmp ogt float %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load float, float* @M_PI, align 4
  %147 = fmul float 2.000000e+00, %146
  %148 = load float, float* %20, align 4
  %149 = fsub float %147, %148
  store float %149, float* %20, align 4
  br label %150

150:                                              ; preds = %145, %137
  %151 = load float, float* %22, align 4
  %152 = load float, float* %20, align 4
  %153 = call i32 @stereo_position(float %151, float %152, float* %24, float* %25)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @stereo_transform(float* %24, float* %25, i32 %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, i32)*, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, float, i32)** %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %162 = load float, float* %18, align 4
  %163 = load float, float* %19, align 4
  %164 = load float, float* %15, align 4
  %165 = load float, float* %14, align 4
  %166 = load float, float* %23, align 4
  %167 = load float, float* %24, align 4
  %168 = load float, float* %25, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 %160(%struct.TYPE_8__* %161, float %162, float %163, float %164, float %165, float %166, float %167, float %168, i32 %169)
  br label %171

171:                                              ; preds = %150
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %53

174:                                              ; preds = %53
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #1

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
