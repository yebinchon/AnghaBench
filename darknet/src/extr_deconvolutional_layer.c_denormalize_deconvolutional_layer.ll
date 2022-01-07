; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_denormalize_deconvolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_deconvolutional_layer.c_denormalize_deconvolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float*, double*, i32, i32, float*, float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @denormalize_deconvolutional_layer(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %91, %1
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %94

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %12 = load float*, float** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %12, i64 %14
  %16 = load float, float* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %18 = load double*, double** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fadd double %22, 1.000000e-05
  %24 = call float @sqrt(double %23)
  %25 = fdiv float %16, %24
  store float %25, float* %4, align 4
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %57, %10
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %32, %34
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %26
  %38 = load float, float* %4, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %40 = load float*, float** %39, align 8
  %41 = load i32, i32* %2, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %41, %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %47, %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %40, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fmul float %55, %38
  store float %56, float* %54, align 4
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %26

60:                                               ; preds = %26
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %4, align 4
  %68 = fmul float %66, %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %70 = load float*, float** %69, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fsub float %74, %68
  store float %75, float* %73, align 4
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  %78 = load i32, i32* %2, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  store float 1.000000e+00, float* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float 0.000000e+00, float* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %87 = load double*, double** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  store double 1.000000e+00, double* %90, align 8
  br label %91

91:                                               ; preds = %60
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %5

94:                                               ; preds = %5
  ret void
}

declare dso_local float @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
