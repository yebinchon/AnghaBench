; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_gamma_8bit_correct.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_png.c_png_gamma_8bit_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PNG_FP_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @png_gamma_8bit_correct(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ugt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %11, 255
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @png_log8bit(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load double, double* %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PNG_FP_1, align 4
  %19 = call i64 @png_muldiv(double* %7, double %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load double, double* %7, align 8
  %23 = call i32 @png_exp8bit(double %22)
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %10, %2
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @png_log8bit(i32) #1

declare dso_local i64 @png_muldiv(double*, double, i32, i32) #1

declare dso_local i32 @png_exp8bit(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
