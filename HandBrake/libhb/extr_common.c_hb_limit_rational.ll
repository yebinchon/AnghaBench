; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_limit_rational.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_limit_rational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_limit_rational(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @hb_reduce(i32* %8, i32* %9, i32 %13, i32 %14)
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %61

28:                                               ; preds = %19, %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = sitofp i32 %33 to double
  %35 = load i32, i32* %8, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %34, %36
  store double %37, double* %11, align 8
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %8, align 4
  %39 = load double, double* %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sitofp i32 %40 to double
  %42 = fmul double %41, %39
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %9, align 4
  br label %56

44:                                               ; preds = %28
  %45 = load i32, i32* %10, align 4
  %46 = sitofp i32 %45 to double
  %47 = load i32, i32* %9, align 4
  %48 = sitofp i32 %47 to double
  %49 = fdiv double %46, %48
  store double %49, double* %12, align 8
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  %51 = load double, double* %12, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double %53, %51
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %44, %32
  %57 = load i32, i32* %8, align 4
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %23
  ret void
}

declare dso_local i32 @hb_reduce(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
