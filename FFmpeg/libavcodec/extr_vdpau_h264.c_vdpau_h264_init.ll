; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_h264.c_vdpau_h264_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FF_PROFILE_H264_INTRA = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_BASELINE = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_MAIN = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_HIGH = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VDP_DECODER_LEVEL_H264_1b = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_CONSTRAINED_BASELINE = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_EXTENDED = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_H264_HIGH_444_PREDICTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @vdpau_h264_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_h264_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FF_PROFILE_H264_INTRA, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  switch i32 %14, label %23 [
    i32 136, label %15
    i32 134, label %17
    i32 128, label %17
    i32 132, label %19
    i32 131, label %21
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* @VDP_DECODER_PROFILE_H264_BASELINE, align 4
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %1, %1
  %18 = load i32, i32* @VDP_DECODER_PROFILE_H264_MAIN, align 4
  store i32 %18, i32* %4, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @VDP_DECODER_PROFILE_H264_HIGH, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @VDP_DECODER_PROFILE_H264_HIGH, align 4
  store i32 %22, i32* %4, align 4
  br label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOTSUP, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %45

26:                                               ; preds = %21, %19, %17, %15
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FF_PROFILE_H264_INTRA, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 11
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @VDP_DECODER_LEVEL_H264_1b, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %38, %33, %26
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ff_vdpau_common_init(%struct.TYPE_4__* %41, i32 %42, i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_vdpau_common_init(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
