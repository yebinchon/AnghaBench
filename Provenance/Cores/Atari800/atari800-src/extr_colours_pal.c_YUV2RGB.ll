; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_YUV2RGB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_pal.c_YUV2RGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*)* @YUV2RGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YUV2RGB(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %17 = load double*, double** %4, align 8
  store double* %17, double** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %61, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load double*, double** %5, align 8
  %23 = getelementptr inbounds double, double* %22, i32 1
  store double* %23, double** %5, align 8
  %24 = load double, double* %22, align 8
  store double %24, double* %7, align 8
  %25 = load double*, double** %5, align 8
  %26 = getelementptr inbounds double, double* %25, i32 1
  store double* %26, double** %5, align 8
  %27 = load double, double* %25, align 8
  store double %27, double* %8, align 8
  %28 = load double*, double** %5, align 8
  %29 = getelementptr inbounds double, double* %28, i32 1
  store double* %29, double** %5, align 8
  %30 = load double, double* %28, align 8
  store double %30, double* %9, align 8
  %31 = load double*, double** %5, align 8
  %32 = getelementptr inbounds double, double* %31, i32 1
  store double* %32, double** %5, align 8
  %33 = load double, double* %31, align 8
  store double %33, double* %10, align 8
  %34 = load double*, double** %5, align 8
  %35 = getelementptr inbounds double, double* %34, i32 1
  store double* %35, double** %5, align 8
  %36 = load double, double* %34, align 8
  store double %36, double* %11, align 8
  %37 = load double, double* %8, align 8
  %38 = load double, double* %9, align 8
  %39 = fadd double %37, %38
  %40 = fdiv double %39, 2.000000e+00
  store double %40, double* %15, align 8
  %41 = load double, double* %10, align 8
  %42 = load double, double* %11, align 8
  %43 = fadd double %41, %42
  %44 = fdiv double %43, 2.000000e+00
  store double %44, double* %16, align 8
  %45 = load double, double* %7, align 8
  %46 = load double, double* %15, align 8
  %47 = load double, double* %16, align 8
  %48 = call i32 @Colours_YUV2RGB(double %45, double %46, double %47, double* %12, double* %13, double* %14)
  %49 = load i32, i32* %6, align 4
  %50 = load double, double* %12, align 8
  %51 = fmul double %50, 2.550000e+02
  %52 = fptosi double %51 to i32
  %53 = load double, double* %13, align 8
  %54 = fmul double %53, 2.550000e+02
  %55 = fptosi double %54 to i32
  %56 = load double, double* %14, align 8
  %57 = fmul double %56, 2.550000e+02
  %58 = fptosi double %57 to i32
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @Colours_SetRGB(i32 %49, i32 %52, i32 %55, i32 %58, i32* %59)
  br label %61

61:                                               ; preds = %21
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %18

64:                                               ; preds = %18
  ret void
}

declare dso_local i32 @Colours_YUV2RGB(double, double, double, double*, double*, double*) #1

declare dso_local i32 @Colours_SetRGB(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
