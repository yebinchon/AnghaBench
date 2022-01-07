; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_find_probe_decoder.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_find_probe_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@AV_CODEC_CAP_AVOID_PROBING = common dso_local global i32 0, align 4
@AV_CODEC_CAP_EXPERIMENTAL = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i32*, i32)* @find_probe_decoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @find_probe_decoder(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.TYPE_8__* @find_decoder(i32* %10, i32* %11, i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %54

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AV_CODEC_CAP_AVOID_PROBING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  br label %25

25:                                               ; preds = %50, %24
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = call %struct.TYPE_8__* @av_codec_next(%struct.TYPE_8__* %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = call i64 @av_codec_is_decoder(%struct.TYPE_8__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AV_CODEC_CAP_AVOID_PROBING, align 4
  %44 = load i32, i32* @AV_CODEC_CAP_EXPERIMENTAL, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %4, align 8
  br label %54

50:                                               ; preds = %39, %35, %29
  br label %25

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %17
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %4, align 8
  br label %54

54:                                               ; preds = %52, %48, %16
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %55
}

declare dso_local %struct.TYPE_8__* @find_decoder(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @av_codec_next(%struct.TYPE_8__*) #1

declare dso_local i64 @av_codec_is_decoder(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
