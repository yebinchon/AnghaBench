; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg12.c_mpeg_parse_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_mpeg12.c_mpeg_parse_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*, i32*, i32, i32, i32)* @mpeg_parse_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_parse_packet(i32* %0, i32* %1, %struct.TYPE_8__* %2, %struct.TYPE_9__* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %21 = load i32, i32* %17, align 4
  %22 = icmp sle i32 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %9
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %10, align 4
  br label %73

25:                                               ; preds = %9
  %26 = load i32*, i32** %16, align 8
  %27 = call i32 @AV_RB32(i32* %26)
  store i32 %27, i32* %20, align 4
  %28 = load i32*, i32** %16, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  store i32* %29, i32** %16, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sub nsw i32 %30, 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %25
  %40 = load i32, i32* %20, align 4
  %41 = and i32 %40, 67108864
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %17, align 4
  %45 = icmp sle i32 %44, 4
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %47, i32* %10, align 4
  br label %73

48:                                               ; preds = %43
  %49 = load i32*, i32** %16, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sub nsw i32 %51, 4
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %48, %39, %25
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = load i32, i32* %17, align 4
  %56 = call i64 @av_new_packet(%struct.TYPE_9__* %54, i32 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %10, align 4
  br label %73

61:                                               ; preds = %53
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @memcpy(i32 %64, i32* %65, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %61, %58, %46, %23
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i64 @av_new_packet(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
