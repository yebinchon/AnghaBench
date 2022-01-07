; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wtvenc.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__**, %struct.TYPE_14__*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64 }

@ff_wtv_guid = common dso_local global i32 0, align 4
@sub_wtv_guid = common dso_local global i32 0, align 4
@WTV_SECTOR_BITS = common dso_local global i32 0, align 4
@WTV_BIGSECTOR_BITS = common dso_local global i32 0, align 4
@AV_CODEC_ID_MJPEG = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"write stream codec failed codec_type(0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"write stream data failed codec_type(0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 -1, i32* %19, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @ff_put_guid(i32* %20, i32* @ff_wtv_guid)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ff_put_guid(i32* %22, i32* @sub_wtv_guid)
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @avio_wl32(i32* %24, i32 1)
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @avio_wl32(i32* %26, i32 2)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %30 = shl i32 1, %29
  %31 = call i32 @avio_wl32(i32* %28, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @WTV_BIGSECTOR_BITS, align 4
  %34 = shl i32 1, %33
  %35 = call i32 @avio_wl32(i32* %32, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @avio_wl32(i32* %36, i32 0)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @write_pad(i32* %38, i32 4)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @avio_wl32(i32* %40, i32 0)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @write_pad(i32* %42, i32 32)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @avio_wl32(i32* %44, i32 0)
  %46 = load i32, i32* @WTV_SECTOR_BITS, align 4
  %47 = shl i32 1, %46
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @avio_tell(i32* %48)
  %50 = sub nsw i32 %47, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @write_pad(i32* %51, i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @avio_tell(i32* %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  store i32 -1, i32* %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 4
  store i32 1, i32* %63, align 8
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %108, %1
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %73, i64 %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %9, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %108

86:                                               ; preds = %70
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = call i32 @write_stream_codec(%struct.TYPE_16__* %87, %struct.TYPE_15__* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @av_log(%struct.TYPE_16__* %93, i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %2, align 4
  br label %162

101:                                              ; preds = %86
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = call i32 @write_sync(%struct.TYPE_16__* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %85
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %64

111:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %150, %111
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %112
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %121, i64 %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %9, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @AV_CODEC_ID_MJPEG, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %118
  br label %150

134:                                              ; preds = %118
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = call i32 @write_stream_data(%struct.TYPE_16__* %135, %struct.TYPE_15__* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @av_log(%struct.TYPE_16__* %141, i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  store i32 -1, i32* %2, align 4
  br label %162

149:                                              ; preds = %134
  br label %150

150:                                              ; preds = %149, %133
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %112

153:                                              ; preds = %112
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %160 = call i32 @write_index(%struct.TYPE_16__* %159)
  br label %161

161:                                              ; preds = %158, %153
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %140, %92
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @ff_put_guid(i32*, i32*) #1

declare dso_local i32 @avio_wl32(i32*, i32) #1

declare dso_local i32 @write_pad(i32*, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @write_stream_codec(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @av_log(%struct.TYPE_16__*, i32, i8*, i32) #1

declare dso_local i32 @write_sync(%struct.TYPE_16__*) #1

declare dso_local i32 @write_stream_data(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @write_index(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
