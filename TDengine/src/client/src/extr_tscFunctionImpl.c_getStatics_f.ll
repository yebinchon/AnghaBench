; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_f.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_getStatics_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MAX = common dso_local global float 0.000000e+00, align 4
@INT16_MAX = common dso_local global i64 0, align 8
@TSDB_DATA_TYPE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, float*, i64, double*, double*, double*, i32*, i32*, i64*)* @getStatics_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getStatics_f(i32* %0, float* %1, i64 %2, double* %3, double* %4, double* %5, i32* %6, i32* %7, i64* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i64, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca double, align 8
  %24 = alloca i64, align 8
  %25 = alloca float, align 4
  %26 = alloca double, align 8
  store i32* %0, i32** %10, align 8
  store float* %1, float** %11, align 8
  store i64 %2, i64* %12, align 8
  store double* %3, double** %13, align 8
  store double* %4, double** %14, align 8
  store double* %5, double** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i64* %8, i64** %18, align 8
  %27 = load float, float* @DBL_MAX, align 4
  store float %27, float* %19, align 4
  %28 = load float, float* @DBL_MAX, align 4
  %29 = fneg float %28
  store float %29, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store double 0.000000e+00, double* %23, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i64, i64* @INT16_MAX, align 8
  %32 = icmp sle i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i64 0, i64* %24, align 8
  br label %35

35:                                               ; preds = %77, %9
  %36 = load i64, i64* %24, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %35
  %40 = load float*, float** %11, align 8
  %41 = load i64, i64* %24, align 8
  %42 = getelementptr inbounds float, float* %40, i64 %41
  %43 = load i32, i32* @TSDB_DATA_TYPE_FLOAT, align 4
  %44 = call i64 @isNull(float* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i64*, i64** %18, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %77

50:                                               ; preds = %39
  store float 0.000000e+00, float* %25, align 4
  %51 = load float*, float** %11, align 8
  %52 = load i64, i64* %24, align 8
  %53 = getelementptr inbounds float, float* %51, i64 %52
  %54 = bitcast float* %53 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = bitcast float* %25 to i64*
  store i64 %55, i64* %56, align 4
  %57 = load float, float* %25, align 4
  %58 = fpext float %57 to double
  %59 = load double, double* %23, align 8
  %60 = fadd double %59, %58
  store double %60, double* %23, align 8
  %61 = load float, float* %19, align 4
  %62 = load float, float* %25, align 4
  %63 = fcmp ogt float %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %50
  %65 = load float, float* %25, align 4
  store float %65, float* %19, align 4
  %66 = load i64, i64* %24, align 8
  %67 = sitofp i64 %66 to float
  store float %67, float* %21, align 4
  br label %68

68:                                               ; preds = %64, %50
  %69 = load float, float* %20, align 4
  %70 = load float, float* %25, align 4
  %71 = fcmp olt float %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load float, float* %25, align 4
  store float %73, float* %20, align 4
  %74 = load i64, i64* %24, align 8
  %75 = sitofp i64 %74 to float
  store float %75, float* %22, align 4
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %46
  %78 = load i64, i64* %24, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %24, align 8
  br label %35

80:                                               ; preds = %35
  store double 0.000000e+00, double* %26, align 8
  %81 = load double*, double** %15, align 8
  %82 = bitcast double* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = bitcast double* %26 to i32*
  store i32 %83, i32* %84, align 8
  %85 = load double, double* %23, align 8
  %86 = load double, double* %26, align 8
  %87 = fadd double %86, %85
  store double %87, double* %26, align 8
  %88 = bitcast double* %26 to i32*
  %89 = load i32, i32* %88, align 8
  %90 = load double*, double** %15, align 8
  %91 = bitcast double* %90 to i32*
  store i32 %89, i32* %91, align 4
  %92 = bitcast float* %20 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = load double*, double** %14, align 8
  %95 = bitcast double* %94 to i64*
  store i64 %93, i64* %95, align 8
  %96 = bitcast float* %19 to i64*
  %97 = load i64, i64* %96, align 4
  %98 = load double*, double** %13, align 8
  %99 = bitcast double* %98 to i64*
  store i64 %97, i64* %99, align 8
  %100 = bitcast float* %21 to i64*
  %101 = load i64, i64* %100, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = bitcast i32* %102 to i64*
  store i64 %101, i64* %103, align 8
  %104 = bitcast float* %22 to i64*
  %105 = load i64, i64* %104, align 4
  %106 = load i32*, i32** %17, align 8
  %107 = bitcast i32* %106 to i64*
  store i64 %105, i64* %107, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isNull(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
