; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffdec.c_get_aiff_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aiffdec.c_get_aiff_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__*, %struct.TYPE_9__**, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"exp %d is out of range\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AIFF = common dso_local global i32 0, align 4
@AIFF_C_VERSION1 = common dso_local global i32 0, align 4
@ff_codec_aiff_tags = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"unknown or unsupported codec tag: %s\00", align 1
@AV_CODEC_ID_PCM_S16BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @get_aiff_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aiff_header(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %20, i64 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %9, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %10, align 8
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @avio_rb16(i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @avio_rb32(i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @avio_rb16(i32* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @avio_rb16(i32* %48)
  %50 = sub nsw i32 %49, 16383
  %51 = sub nsw i32 %50, 63
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @avio_rb64(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, -63
  br i1 %55, label %59, label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 63
  br i1 %58, label %59, label %65

59:                                               ; preds = %56, %34
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @av_log(%struct.TYPE_10__* %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %4, align 4
  br label %250

65:                                               ; preds = %56
  %66 = load i32, i32* %11, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = shl i32 %69, %70
  store i32 %71, i32* %13, align 4
  br label %86

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 0, %75
  %77 = sub nsw i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = add i64 %74, %79
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 0, %81
  %83 = zext i32 %82 to i64
  %84 = lshr i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %72, %68
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sub nsw i32 %90, 18
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @AIFF, align 4
  store i32 %95, i32* %7, align 4
  br label %128

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @AIFF_C_VERSION1, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @avio_rl32(i32* %101)
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @ff_codec_aiff_tags, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ff_codec_get_id(i32 %105, i32 %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %100
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @av_fourcc2str(i32 %121)
  %123 = call i32 @avpriv_request_sample(%struct.TYPE_10__* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %117, %100
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %96
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @AIFF_C_VERSION1, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %138, label %132

132:                                              ; preds = %128
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @AV_CODEC_ID_PCM_S16BE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %132, %128
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @aiff_codec_get_id(i32 %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @av_get_bits_per_sample(i32 %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i32 1, i32* %152, align 4
  br label %204

153:                                              ; preds = %132
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  switch i32 %156, label %187 [
    i32 132, label %157
    i32 131, label %157
    i32 129, label %157
    i32 133, label %157
    i32 130, label %157
    i32 138, label %160
    i32 135, label %167
    i32 139, label %174
    i32 137, label %177
    i32 140, label %177
    i32 134, label %177
    i32 128, label %177
    i32 136, label %184
  ]

157:                                              ; preds = %153, %153, %153, %153, %153
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 1, i32* %159, align 4
  br label %190

160:                                              ; preds = %153
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = mul nsw i32 34, %163
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  br label %190

167:                                              ; preds = %153
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 2, %170
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  br label %190

174:                                              ; preds = %153
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  store i32 5, i32* %176, align 4
  br label %177

177:                                              ; preds = %153, %153, %153, %153, %174
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 1, %180
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 4
  br label %190

184:                                              ; preds = %153
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 4
  store i32 33, i32* %186, align 4
  br label %190

187:                                              ; preds = %153
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %187, %184, %177, %167, %160, %157
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @av_get_audio_frame_duration2(%struct.TYPE_11__* %196, i32 %199)
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 4
  br label %203

203:                                              ; preds = %195, %190
  br label %204

204:                                              ; preds = %203, %138
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %221, label %209

209:                                              ; preds = %204
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @av_get_bits_per_sample(i32 %212)
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = ashr i32 %217, 3
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %209, %204
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %221
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = shl i32 %232, 3
  %234 = mul nsw i32 %229, %233
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sdiv i32 %234, %237
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  br label %241

241:                                              ; preds = %226, %221
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = load i32*, i32** %8, align 8
  %246 = load i32, i32* %6, align 4
  %247 = call i32 @avio_skip(i32* %245, i32 %246)
  br label %248

248:                                              ; preds = %244, %241
  %249 = load i32, i32* %14, align 4
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %248, %59
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_rb64(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i32 @ff_codec_get_id(i32, i32) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @av_fourcc2str(i32) #1

declare dso_local i32 @aiff_codec_get_id(i32) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @av_get_audio_frame_duration2(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
