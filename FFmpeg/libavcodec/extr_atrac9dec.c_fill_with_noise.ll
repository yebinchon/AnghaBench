; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_fill_with_noise.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac9dec.c_fill_with_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, i32, i32)* @fill_with_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_with_noise(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x double], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %53, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  %21 = call i32 @av_bmg_get(i32* %19, double* %20)
  %22 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  %23 = load double, double* %22, align 16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load double*, double** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 0
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %26, i64 %31
  store double %23, double* %32, align 8
  %33 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 1
  %34 = load double, double* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load double*, double** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %37, i64 %42
  store double %34, double* %43, align 8
  %44 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 0
  %45 = load double, double* %44, align 16
  %46 = call float @FFABS(double %45)
  %47 = getelementptr inbounds [2 x double], [2 x double]* %11, i64 0, i64 1
  %48 = load double, double* %47, align 8
  %49 = call float @FFABS(double %48)
  %50 = call float @FFMAX(float %46, float %49)
  %51 = load float, float* %9, align 4
  %52 = call float @FFMAX(float %50, float %51)
  store float %52, float* %9, align 4
  br label %53

53:                                               ; preds = %17
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %10, align 4
  br label %13

56:                                               ; preds = %13
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %74, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load float, float* %9, align 4
  %63 = fpext float %62 to double
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load double*, double** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %66, i64 %70
  %72 = load double, double* %71, align 8
  %73 = fdiv double %72, %63
  store double %73, double* %71, align 8
  br label %74

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %57

77:                                               ; preds = %57
  ret void
}

declare dso_local i32 @av_bmg_get(i32*, double*) #1

declare dso_local float @FFMAX(float, float) #1

declare dso_local float @FFABS(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
