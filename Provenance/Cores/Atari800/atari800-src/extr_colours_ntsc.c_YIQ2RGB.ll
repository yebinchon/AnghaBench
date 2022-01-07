; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_YIQ2RGB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_YIQ2RGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*)* @YIQ2RGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YIQ2RGB(i32* %0, double* %1) #0 {
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
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %13 = load double*, double** %4, align 8
  store double* %13, double** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %60, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %63

17:                                               ; preds = %14
  %18 = load double*, double** %5, align 8
  %19 = getelementptr inbounds double, double* %18, i32 1
  store double* %19, double** %5, align 8
  %20 = load double, double* %18, align 8
  store double %20, double* %7, align 8
  %21 = load double*, double** %5, align 8
  %22 = getelementptr inbounds double, double* %21, i32 1
  store double* %22, double** %5, align 8
  %23 = load double, double* %21, align 8
  store double %23, double* %8, align 8
  %24 = load double*, double** %5, align 8
  %25 = getelementptr inbounds double, double* %24, i32 1
  store double* %25, double** %5, align 8
  %26 = load double, double* %24, align 8
  store double %26, double* %9, align 8
  %27 = load double, double* %7, align 8
  %28 = load double, double* %8, align 8
  %29 = fmul double 9.563000e-01, %28
  %30 = fadd double %27, %29
  %31 = load double, double* %9, align 8
  %32 = fmul double 6.210000e-01, %31
  %33 = fadd double %30, %32
  store double %33, double* %10, align 8
  %34 = load double, double* %7, align 8
  %35 = load double, double* %8, align 8
  %36 = fmul double 2.721000e-01, %35
  %37 = fsub double %34, %36
  %38 = load double, double* %9, align 8
  %39 = fmul double 0x3FE4B780346DC5D6, %38
  %40 = fsub double %37, %39
  store double %40, double* %11, align 8
  %41 = load double, double* %7, align 8
  %42 = load double, double* %8, align 8
  %43 = fmul double 1.107000e+00, %42
  %44 = fsub double %41, %43
  %45 = load double, double* %9, align 8
  %46 = fmul double 1.704600e+00, %45
  %47 = fadd double %44, %46
  store double %47, double* %12, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load double, double* %10, align 8
  %50 = fmul double %49, 2.550000e+02
  %51 = fptosi double %50 to i32
  %52 = load double, double* %11, align 8
  %53 = fmul double %52, 2.550000e+02
  %54 = fptosi double %53 to i32
  %55 = load double, double* %12, align 8
  %56 = fmul double %55, 2.550000e+02
  %57 = fptosi double %56 to i32
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @Colours_SetRGB(i32 %48, i32 %51, i32 %54, i32 %57, i32* %58)
  br label %60

60:                                               ; preds = %17
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %14

63:                                               ; preds = %14
  ret void
}

declare dso_local i32 @Colours_SetRGB(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
