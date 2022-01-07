; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_convert_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_audiotoolboxdec.c_ffat_convert_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }

@kAudioChannelLayoutTag_UseChannelDescriptions = common dso_local global i64 0, align 8
@kAudioChannelLayoutTag_UseChannelBitmap = common dso_local global i64 0, align 8
@kAudioFormatProperty_ChannelLayoutForBitmap = common dso_local global i32 0, align 4
@kAudioFormatProperty_ChannelLayoutForTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, i32*)* @ffat_convert_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ffat_convert_layout(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @kAudioChannelLayoutTag_UseChannelDescriptions, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %3, align 8
  br label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @kAudioChannelLayoutTag_UseChannelBitmap, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForBitmap, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @AudioFormatGetPropertyInfo(i32 %21, i32 4, i64* %23, i32* %24)
  br label %30

26:                                               ; preds = %16
  %27 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForTag, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @AudioFormatGetPropertyInfo(i32 %27, i32 8, i64* %6, i32* %28)
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_7__* @av_malloc(i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = call i32 @av_free(%struct.TYPE_7__* %38)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %63

40:                                               ; preds = %31
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @kAudioChannelLayoutTag_UseChannelBitmap, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForBitmap, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = call i32 @AudioFormatGetProperty(i32 %45, i32 4, i64* %47, i32* %48, %struct.TYPE_7__* %49)
  br label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @kAudioFormatProperty_ChannelLayoutForTag, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = call i32 @AudioFormatGetProperty(i32 %52, i32 8, i64* %6, i32* %53, %struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i64, i64* @kAudioChannelLayoutTag_UseChannelDescriptions, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32 @av_free(%struct.TYPE_7__* %60)
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %3, align 8
  br label %63

63:                                               ; preds = %56, %37, %14
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %64
}

declare dso_local i32 @AudioFormatGetPropertyInfo(i32, i32, i64*, i32*) #1

declare dso_local %struct.TYPE_7__* @av_malloc(i32) #1

declare dso_local i32 @av_free(%struct.TYPE_7__*) #1

declare dso_local i32 @AudioFormatGetProperty(i32, i32, i64*, i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
