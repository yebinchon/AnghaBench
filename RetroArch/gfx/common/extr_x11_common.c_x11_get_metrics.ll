; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_metrics.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_get_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x11_get_metrics(i8* %0, i32 %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = call i64 @XOpenDisplay(i32* null)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @DisplayWidth(i32* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @DisplayHeight(i32* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @DisplayWidthMM(i32* %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DisplayHeightMM(i32* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @XCloseDisplay(i32* %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %60 [
    i32 128, label %32
    i32 129, label %36
    i32 131, label %40
    i32 132, label %44
    i32 133, label %48
    i32 130, label %59
  ]

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float*, float** %7, align 8
  store float %34, float* %35, align 4
  br label %62

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = sitofp i32 %37 to float
  %39 = load float*, float** %7, align 8
  store float %38, float* %39, align 4
  br label %62

40:                                               ; preds = %3
  %41 = load i32, i32* %12, align 4
  %42 = sitofp i32 %41 to float
  %43 = load float*, float** %7, align 8
  store float %42, float* %43, align 4
  br label %62

44:                                               ; preds = %3
  %45 = load i32, i32* %13, align 4
  %46 = sitofp i32 %45 to float
  %47 = load float*, float** %7, align 8
  store float %46, float* %47, align 4
  br label %62

48:                                               ; preds = %3
  %49 = load i32, i32* %10, align 4
  %50 = sitofp i32 %49 to float
  %51 = fpext float %50 to double
  %52 = fmul double %51, 2.540000e+01
  %53 = load i32, i32* %12, align 4
  %54 = sitofp i32 %53 to float
  %55 = fpext float %54 to double
  %56 = fdiv double %52, %55
  %57 = fptrunc double %56 to float
  %58 = load float*, float** %7, align 8
  store float %57, float* %58, align 4
  br label %62

59:                                               ; preds = %3
  br label %60

60:                                               ; preds = %3, %59
  %61 = load float*, float** %7, align 8
  store float 0.000000e+00, float* %61, align 4
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %48, %44, %40, %36, %32
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @XOpenDisplay(i32*) #1

declare dso_local i32 @DisplayWidth(i32*, i32) #1

declare dso_local i32 @DisplayHeight(i32*, i32) #1

declare dso_local i32 @DisplayWidthMM(i32*, i32) #1

declare dso_local i32 @DisplayHeightMM(i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
