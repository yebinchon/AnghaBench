; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_stereo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_surround.c_filter_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, i32)*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @filter_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_stereo(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
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
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to float*
  store float* %32, float** %4, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to float*
  store float* %40, float** %5, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %146, %1
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %149

47:                                               ; preds = %41
  %48 = load float*, float** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %48, i64 %51
  %53 = load float, float* %52, align 4
  store float %53, float* %7, align 4
  %54 = load float*, float** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 2, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %54, i64 %57
  %59 = load float, float* %58, align 4
  store float %59, float* %8, align 4
  %60 = load float*, float** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 2, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %60, i64 %64
  %66 = load float, float* %65, align 4
  store float %66, float* %9, align 4
  %67 = load float*, float** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %67, i64 %71
  %73 = load float, float* %72, align 4
  store float %73, float* %10, align 4
  %74 = load float, float* %9, align 4
  %75 = load float, float* %10, align 4
  %76 = fadd float %74, %75
  %77 = load float, float* %7, align 4
  %78 = load float, float* %8, align 4
  %79 = fadd float %77, %78
  %80 = call float @atan2f(float %76, float %79) #4
  store float %80, float* %11, align 4
  %81 = load float, float* %7, align 4
  %82 = load float, float* %9, align 4
  %83 = call float @hypotf(float %81, float %82) #4
  store float %83, float* %12, align 4
  %84 = load float, float* %8, align 4
  %85 = load float, float* %10, align 4
  %86 = call float @hypotf(float %84, float %85) #4
  store float %86, float* %13, align 4
  %87 = load float, float* %9, align 4
  %88 = load float, float* %7, align 4
  %89 = call float @atan2f(float %87, float %88) #4
  store float %89, float* %14, align 4
  %90 = load float, float* %10, align 4
  %91 = load float, float* %8, align 4
  %92 = call float @atan2f(float %90, float %91) #4
  store float %92, float* %15, align 4
  %93 = load float, float* %14, align 4
  %94 = load float, float* %15, align 4
  %95 = fsub float %93, %94
  %96 = call float @llvm.fabs.f32(float %95)
  store float %96, float* %16, align 4
  %97 = load float, float* %12, align 4
  %98 = load float, float* %13, align 4
  %99 = fadd float %97, %98
  store float %99, float* %17, align 4
  %100 = load float, float* %17, align 4
  %101 = fpext float %100 to double
  %102 = fcmp olt double %101, 0x3EB0C6F7A0B5ED8D
  br i1 %102, label %103, label %107

103:                                              ; preds = %47
  %104 = load float, float* %12, align 4
  %105 = load float, float* %13, align 4
  %106 = call float @FFDIFFSIGN(float %104, float %105)
  br label %113

107:                                              ; preds = %47
  %108 = load float, float* %12, align 4
  %109 = load float, float* %13, align 4
  %110 = fsub float %108, %109
  %111 = load float, float* %17, align 4
  %112 = fdiv float %110, %111
  br label %113

113:                                              ; preds = %107, %103
  %114 = phi float [ %106, %103 ], [ %112, %107 ]
  store float %114, float* %18, align 4
  %115 = load float, float* %12, align 4
  %116 = load float, float* %13, align 4
  %117 = call float @hypotf(float %115, float %116) #4
  store float %117, float* %19, align 4
  %118 = load float, float* %16, align 4
  %119 = load float, float* @M_PI, align 4
  %120 = fcmp ogt float %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = load float, float* @M_PI, align 4
  %123 = fmul float 2.000000e+00, %122
  %124 = load float, float* %16, align 4
  %125 = fsub float %123, %124
  store float %125, float* %16, align 4
  br label %126

126:                                              ; preds = %121, %113
  %127 = load float, float* %18, align 4
  %128 = load float, float* %16, align 4
  %129 = call i32 @stereo_position(float %127, float %128, float* %20, float* %21)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @stereo_transform(float* %20, float* %21, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32 (%struct.TYPE_8__*, float, float, float, float, float, float, i32)*, i32 (%struct.TYPE_8__*, float, float, float, float, float, float, i32)** %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = load float, float* %14, align 4
  %139 = load float, float* %15, align 4
  %140 = load float, float* %11, align 4
  %141 = load float, float* %19, align 4
  %142 = load float, float* %20, align 4
  %143 = load float, float* %21, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 %136(%struct.TYPE_8__* %137, float %138, float %139, float %140, float %141, float %142, float %143, i32 %144)
  br label %146

146:                                              ; preds = %126
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %41

149:                                              ; preds = %41
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
