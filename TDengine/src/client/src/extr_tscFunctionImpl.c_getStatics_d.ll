; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_d.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@INT16_MAX = common dso_local global i64 0, align 8
@TSDB_DATA_DOUBLE_NULL = common dso_local global double 0.000000e+00, align 8
@TSDB_DATA_TYPE_DOUBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*, i64, double*, double*, double*, i32*, i32*, i64*)* @getStatics_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getStatics_d(i32* %0, double* %1, i64 %2, double* %3, double* %4, double* %5, i32* %6, i32* %7, i64* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i64, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca i64, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store i32* %0, i32** %10, align 8
  store double* %1, double** %11, align 8
  store i64 %2, i64* %12, align 8
  store double* %3, double** %13, align 8
  store double* %4, double** %14, align 8
  store double* %5, double** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i64* %8, i64** %18, align 8
  %29 = load double, double* @DBL_MAX, align 8
  store double %29, double* %19, align 8
  %30 = load double, double* @DBL_MAX, align 8
  %31 = fneg double %30
  store double %31, double* %20, align 8
  store double 0.000000e+00, double* %21, align 8
  store double 0.000000e+00, double* %22, align 8
  store double 0.000000e+00, double* %23, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @INT16_MAX, align 8
  %34 = icmp sle i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  store i32 0, i32* %24, align 4
  %37 = load double, double* @TSDB_DATA_DOUBLE_NULL, align 8
  store double %37, double* %25, align 8
  store i64 0, i64* %26, align 8
  br label %38

38:                                               ; preds = %79, %9
  %39 = load i64, i64* %26, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %38
  %43 = load double*, double** %11, align 8
  %44 = load i64, i64* %26, align 8
  %45 = getelementptr inbounds double, double* %43, i64 %44
  %46 = load i32, i32* @TSDB_DATA_TYPE_DOUBLE, align 4
  %47 = call i64 @isNull(double* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i64*, i64** %18, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %79

53:                                               ; preds = %42
  store double 0.000000e+00, double* %27, align 8
  %54 = load double*, double** %11, align 8
  %55 = load i64, i64* %26, align 8
  %56 = getelementptr inbounds double, double* %54, i64 %55
  %57 = bitcast double* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = bitcast double* %27 to i32*
  store i32 %58, i32* %59, align 8
  %60 = load double, double* %27, align 8
  %61 = load double, double* %23, align 8
  %62 = fadd double %61, %60
  store double %62, double* %23, align 8
  %63 = load double, double* %19, align 8
  %64 = load double, double* %27, align 8
  %65 = fcmp ogt double %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load double, double* %27, align 8
  store double %67, double* %19, align 8
  %68 = load i64, i64* %26, align 8
  %69 = sitofp i64 %68 to double
  store double %69, double* %21, align 8
  br label %70

70:                                               ; preds = %66, %53
  %71 = load double, double* %20, align 8
  %72 = load double, double* %27, align 8
  %73 = fcmp olt double %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load double, double* %27, align 8
  store double %75, double* %20, align 8
  %76 = load i64, i64* %26, align 8
  %77 = sitofp i64 %76 to double
  store double %77, double* %22, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i64, i64* %26, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %26, align 8
  br label %38

82:                                               ; preds = %38
  store double 0.000000e+00, double* %28, align 8
  %83 = load double*, double** %15, align 8
  %84 = bitcast double* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = bitcast double* %28 to i32*
  store i32 %85, i32* %86, align 8
  %87 = load double, double* %23, align 8
  %88 = load double, double* %28, align 8
  %89 = fadd double %88, %87
  store double %89, double* %28, align 8
  %90 = bitcast double* %28 to i32*
  %91 = load i32, i32* %90, align 8
  %92 = load double*, double** %15, align 8
  %93 = bitcast double* %92 to i32*
  store i32 %91, i32* %93, align 4
  %94 = bitcast double* %20 to i32*
  %95 = load i32, i32* %94, align 8
  %96 = load double*, double** %14, align 8
  %97 = bitcast double* %96 to i32*
  store i32 %95, i32* %97, align 4
  %98 = bitcast double* %19 to i32*
  %99 = load i32, i32* %98, align 8
  %100 = load double*, double** %13, align 8
  %101 = bitcast double* %100 to i32*
  store i32 %99, i32* %101, align 4
  %102 = bitcast double* %21 to i32*
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %16, align 8
  store i32 %103, i32* %104, align 4
  %105 = bitcast double* %22 to i32*
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %17, align 8
  store i32 %106, i32* %107, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isNull(double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
