; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_math.c_double_eq_rel.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/test/unit/extr_math.c_double_eq_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double)* @double_eq_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @double_eq_rel(double %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %11 = load double, double* %6, align 8
  %12 = load double, double* %7, align 8
  %13 = fsub double %11, %12
  %14 = call double @llvm.fabs.f64(double %13)
  %15 = load double, double* %9, align 8
  %16 = fcmp olt double %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %44

18:                                               ; preds = %4
  %19 = load double, double* %7, align 8
  %20 = call double @llvm.fabs.f64(double %19)
  %21 = load double, double* %6, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = fcmp ogt double %20, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load double, double* %6, align 8
  %26 = load double, double* %7, align 8
  %27 = fsub double %25, %26
  %28 = load double, double* %7, align 8
  %29 = fdiv double %27, %28
  %30 = call double @llvm.fabs.f64(double %29)
  br label %38

31:                                               ; preds = %18
  %32 = load double, double* %6, align 8
  %33 = load double, double* %7, align 8
  %34 = fsub double %32, %33
  %35 = load double, double* %6, align 8
  %36 = fdiv double %34, %35
  %37 = call double @llvm.fabs.f64(double %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi double [ %30, %24 ], [ %37, %31 ]
  store double %39, double* %10, align 8
  %40 = load double, double* %10, align 8
  %41 = load double, double* %8, align 8
  %42 = fcmp olt double %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %38, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
