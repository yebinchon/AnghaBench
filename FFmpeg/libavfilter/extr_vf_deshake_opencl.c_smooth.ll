; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_smooth.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_deshake_opencl.c_smooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_8__*, float*, i32, float, i32*)* @smooth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @smooth(%struct.TYPE_8__* %0, float* %1, i32 %2, float %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_7__, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store i32* %4, i32** %10, align 8
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @start_end_for(%struct.TYPE_8__* %28, i32 %29)
  %31 = bitcast %struct.TYPE_7__* %18 to i64*
  store i64 %30, i64* %31, align 4
  store float 4.000000e+01, float* %19, align 4
  store float 2.000000e+00, float* %20, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %5
  %37 = load float, float* %19, align 4
  %38 = fsub float %37, 5.000000e-01
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to float
  %43 = fmul float %38, %42
  %44 = fadd float %43, 5.000000e-01
  store float %44, float* %21, align 4
  br label %121

45:                                               ; preds = %5
  %46 = load float*, float** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load float, float* %19, align 4
  %49 = call i32 @make_gauss_kernel(float* %46, i32 %47, float %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %52

52:                                               ; preds = %71, %45
  %53 = load i32, i32* %22, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %22, align 4
  %61 = call i32 @ringbuf_float_at(%struct.TYPE_8__* %58, i32* %59, float* %14, i32 %60)
  %62 = load float, float* %14, align 4
  %63 = load float*, float** %7, align 8
  %64 = load i32, i32* %23, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = load float, float* %11, align 4
  %70 = fadd float %69, %68
  store float %70, float* %11, align 4
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %22, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %23, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %23, align 4
  br label %52

76:                                               ; preds = %52
  %77 = load float*, float** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load float, float* %20, align 4
  %80 = call i32 @make_gauss_kernel(float* %77, i32 %78, float %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %83

83:                                               ; preds = %102, %76
  %84 = load i32, i32* %24, align 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %24, align 4
  %92 = call i32 @ringbuf_float_at(%struct.TYPE_8__* %89, i32* %90, float* %14, i32 %91)
  %93 = load float, float* %14, align 4
  %94 = load float*, float** %7, align 8
  %95 = load i32, i32* %25, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fmul float %93, %98
  %100 = load float, float* %12, align 4
  %101 = fadd float %100, %99
  store float %101, float* %12, align 4
  br label %102

102:                                              ; preds = %88
  %103 = load i32, i32* %24, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %25, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %25, align 4
  br label %83

107:                                              ; preds = %83
  %108 = load float, float* %11, align 4
  %109 = load float, float* %12, align 4
  %110 = fsub float %108, %109
  %111 = call float @llvm.fabs.f32(float %110)
  store float %111, float* %15, align 4
  %112 = load float, float* %15, align 4
  %113 = load float, float* %9, align 4
  %114 = fdiv float %112, %113
  store float %114, float* %16, align 4
  %115 = load float, float* %16, align 4
  %116 = fsub float 1.000000e+00, %115
  store float %116, float* %17, align 4
  %117 = load float, float* %19, align 4
  %118 = load float, float* %17, align 4
  %119 = call float @powf(float %118, i32 40)
  %120 = fmul float %117, %119
  store float %120, float* %21, align 4
  br label %121

121:                                              ; preds = %107, %36
  %122 = load float*, float** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load float, float* %21, align 4
  %125 = call i32 @make_gauss_kernel(float* %122, i32 %123, float %124)
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %128

128:                                              ; preds = %147, %121
  %129 = load i32, i32* %26, align 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = load i32, i32* %26, align 4
  %137 = call i32 @ringbuf_float_at(%struct.TYPE_8__* %134, i32* %135, float* %14, i32 %136)
  %138 = load float, float* %14, align 4
  %139 = load float*, float** %7, align 8
  %140 = load i32, i32* %27, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fmul float %138, %143
  %145 = load float, float* %13, align 4
  %146 = fadd float %145, %144
  store float %146, float* %13, align 4
  br label %147

147:                                              ; preds = %133
  %148 = load i32, i32* %26, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %27, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %27, align 4
  br label %128

152:                                              ; preds = %128
  %153 = load float, float* %13, align 4
  ret float %153
}

declare dso_local i64 @start_end_for(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @make_gauss_kernel(float*, i32, float) #1

declare dso_local i32 @ringbuf_float_at(%struct.TYPE_8__*, i32*, float*, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #2

declare dso_local float @powf(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
