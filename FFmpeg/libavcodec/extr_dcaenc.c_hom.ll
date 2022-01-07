; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_hom.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_hom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @hom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @hom(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fdiv double %4, 1.000000e+03
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = call double @pow(double %6, double -8.000000e-01) #2
  %8 = fmul double -3.640000e+00, %7
  %9 = load double, double* %3, align 8
  %10 = fsub double %9, 3.400000e+00
  %11 = fmul double -6.000000e-01, %10
  %12 = load double, double* %3, align 8
  %13 = fsub double %12, 3.400000e+00
  %14 = fmul double %11, %13
  %15 = call double @exp(double %14) #2
  %16 = fmul double 6.800000e+00, %15
  %17 = fadd double %8, %16
  %18 = load double, double* %3, align 8
  %19 = fsub double %18, 0x4021666666666666
  %20 = fmul double -1.500000e-01, %19
  %21 = load double, double* %3, align 8
  %22 = fsub double %21, 0x4021666666666666
  %23 = fmul double %20, %22
  %24 = call double @exp(double %23) #2
  %25 = fmul double 6.000000e+00, %24
  %26 = fsub double %17, %25
  %27 = load double, double* %3, align 8
  %28 = load double, double* %3, align 8
  %29 = fmul double %27, %28
  %30 = fmul double 6.000000e-04, %29
  %31 = load double, double* %3, align 8
  %32 = load double, double* %3, align 8
  %33 = fmul double %31, %32
  %34 = fmul double %30, %33
  %35 = fsub double %26, %34
  ret double %35
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
