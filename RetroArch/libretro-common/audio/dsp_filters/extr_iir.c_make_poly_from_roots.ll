; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_make_poly_from_roots.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_make_poly_from_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, float*)* @make_poly_from_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_poly_from_roots(double* %0, i32 %1, float* %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store i32 %1, i32* %5, align 4
  store float* %2, float** %6, align 8
  %9 = load float*, float** %6, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  store float 1.000000e+00, float* %10, align 4
  %11 = load double*, double** %4, align 8
  %12 = getelementptr inbounds double, double* %11, i64 0
  %13 = load double, double* %12, align 8
  %14 = fneg double %13
  %15 = fptrunc double %14 to float
  %16 = load float*, float** %6, align 8
  %17 = getelementptr inbounds float, float* %16, i64 1
  store float %15, float* %17, align 4
  %18 = load float*, float** %6, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  %22 = sub i32 %21, 2
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(float* %19, i32 0, i32 %25)
  store i32 1, i32* %7, align 4
  br label %27

27:                                               ; preds = %62, %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %58, %31
  %34 = load i32, i32* %8, align 4
  %35 = icmp ugt i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load float*, float** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %37, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = load double*, double** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fmul double %43, %48
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = fsub double %55, %49
  %57 = fptrunc double %56 to float
  store float %57, float* %53, align 4
  br label %58

58:                                               ; preds = %36
  %59 = load i32, i32* %8, align 4
  %60 = add i32 %59, -1
  store i32 %60, i32* %8, align 4
  br label %33

61:                                               ; preds = %33
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %27

65:                                               ; preds = %27
  ret void
}

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
