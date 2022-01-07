; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hqdn3d.c_precalc_coefs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hqdn3d.c_precalc_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (double, i32)* @precalc_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @precalc_coefs(double %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @LUT_BITS, align 4
  %13 = shl i32 512, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i32* @av_malloc(i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %81

21:                                               ; preds = %2
  %22 = call double @log(double 2.500000e-01) #4
  %23 = load double, double* %4, align 8
  %24 = call double @FFMIN(double %23, double 2.520000e+02)
  %25 = fdiv double %24, 2.550000e+02
  %26 = fsub double 1.000000e+00, %25
  %27 = fsub double %26, 1.000000e-05
  %28 = call double @log(double %27) #4
  %29 = fdiv double %22, %28
  store double %29, double* %7, align 8
  %30 = load i32, i32* @LUT_BITS, align 4
  %31 = shl i32 -256, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %69, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LUT_BITS, align 4
  %35 = shl i32 256, %34
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LUT_BITS, align 4
  %40 = sub nsw i32 9, %39
  %41 = shl i32 %38, %40
  %42 = load i32, i32* @LUT_BITS, align 4
  %43 = sub nsw i32 8, %42
  %44 = shl i32 1, %43
  %45 = add nsw i32 %41, %44
  %46 = sub nsw i32 %45, 1
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 5.120000e+02
  store double %48, double* %11, align 8
  %49 = load double, double* %11, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fdiv double %50, 2.550000e+02
  %52 = fsub double 1.000000e+00, %51
  %53 = call double @FFMAX(i32 0, double %52)
  store double %53, double* %8, align 8
  %54 = load double, double* %8, align 8
  %55 = load double, double* %7, align 8
  %56 = call double @pow(double %54, double %55) #4
  %57 = fmul double %56, 2.560000e+02
  %58 = load double, double* %11, align 8
  %59 = fmul double %57, %58
  store double %59, double* %9, align 8
  %60 = load double, double* %9, align 8
  %61 = call i32 @lrint(double %60)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* @LUT_BITS, align 4
  %64 = shl i32 256, %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %62, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %37
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load double, double* %4, align 8
  %74 = fcmp une double %73, 0.000000e+00
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %10, align 8
  store i32* %80, i32** %3, align 8
  br label %81

81:                                               ; preds = %72, %20
  %82 = load i32*, i32** %3, align 8
  ret i32* %82
}

declare dso_local i32* @av_malloc(i32) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

declare dso_local double @FFMIN(double, double) #1

declare dso_local double @FFMAX(i32, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @lrint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
