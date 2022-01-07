; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_media_preamble.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gxfenc.c_gxf_write_media_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__**, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }

@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_ROUND_UP = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_CODEC_ID_MPEG2VIDEO = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@AV_CODEC_ID_DVVIDEO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, i32)* @gxf_write_media_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxf_write_media_preamble(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %7, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %21, i64 %24
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %10, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  br label %56

41:                                               ; preds = %3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 48000, %52
  %54 = load i32, i32* @AV_ROUND_UP, align 4
  %55 = call i32 @av_rescale_rnd(i32 %44, i32 %48, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %41, %37
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @avio_w8(i32* %57, i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @avio_w8(i32* %62, i32 %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @avio_wb32(i32* %67, i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %56
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @avio_wb16(i32* %78, i32 0)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sdiv i32 %81, 2
  %83 = call i32 @avio_wb16(i32* %80, i32 %82)
  br label %155

84:                                               ; preds = %56
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AV_CODEC_ID_MPEG2VIDEO, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %84
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @gxf_parse_mpeg_frame(%struct.TYPE_13__* %93, i32 %96, i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @avio_w8(i32* %105, i32 13)
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %130

111:                                              ; preds = %92
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @avio_w8(i32* %116, i32 15)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %129

122:                                              ; preds = %111
  %123 = load i32*, i32** %8, align 8
  %124 = call i32 @avio_w8(i32* %123, i32 14)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %122, %115
  br label %130

130:                                              ; preds = %129, %104
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @avio_wb24(i32* %131, i32 %132)
  br label %154

134:                                              ; preds = %84
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @AV_CODEC_ID_DVVIDEO, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %134
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sdiv i32 %144, 4096
  %146 = call i32 @avio_w8(i32* %143, i32 %145)
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @avio_wb24(i32* %147, i32 0)
  br label %153

149:                                              ; preds = %134
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @avio_wb32(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %142
  br label %154

154:                                              ; preds = %153, %130
  br label %155

155:                                              ; preds = %154, %77
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i32 @avio_wb32(i32* %156, i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @avio_w8(i32* %159, i32 1)
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @avio_w8(i32* %161, i32 0)
  ret i32 16
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @gxf_parse_mpeg_frame(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
