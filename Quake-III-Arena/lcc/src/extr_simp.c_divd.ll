; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_simp.c_divd.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_simp.c_divd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"overflow in constant expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double, double, i32)* @divd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @divd(double %0, double %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load double, double* %6, align 8
  %13 = fcmp olt double %12, 0.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load double, double* %6, align 8
  %16 = fneg double %15
  store double %16, double* %6, align 8
  br label %17

17:                                               ; preds = %14, %5
  %18 = load double, double* %7, align 8
  %19 = fcmp olt double %18, 0.000000e+00
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load double, double* %7, align 8
  %22 = fneg double %21
  store double %22, double* %7, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load double, double* %7, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load double, double* %7, align 8
  %28 = fcmp olt double %27, 1.000000e+00
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load double, double* %6, align 8
  %31 = load double, double* %9, align 8
  %32 = load double, double* %7, align 8
  %33 = fmul double %31, %32
  %34 = fcmp ogt double %30, %33
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %35, %23
  %39 = phi i1 [ false, %23 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %46, %43, %38
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
