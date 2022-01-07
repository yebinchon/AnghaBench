; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_a_weighting.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avf_showcqt.c_a_weighting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8*, double)* @a_weighting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @a_weighting(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %6 = load double, double* %4, align 8
  %7 = load double, double* %4, align 8
  %8 = fmul double %6, %7
  %9 = load double, double* %4, align 8
  %10 = fmul double %8, %9
  %11 = load double, double* %4, align 8
  %12 = fmul double %10, %11
  %13 = fmul double 1.488400e+08, %12
  store double %13, double* %5, align 8
  %14 = load double, double* %4, align 8
  %15 = load double, double* %4, align 8
  %16 = fmul double %14, %15
  %17 = fadd double %16, 0x407A85C28F5C28F7
  %18 = load double, double* %4, align 8
  %19 = load double, double* %4, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %20, 1.488400e+08
  %22 = fmul double %17, %21
  %23 = load double, double* %4, align 8
  %24 = load double, double* %4, align 8
  %25 = fmul double %23, %24
  %26 = fadd double %25, 0x40C6A7A51EB851EC
  %27 = load double, double* %4, align 8
  %28 = load double, double* %4, align 8
  %29 = fmul double %27, %28
  %30 = fadd double %29, 0x41209DE0D1EB851E
  %31 = fmul double %26, %30
  %32 = call double @sqrt(double %31) #2
  %33 = fmul double %22, %32
  %34 = load double, double* %5, align 8
  %35 = fdiv double %34, %33
  store double %35, double* %5, align 8
  %36 = load double, double* %5, align 8
  ret double %36
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
