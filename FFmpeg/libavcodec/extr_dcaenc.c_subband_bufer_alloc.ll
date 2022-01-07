; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_subband_bufer_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dcaenc.c_subband_bufer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*** }

@MAX_CHANNELS = common dso_local global i32 0, align 4
@DCAENC_SUBBANDS = common dso_local global i32 0, align 4
@SUBBAND_SAMPLES = common dso_local global i32 0, align 4
@DCA_ADPCM_COEFFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @subband_bufer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subband_bufer_alloc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i32, i32* @MAX_CHANNELS, align 4
  %8 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %9 = mul nsw i32 %7, %8
  %10 = load i32, i32* @SUBBAND_SAMPLES, align 4
  %11 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %12 = add nsw i32 %10, %11
  %13 = mul nsw i32 %9, %12
  %14 = call i32* @av_calloc(i32 %13, i32 4)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %65, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MAX_CHANNELS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %61, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DCAENC_SUBBANDS, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @SUBBAND_SAMPLES, align 4
  %36 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %37 = add nsw i32 %35, %36
  %38 = mul nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %31, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SUBBAND_SAMPLES, align 4
  %43 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %44 = add nsw i32 %42, %43
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32, i32* @DCA_ADPCM_COEFFS, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32***, i32**** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**, i32*** %53, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %50, i32** %60, align 8
  br label %61

61:                                               ; preds = %30
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %26

64:                                               ; preds = %26
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %21

68:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %17
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
