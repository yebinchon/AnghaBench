; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment.c_ShouldMergeBlock.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment.c_ShouldMergeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ShouldMergeBlock.kSampleRate = internal constant i64 43, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*)* @ShouldMergeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ShouldMergeBlock(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [256 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = bitcast [256 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 2048, i1 false)
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 43
  store i64 %26, i64* %8, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i64, i64* %5, align 8
  %29 = add i64 %28, 43
  %30 = sub i64 %29, 1
  %31 = udiv i64 %30, 43
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i64 @FastLog2(i64 %32)
  %34 = uitofp i64 %33 to double
  %35 = fadd double %34, 5.000000e-01
  %36 = load i64, i64* %9, align 8
  %37 = uitofp i64 %36 to double
  %38 = fmul double %35, %37
  %39 = fadd double %38, 2.000000e+02
  store double %39, double* %10, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %61, %27
  %41 = load i64, i64* %8, align 8
  %42 = icmp ult i64 %41, 256
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = uitofp i64 %46 to double
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds [256 x i64], [256 x i64]* %7, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @FastLog2(i64 %54)
  %56 = add i64 %51, %55
  %57 = uitofp i64 %56 to double
  %58 = fmul double %47, %57
  %59 = load double, double* %10, align 8
  %60 = fsub double %59, %58
  store double %60, double* %10, align 8
  br label %61

61:                                               ; preds = %43
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %40

64:                                               ; preds = %40
  %65 = load double, double* %10, align 8
  %66 = fcmp oge double %65, 0.000000e+00
  %67 = zext i1 %66 to i32
  %68 = call i32 @TO_BROTLI_BOOL(i32 %67)
  ret i32 %68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @FastLog2(i64) #2

declare dso_local i32 @TO_BROTLI_BOOL(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
