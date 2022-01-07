; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolo_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolo_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dspfilter_output = type { float*, i32 }
%struct.dspfilter_input = type { float*, i32 }
%struct.tremolo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dspfilter_output*, %struct.dspfilter_input*)* @tremolo_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tremolo_process(i8* %0, %struct.dspfilter_output* %1, %struct.dspfilter_input* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dspfilter_output*, align 8
  %6 = alloca %struct.dspfilter_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca %struct.tremolo*, align 8
  %10 = alloca [2 x float], align 4
  store i8* %0, i8** %4, align 8
  store %struct.dspfilter_output* %1, %struct.dspfilter_output** %5, align 8
  store %struct.dspfilter_input* %2, %struct.dspfilter_input** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.tremolo*
  store %struct.tremolo* %12, %struct.tremolo** %9, align 8
  %13 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %14 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %13, i32 0, i32 0
  %15 = load float*, float** %14, align 8
  %16 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %17 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %16, i32 0, i32 0
  store float* %15, float** %17, align 8
  %18 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %19 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %22 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dspfilter_output*, %struct.dspfilter_output** %5, align 8
  %24 = getelementptr inbounds %struct.dspfilter_output, %struct.dspfilter_output* %23, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  store float* %25, float** %8, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %55, %3
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.dspfilter_input*, %struct.dspfilter_input** %6, align 8
  %29 = getelementptr inbounds %struct.dspfilter_input, %struct.dspfilter_input* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 0
  %34 = load float*, float** %8, align 8
  %35 = getelementptr inbounds float, float* %34, i64 0
  %36 = load float, float* %35, align 4
  store float %36, float* %33, align 4
  %37 = getelementptr inbounds float, float* %33, i64 1
  %38 = load float*, float** %8, align 8
  %39 = getelementptr inbounds float, float* %38, i64 1
  %40 = load float, float* %39, align 4
  store float %40, float* %37, align 4
  %41 = load %struct.tremolo*, %struct.tremolo** %9, align 8
  %42 = getelementptr inbounds %struct.tremolo, %struct.tremolo* %41, i32 0, i32 1
  %43 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 0
  %44 = load float, float* %43, align 4
  %45 = call float @tremolocore_core(i32* %42, float %44)
  %46 = load float*, float** %8, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  store float %45, float* %47, align 4
  %48 = load %struct.tremolo*, %struct.tremolo** %9, align 8
  %49 = getelementptr inbounds %struct.tremolo, %struct.tremolo* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x float], [2 x float]* %10, i64 0, i64 1
  %51 = load float, float* %50, align 4
  %52 = call float @tremolocore_core(i32* %49, float %51)
  %53 = load float*, float** %8, align 8
  %54 = getelementptr inbounds float, float* %53, i64 1
  store float %52, float* %54, align 4
  br label %55

55:                                               ; preds = %32
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load float*, float** %8, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  store float* %59, float** %8, align 8
  br label %26

60:                                               ; preds = %26
  ret void
}

declare dso_local float @tremolocore_core(i32*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
