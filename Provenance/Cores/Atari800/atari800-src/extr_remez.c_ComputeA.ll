; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_ComputeA.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_remez.c_ComputeA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Pi2 = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32, double*, double*, double*)* @ComputeA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @ComputeA(double %0, i32 %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store double %0, double* %6, align 8
  store i32 %1, i32* %7, align 4
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %14, align 8
  %16 = load double, double* @Pi2, align 8
  %17 = load double, double* %6, align 8
  %18 = fmul double %16, %17
  %19 = call double @cos(double %18) #3
  store double %19, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %61, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %20
  %25 = load double, double* %12, align 8
  %26 = load double*, double** %9, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fsub double %25, %30
  store double %31, double* %13, align 8
  %32 = load double, double* %13, align 8
  %33 = call double @llvm.fabs.f64(double %32)
  %34 = fcmp olt double %33, 0x3E7AD7F29ABCAF48
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load double*, double** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  store double %40, double* %15, align 8
  store double 1.000000e+00, double* %14, align 8
  br label %64

41:                                               ; preds = %24
  %42 = load double*, double** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = load double, double* %13, align 8
  %48 = fdiv double %46, %47
  store double %48, double* %13, align 8
  %49 = load double, double* %13, align 8
  %50 = load double, double* %14, align 8
  %51 = fadd double %50, %49
  store double %51, double* %14, align 8
  %52 = load double, double* %13, align 8
  %53 = load double*, double** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fmul double %52, %57
  %59 = load double, double* %15, align 8
  %60 = fadd double %59, %58
  store double %60, double* %15, align 8
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %20

64:                                               ; preds = %35, %20
  %65 = load double, double* %15, align 8
  %66 = load double, double* %14, align 8
  %67 = fdiv double %65, %66
  ret double %67
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
