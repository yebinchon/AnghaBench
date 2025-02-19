; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_video.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_core.c_decode_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.SwsContext = type { i32 }

@vctx = common dso_local global i32 0, align 4
@media = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.SwsContext*)* @decode_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_video(i32* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__* %2, %struct.SwsContext* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.SwsContext*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store %struct.SwsContext* %3, %struct.SwsContext** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @vctx, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @avcodec_decode_video2(i32 %12, %struct.TYPE_8__* %13, i32* %10, i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load %struct.SwsContext*, %struct.SwsContext** %9, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @media, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @media, i32 0, i32 0), align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = call i32 @av_frame_get_colorspace(%struct.TYPE_8__* %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = call i32 @av_frame_get_color_range(%struct.TYPE_8__* %28)
  %30 = call i32 @set_colorspace(%struct.SwsContext* %23, i32 %24, i32 %25, i32 %27, i32 %29)
  %31 = load %struct.SwsContext*, %struct.SwsContext** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32**
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @media, i32 0, i32 0), align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sws_scale(%struct.SwsContext* %31, i32** %35, i32 %38, i32 0, i32 %39, i64 %42, i32 %45)
  store i32 1, i32* %5, align 4
  br label %48

47:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %22, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @avcodec_decode_video2(i32, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @set_colorspace(%struct.SwsContext*, i32, i32, i32, i32) #1

declare dso_local i32 @av_frame_get_colorspace(%struct.TYPE_8__*) #1

declare dso_local i32 @av_frame_get_color_range(%struct.TYPE_8__*) #1

declare dso_local i32 @sws_scale(%struct.SwsContext*, i32**, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
