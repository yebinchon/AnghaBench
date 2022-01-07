; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_denormalize_convolutional_layer.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_convolutional_layer.c_denormalize_convolutional_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float*, double*, i32, i32, i32, float*, float*, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @denormalize_convolutional_layer(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %97, %1
  %6 = load i32, i32* %2, align 4
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %100

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

26:                                               ; preds = %63, %10
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %35, %37
  %39 = icmp slt i32 %27, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %26
  %41 = load float, float* %4, align 4
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %2, align 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %47, %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %50, %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %53, %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %43, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fmul float %61, %41
  store float %62, float* %60, align 4
  br label %63

63:                                               ; preds = %40
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %26

66:                                               ; preds = %26
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %68 = load float*, float** %67, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load float, float* %4, align 4
  %74 = fmul float %72, %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 7
  %76 = load float*, float** %75, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fsub float %80, %74
  store float %81, float* %79, align 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  store float 1.000000e+00, float* %86, align 4
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 8
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  store float 0.000000e+00, float* %91, align 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %93 = load double*, double** %92, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  store double 1.000000e+00, double* %96, align 8
  br label %97

97:                                               ; preds = %66
  %98 = load i32, i32* %2, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %5

100:                                              ; preds = %5
  ret void
}

declare dso_local float @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
