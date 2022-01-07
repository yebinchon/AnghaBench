; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_nnc_compute_threshold.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_nnc_compute_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (%struct.TYPE_9__*, float, i32*, i32*, i32*, double, %struct.TYPE_11__*, i32)* @_ccv_tld_nnc_compute_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @_ccv_tld_nnc_compute_threshold(%struct.TYPE_9__* %0, float %1, i32* %2, i32* %3, i32* %4, double %5, %struct.TYPE_11__* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store float %1, float* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store double %5, double* %14, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %18, align 8
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %70, %8
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %35 = load i32, i32* %17, align 4
  %36 = call i64 @ccv_array_get(%struct.TYPE_11__* %34, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %19, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call double @_ccv_tld_box_variance(i32* %38, i32* %39, i32 %42)
  %44 = load double, double* %14, align 8
  %45 = fcmp ogt double %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %33
  %47 = load i32*, i32** %18, align 8
  %48 = call double @dsfmt_genrand_close_open(i32* %47)
  %49 = fcmp ole double %48, 1.000000e-01
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  store i32* null, i32** %20, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @_ccv_tld_fetch_patch(%struct.TYPE_9__* %51, i32* %52, i32** %20, i32 0, i32 %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = load i32*, i32** %20, align 8
  %59 = call float @_ccv_tld_sv_classify(%struct.TYPE_9__* %57, i32* %58, i32 0, i32 0, i32 0, i32 0)
  store float %59, float* %21, align 4
  %60 = load i32*, i32** %20, align 8
  %61 = call i32 @ccv_matrix_free(i32* %60)
  %62 = load float, float* %21, align 4
  %63 = load float, float* %10, align 4
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load float, float* %21, align 4
  store float %66, float* %10, align 4
  br label %67

67:                                               ; preds = %65, %50
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %17, align 4
  br label %27

73:                                               ; preds = %27
  %74 = load float, float* %10, align 4
  ret float %74
}

declare dso_local i64 @ccv_array_get(%struct.TYPE_11__*, i32) #1

declare dso_local double @_ccv_tld_box_variance(i32*, i32*, i32) #1

declare dso_local double @dsfmt_genrand_close_open(i32*) #1

declare dso_local i32 @_ccv_tld_fetch_patch(%struct.TYPE_9__*, i32*, i32**, i32, i32) #1

declare dso_local float @_ccv_tld_sv_classify(%struct.TYPE_9__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
