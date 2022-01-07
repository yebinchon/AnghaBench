; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Ideal_Size.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_GC.c_GC_Ideal_Size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GC_Load_Factor = common dso_local global double 0.000000e+00, align 8
@GC_PRIMES_COUNT = common dso_local global i64 0, align 8
@GC_Primes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @GC_Ideal_Size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GC_Ideal_Size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add i64 %7, 1
  %9 = uitofp i64 %8 to double
  %10 = load double, double* @GC_Load_Factor, align 8
  %11 = fdiv double %9, %10
  %12 = fptoui double %11 to i64
  store i64 %12, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %30, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @GC_PRIMES_COUNT, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %13
  %18 = load i64*, i64** @GC_Primes, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i64*, i64** @GC_Primes, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %2, align 8
  br label %53

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %13

33:                                               ; preds = %13
  %34 = load i64*, i64** @GC_Primes, align 8
  %35 = load i64, i64* @GC_PRIMES_COUNT, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %50, %33
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = mul i64 %40, %41
  %43 = load i64, i64* %3, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = mul i64 %46, %47
  store i64 %48, i64* %2, align 8
  br label %53

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %6, align 8
  br label %39

53:                                               ; preds = %45, %24
  %54 = load i64, i64* %2, align 8
  ret i64 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
