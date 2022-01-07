; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_get_system_av_info.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/extr_libretro.c_retro_get_system_av_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.retro_system_av_info = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, float, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@vout_height = common dso_local global i32 0, align 4
@VOUT_MAX_WIDTH = common dso_local global i32 0, align 4
@VOUT_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @retro_get_system_av_info(%struct.retro_system_av_info* %0) #0 {
  %2 = alloca %struct.retro_system_av_info*, align 8
  store %struct.retro_system_av_info* %0, %struct.retro_system_av_info** %2, align 8
  %3 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %4 = call i32 @memset(%struct.retro_system_av_info* %3, i32 0, i32 28)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 50, i32 60
  %9 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %10 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %13 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 44100, i32* %14, align 4
  %15 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %16 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 320, i32* %17, align 4
  %18 = load i32, i32* @vout_height, align 4
  %19 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %20 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @VOUT_MAX_WIDTH, align 4
  %23 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %24 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @VOUT_MAX_HEIGHT, align 4
  %27 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %28 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 4
  %30 = load %struct.retro_system_av_info*, %struct.retro_system_av_info** %2, align 8
  %31 = getelementptr inbounds %struct.retro_system_av_info, %struct.retro_system_av_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store float 0.000000e+00, float* %32, align 4
  ret void
}

declare dso_local i32 @memset(%struct.retro_system_av_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
