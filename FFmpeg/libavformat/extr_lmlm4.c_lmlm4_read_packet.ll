; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_lmlm4.c_lmlm4_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_lmlm4.c_lmlm4_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

@LMLM4_INVALID = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid or unsupported frame_type\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@LMLM4_MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"packet size %d is invalid\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @lmlm4_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmlm4_read_packet(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @avio_rb16(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @avio_rb16(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @avio_rb32(i32* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sub i32 0, %21
  %23 = and i32 %22, 511
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub i32 %24, 8
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %26, 129
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @LMLM4_INVALID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %33, i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @LMLM4_MAX_PACKET_SIZE, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = icmp ule i32 %43, 8
  br i1 %44, label %45, label %52

45:                                               ; preds = %42, %38
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @av_log(%struct.TYPE_8__* %46, i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = call i32 @AVERROR(i32 %50)
  store i32 %51, i32* %3, align 4
  br label %78

52:                                               ; preds = %42
  %53 = load i32*, i32** %6, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @av_get_packet(i32* %53, %struct.TYPE_7__* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EIO, align 4
  %60 = call i32 @AVERROR(i32 %59)
  store i32 %60, i32* %3, align 4
  br label %78

61:                                               ; preds = %52
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @avio_skip(i32* %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  switch i32 %65, label %76 [
    i32 130, label %66
    i32 128, label %70
    i32 131, label %70
    i32 129, label %73
  ]

66:                                               ; preds = %61
  %67 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %61, %61, %66
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  br label %76

73:                                               ; preds = %61
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %61, %73, %70
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %58, %45, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
