; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_xmv.c_xmv_fetch_video_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_xmv.c_xmv_fetch_video_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i64, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @xmv_fetch_video_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmv_fetch_video_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SEEK_SET, align 4
  %28 = call i64 @avio_seek(i32* %23, i64 %26, i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EIO, align 4
  %35 = call i32 @AVERROR(i32 %34)
  store i32 %35, i32* %3, align 4
  br label %143

36:                                               ; preds = %2
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @avio_rl32(i32* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %39, 131071
  %41 = mul nsw i32 %40, 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 17
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %143

54:                                               ; preds = %36
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @av_get_packet(i32* %55, %struct.TYPE_10__* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %143

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %13, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %14, align 8
  br label %74

74:                                               ; preds = %83, %64
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = icmp ult i32* %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @AV_RL32(i32* %80)
  %82 = call i32 @AV_WB32(i32* %79, i32 %81)
  br label %83

83:                                               ; preds = %78
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32* %85, i32** %13, align 8
  br label %74

86:                                               ; preds = %74
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 128
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %86
  br label %126

124:                                              ; preds = %86
  %125 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %126, %62, %51, %33
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @avio_seek(i32*, i64, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_get_packet(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
