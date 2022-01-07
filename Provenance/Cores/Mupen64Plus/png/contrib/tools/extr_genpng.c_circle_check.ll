; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_circle_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_genpng.c_circle_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, double, double)* @circle_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @circle_check(double %0, double %1, double %2, double %3, double %4, double %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store double %0, double* %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store double %5, double* %13, align 8
  %18 = load double, double* %8, align 8
  %19 = load double, double* %9, align 8
  %20 = load double, double* %10, align 8
  %21 = load double, double* %11, align 8
  %22 = load double, double* %12, align 8
  %23 = load double, double* %13, align 8
  %24 = call i64 @square_check(double %18, double %19, double %20, double %21, double %22, double %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %6
  %27 = load double, double* %10, align 8
  %28 = load double, double* %12, align 8
  %29 = fadd double %27, %28
  %30 = fdiv double %29, 2.000000e+00
  store double %30, double* %14, align 8
  %31 = load double, double* %11, align 8
  %32 = load double, double* %13, align 8
  %33 = fadd double %31, %32
  %34 = fdiv double %33, 2.000000e+00
  store double %34, double* %15, align 8
  %35 = load double, double* %10, align 8
  %36 = load double, double* %12, align 8
  %37 = fsub double %35, %36
  store double %37, double* %16, align 8
  %38 = load double, double* %11, align 8
  %39 = load double, double* %13, align 8
  %40 = fsub double %38, %39
  store double %40, double* %17, align 8
  %41 = load double, double* %8, align 8
  %42 = load double, double* %14, align 8
  %43 = fsub double %41, %42
  %44 = load double, double* %16, align 8
  %45 = fdiv double %43, %44
  store double %45, double* %8, align 8
  %46 = load double, double* %9, align 8
  %47 = load double, double* %15, align 8
  %48 = fsub double %46, %47
  %49 = load double, double* %17, align 8
  %50 = fdiv double %48, %49
  store double %50, double* %9, align 8
  %51 = load double, double* %8, align 8
  %52 = load double, double* %8, align 8
  %53 = fmul double %51, %52
  %54 = load double, double* %9, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  %57 = fadd double %53, %56
  %58 = fcmp olt double %57, 2.500000e-01
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %61

60:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i64 @square_check(double, double, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
