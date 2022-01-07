; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_fsb.c_fsb_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_fsb.c_fsb_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_CODEC_ID_ADPCM_THP = common dso_local global i64 0, align 8
@AV_CODEC_ID_XMA2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @fsb_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsb_read_packet(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @avio_feof(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %24, i32* %3, align 4
  br label %139

25:                                               ; preds = %2
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @avio_tell(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AV_CODEC_ID_ADPCM_THP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %102

35:                                               ; preds = %25
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %102

40:                                               ; preds = %35
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @av_new_packet(%struct.TYPE_10__* %41, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %139

50:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %98, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %101

54:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i8* @avio_r8(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 8
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 %72, 2
  %74 = add nsw i32 %71, %73
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %69, i64 %76
  store i32 %66, i32* %77, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @avio_r8(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %86, 8
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %88, 2
  %90 = add nsw i32 %87, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  store i32 %82, i32* %93, align 4
  br label %94

94:                                               ; preds = %61
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %55

97:                                               ; preds = %55
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %51

101:                                              ; preds = %51
  store i32 0, i32* %8, align 4
  br label %111

102:                                              ; preds = %35, %25
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @av_get_packet(i32 %105, %struct.TYPE_10__* %106, i32 %109)
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %102, %101
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AV_CODEC_ID_XMA2, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp sge i32 %120, 1
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 2
  %129 = mul nsw i32 %128, 512
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %132

132:                                              ; preds = %122, %117, %111
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %132, %48, %23
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @avio_feof(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @avio_r8(i32) #1

declare dso_local i32 @av_get_packet(i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
