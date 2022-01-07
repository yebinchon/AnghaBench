; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_vc1.c_vdpau_vc1_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vdpau_vc1.c_vdpau_vc1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@VDP_DECODER_PROFILE_VC1_SIMPLE = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_VC1_MAIN = common dso_local global i32 0, align 4
@VDP_DECODER_PROFILE_VC1_ADVANCED = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @vdpau_vc1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdpau_vc1_init(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %14 [
    i32 128, label %8
    i32 129, label %10
    i32 130, label %12
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @VDP_DECODER_PROFILE_VC1_SIMPLE, align 4
  store i32 %9, i32* %4, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @VDP_DECODER_PROFILE_VC1_MAIN, align 4
  store i32 %11, i32* %4, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @VDP_DECODER_PROFILE_VC1_ADVANCED, align 4
  store i32 %13, i32* %4, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOTSUP, align 4
  %16 = call i32 @AVERROR(i32 %15)
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %12, %10, %8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ff_vdpau_common_init(%struct.TYPE_4__* %18, i32 %19, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_vdpau_common_init(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
