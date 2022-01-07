; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_get_chrm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_get_chrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @png_get_chrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_get_chrm(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store double 3.127000e-01, double* %12, align 8
  store double 3.290000e-01, double* %13, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %20 [
    i32 130, label %15
    i32 131, label %16
    i32 132, label %17
    i32 129, label %18
    i32 128, label %18
    i32 133, label %19
  ]

15:                                               ; preds = %2
  store double 6.400000e-01, double* %6, align 8
  store double 3.300000e-01, double* %7, align 8
  store double 3.000000e-01, double* %8, align 8
  store double 6.000000e-01, double* %9, align 8
  store double 1.500000e-01, double* %10, align 8
  store double 6.000000e-02, double* %11, align 8
  br label %21

16:                                               ; preds = %2
  store double 6.700000e-01, double* %6, align 8
  store double 3.300000e-01, double* %7, align 8
  store double 2.100000e-01, double* %8, align 8
  store double 7.100000e-01, double* %9, align 8
  store double 1.400000e-01, double* %10, align 8
  store double 8.000000e-02, double* %11, align 8
  store double 3.100000e-01, double* %12, align 8
  store double 3.160000e-01, double* %13, align 8
  br label %21

17:                                               ; preds = %2
  store double 6.400000e-01, double* %6, align 8
  store double 3.300000e-01, double* %7, align 8
  store double 2.900000e-01, double* %8, align 8
  store double 6.000000e-01, double* %9, align 8
  store double 1.500000e-01, double* %10, align 8
  store double 6.000000e-02, double* %11, align 8
  br label %21

18:                                               ; preds = %2, %2
  store double 6.300000e-01, double* %6, align 8
  store double 3.400000e-01, double* %7, align 8
  store double 3.100000e-01, double* %8, align 8
  store double 5.950000e-01, double* %9, align 8
  store double 1.550000e-01, double* %10, align 8
  store double 7.000000e-02, double* %11, align 8
  br label %21

19:                                               ; preds = %2
  store double 0x3FE6A7EF9DB22D0E, double* %6, align 8
  store double 2.920000e-01, double* %7, align 8
  store double 1.700000e-01, double* %8, align 8
  store double 7.970000e-01, double* %9, align 8
  store double 1.310000e-01, double* %10, align 8
  store double 4.600000e-02, double* %11, align 8
  br label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

21:                                               ; preds = %19, %18, %17, %16, %15
  %22 = load i32*, i32** %5, align 8
  %23 = load double, double* %12, align 8
  %24 = call i32 @AV_WB32_PNG(i32* %22, double %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load double, double* %13, align 8
  %28 = call i32 @AV_WB32_PNG(i32* %26, double %27)
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load double, double* %6, align 8
  %32 = call i32 @AV_WB32_PNG(i32* %30, double %31)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  %35 = load double, double* %7, align 8
  %36 = call i32 @AV_WB32_PNG(i32* %34, double %35)
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  %39 = load double, double* %8, align 8
  %40 = call i32 @AV_WB32_PNG(i32* %38, double %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 20
  %43 = load double, double* %9, align 8
  %44 = call i32 @AV_WB32_PNG(i32* %42, double %43)
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 24
  %47 = load double, double* %10, align 8
  %48 = call i32 @AV_WB32_PNG(i32* %46, double %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 28
  %51 = load double, double* %11, align 8
  %52 = call i32 @AV_WB32_PNG(i32* %50, double %51)
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %21, %20
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @AV_WB32_PNG(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
