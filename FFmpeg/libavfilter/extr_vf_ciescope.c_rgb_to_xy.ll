; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_rgb_to_xy.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_rgb_to_xy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double, double*, double*, double*, [3 x double]*)* @rgb_to_xy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_to_xy(double %0, double %1, double %2, double* %3, double* %4, double* %5, [3 x double]* %6) #0 {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [3 x double]*, align 8
  %15 = alloca double, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store [3 x double]* %6, [3 x double]** %14, align 8
  %16 = load [3 x double]*, [3 x double]** %14, align 8
  %17 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0
  %18 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0, i64 0
  %19 = load double, double* %18, align 8
  %20 = load double, double* %8, align 8
  %21 = fmul double %19, %20
  %22 = load [3 x double]*, [3 x double]** %14, align 8
  %23 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0
  %24 = getelementptr inbounds [3 x double], [3 x double]* %23, i64 0, i64 1
  %25 = load double, double* %24, align 8
  %26 = load double, double* %9, align 8
  %27 = fmul double %25, %26
  %28 = fadd double %21, %27
  %29 = load [3 x double]*, [3 x double]** %14, align 8
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0
  %31 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %32 = load double, double* %31, align 8
  %33 = load double, double* %10, align 8
  %34 = fmul double %32, %33
  %35 = fadd double %28, %34
  %36 = load double*, double** %11, align 8
  store double %35, double* %36, align 8
  %37 = load [3 x double]*, [3 x double]** %14, align 8
  %38 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 1
  %39 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 0, i64 0
  %40 = load double, double* %39, align 8
  %41 = load double, double* %8, align 8
  %42 = fmul double %40, %41
  %43 = load [3 x double]*, [3 x double]** %14, align 8
  %44 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 1
  %45 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 0, i64 1
  %46 = load double, double* %45, align 8
  %47 = load double, double* %9, align 8
  %48 = fmul double %46, %47
  %49 = fadd double %42, %48
  %50 = load [3 x double]*, [3 x double]** %14, align 8
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 1
  %52 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 0, i64 2
  %53 = load double, double* %52, align 8
  %54 = load double, double* %10, align 8
  %55 = fmul double %53, %54
  %56 = fadd double %49, %55
  %57 = load double*, double** %12, align 8
  store double %56, double* %57, align 8
  %58 = load [3 x double]*, [3 x double]** %14, align 8
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 2
  %60 = getelementptr inbounds [3 x double], [3 x double]* %59, i64 0, i64 0
  %61 = load double, double* %60, align 8
  %62 = load double, double* %8, align 8
  %63 = fmul double %61, %62
  %64 = load [3 x double]*, [3 x double]** %14, align 8
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 2
  %66 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 0, i64 1
  %67 = load double, double* %66, align 8
  %68 = load double, double* %9, align 8
  %69 = fmul double %67, %68
  %70 = fadd double %63, %69
  %71 = load [3 x double]*, [3 x double]** %14, align 8
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 2
  %73 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0, i64 2
  %74 = load double, double* %73, align 8
  %75 = load double, double* %10, align 8
  %76 = fmul double %74, %75
  %77 = fadd double %70, %76
  %78 = load double*, double** %13, align 8
  store double %77, double* %78, align 8
  %79 = load double*, double** %11, align 8
  %80 = load double, double* %79, align 8
  %81 = load double*, double** %12, align 8
  %82 = load double, double* %81, align 8
  %83 = fadd double %80, %82
  %84 = load double*, double** %13, align 8
  %85 = load double, double* %84, align 8
  %86 = fadd double %83, %85
  store double %86, double* %15, align 8
  %87 = load double*, double** %11, align 8
  %88 = load double, double* %87, align 8
  %89 = load double, double* %15, align 8
  %90 = fdiv double %88, %89
  %91 = load double*, double** %11, align 8
  store double %90, double* %91, align 8
  %92 = load double*, double** %12, align 8
  %93 = load double, double* %92, align 8
  %94 = load double, double* %15, align 8
  %95 = fdiv double %93, %94
  %96 = load double*, double** %12, align 8
  store double %95, double* %96, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
