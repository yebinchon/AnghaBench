; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_fov_from_dfov.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_v360.c_fov_from_dfov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, i32 }

@M_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float, float)* @fov_from_dfov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fov_from_dfov(%struct.TYPE_3__* %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call double @FFMIN(i32 %11, float 3.590000e+02)
  %13 = fmul double 5.000000e-01, %12
  %14 = load double, double* @M_PI, align 8
  %15 = fmul double %13, %14
  %16 = fdiv double %15, 1.800000e+02
  %17 = call float @tanf(double %16)
  store float %17, float* %7, align 4
  %18 = load float, float* %5, align 4
  %19 = load float, float* %6, align 4
  %20 = call float @hypotf(float %18, float %19) #3
  store float %20, float* %8, align 4
  %21 = load float, float* %7, align 4
  %22 = load float, float* %5, align 4
  %23 = fmul float %21, %22
  %24 = load float, float* %8, align 4
  %25 = call float @atan2f(float %23, float %24) #3
  %26 = fmul float %25, 3.600000e+02
  %27 = fpext float %26 to double
  %28 = load double, double* @M_PI, align 8
  %29 = fdiv double %27, %28
  %30 = fptrunc double %29 to float
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store float %30, float* %32, align 4
  %33 = load float, float* %7, align 4
  %34 = load float, float* %6, align 4
  %35 = fmul float %33, %34
  %36 = load float, float* %8, align 4
  %37 = call float @atan2f(float %35, float %36) #3
  %38 = fmul float %37, 3.600000e+02
  %39 = fpext float %38 to double
  %40 = load double, double* @M_PI, align 8
  %41 = fdiv double %39, %40
  %42 = fptrunc double %41 to float
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store float %42, float* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load float, float* %46, align 4
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fadd float %52, 3.600000e+02
  store float %53, float* %51, align 4
  br label %54

54:                                               ; preds = %49, %3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 4
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = fadd float %62, 3.600000e+02
  store float %63, float* %61, align 4
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local float @tanf(double) #1

declare dso_local double @FFMIN(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @hypotf(float, float) #2

; Function Attrs: nounwind
declare dso_local float @atan2f(float, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
