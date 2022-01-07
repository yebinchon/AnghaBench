; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_bessel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswresample/extr_resample.c_bessel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bessel.p1 = internal constant [15 x double] [double 0xC31FBDA33BA182B6, double 0xC2FF4AE214A88484, double 0xC2BDF57638CE8FC0, double 0xC268B769C1EEE488, double 0xC2063070A3C7E1C4, double 0xC1989698AC597A18, double 0xC1222C008538BC2B, double 0xC0A2D90A0762EECE, double 0xC01C5FC79279E70C, double 0xBF8FA655C9ABB197, double 0xBEFA653AF846D843, double 0xBE60624173575D24, double 0xBDBD83C251E3FB89, double 0xBD11FE902E4C85F5, double 0xBC5834AC6DF8A5D9], align 16
@bessel.q1 = internal constant [6 x double] [double 0xC31FBDA33BA182B6, double 0x429CB049BE3F8C67, double 0xC206BCC8882E78CA, double 0x4163CAEF21DBA530, double 0xC0B2F4C18A653933, double 1.000000e+00], align 16
@bessel.p2 = internal constant [7 x double] [double 0xBF2D1C86FFA1268E, double 0x3F8AC313AB94D944, double 0xBFDC9BC7AEB177D8, double 0x40164512182A0319, double 0xC037849816897026, double 0x403F9C7FA6F99EB1, double 0xC02337CF22CD75C0], align 16
@bessel.q2 = internal constant [8 x double] [double 0xBF4216093761A9A1, double 0x3FA0AA178175AEA7, double 0xBFF1D7C2B44D9E48, double 0x402BF716BCFC57BA, double 0xC04E1D2F2BF60AA2, double 0x405562883454D27B, double 0xC03F725A4B3B25EF, double 1.000000e+00], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @bessel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @bessel(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, double* %3, align 8
  %7 = load double, double* %3, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store double 1.000000e+00, double* %2, align 8
  br label %45

10:                                               ; preds = %1
  %11 = load double, double* %3, align 8
  %12 = call double @llvm.fabs.f64(double %11)
  store double %12, double* %3, align 8
  %13 = load double, double* %3, align 8
  %14 = fcmp ole double %13, 1.500000e+01
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load double, double* %3, align 8
  %17 = load double, double* %3, align 8
  %18 = fmul double %16, %17
  store double %18, double* %4, align 8
  %19 = call i32 @FF_ARRAY_ELEMS(double* getelementptr inbounds ([15 x double], [15 x double]* @bessel.p1, i64 0, i64 0))
  %20 = load double, double* %4, align 8
  %21 = call double @eval_poly(double* getelementptr inbounds ([15 x double], [15 x double]* @bessel.p1, i64 0, i64 0), i32 %19, double %20)
  %22 = call i32 @FF_ARRAY_ELEMS(double* getelementptr inbounds ([6 x double], [6 x double]* @bessel.q1, i64 0, i64 0))
  %23 = load double, double* %4, align 8
  %24 = call double @eval_poly(double* getelementptr inbounds ([6 x double], [6 x double]* @bessel.q1, i64 0, i64 0), i32 %22, double %23)
  %25 = fdiv double %21, %24
  store double %25, double* %2, align 8
  br label %45

26:                                               ; preds = %10
  %27 = load double, double* %3, align 8
  %28 = fdiv double 1.000000e+00, %27
  %29 = fsub double %28, 0x3FB1111111111111
  store double %29, double* %4, align 8
  %30 = call i32 @FF_ARRAY_ELEMS(double* getelementptr inbounds ([7 x double], [7 x double]* @bessel.p2, i64 0, i64 0))
  %31 = load double, double* %4, align 8
  %32 = call double @eval_poly(double* getelementptr inbounds ([7 x double], [7 x double]* @bessel.p2, i64 0, i64 0), i32 %30, double %31)
  %33 = call i32 @FF_ARRAY_ELEMS(double* getelementptr inbounds ([8 x double], [8 x double]* @bessel.q2, i64 0, i64 0))
  %34 = load double, double* %4, align 8
  %35 = call double @eval_poly(double* getelementptr inbounds ([8 x double], [8 x double]* @bessel.q2, i64 0, i64 0), i32 %33, double %34)
  %36 = fdiv double %32, %35
  store double %36, double* %5, align 8
  %37 = load double, double* %3, align 8
  %38 = call double @exp(double %37) #4
  %39 = load double, double* %3, align 8
  %40 = call double @sqrt(double %39) #4
  %41 = fdiv double %38, %40
  store double %41, double* %6, align 8
  %42 = load double, double* %6, align 8
  %43 = load double, double* %5, align 8
  %44 = fmul double %42, %43
  store double %44, double* %2, align 8
  br label %45

45:                                               ; preds = %26, %15, %9
  %46 = load double, double* %2, align 8
  ret double %46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

declare dso_local double @eval_poly(double*, i32, double) #2

declare dso_local i32 @FF_ARRAY_ELEMS(double*) #2

; Function Attrs: nounwind
declare dso_local double @exp(double) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
