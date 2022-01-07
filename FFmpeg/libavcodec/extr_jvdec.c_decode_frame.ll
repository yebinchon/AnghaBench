; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jvdec.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32*, i32, i32, i64*, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"video size %d invalid\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Insufficient input data for dimensions\0A\00", align 1
@AV_GET_BUFFER_FLAG_REF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"unsupported frame type %i\0A\00", align 1
@AVPALETTE_COUNT = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i32*, %struct.TYPE_14__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_15__* %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  store i32* %32, i32** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %38, i32* %5, align 4
  br label %311

39:                                               ; preds = %4
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @AV_RL32(i32* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32* %46, i32** %11, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %223

49:                                               ; preds = %39
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 5
  %58 = icmp sgt i32 %53, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %52, %49
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %61 = load i32, i32* @AV_LOG_ERROR, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %60, i32 %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %64, i32* %5, align 4
  br label %311

65:                                               ; preds = %52
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %160

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 8, %73
  %75 = call i32 @init_get_bits(i32* %18, i32* %72, i32 %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = call i32 @ff_reget_buffer(%struct.TYPE_15__* %76, %struct.TYPE_16__* %79, i32 0)
  store i32 %80, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %5, align 4
  br label %311

84:                                               ; preds = %71
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %87, 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %91, 8
  %93 = mul nsw i32 %88, %92
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 4, %94
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %84
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = load i32, i32* @AV_LOG_ERROR, align 4
  %100 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %98, i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %101, i32* %5, align 4
  br label %311

102:                                              ; preds = %84
  store i32 0, i32* %16, align 4
  br label %103

103:                                              ; preds = %152, %102
  %104 = load i32, i32* %16, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %155

109:                                              ; preds = %103
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %148, %109
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %110
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 3
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %124, %131
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %123, %133
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %134, %136
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 3
  %147 = call i32 @decode8x8(i32* %18, i64 %137, i32 %144, i32* %146)
  br label %148

148:                                              ; preds = %116
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 8
  store i32 %150, i32* %15, align 4
  br label %110

151:                                              ; preds = %110
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %153, 8
  store i32 %154, i32* %16, align 4
  br label %103

155:                                              ; preds = %103
  %156 = load i32, i32* %13, align 4
  %157 = load i32*, i32** %11, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %11, align 8
  br label %222

160:                                              ; preds = %68
  %161 = load i32, i32* %14, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %215

163:                                              ; preds = %160
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %11, align 8
  %166 = load i32, i32* %164, align 4
  store i32 %166, i32* %19, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = call i32 @av_frame_unref(%struct.TYPE_16__* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = load i32, i32* @AV_GET_BUFFER_FLAG_REF, align 4
  %176 = call i32 @ff_get_buffer(%struct.TYPE_15__* %171, %struct.TYPE_16__* %174, i32 %175)
  store i32 %176, i32* %17, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %163
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %5, align 4
  br label %311

180:                                              ; preds = %163
  store i32 0, i32* %16, align 4
  br label %181

181:                                              ; preds = %211, %180
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %214

187:                                              ; preds = %181
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 3
  %192 = load i64*, i64** %191, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 0
  %194 = load i64, i64* %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %195, %202
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %194, %204
  %206 = load i32, i32* %19, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @memset(i64 %205, i32 %206, i32 %209)
  br label %211

211:                                              ; preds = %187
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %16, align 4
  br label %181

214:                                              ; preds = %181
  br label %221

215:                                              ; preds = %160
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %217 = load i32, i32* @AV_LOG_WARNING, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i32 (%struct.TYPE_15__*, i32, i8*, ...) @av_log(%struct.TYPE_15__* %216, i32 %217, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %220, i32* %5, align 4
  br label %311

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %155
  br label %223

223:                                              ; preds = %222, %39
  %224 = load i32*, i32** %12, align 8
  %225 = load i32*, i32** %11, align 8
  %226 = ptrtoint i32* %224 to i64
  %227 = ptrtoint i32* %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 4
  %230 = load i32, i32* @AVPALETTE_COUNT, align 4
  %231 = mul nsw i32 %230, 3
  %232 = sext i32 %231 to i64
  %233 = icmp sge i64 %229, %232
  br i1 %233, label %234, label %263

234:                                              ; preds = %223
  store i32 0, i32* %15, align 4
  br label %235

235:                                              ; preds = %257, %234
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* @AVPALETTE_COUNT, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %235
  %240 = load i32*, i32** %11, align 8
  %241 = call i32 @AV_RB24(i32* %240)
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %20, align 4
  %243 = shl i32 %242, 2
  %244 = or i32 -16777216, %243
  %245 = load i32, i32* %20, align 4
  %246 = ashr i32 %245, 4
  %247 = and i32 %246, 197379
  %248 = or i32 %244, %247
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %248, i32* %254, align 4
  %255 = load i32*, i32** %11, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 3
  store i32* %256, i32** %11, align 8
  br label %257

257:                                              ; preds = %239
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %15, align 4
  br label %235

260:                                              ; preds = %235
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  store i32 1, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %223
  %264 = load i32, i32* %13, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %307

266:                                              ; preds = %263
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 1
  store i32 1, i32* %270, align 8
  %271 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 4
  store i32 %271, i32* %275, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 2
  store i32 %278, i32* %282, align 4
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  store i32 0, i32* %284, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 3
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 1
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @AVPALETTE_SIZE, align 4
  %296 = call i32 @memcpy(i64 %291, i32* %294, i32 %295)
  %297 = load i8*, i8** %7, align 8
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %299, align 8
  %301 = call i32 @av_frame_ref(i8* %297, %struct.TYPE_16__* %300)
  store i32 %301, i32* %17, align 4
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %266
  %304 = load i32, i32* %17, align 4
  store i32 %304, i32* %5, align 4
  br label %311

305:                                              ; preds = %266
  %306 = load i32*, i32** %8, align 8
  store i32 1, i32* %306, align 4
  br label %307

307:                                              ; preds = %305, %263
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  store i32 %310, i32* %5, align 4
  br label %311

311:                                              ; preds = %307, %303, %215, %178, %97, %82, %59, %37
  %312 = load i32, i32* %5, align 4
  ret i32 %312
}

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @ff_reget_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @decode8x8(i32*, i64, i32, i32*) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_16__*) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @av_frame_ref(i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
