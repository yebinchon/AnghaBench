; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_MultiplyMatrix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours.c_MultiplyMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double, double*, double*, double*, [3 x double]*)* @MultiplyMatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MultiplyMatrix(double %0, double %1, double %2, double* %3, double* %4, double* %5, [3 x double]* %6) #0 {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [3 x double]*, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double* %3, double** %11, align 8
  store double* %4, double** %12, align 8
  store double* %5, double** %13, align 8
  store [3 x double]* %6, [3 x double]** %14, align 8
  %15 = load [3 x double]*, [3 x double]** %14, align 8
  %16 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 0
  %17 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 0
  %18 = load double, double* %17, align 8
  %19 = load double, double* %8, align 8
  %20 = fmul double %18, %19
  %21 = load [3 x double]*, [3 x double]** %14, align 8
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0
  %23 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0, i64 1
  %24 = load double, double* %23, align 8
  %25 = load double, double* %9, align 8
  %26 = fmul double %24, %25
  %27 = fadd double %20, %26
  %28 = load [3 x double]*, [3 x double]** %14, align 8
  %29 = getelementptr inbounds [3 x double], [3 x double]* %28, i64 0
  %30 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %31 = load double, double* %30, align 8
  %32 = load double, double* %10, align 8
  %33 = fmul double %31, %32
  %34 = fadd double %27, %33
  %35 = load double*, double** %11, align 8
  store double %34, double* %35, align 8
  %36 = load [3 x double]*, [3 x double]** %14, align 8
  %37 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 1
  %38 = getelementptr inbounds [3 x double], [3 x double]* %37, i64 0, i64 0
  %39 = load double, double* %38, align 8
  %40 = load double, double* %8, align 8
  %41 = fmul double %39, %40
  %42 = load [3 x double]*, [3 x double]** %14, align 8
  %43 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 1
  %44 = getelementptr inbounds [3 x double], [3 x double]* %43, i64 0, i64 1
  %45 = load double, double* %44, align 8
  %46 = load double, double* %9, align 8
  %47 = fmul double %45, %46
  %48 = fadd double %41, %47
  %49 = load [3 x double]*, [3 x double]** %14, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 1
  %51 = getelementptr inbounds [3 x double], [3 x double]* %50, i64 0, i64 2
  %52 = load double, double* %51, align 8
  %53 = load double, double* %10, align 8
  %54 = fmul double %52, %53
  %55 = fadd double %48, %54
  %56 = load double*, double** %12, align 8
  store double %55, double* %56, align 8
  %57 = load [3 x double]*, [3 x double]** %14, align 8
  %58 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 2
  %59 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 0, i64 0
  %60 = load double, double* %59, align 8
  %61 = load double, double* %8, align 8
  %62 = fmul double %60, %61
  %63 = load [3 x double]*, [3 x double]** %14, align 8
  %64 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 2
  %65 = getelementptr inbounds [3 x double], [3 x double]* %64, i64 0, i64 1
  %66 = load double, double* %65, align 8
  %67 = load double, double* %9, align 8
  %68 = fmul double %66, %67
  %69 = fadd double %62, %68
  %70 = load [3 x double]*, [3 x double]** %14, align 8
  %71 = getelementptr inbounds [3 x double], [3 x double]* %70, i64 2
  %72 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 0, i64 2
  %73 = load double, double* %72, align 8
  %74 = load double, double* %10, align 8
  %75 = fmul double %73, %74
  %76 = fadd double %69, %75
  %77 = load double*, double** %13, align 8
  store double %76, double* %77, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
