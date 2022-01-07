; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_scaled_hb_excitation.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_scaled_hb_excitation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float (float*, float*, i32)* }

@AMRWB_SFR_SIZE = common dso_local global i32 0, align 4
@AMRWB_SFR_SIZE_16k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, float*, float*, float)* @scaled_hb_excitation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaled_hb_excitation(%struct.TYPE_5__* %0, float* %1, float* %2, float %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store float %3, float* %8, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load float (float*, float*, i32)*, float (float*, float*, i32)** %13, align 8
  %15 = load float*, float** %7, align 8
  %16 = load float*, float** %7, align 8
  %17 = load i32, i32* @AMRWB_SFR_SIZE, align 4
  %18 = call float %14(float* %15, float* %16, i32 %17)
  store float %18, float* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %35, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i64 @av_lfg_get(i32* %25)
  %27 = sitofp i64 %26 to float
  %28 = fpext float %27 to double
  %29 = fsub double 3.276800e+04, %28
  %30 = fptrunc double %29 to float
  %31 = load float*, float** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  store float %30, float* %34, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load float*, float** %6, align 8
  %40 = load float*, float** %6, align 8
  %41 = load float, float* %10, align 4
  %42 = load float, float* %8, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %8, align 4
  %45 = fmul float %43, %44
  %46 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %47 = call i32 @ff_scale_vector_to_given_sum_of_squares(float* %39, float* %40, float %45, i32 %46)
  ret void
}

declare dso_local i64 @av_lfg_get(i32*) #1

declare dso_local i32 @ff_scale_vector_to_given_sum_of_squares(float*, float*, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
