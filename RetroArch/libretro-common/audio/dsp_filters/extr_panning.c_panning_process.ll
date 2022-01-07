; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_panning.c_panning_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_panning.c_panning_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.panning_data = type { float*, float* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @panning_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panning_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panning_data*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.panning_data*
  store %struct.panning_data* %13, %struct.panning_data** %8, align 8
  %14 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %15 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %14, i32 0, i32 0
  %16 = load float*, float** %15, align 8
  store float* %16, float** %9, align 8
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

27:                                               ; preds = %74, %3
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %30 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %79

33:                                               ; preds = %27
  %34 = load float*, float** %9, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  store float %36, float* %10, align 4
  %37 = load float*, float** %9, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  %39 = load float, float* %38, align 4
  store float %39, float* %11, align 4
  %40 = load float, float* %10, align 4
  %41 = load %struct.panning_data*, %struct.panning_data** %8, align 8
  %42 = getelementptr inbounds %struct.panning_data, %struct.panning_data* %41, i32 0, i32 0
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 0
  %45 = load float, float* %44, align 4
  %46 = fmul float %40, %45
  %47 = load float, float* %11, align 4
  %48 = load %struct.panning_data*, %struct.panning_data** %8, align 8
  %49 = getelementptr inbounds %struct.panning_data, %struct.panning_data* %48, i32 0, i32 0
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  %52 = load float, float* %51, align 4
  %53 = fmul float %47, %52
  %54 = fadd float %46, %53
  %55 = load float*, float** %9, align 8
  %56 = getelementptr inbounds float, float* %55, i64 0
  store float %54, float* %56, align 4
  %57 = load float, float* %10, align 4
  %58 = load %struct.panning_data*, %struct.panning_data** %8, align 8
  %59 = getelementptr inbounds %struct.panning_data, %struct.panning_data* %58, i32 0, i32 1
  %60 = load float*, float** %59, align 8
  %61 = getelementptr inbounds float, float* %60, i64 0
  %62 = load float, float* %61, align 4
  %63 = fmul float %57, %62
  %64 = load float, float* %11, align 4
  %65 = load %struct.panning_data*, %struct.panning_data** %8, align 8
  %66 = getelementptr inbounds %struct.panning_data, %struct.panning_data* %65, i32 0, i32 1
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 1
  %69 = load float, float* %68, align 4
  %70 = fmul float %64, %69
  %71 = fadd float %63, %70
  %72 = load float*, float** %9, align 8
  %73 = getelementptr inbounds float, float* %72, i64 1
  store float %71, float* %73, align 4
  br label %74

74:                                               ; preds = %33
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load float*, float** %9, align 8
  %78 = getelementptr inbounds float, float* %77, i64 2
  store float* %78, float** %9, align 8
  br label %27

79:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
