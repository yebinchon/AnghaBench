; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_end1x.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ssim.c_ssim_end1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32, i32, i32, i32, i32)* @ssim_end1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @ssim_end1x(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double 1.000000e-04, %20
  %22 = load i32, i32* %10, align 4
  %23 = sitofp i32 %22 to double
  %24 = fmul double %21, %23
  %25 = fmul double %24, 6.400000e+01
  %26 = fadd double %25, 5.000000e-01
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sitofp i32 %28 to double
  %30 = fmul double 9.000000e-04, %29
  %31 = load i32, i32* %10, align 4
  %32 = sitofp i32 %31 to double
  %33 = fmul double %30, %32
  %34 = fmul double %33, 6.400000e+01
  %35 = fmul double %34, 6.300000e+01
  %36 = fadd double %35, 5.000000e-01
  %37 = fptosi double %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %15, align 4
  %43 = mul nsw i32 %42, 64
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sub nsw i32 %43, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 64
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %13, align 4
  %59 = mul nsw i32 2, %58
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = sitofp i32 %63 to float
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 2, %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  %69 = sitofp i32 %68 to float
  %70 = fmul float %64, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %77, %78
  %80 = sitofp i32 %79 to float
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sitofp i32 %83 to float
  %85 = fmul float %80, %84
  %86 = fdiv float %70, %85
  ret float %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
