; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_anoisesrc.c_pink_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_asrc_anoisesrc.c_pink_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double*)* @pink_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @pink_filter(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  store double %0, double* %3, align 8
  store double* %1, double** %4, align 8
  %6 = load double*, double** %4, align 8
  %7 = getelementptr inbounds double, double* %6, i64 0
  %8 = load double, double* %7, align 8
  %9 = fmul double 0x3FEFF6A93F290ABB, %8
  %10 = load double, double* %3, align 8
  %11 = fmul double %10, 5.551790e-02
  %12 = fadd double %9, %11
  %13 = load double*, double** %4, align 8
  %14 = getelementptr inbounds double, double* %13, i64 0
  store double %12, double* %14, align 8
  %15 = load double*, double** %4, align 8
  %16 = getelementptr inbounds double, double* %15, i64 1
  %17 = load double, double* %16, align 8
  %18 = fmul double 0x3FEFC947064ECE9A, %17
  %19 = load double, double* %3, align 8
  %20 = fmul double %19, 7.507590e-02
  %21 = fadd double %18, %20
  %22 = load double*, double** %4, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  store double %21, double* %23, align 8
  %24 = load double*, double** %4, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  %26 = load double, double* %25, align 8
  %27 = fmul double 0x3FEF020C49BA5E35, %26
  %28 = load double, double* %3, align 8
  %29 = fmul double %28, 1.538520e-01
  %30 = fadd double %27, %29
  %31 = load double*, double** %4, align 8
  %32 = getelementptr inbounds double, double* %31, i64 2
  store double %30, double* %32, align 8
  %33 = load double*, double** %4, align 8
  %34 = getelementptr inbounds double, double* %33, i64 3
  %35 = load double, double* %34, align 8
  %36 = fmul double 8.665000e-01, %35
  %37 = load double, double* %3, align 8
  %38 = fmul double %37, 0x3FD3DEFEFE784083
  %39 = fadd double %36, %38
  %40 = load double*, double** %4, align 8
  %41 = getelementptr inbounds double, double* %40, i64 3
  store double %39, double* %41, align 8
  %42 = load double*, double** %4, align 8
  %43 = getelementptr inbounds double, double* %42, i64 4
  %44 = load double, double* %43, align 8
  %45 = fmul double 5.500000e-01, %44
  %46 = load double, double* %3, align 8
  %47 = fmul double %46, 0x3FE10DF1C5AA999C
  %48 = fadd double %45, %47
  %49 = load double*, double** %4, align 8
  %50 = getelementptr inbounds double, double* %49, i64 4
  store double %48, double* %50, align 8
  %51 = load double*, double** %4, align 8
  %52 = getelementptr inbounds double, double* %51, i64 5
  %53 = load double, double* %52, align 8
  %54 = fmul double -7.616000e-01, %53
  %55 = load double, double* %3, align 8
  %56 = fmul double %55, 1.689800e-02
  %57 = fsub double %54, %56
  %58 = load double*, double** %4, align 8
  %59 = getelementptr inbounds double, double* %58, i64 5
  store double %57, double* %59, align 8
  %60 = load double*, double** %4, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  %62 = load double, double* %61, align 8
  %63 = load double*, double** %4, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = fadd double %62, %65
  %67 = load double*, double** %4, align 8
  %68 = getelementptr inbounds double, double* %67, i64 2
  %69 = load double, double* %68, align 8
  %70 = fadd double %66, %69
  %71 = load double*, double** %4, align 8
  %72 = getelementptr inbounds double, double* %71, i64 3
  %73 = load double, double* %72, align 8
  %74 = fadd double %70, %73
  %75 = load double*, double** %4, align 8
  %76 = getelementptr inbounds double, double* %75, i64 4
  %77 = load double, double* %76, align 8
  %78 = fadd double %74, %77
  %79 = load double*, double** %4, align 8
  %80 = getelementptr inbounds double, double* %79, i64 5
  %81 = load double, double* %80, align 8
  %82 = fadd double %78, %81
  %83 = load double*, double** %4, align 8
  %84 = getelementptr inbounds double, double* %83, i64 6
  %85 = load double, double* %84, align 8
  %86 = fadd double %82, %85
  %87 = load double, double* %3, align 8
  %88 = fmul double %87, 5.362000e-01
  %89 = fadd double %86, %88
  store double %89, double* %5, align 8
  %90 = load double, double* %3, align 8
  %91 = fmul double %90, 1.159260e-01
  %92 = load double*, double** %4, align 8
  %93 = getelementptr inbounds double, double* %92, i64 6
  store double %91, double* %93, align 8
  %94 = load double, double* %5, align 8
  %95 = fmul double %94, 1.100000e-01
  ret double %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
