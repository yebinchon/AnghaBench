; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_idat_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngdec.c_decode_idat_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i64, i64, %struct.TYPE_17__, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32*, i32*, i32 }

@PNG_IHDR = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"IDAT without IHDR\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@PNG_IDAT = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGBA = common dso_local global i8* null, align 8
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@AV_PIX_FMT_RGBA64BE = common dso_local global i8* null, align 8
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@AV_CODEC_ID_APNG = common dso_local global i64 0, align 8
@AV_PIX_FMT_MONOBLACK = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8
@AV_PIX_FMT_YA8 = common dso_local global i8* null, align 8
@AV_PIX_FMT_YA16BE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Bit depth %d color type %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"bit depth %d and color type %d with TRNS\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@APNG_DISPOSE_OP_PREVIOUS = common dso_local global i64 0, align 8
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"row_size=%d crow_size =%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*)* @decode_idat_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_idat_chunk(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %9, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 8
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 2, i32 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %11, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PNG_IHDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = load i32, i32* @AV_LOG_ERROR, align 4
  %28 = call i32 @av_log(%struct.TYPE_20__* %26, i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %29, i32* %5, align 4
  br label %610

30:                                               ; preds = %4
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PNG_IDAT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %555, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 30
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 29
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ff_set_dimensions(%struct.TYPE_20__* %38, i32 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %610

50:                                               ; preds = %37
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ff_png_get_nb_channels(i64 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 7
  %70 = ashr i32 %69, 3
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  %80 = add nsw i32 %79, 7
  %81 = ashr i32 %80, 3
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %98, label %88

88:                                               ; preds = %50
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 4
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 8
  br i1 %97, label %98, label %107

98:                                               ; preds = %93, %88, %50
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  store i32 129, i32* %106, align 8
  br label %302

107:                                              ; preds = %98, %93
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %122, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 4
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 8
  br i1 %121, label %122, label %133

122:                                              ; preds = %117, %112, %107
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i8*, i8** @AV_PIX_FMT_RGBA, align 8
  %130 = ptrtoint i8* %129 to i32
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %301

133:                                              ; preds = %122, %117
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %148, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 8
  br i1 %147, label %148, label %157

148:                                              ; preds = %143, %138, %133
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  store i32 130, i32* %156, align 8
  br label %300

157:                                              ; preds = %148, %143
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 16
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  store i32 131, i32* %170, align 8
  br label %299

171:                                              ; preds = %162, %157
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %174, 16
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 0
  store i32 128, i32* %184, align 8
  br label %298

185:                                              ; preds = %176, %171
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp eq i32 %188, 16
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i8*, i8** @AV_PIX_FMT_RGBA64BE, align 8
  %198 = ptrtoint i8* %197 to i32
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  br label %297

201:                                              ; preds = %190, %185
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %221, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %221, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 4
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 8
  br i1 %220, label %221, label %231

221:                                              ; preds = %216, %211, %206, %201
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %296

231:                                              ; preds = %221, %216
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %251

236:                                              ; preds = %231
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @AV_CODEC_ID_APNG, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i32, i32* @AV_PIX_FMT_MONOBLACK, align 4
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  br label %295

251:                                              ; preds = %241, %236, %231
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 8
  br i1 %255, label %256, label %267

256:                                              ; preds = %251
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i32 0, i32 4
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %256
  %263 = load i8*, i8** @AV_PIX_FMT_YA8, align 8
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  br label %294

267:                                              ; preds = %256, %251
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp eq i32 %270, 16
  br i1 %271, label %272, label %283

272:                                              ; preds = %267
  %273 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %283

278:                                              ; preds = %272
  %279 = load i8*, i8** @AV_PIX_FMT_YA16BE, align 8
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  store i32 %280, i32* %282, align 8
  br label %293

283:                                              ; preds = %272, %267
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @avpriv_report_missing_feature(%struct.TYPE_20__* %284, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %287, i64 %290)
  %292 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %292, i32* %5, align 4
  br label %610

293:                                              ; preds = %278
  br label %294

294:                                              ; preds = %293, %262
  br label %295

295:                                              ; preds = %294, %247
  br label %296

296:                                              ; preds = %295, %227
  br label %297

297:                                              ; preds = %296, %196
  br label %298

298:                                              ; preds = %297, %182
  br label %299

299:                                              ; preds = %298, %168
  br label %300

300:                                              ; preds = %299, %154
  br label %301

301:                                              ; preds = %300, %128
  br label %302

302:                                              ; preds = %301, %104
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 13
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %355

307:                                              ; preds = %302
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %355

313:                                              ; preds = %307
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  switch i32 %316, label %337 [
    i32 129, label %317
    i32 128, label %322
    i32 130, label %327
    i32 131, label %332
  ]

317:                                              ; preds = %313
  %318 = load i8*, i8** @AV_PIX_FMT_RGBA, align 8
  %319 = ptrtoint i8* %318 to i32
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  br label %347

322:                                              ; preds = %313
  %323 = load i8*, i8** @AV_PIX_FMT_RGBA64BE, align 8
  %324 = ptrtoint i8* %323 to i32
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 8
  br label %347

327:                                              ; preds = %313
  %328 = load i8*, i8** @AV_PIX_FMT_YA8, align 8
  %329 = ptrtoint i8* %328 to i32
  %330 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  br label %347

332:                                              ; preds = %313
  %333 = load i8*, i8** @AV_PIX_FMT_YA16BE, align 8
  %334 = ptrtoint i8* %333 to i32
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  br label %347

337:                                              ; preds = %313
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 4
  %344 = load i64, i64* %343, align 8
  %345 = call i32 @avpriv_request_sample(%struct.TYPE_20__* %338, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %341, i64 %344)
  %346 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %346, i32* %5, align 4
  br label %610

347:                                              ; preds = %332, %327, %322, %317
  %348 = load i64, i64* %11, align 8
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 6
  %351 = load i32, i32* %350, align 4
  %352 = sext i32 %351 to i64
  %353 = add i64 %352, %348
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %350, align 4
  br label %355

355:                                              ; preds = %347, %307, %302
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %357 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %357, i32 0, i32 28
  %359 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %360 = call i32 @ff_thread_get_buffer(%struct.TYPE_20__* %356, i32* %358, i32 %359)
  store i32 %360, i32* %10, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %355
  %363 = load i32, i32* %10, align 4
  store i32 %363, i32* %5, align 4
  br label %610

364:                                              ; preds = %355
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @AV_CODEC_ID_APNG, align 8
  %369 = icmp eq i64 %367, %368
  br i1 %369, label %370, label %390

370:                                              ; preds = %364
  %371 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 9
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @APNG_DISPOSE_OP_PREVIOUS, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %390

376:                                              ; preds = %370
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 27
  %380 = call i32 @ff_thread_release_buffer(%struct.TYPE_20__* %377, i32* %379)
  %381 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 27
  %384 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %385 = call i32 @ff_thread_get_buffer(%struct.TYPE_20__* %381, i32* %383, i32 %384)
  store i32 %385, i32* %10, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %376
  %388 = load i32, i32* %10, align 4
  store i32 %388, i32* %5, align 4
  br label %610

389:                                              ; preds = %376
  br label %390

390:                                              ; preds = %389, %370, %364
  %391 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %392 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 8
  %394 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  store i32 1, i32* %395, align 8
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 20
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  %400 = xor i1 %399, true
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %404 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %403, i32 0, i32 1
  store i32 %402, i32* %404, align 4
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %406 = call i32 @ff_thread_finish_setup(%struct.TYPE_20__* %405)
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 20
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %418, label %411

411:                                              ; preds = %390
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 7
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, 1
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 10
  store i32 %415, i32* %417, align 8
  br label %439

418:                                              ; preds = %390
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 26
  store i64 0, i64* %420, align 8
  %421 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 26
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %424, i32 0, i32 5
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 8
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @ff_png_pass_row_size(i64 %423, i32 %426, i32 %429)
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 11
  store i32 %430, i32* %432, align 4
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %434 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %433, i32 0, i32 11
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 10
  store i32 %436, i32* %438, align 8
  br label %439

439:                                              ; preds = %418, %411
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %441 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %441, i32 0, i32 7
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %445 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %444, i32 0, i32 10
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @ff_dlog(%struct.TYPE_20__* %440, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %443, i32 %446)
  %448 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %448, i32 0, i32 2
  %450 = load i32*, i32** %449, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 25
  store i32 %452, i32* %454, align 8
  %455 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %456 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %455, i32 0, i32 3
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 24
  store i32 %459, i32* %461, align 4
  %462 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %466 = icmp eq i32 %464, %465
  br i1 %466, label %467, label %477

467:                                              ; preds = %439
  %468 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %468, i32 0, i32 2
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 1
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 23
  %475 = load i32, i32* %474, align 8
  %476 = call i32 @memcpy(i32 %472, i32 %475, i32 1024)
  br label %477

477:                                              ; preds = %467, %439
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 21
  %480 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %480, i32 0, i32 22
  %482 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %482, i32 0, i32 7
  %484 = load i32, i32* %483, align 8
  %485 = call i32 @av_fast_padded_mallocz(i32* %479, i32* %481, i32 %484)
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %486, i32 0, i32 21
  %488 = load i32, i32* %487, align 8
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %492, label %490

490:                                              ; preds = %477
  %491 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %491, i32* %5, align 4
  br label %610

492:                                              ; preds = %477
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 20
  %495 = load i64, i64* %494, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %503, label %497

497:                                              ; preds = %492
  %498 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %498, i32 0, i32 4
  %500 = load i64, i64* %499, align 8
  %501 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %502 = icmp eq i64 %500, %501
  br i1 %502, label %503, label %519

503:                                              ; preds = %497, %492
  %504 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %505 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %504, i32 0, i32 18
  %506 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %506, i32 0, i32 19
  %508 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %508, i32 0, i32 7
  %510 = load i32, i32* %509, align 8
  %511 = call i32 @av_fast_padded_malloc(i64* %505, i32* %507, i32 %510)
  %512 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %512, i32 0, i32 18
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %518, label %516

516:                                              ; preds = %503
  %517 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %517, i32* %5, align 4
  br label %610

518:                                              ; preds = %503
  br label %519

519:                                              ; preds = %518, %497
  %520 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %521 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %520, i32 0, i32 16
  %522 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %522, i32 0, i32 17
  %524 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %525 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %524, i32 0, i32 7
  %526 = load i32, i32* %525, align 8
  %527 = add nsw i32 %526, 16
  %528 = call i32 @av_fast_padded_malloc(i64* %521, i32* %523, i32 %527)
  %529 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 16
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %519
  %534 = load i32, i32* @ENOMEM, align 4
  %535 = call i32 @AVERROR(i32 %534)
  store i32 %535, i32* %5, align 4
  br label %610

536:                                              ; preds = %519
  %537 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %537, i32 0, i32 16
  %539 = load i64, i64* %538, align 8
  %540 = add nsw i64 %539, 15
  %541 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %542 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %541, i32 0, i32 14
  store i64 %540, i64* %542, align 8
  %543 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %543, i32 0, i32 10
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %547, i32 0, i32 0
  store i32 %545, i32* %548, align 8
  %549 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %550 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %549, i32 0, i32 14
  %551 = load i64, i64* %550, align 8
  %552 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %553 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %553, i32 0, i32 1
  store i64 %551, i64* %554, align 8
  br label %555

555:                                              ; preds = %536, %30
  %556 = load i32, i32* @PNG_IDAT, align 4
  %557 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %558 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 8
  %560 = or i32 %559, %556
  store i32 %560, i32* %558, align 8
  %561 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %562 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %561, i32 0, i32 13
  %563 = load i64, i64* %562, align 8
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %565, label %579

565:                                              ; preds = %555
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 4
  %568 = load i64, i64* %567, align 8
  %569 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %570 = icmp ne i64 %568, %569
  br i1 %570, label %571, label %579

571:                                              ; preds = %565
  %572 = load i64, i64* %11, align 8
  %573 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %574 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %573, i32 0, i32 6
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = sub i64 %576, %572
  %578 = trunc i64 %577 to i32
  store i32 %578, i32* %574, align 4
  br label %579

579:                                              ; preds = %571, %565, %555
  %580 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %581 = load i32, i32* %8, align 4
  %582 = call i32 @png_decode_idat(%struct.TYPE_18__* %580, i32 %581)
  store i32 %582, i32* %10, align 4
  %583 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %584 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %583, i32 0, i32 13
  %585 = load i64, i64* %584, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %601

587:                                              ; preds = %579
  %588 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %589 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %588, i32 0, i32 4
  %590 = load i64, i64* %589, align 8
  %591 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %592 = icmp ne i64 %590, %591
  br i1 %592, label %593, label %601

593:                                              ; preds = %587
  %594 = load i64, i64* %11, align 8
  %595 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %596 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %595, i32 0, i32 6
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  %599 = add i64 %598, %594
  %600 = trunc i64 %599 to i32
  store i32 %600, i32* %596, align 4
  br label %601

601:                                              ; preds = %593, %587, %579
  %602 = load i32, i32* %10, align 4
  %603 = icmp slt i32 %602, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %601
  %605 = load i32, i32* %10, align 4
  store i32 %605, i32* %5, align 4
  br label %610

606:                                              ; preds = %601
  %607 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %607, i32 0, i32 12
  %609 = call i32 @bytestream2_skip(i32* %608, i32 4)
  store i32 0, i32* %5, align 4
  br label %610

610:                                              ; preds = %606, %604, %533, %516, %490, %387, %362, %337, %283, %48, %25
  %611 = load i32, i32* %5, align 4
  ret i32 %611
}

declare dso_local i32 @av_log(%struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ff_png_get_nb_channels(i64) #1

declare dso_local i32 @avpriv_report_missing_feature(%struct.TYPE_20__*, i8*, i32, i64) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_20__*, i8*, i32, i64) #1

declare dso_local i32 @ff_thread_get_buffer(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @ff_thread_release_buffer(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ff_thread_finish_setup(%struct.TYPE_20__*) #1

declare dso_local i32 @ff_png_pass_row_size(i64, i32, i32) #1

declare dso_local i32 @ff_dlog(%struct.TYPE_20__*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @av_fast_padded_mallocz(i32*, i32*, i32) #1

declare dso_local i32 @av_fast_padded_malloc(i64*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @png_decode_idat(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
