; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_isDone.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_isDone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, double*)* @isDone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isDone(i32 %0, i32* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store double* %2, double** %7, align 8
  %12 = load double*, double** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %12, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fabs.f64(double %18)
  store double %19, double* %10, align 8
  store double %19, double* %9, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %47, %3
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load double*, double** %7, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %25, i64 %31
  %33 = load double, double* %32, align 8
  %34 = call double @llvm.fabs.f64(double %33)
  store double %34, double* %11, align 8
  %35 = load double, double* %11, align 8
  %36 = load double, double* %9, align 8
  %37 = fcmp olt double %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load double, double* %11, align 8
  store double %39, double* %9, align 8
  br label %40

40:                                               ; preds = %38, %24
  %41 = load double, double* %11, align 8
  %42 = load double, double* %10, align 8
  %43 = fcmp ogt double %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load double, double* %11, align 8
  store double %45, double* %10, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %20

50:                                               ; preds = %20
  %51 = load double, double* %10, align 8
  %52 = load double, double* %9, align 8
  %53 = fsub double %51, %52
  %54 = load double, double* %10, align 8
  %55 = fdiv double %53, %54
  %56 = fcmp olt double %55, 1.000000e-04
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %4, align 4
  br label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
