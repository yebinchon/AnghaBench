; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gdv.c_gdv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gdv.c_gdv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i8*, i8* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, i64, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i8*, i8*, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_GREMLIN_DPCM = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_S16LE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PCM_U8 = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@AV_CODEC_ID_GDV = common dso_local global i32 0, align 4
@FixedSize = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @gdv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdv_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @avio_skip(i32* %23, i32 4)
  %25 = load i32*, i32** %5, align 8
  %26 = call i8* @avio_rl16(i32* %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %28, i32 0)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %290

35:                                               ; preds = %1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* @avio_rl16(i32* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  store i8* %39, i8** %43, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @avio_rl16(i32* %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %50, i32* %2, align 4
  br label %290

51:                                               ; preds = %35
  %52 = load i32*, i32** %5, align 8
  %53 = call i8* @avio_rl16(i32* %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 1
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %160

58:                                               ; preds = %51
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = call %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__* %59, i32 0)
  store %struct.TYPE_13__* %60, %struct.TYPE_13__** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = call i32 @AVERROR(i32 %64)
  store i32 %65, i32* %2, align 4
  br label %290

66:                                               ; preds = %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 6
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i8* @avio_rl16(i32* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 2
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = add nsw i32 1, %90
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %66
  %100 = load i32, i32* @AV_CODEC_ID_GREMLIN_DPCM, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 5
  store i32 %100, i32* %104, align 8
  br label %119

105:                                              ; preds = %66
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %106, 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @AV_CODEC_ID_PCM_S16LE, align 4
  br label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @AV_CODEC_ID_PCM_U8, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = phi i32 [ %110, %109 ], [ %112, %111 ]
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 5
  store i32 %114, i32* %118, align 8
  br label %119

119:                                              ; preds = %113, %99
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %120, i32 64, i32 1, i32 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = udiv i32 %131, %132
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = mul i32 %133, %138
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 4
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = add nsw i32 1, %145
  %147 = mul i32 %139, %146
  %148 = load i32, i32* %9, align 4
  %149 = and i32 %148, 8
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = add nsw i32 1, %153
  %155 = udiv i32 %147, %154
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  store i32 1, i32* %159, align 4
  br label %163

160:                                              ; preds = %51
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 @avio_skip(i32* %161, i32 2)
  br label %163

163:                                              ; preds = %160, %119
  %164 = load i32*, i32** %5, align 8
  %165 = call i8* @avio_rl16(i32* %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %10, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @avio_skip(i32* %167, i32 4)
  %169 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 6
  store i32 %169, i32* %173, align 4
  %174 = load i32, i32* @AV_CODEC_ID_GDV, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 5
  store i32 %174, i32* %178, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i8* @avio_rl16(i32* %183)
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  store i8* %184, i8** %188, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = call i8* @avio_rl16(i32* %189)
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  store i8* %190, i8** %194, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %208, label %201

201:                                              ; preds = %163
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = load i8*, i8** %205, align 8
  %207 = icmp eq i8* %206, null
  br i1 %207, label %208, label %250

208:                                              ; preds = %201, %163
  store i32 0, i32* %12, align 4
  br label %209

209:                                              ; preds = %226, %208
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FixedSize, align 8
  %212 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__* %211)
  %213 = sub nsw i32 %212, 1
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %209
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FixedSize, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %11, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %229

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %209

229:                                              ; preds = %224, %209
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FixedSize, align 8
  %231 = load i32, i32* %12, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 3
  store i8* %235, i8** %239, align 8
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** @FixedSize, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  store i8* %245, i8** %249, align 8
  br label %250

250:                                              ; preds = %229, %201
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @avpriv_set_pts_info(%struct.TYPE_13__* %251, i32 64, i32 1, i32 %252)
  %254 = load i32, i32* %10, align 4
  %255 = and i32 %254, 1
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %287

257:                                              ; preds = %250
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %283, %257
  %259 = load i32, i32* %13, align 4
  %260 = icmp slt i32 %259, 256
  br i1 %260, label %261, label %286

261:                                              ; preds = %258
  %262 = load i32*, i32** %5, align 8
  %263 = call i32 @avio_r8(i32* %262)
  store i32 %263, i32* %14, align 4
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @avio_r8(i32* %264)
  store i32 %265, i32* %15, align 4
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @avio_r8(i32* %266)
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %14, align 4
  %269 = shl i32 %268, 18
  %270 = or i32 -16777216, %269
  %271 = load i32, i32* %15, align 4
  %272 = shl i32 %271, 10
  %273 = or i32 %270, %272
  %274 = load i32, i32* %16, align 4
  %275 = shl i32 %274, 2
  %276 = or i32 %273, %275
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 2
  %279 = load i32*, i32** %278, align 8
  %280 = load i32, i32* %13, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %276, i32* %282, align 4
  br label %283

283:                                              ; preds = %261
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %13, align 4
  br label %258

286:                                              ; preds = %258
  br label %287

287:                                              ; preds = %286, %250
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 3
  store i32 1, i32* %289, align 8
  store i32 0, i32* %2, align 4
  br label %290

290:                                              ; preds = %287, %63, %49, %32
  %291 = load i32, i32* %2, align 4
  ret i32 %291
}

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_rl16(i32*) #1

declare dso_local %struct.TYPE_13__* @avformat_new_stream(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_r8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
