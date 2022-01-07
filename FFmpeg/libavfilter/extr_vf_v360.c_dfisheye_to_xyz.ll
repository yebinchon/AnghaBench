; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_dfisheye_to_xyz.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_dfisheye_to_xyz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float }

@M_PI_2 = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, float*)* @dfisheye_to_xyz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfisheye_to_xyz(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store float* %5, float** %12, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fadd float 1.000000e+00, %27
  store float %28, float* %13, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 2.000000e+00
  store float %31, float* %14, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sitofp i32 %32 to float
  store float %33, float* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sitofp i32 %34 to float
  %36 = load float, float* %14, align 4
  %37 = fcmp oge float %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load i32, i32* %8, align 4
  %40 = sitofp i32 %39 to float
  %41 = load float, float* %14, align 4
  %42 = fsub float %40, %41
  br label %46

43:                                               ; preds = %6
  %44 = load i32, i32* %8, align 4
  %45 = sitofp i32 %44 to float
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi float [ %42, %38 ], [ %45, %43 ]
  %48 = fptosi float %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sitofp i32 %49 to float
  %51 = load float, float* %14, align 4
  %52 = fcmp oge float %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, float -1.000000e+00, float 1.000000e+00
  store float %54, float* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = sitofp i32 %55 to float
  %57 = fmul float 2.000000e+00, %56
  %58 = load float, float* %14, align 4
  %59 = fdiv float %57, %58
  %60 = fsub float %59, 1.000000e+00
  %61 = load float, float* %13, align 4
  %62 = fmul float %60, %61
  store float %62, float* %18, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float 2.000000e+00, %64
  %66 = load float, float* %15, align 4
  %67 = fdiv float %65, %66
  %68 = fsub float %67, 1.000000e+00
  %69 = load float, float* %13, align 4
  %70 = fmul float %68, %69
  store float %70, float* %19, align 4
  %71 = load float, float* %18, align 4
  %72 = load float, float* %19, align 4
  %73 = call float @hypotf(float %71, float %72) #3
  store float %73, float* %20, align 4
  %74 = load float, float* %20, align 4
  %75 = fcmp ogt float %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %46
  %77 = load float, float* %20, align 4
  br label %79

78:                                               ; preds = %46
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi float [ %77, %76 ], [ 1.000000e+00, %78 ]
  store float %80, float* %21, align 4
  %81 = load float, float* %17, align 4
  %82 = load float, float* @M_PI_2, align 4
  %83 = fmul float %81, %82
  %84 = load float, float* %20, align 4
  %85 = fsub float 1.000000e+00, %84
  %86 = fmul float %83, %85
  store float %86, float* %22, align 4
  %87 = load float, float* %22, align 4
  %88 = call float @sinf(float %87) #3
  store float %88, float* %23, align 4
  %89 = load float, float* %22, align 4
  %90 = call float @cosf(float %89) #3
  store float %90, float* %24, align 4
  %91 = load float, float* %24, align 4
  %92 = load float, float* %17, align 4
  %93 = fmul float %91, %92
  %94 = load float, float* %18, align 4
  %95 = fneg float %94
  %96 = fmul float %93, %95
  %97 = load float, float* %21, align 4
  %98 = fdiv float %96, %97
  %99 = load float*, float** %12, align 8
  %100 = getelementptr inbounds float, float* %99, i64 0
  store float %98, float* %100, align 4
  %101 = load float, float* %24, align 4
  %102 = load float, float* %19, align 4
  %103 = fneg float %102
  %104 = fmul float %101, %103
  %105 = load float, float* %21, align 4
  %106 = fdiv float %104, %105
  %107 = load float*, float** %12, align 8
  %108 = getelementptr inbounds float, float* %107, i64 1
  store float %106, float* %108, align 4
  %109 = load float, float* %23, align 4
  %110 = load float*, float** %12, align 8
  %111 = getelementptr inbounds float, float* %110, i64 2
  store float %109, float* %111, align 4
  %112 = load float*, float** %12, align 8
  %113 = call i32 @normalize_vector(float* %112)
  ret void
}

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

declare dso_local i32 @normalize_vector(float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
