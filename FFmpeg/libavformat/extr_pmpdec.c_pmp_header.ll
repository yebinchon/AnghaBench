; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pmpdec.c_pmp_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pmpdec.c_pmp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPEG4 = common dso_local global i32 0, align 4
@AV_CODEC_ID_H264 = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported video format\0A\00", align 1
@AV_CODEC_ID_MP3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"AAC not yet correctly supported\0A\00", align 1
@AV_CODEC_ID_AAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported audio format\0A\00", align 1
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Encountered EOF while reading index.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Packet too small\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"File ends before first packet\0A\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @pmp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmp_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @avio_size(i32* %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %28, i32* null)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %15, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %234

35:                                               ; preds = %1
  %36 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @avio_skip(i32* %41, i32 8)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @avio_rl32(i32* %43)
  switch i32 %44, label %57 [
    i32 0, label %45
    i32 1, label %51
  ]

45:                                               ; preds = %35
  %46 = load i32, i32* @AV_CODEC_ID_MPEG4, align 4
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 4
  br label %61

51:                                               ; preds = %35
  %52 = load i32, i32* @AV_CODEC_ID_H264, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %61

57:                                               ; preds = %35
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_14__* %58, i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %51, %45
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @avio_rl32(i32* %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @avio_rl32(i32* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @avio_rl32(i32* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @avio_rl32(i32* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @avio_rl32(i32* %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %81, i32 32, i32 %82, i32 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @avio_rl32(i32* %91)
  switch i32 %92, label %100 [
    i32 0, label %93
    i32 1, label %95
  ]

93:                                               ; preds = %61
  %94 = load i32, i32* @AV_CODEC_ID_MP3, align 4
  store i32 %94, i32* %9, align 4
  br label %104

95:                                               ; preds = %61
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = load i32, i32* @AV_LOG_ERROR, align 4
  %98 = call i32 @av_log(%struct.TYPE_14__* %96, i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @AV_CODEC_ID_AAC, align 4
  store i32 %99, i32* %9, align 4
  br label %104

100:                                              ; preds = %61
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = call i32 @av_log(%struct.TYPE_14__* %101, i32 %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %95, %93
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @avio_rl16(i32* %105)
  %107 = add nsw i32 %106, 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = call i32 @avio_skip(i32* %110, i32 10)
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @avio_rl32(i32* %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @avio_rl32(i32* %114)
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = call i64 @avio_tell(i32* %117)
  %119 = load i64, i64* %8, align 8
  %120 = mul nsw i64 4, %119
  %121 = add nsw i64 %118, %120
  store i64 %121, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %122

122:                                              ; preds = %188, %104
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %8, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %191

127:                                              ; preds = %122
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 @avio_rl32(i32* %128)
  %130 = sext i32 %129 to i64
  store i64 %130, i64* %16, align 8
  %131 = load i64, i64* %16, align 8
  %132 = and i64 %131, 1
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  br label %137

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ]
  store i32 %138, i32* %17, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = call i64 @avio_feof(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = load i32, i32* @AV_LOG_FATAL, align 4
  %145 = call i32 @av_log(%struct.TYPE_14__* %143, i32 %144, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %146, i32* %2, align 4
  br label %234

147:                                              ; preds = %137
  %148 = load i64, i64* %16, align 8
  %149 = ashr i64 %148, 1
  store i64 %149, i64* %16, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 4, %153
  %155 = add nsw i32 9, %154
  %156 = sext i32 %155 to i64
  %157 = icmp slt i64 %150, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %147
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = load i32, i32* @AV_LOG_ERROR, align 4
  %161 = call i32 @av_log(%struct.TYPE_14__* %159, i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %162, i32* %2, align 4
  br label %234

163:                                              ; preds = %147
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %165 = load i64, i64* %13, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i64, i64* %16, align 8
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @av_add_index_entry(%struct.TYPE_13__* %164, i64 %165, i32 %166, i64 %167, i32 0, i32 %168)
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %13, align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %14, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %163
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* %14, align 8
  %181 = icmp sgt i64 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = call i32 @av_log(%struct.TYPE_14__* %183, i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %186 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %186, i32* %2, align 4
  br label %234

187:                                              ; preds = %178, %175, %163
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %12, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %12, align 4
  br label %122

191:                                              ; preds = %122
  store i32 1, i32* %12, align 4
  br label %192

192:                                              ; preds = %230, %191
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ult i32 %193, %196
  br i1 %197, label %198, label %233

198:                                              ; preds = %192
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %199, i32* null)
  store %struct.TYPE_13__* %200, %struct.TYPE_13__** %18, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %202 = icmp ne %struct.TYPE_13__* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %198
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = call i32 @AVERROR(i32 %204)
  store i32 %205, i32* %2, align 4
  br label %234

206:                                              ; preds = %198
  %207 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 5
  store i32 %207, i32* %211, align 4
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %11, align 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  store i32 %217, i32* %221, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 4
  store i32 %222, i32* %226, align 4
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %227, i32 32, i32 1, i32 %228)
  br label %230

230:                                              ; preds = %206
  %231 = load i32, i32* %12, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %12, align 4
  br label %192

233:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %234

234:                                              ; preds = %233, %203, %182, %158, %142, %32
  %235 = load i32, i32* %2, align 4
  ret i32 %235
}

declare dso_local i64 @avio_size(i32*) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @avio_rl16(i32*) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32 @av_add_index_entry(%struct.TYPE_13__*, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
