; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_hevc.c_vdpau_hevc_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_hevc.c_vdpau_hevc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@VDP_DECODER_PROFILE_HEVC_MAIN = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_HEVC_MAIN_10 = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_HEVC_MAIN_STILL = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_HEVC_MAIN_444 = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @vdpau_hevc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_hevc_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 131, label %12
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @VDP_DECODER_PROFILE_HEVC_MAIN, align 4
  store i32 %13, i32* %4, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @VDP_DECODER_PROFILE_HEVC_MAIN_10, align 4
  store i32 %15, i32* %4, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @VDP_DECODER_PROFILE_HEVC_MAIN_STILL, align 4
  store i32 %17, i32* %4, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @VDP_DECODER_PROFILE_HEVC_MAIN_444, align 4
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOTSUP, align 4
  %22 = call i32 @AVERROR(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %18, %16, %14, %12
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ff_vdpau_common_init(%struct.TYPE_4__* %24, i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_vdpau_common_init(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
