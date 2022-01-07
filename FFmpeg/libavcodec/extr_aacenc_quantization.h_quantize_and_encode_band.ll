; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization.h_quantize_and_encode_band.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacenc_quantization.h_quantize_and_encode_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AACEncContext = type { i32 }

@INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AACEncContext*, i32*, float*, float*, i32, i32, i32, float, i32)* @quantize_and_encode_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quantize_and_encode_band(%struct.AACEncContext* %0, i32* %1, float* %2, float* %3, i32 %4, i32 %5, i32 %6, float %7, i32 %8) #0 {
  %10 = alloca %struct.AACEncContext*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store %struct.AACEncContext* %0, %struct.AACEncContext** %10, align 8
  store i32* %1, i32** %11, align 8
  store float* %2, float** %12, align 8
  store float* %3, float** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store float %7, float* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.AACEncContext*, %struct.AACEncContext** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load float*, float** %12, align 8
  %22 = load float*, float** %13, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load float, float* %17, align 4
  %27 = load i32, i32* @INFINITY, align 4
  %28 = load i32, i32* %18, align 4
  %29 = call i32 @quantize_and_encode_band_cost(%struct.AACEncContext* %19, i32* %20, float* %21, float* %22, i32* null, i32 %23, i32 %24, i32 %25, float %26, i32 %27, i32* null, i32* null, i32 %28)
  ret void
}

declare dso_local i32 @quantize_and_encode_band_cost(%struct.AACEncContext*, i32*, float*, float*, i32*, i32, i32, i32, float, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
