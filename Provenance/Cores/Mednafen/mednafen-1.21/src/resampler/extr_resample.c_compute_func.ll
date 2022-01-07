; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_compute_func.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/resampler/extr_resample.c_compute_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FuncDef = type { float, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (float, %struct.FuncDef*)* @compute_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @compute_func(float %0, %struct.FuncDef* %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.FuncDef*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca [4 x double], align 16
  %8 = alloca i32, align 4
  store float %0, float* %3, align 4
  store %struct.FuncDef* %1, %struct.FuncDef** %4, align 8
  %9 = load float, float* %3, align 4
  %10 = load %struct.FuncDef*, %struct.FuncDef** %4, align 8
  %11 = getelementptr inbounds %struct.FuncDef, %struct.FuncDef* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fmul float %9, %12
  store float %13, float* %5, align 4
  %14 = load float, float* %5, align 4
  %15 = call i64 @floor(float %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load float, float* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sitofp i32 %18 to float
  %20 = fsub float %17, %19
  store float %20, float* %6, align 4
  %21 = load float, float* %6, align 4
  %22 = fpext float %21 to double
  %23 = fmul double 0xBFC555555567A895, %22
  %24 = load float, float* %6, align 4
  %25 = load float, float* %6, align 4
  %26 = fmul float %24, %25
  %27 = load float, float* %6, align 4
  %28 = fmul float %26, %27
  %29 = fpext float %28 to double
  %30 = fmul double 0x3FC555555567A895, %29
  %31 = fadd double %23, %30
  %32 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  store double %31, double* %32, align 8
  %33 = load float, float* %6, align 4
  %34 = fpext float %33 to double
  %35 = load float, float* %6, align 4
  %36 = load float, float* %6, align 4
  %37 = fmul float %35, %36
  %38 = fpext float %37 to double
  %39 = fmul double 5.000000e-01, %38
  %40 = fadd double %34, %39
  %41 = load float, float* %6, align 4
  %42 = load float, float* %6, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %6, align 4
  %45 = fmul float %43, %44
  %46 = fpext float %45 to double
  %47 = fmul double 5.000000e-01, %46
  %48 = fsub double %40, %47
  %49 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 2
  store double %48, double* %49, align 16
  %50 = load float, float* %6, align 4
  %51 = fpext float %50 to double
  %52 = fmul double 0xBFD55555554C2BB5, %51
  %53 = load float, float* %6, align 4
  %54 = load float, float* %6, align 4
  %55 = fmul float %53, %54
  %56 = fpext float %55 to double
  %57 = fmul double 5.000000e-01, %56
  %58 = fadd double %52, %57
  %59 = load float, float* %6, align 4
  %60 = load float, float* %6, align 4
  %61 = fmul float %59, %60
  %62 = load float, float* %6, align 4
  %63 = fmul float %61, %62
  %64 = fpext float %63 to double
  %65 = fmul double 0x3FC555555567A895, %64
  %66 = fsub double %58, %65
  %67 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  store double %66, double* %67, align 16
  %68 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  %69 = load double, double* %68, align 8
  %70 = fsub double 1.000000e+00, %69
  %71 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 2
  %72 = load double, double* %71, align 16
  %73 = fsub double %70, %72
  %74 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %75 = load double, double* %74, align 16
  %76 = fsub double %73, %75
  %77 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 1
  store double %76, double* %77, align 8
  %78 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 0
  %79 = load double, double* %78, align 16
  %80 = load %struct.FuncDef*, %struct.FuncDef** %4, align 8
  %81 = getelementptr inbounds %struct.FuncDef, %struct.FuncDef* %80, i32 0, i32 1
  %82 = load double*, double** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  %86 = load double, double* %85, align 8
  %87 = fmul double %79, %86
  %88 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 1
  %89 = load double, double* %88, align 8
  %90 = load %struct.FuncDef*, %struct.FuncDef** %4, align 8
  %91 = getelementptr inbounds %struct.FuncDef, %struct.FuncDef* %90, i32 0, i32 1
  %92 = load double*, double** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  %97 = load double, double* %96, align 8
  %98 = fmul double %89, %97
  %99 = fadd double %87, %98
  %100 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 2
  %101 = load double, double* %100, align 16
  %102 = load %struct.FuncDef*, %struct.FuncDef** %4, align 8
  %103 = getelementptr inbounds %struct.FuncDef, %struct.FuncDef* %102, i32 0, i32 1
  %104 = load double*, double** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %104, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %101, %109
  %111 = fadd double %99, %110
  %112 = getelementptr inbounds [4 x double], [4 x double]* %7, i64 0, i64 3
  %113 = load double, double* %112, align 8
  %114 = load %struct.FuncDef*, %struct.FuncDef** %4, align 8
  %115 = getelementptr inbounds %struct.FuncDef, %struct.FuncDef* %114, i32 0, i32 1
  %116 = load double*, double** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double, double* %116, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fmul double %113, %121
  %123 = fadd double %111, %122
  ret double %123
}

declare dso_local i64 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
