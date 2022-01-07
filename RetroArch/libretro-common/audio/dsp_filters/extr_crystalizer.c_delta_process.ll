; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_crystalizer.c_delta_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_crystalizer.c_delta_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.delta_data = type { float*, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @delta_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delta_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.delta_data*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.delta_data*
  store %struct.delta_data* %13, %struct.delta_data** %9, align 8
  %14 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %15 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  store float* %16, float** %10, align 8
  %17 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %18 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %17, i32 0, i32 0
  %19 = load float*, float** %18, align 8
  %20 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %21 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %20, i32 0, i32 0
  store float* %19, float** %21, align 8
  %22 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %23 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %26 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %68, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %30 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load float*, float** %10, align 8
  %39 = load float, float* %38, align 4
  store float %39, float* %11, align 4
  %40 = load float, float* %11, align 4
  %41 = load float, float* %11, align 4
  %42 = load %struct.delta_data*, %struct.delta_data** %9, align 8
  %43 = getelementptr inbounds %struct.delta_data, %struct.delta_data* %42, i32 0, i32 0
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fsub float %41, %48
  %50 = load %struct.delta_data*, %struct.delta_data** %9, align 8
  %51 = getelementptr inbounds %struct.delta_data, %struct.delta_data* %50, i32 0, i32 1
  %52 = load float, float* %51, align 8
  %53 = fmul float %49, %52
  %54 = fadd float %40, %53
  %55 = load float*, float** %10, align 8
  %56 = getelementptr inbounds float, float* %55, i32 1
  store float* %56, float** %10, align 8
  store float %54, float* %55, align 4
  %57 = load float, float* %11, align 4
  %58 = load %struct.delta_data*, %struct.delta_data** %9, align 8
  %59 = getelementptr inbounds %struct.delta_data, %struct.delta_data* %58, i32 0, i32 0
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  store float %57, float* %63, align 4
  br label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %34

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %27

71:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
