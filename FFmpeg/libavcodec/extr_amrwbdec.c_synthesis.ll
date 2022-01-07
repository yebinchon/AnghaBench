; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float*, double*, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_7__ = type { float (float*, float*, i32)* }
%struct.TYPE_6__ = type { i32 (float*, float*, float*, double, float, i32)* }

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@MODE_8k85 = common dso_local global i64 0, align 8
@LP_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float*, float*, float, float*, float*)* @synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synthesis(%struct.TYPE_9__* %0, float* %1, float* %2, float %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32 (float*, float*, float*, double, float, i32)*, i32 (float*, float*, float*, double, float, i32)** %18, align 8
  %20 = load float*, float** %9, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load float*, float** %22, align 8
  %24 = load float*, float** %11, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  %29 = load double, double* %28, align 8
  %30 = load float, float* %10, align 4
  %31 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %32 = call i32 %19(float* %20, float* %23, float* %24, double %29, float %30, i32 %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load double*, double** %34, align 8
  %36 = getelementptr inbounds double, double* %35, i64 0
  %37 = load double, double* %36, align 8
  %38 = fcmp ogt double %37, 5.000000e-01
  br i1 %38, label %39, label %96

39:                                               ; preds = %6
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MODE_8k85, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %96

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load float (float*, float*, i32)*, float (float*, float*, i32)** %48, align 8
  %50 = load float*, float** %9, align 8
  %51 = load float*, float** %9, align 8
  %52 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %53 = call float %49(float* %50, float* %51, i32 %52)
  store float %53, float* %14, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load double*, double** %55, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  %58 = load double, double* %57, align 8
  %59 = fmul double 2.500000e-01, %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load double*, double** %61, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  %64 = load double, double* %63, align 8
  %65 = fmul double %59, %64
  %66 = fptrunc double %65 to float
  store float %66, float* %15, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %87, %45
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load float, float* %15, align 4
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fmul float %72, %79
  %81 = load float*, float** %9, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, %80
  store float %86, float* %84, align 4
  br label %87

87:                                               ; preds = %71
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %67

90:                                               ; preds = %67
  %91 = load float*, float** %9, align 8
  %92 = load float*, float** %9, align 8
  %93 = load float, float* %14, align 4
  %94 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %95 = call i32 @ff_scale_vector_to_given_sum_of_squares(float* %91, float* %92, float %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %39, %6
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %99, align 8
  %101 = load float*, float** %12, align 8
  %102 = load float*, float** %8, align 8
  %103 = load float*, float** %9, align 8
  %104 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %105 = load i32, i32* @LP_ORDER, align 4
  %106 = call i32 %100(float* %101, float* %102, float* %103, i32 %104, i32 %105)
  ret void
}

declare dso_local i32 @ff_scale_vector_to_given_sum_of_squares(float*, float*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
