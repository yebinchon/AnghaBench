; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_bands_dist.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opusenc_psy.c_bands_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@CELT_MAX_BANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, float*)* @bands_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bands_dist(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, float* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store float* %2, float** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32 @ff_opus_rc_enc_init(i32* %9)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @ff_celt_bitalloc(%struct.TYPE_8__* %13, i32* %9, i32 1)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @CELT_MAX_BANDS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  store float 0.000000e+00, float* %10, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call float @pvq_band_cost(i32 %22, %struct.TYPE_8__* %23, i32* %9, i32 %24, float* %10, i32 %27)
  store float %28, float* %11, align 4
  %29 = load float, float* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to float
  %32 = fadd float %31, %29
  %33 = fptosi float %32 to i32
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load i32, i32* %8, align 4
  %39 = sitofp i32 %38 to float
  %40 = load float*, float** %6, align 8
  store float %39, float* %40, align 4
  ret i32 0
}

declare dso_local i32 @ff_opus_rc_enc_init(i32*) #1

declare dso_local i32 @ff_celt_bitalloc(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local float @pvq_band_cost(i32, %struct.TYPE_8__*, i32*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
