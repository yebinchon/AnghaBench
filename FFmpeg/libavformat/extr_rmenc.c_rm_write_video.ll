; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmenc.c_rm_write_video.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rmenc.c_rm_write_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Muxing packets larger than 64 kB (%d) is not supported\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32)* @rm_write_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rm_write_video(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @av_log(%struct.TYPE_10__* %34, i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %38, i32* %5, align 4
  br label %95

39:                                               ; preds = %4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 7
  %44 = load i32, i32* %8, align 4
  %45 = icmp sge i32 %44, 16384
  %46 = zext i1 %45 to i32
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %43, %47
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @write_packet_header(%struct.TYPE_10__* %40, %struct.TYPE_8__* %41, i32 %48, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @avio_w8(i32* %51, i32 129)
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %39
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @avio_w8(i32* %56, i32 129)
  br label %61

58:                                               ; preds = %39
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @avio_w8(i32* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 16384
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @avio_wb32(i32* %65, i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @avio_wb32(i32* %68, i32 %69)
  br label %80

71:                                               ; preds = %61
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = or i32 16384, %73
  %75 = call i32 @avio_wb16(i32* %72, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %8, align 4
  %78 = or i32 16384, %77
  %79 = call i32 @avio_wb16(i32* %76, i32 %78)
  br label %80

80:                                               ; preds = %71, %64
  %81 = load i32*, i32** %11, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 255
  %86 = call i32 @avio_w8(i32* %81, i32 %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @avio_write(i32* %87, i32* %88, i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %80, %33
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @write_packet_header(%struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
