; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_kaiser_beta.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_sinc.c_kaiser_beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kaiser_beta.coefs = internal constant [10 x [4 x float]] [[4 x float] [float 0xBE07501C80000000, float 0x3EE5920A20000000, float 0x3FBBD76840000000, float 0xBFECBB13A0000000], [4 x float] [float 0xBE07B371A0000000, float 0x3EE58BFD20000000, float 0x3FBBD7B200000000, float 0xBFECB80A40000000], [4 x float] [float 0xBE11310CE0000000, float 0x3EE59A43A0000000, float 0x3FBBD83340000000, float 0xBFECBAB1A0000000], [4 x float] [float 0xBDF91D04C0000000, float 0x3EE5D2D860000000, float 0x3FBBD45200000000, float 0xBFEC896F20000000], [4 x float] [float 0x3E4168DD20000000, float 0x3EDD4A0980000000, float 0x3FBBF08380000000, float 0xBFECDEDCA0000000], [4 x float] [float 0x3E44717080000000, float 0x3EDE80FA80000000, float 0x3FBBE7DEA0000000, float 0xBFEC735140000000], [4 x float] [float 0xBE382AC140000000, float 0x3EEC25CE60000000, float 0x3FBBC01880000000, float 0xBFEB68D180000000], [4 x float] [float 0xBE7AC08BC0000000, float 0x3F0A9999E0000000, float 0x3FBAA614E0000000, float 0xBFE5D53840000000], [4 x float] [float 0x3E858A1400000000, float 0xBF0EB46900000000, float 0x3FBE5C8E80000000, float 0xBFF3F8CA80000000], [4 x float] [float 0xBE844B11A0000000, float 0x3F10AE28E0000000, float 0x3FBB4123C0000000, float 0xBFE9D86760000000]], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @kaiser_beta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @kaiser_beta(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %11 = load float, float* %4, align 4
  %12 = fcmp oge float %11, 6.000000e+01
  br i1 %12, label %13, label %87

13:                                               ; preds = %2
  %14 = load float, float* %5, align 4
  %15 = fdiv float %14, 0x3F40624DE0000000
  %16 = call float @logf(float %15) #3
  %17 = call float @logf(float 2.000000e+00) #3
  %18 = fdiv float %16, %17
  store float %18, float* %6, align 4
  %19 = load float, float* %6, align 4
  %20 = fptosi float %19 to i32
  %21 = call i64 @FF_ARRAY_ELEMS(float** bitcast ([10 x [4 x float]]* @kaiser_beta.coefs to float**))
  %22 = sub nsw i64 %21, 1
  %23 = call i64 @av_clip(i32 %20, i32 0, i64 %22)
  %24 = getelementptr inbounds [10 x [4 x float]], [10 x [4 x float]]* @kaiser_beta.coefs, i64 0, i64 %23
  %25 = getelementptr inbounds [4 x float], [4 x float]* %24, i64 0, i64 0
  store float* %25, float** %7, align 8
  %26 = load float, float* %6, align 4
  %27 = fptosi float %26 to i32
  %28 = add nsw i32 1, %27
  %29 = call i64 @FF_ARRAY_ELEMS(float** bitcast ([10 x [4 x float]]* @kaiser_beta.coefs to float**))
  %30 = sub nsw i64 %29, 1
  %31 = call i64 @av_clip(i32 %28, i32 0, i64 %30)
  %32 = getelementptr inbounds [10 x [4 x float]], [10 x [4 x float]]* @kaiser_beta.coefs, i64 0, i64 %31
  %33 = getelementptr inbounds [4 x float], [4 x float]* %32, i64 0, i64 0
  store float* %33, float** %8, align 8
  %34 = load float*, float** %7, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  %37 = load float, float* %4, align 4
  %38 = fmul float %36, %37
  %39 = load float*, float** %7, align 8
  %40 = getelementptr inbounds float, float* %39, i64 1
  %41 = load float, float* %40, align 4
  %42 = fadd float %38, %41
  %43 = load float, float* %4, align 4
  %44 = fmul float %42, %43
  %45 = load float*, float** %7, align 8
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = load float, float* %46, align 4
  %48 = fadd float %44, %47
  %49 = load float, float* %4, align 4
  %50 = fmul float %48, %49
  %51 = load float*, float** %7, align 8
  %52 = getelementptr inbounds float, float* %51, i64 3
  %53 = load float, float* %52, align 4
  %54 = fadd float %50, %53
  store float %54, float* %9, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  %57 = load float, float* %56, align 4
  %58 = load float, float* %4, align 4
  %59 = fmul float %57, %58
  %60 = load float*, float** %8, align 8
  %61 = getelementptr inbounds float, float* %60, i64 1
  %62 = load float, float* %61, align 4
  %63 = fadd float %59, %62
  %64 = load float, float* %4, align 4
  %65 = fmul float %63, %64
  %66 = load float*, float** %8, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = fadd float %65, %68
  %70 = load float, float* %4, align 4
  %71 = fmul float %69, %70
  %72 = load float*, float** %8, align 8
  %73 = getelementptr inbounds float, float* %72, i64 3
  %74 = load float, float* %73, align 4
  %75 = fadd float %71, %74
  store float %75, float* %10, align 4
  %76 = load float, float* %9, align 4
  %77 = load float, float* %10, align 4
  %78 = load float, float* %9, align 4
  %79 = fsub float %77, %78
  %80 = load float, float* %6, align 4
  %81 = load float, float* %6, align 4
  %82 = fptosi float %81 to i32
  %83 = sitofp i32 %82 to float
  %84 = fsub float %80, %83
  %85 = fmul float %79, %84
  %86 = fadd float %76, %85
  store float %86, float* %3, align 4
  br label %107

87:                                               ; preds = %2
  %88 = load float, float* %4, align 4
  %89 = fcmp ogt float %88, 5.000000e+01
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load float, float* %4, align 4
  %92 = fsub float %91, 0x4021666660000000
  %93 = fmul float 0x3FBC361140000000, %92
  store float %93, float* %3, align 4
  br label %107

94:                                               ; preds = %87
  %95 = load float, float* %4, align 4
  %96 = fcmp ogt float %95, 0x4034F5C280000000
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load float, float* %4, align 4
  %99 = fsub float %98, 0x4034F5C280000000
  %100 = call float @powf(float %99, float 0x3FD99999A0000000) #3
  %101 = fmul float 0x3FE2B18540000000, %100
  %102 = load float, float* %4, align 4
  %103 = fsub float %102, 0x4034F5C280000000
  %104 = fmul float 0x3FB4302B40000000, %103
  %105 = fadd float %101, %104
  store float %105, float* %3, align 4
  br label %107

106:                                              ; preds = %94
  store float 0.000000e+00, float* %3, align 4
  br label %107

107:                                              ; preds = %106, %97, %90, %13
  %108 = load float, float* %3, align 4
  ret float %108
}

; Function Attrs: nounwind
declare dso_local float @logf(float) #1

declare dso_local i64 @av_clip(i32, i32, i64) #2

declare dso_local i64 @FF_ARRAY_ELEMS(float**) #2

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
