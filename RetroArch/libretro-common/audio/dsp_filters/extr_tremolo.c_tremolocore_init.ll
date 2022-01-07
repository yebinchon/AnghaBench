; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolocore_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolocore_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tremolo_core = type { i32, double*, i64 }

@M_PI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tremolo_core*, float, i32, float)* @tremolocore_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tremolocore_init(%struct.tremolo_core* %0, float %1, i32 %2, float %3) #0 {
  %5 = alloca %struct.tremolo_core*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  store %struct.tremolo_core* %0, %struct.tremolo_core** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %12 = load float, float* %6, align 4
  %13 = fpext float %12 to double
  %14 = fdiv double %13, 2.000000e+00
  %15 = fsub double 1.000000e+00, %14
  store double %15, double* %9, align 8
  %16 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %17 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to float
  %20 = load float, float* %8, align 4
  %21 = fdiv float %19, %20
  %22 = fptosi float %21 to i32
  %23 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %24 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %26 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call double* @malloc(i32 %30)
  %32 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %33 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %32, i32 0, i32 1
  store double* %31, double** %33, align 8
  %34 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %35 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %34, i32 0, i32 1
  %36 = load double*, double** %35, align 8
  %37 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %38 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(double* %36, i32 0, i32 %42)
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %80, %4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %47 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load float, float* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = uitofp i32 %52 to float
  %54 = fmul float %51, %53
  %55 = load i32, i32* %7, align 4
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %54, %56
  %58 = fpext float %57 to double
  store double %58, double* %11, align 8
  %59 = load i32, i32* @M_PI, align 4
  %60 = mul nsw i32 %59, 2
  %61 = load double, double* %11, align 8
  %62 = fadd double %61, 2.500000e-01
  %63 = call i32 @fmod(double %62, double 1.000000e+00)
  %64 = mul nsw i32 %60, %63
  %65 = call double @sin(i32 %64)
  store double %65, double* %11, align 8
  %66 = load double, double* %11, align 8
  %67 = load double, double* %9, align 8
  %68 = call i32 @fabs(double %67)
  %69 = sub nsw i32 1, %68
  %70 = sitofp i32 %69 to double
  %71 = fmul double %66, %70
  %72 = load double, double* %9, align 8
  %73 = fadd double %71, %72
  %74 = load %struct.tremolo_core*, %struct.tremolo_core** %5, align 8
  %75 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %74, i32 0, i32 1
  %76 = load double*, double** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double %73, double* %79, align 8
  br label %80

80:                                               ; preds = %50
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %44

83:                                               ; preds = %44
  ret void
}

declare dso_local double* @malloc(i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @fmod(double, double) #1

declare dso_local i32 @fabs(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
