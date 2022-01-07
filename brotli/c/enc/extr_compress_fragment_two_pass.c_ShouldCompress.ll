; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment_two_pass.c_ShouldCompress.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment_two_pass.c_ShouldCompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_RATIO = common dso_local global double 0.000000e+00, align 8
@BROTLI_TRUE = common dso_local global i32 0, align 4
@SAMPLE_RATE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @ShouldCompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldCompress(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca [256 x i32], align 16
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = uitofp i64 %12 to double
  store double %13, double* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = uitofp i64 %14 to double
  %16 = load double, double* @MIN_RATIO, align 8
  %17 = load double, double* %8, align 8
  %18 = fmul double %16, %17
  %19 = fcmp olt double %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @BROTLI_TRUE, align 4
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = bitcast [256 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 1024, i1 false)
  %24 = load double, double* %8, align 8
  %25 = fmul double %24, 8.000000e+00
  %26 = load double, double* @MIN_RATIO, align 8
  %27 = fmul double %25, %26
  %28 = load double, double* @SAMPLE_RATE, align 8
  %29 = fdiv double %27, %28
  store double %29, double* %10, align 8
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %42, %22
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i64*, i64** %5, align 8
  %36 = load i64, i64* %11, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load double, double* @SAMPLE_RATE, align 8
  %44 = load i64, i64* %11, align 8
  %45 = uitofp i64 %44 to double
  %46 = fadd double %45, %43
  %47 = fptoui double %46 to i64
  store i64 %47, i64* %11, align 8
  br label %30

48:                                               ; preds = %30
  %49 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %50 = call double @BitsEntropy(i32* %49, i32 256)
  %51 = load double, double* %10, align 8
  %52 = fcmp olt double %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @TO_BROTLI_BOOL(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %48, %20
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @TO_BROTLI_BOOL(i32) #2

declare dso_local double @BitsEntropy(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
