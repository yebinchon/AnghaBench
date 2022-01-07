; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_print_results.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_print_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"PSNR Y:%.3f  U:%.3f  V:%.3f  All:%.3f | \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SSIM Y:%.5f U:%.5f V:%.5f All:%.5f (%.5f)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*, i32, i32, i32)* @print_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_results(i32* %0, double* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  %17 = load i32, i32* %10, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call double @ssd_to_psnr(i32 %13, i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sdiv i32 %27, 4
  %29 = call double @ssd_to_psnr(i32 %22, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 4
  %39 = call double @ssd_to_psnr(i32 %32, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %55, 3
  %57 = sdiv i32 %56, 2
  %58 = call double @ssd_to_psnr(i32 %50, i32 %57)
  %59 = call i32 (i8*, double, double, double, double, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), double %19, double %29, double %39, double %58)
  %60 = load double*, double** %7, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  %62 = load double, double* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %62, %64
  %66 = load double*, double** %7, align 8
  %67 = getelementptr inbounds double, double* %66, i64 1
  %68 = load double, double* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %68, %70
  %72 = load double*, double** %7, align 8
  %73 = getelementptr inbounds double, double* %72, i64 2
  %74 = load double, double* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %74, %76
  %78 = load double*, double** %7, align 8
  %79 = getelementptr inbounds double, double* %78, i64 0
  %80 = load double, double* %79, align 8
  %81 = fmul double %80, 4.000000e+00
  %82 = load double*, double** %7, align 8
  %83 = getelementptr inbounds double, double* %82, i64 1
  %84 = load double, double* %83, align 8
  %85 = fadd double %81, %84
  %86 = load double*, double** %7, align 8
  %87 = getelementptr inbounds double, double* %86, i64 2
  %88 = load double, double* %87, align 8
  %89 = fadd double %85, %88
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %90, 6
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %89, %92
  %94 = load double*, double** %7, align 8
  %95 = getelementptr inbounds double, double* %94, i64 0
  %96 = load double, double* %95, align 8
  %97 = fmul double %96, 4.000000e+00
  %98 = load double*, double** %7, align 8
  %99 = getelementptr inbounds double, double* %98, i64 1
  %100 = load double, double* %99, align 8
  %101 = fadd double %97, %100
  %102 = load double*, double** %7, align 8
  %103 = getelementptr inbounds double, double* %102, i64 2
  %104 = load double, double* %103, align 8
  %105 = fadd double %101, %104
  %106 = load i32, i32* %8, align 4
  %107 = mul nsw i32 %106, 6
  %108 = call double @ssim_db(double %105, i32 %107)
  %109 = call i32 (i8*, double, double, double, double, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), double %65, double %71, double %77, double %93, double %108)
  ret void
}

declare dso_local i32 @printf(i8*, double, double, double, double, ...) #1

declare dso_local double @ssd_to_psnr(i32, i32) #1

declare dso_local double @ssim_db(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
