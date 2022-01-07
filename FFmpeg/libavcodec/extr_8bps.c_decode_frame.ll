; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_8bps.c_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_8bps.c_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i8**, i32*, i32 }

@AV_PIX_FMT_0RGB32 = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Palette size %d is wrong\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %10, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %13, align 8
  %42 = load i8*, i8** %11, align 8
  store i8* %42, i8** %14, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %26, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %27, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = call i32 @ff_get_buffer(%struct.TYPE_14__* %52, %struct.TYPE_13__* %53, i32 0)
  store i32 %54, i32* %28, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %4
  %57 = load i32, i32* %28, align 4
  store i32 %57, i32* %5, align 4
  br label %301

58:                                               ; preds = %4
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %23, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load i32, i32* %26, align 4
  %65 = load i32, i32* %17, align 4
  %66 = shl i32 %65, 1
  %67 = mul i32 %64, %66
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8* %69, i8** %22, align 8
  %70 = load i32, i32* %26, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AV_PIX_FMT_0RGB32, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = add i32 %70, %76
  store i32 %77, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %78

78:                                               ; preds = %251, %58
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %26, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %254

82:                                               ; preds = %78
  %83 = load i8*, i8** %14, align 8
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %17, align 4
  %86 = shl i32 %85, 1
  %87 = mul i32 %84, %86
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  store i8* %89, i8** %21, align 8
  store i32 0, i32* %20, align 4
  br label %90

90:                                               ; preds = %247, %82
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %250

94:                                               ; preds = %90
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %20, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = mul i32 %100, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %99, i64 %107
  %109 = load i8*, i8** %27, align 8
  %110 = load i32, i32* %19, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %108, i64 %115
  store i8* %116, i8** %15, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %117, i64 %123
  store i8* %124, i8** %16, align 8
  %125 = load i8*, i8** %23, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load i32, i32* %20, align 4
  %131 = mul i32 %130, 2
  %132 = add i32 %131, 2
  %133 = zext i32 %132 to i64
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %94
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %5, align 4
  br label %301

137:                                              ; preds = %94
  %138 = load i8*, i8** %21, align 8
  %139 = load i32, i32* %20, align 4
  %140 = mul i32 %139, 2
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = bitcast i8* %142 to i16*
  %144 = load i16, i16* %143, align 2
  %145 = call i32 @av_be2ne16(i16 zeroext %144)
  store i32 %145, i32* %18, align 4
  br label %146

146:                                              ; preds = %245, %137
  %147 = load i32, i32* %18, align 4
  %148 = icmp ugt i32 %147, 0
  br i1 %148, label %149, label %246

149:                                              ; preds = %146
  %150 = load i8*, i8** %23, align 8
  %151 = load i8*, i8** %22, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = icmp sle i64 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %157, i32* %5, align 4
  br label %301

158:                                              ; preds = %149
  %159 = load i8*, i8** %22, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %22, align 8
  %161 = load i8, i8* %159, align 1
  store i8 %161, i8* %24, align 1
  %162 = zext i8 %161 to i32
  %163 = icmp sle i32 %162, 127
  br i1 %163, label %164, label %210

164:                                              ; preds = %158
  %165 = load i8, i8* %24, align 1
  %166 = add i8 %165, 1
  store i8 %166, i8* %24, align 1
  %167 = load i8, i8* %24, align 1
  %168 = zext i8 %167 to i32
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* %18, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %18, align 4
  %172 = load i8*, i8** %16, align 8
  %173 = load i8*, i8** %15, align 8
  %174 = ptrtoint i8* %172 to i64
  %175 = ptrtoint i8* %173 to i64
  %176 = sub i64 %174, %175
  %177 = load i8, i8* %24, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* %25, align 4
  %180 = mul i32 %178, %179
  %181 = zext i32 %180 to i64
  %182 = icmp slt i64 %176, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %164
  br label %246

184:                                              ; preds = %164
  %185 = load i8*, i8** %23, align 8
  %186 = load i8*, i8** %22, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = load i8, i8* %24, align 1
  %191 = zext i8 %190 to i64
  %192 = icmp slt i64 %189, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %194, i32* %5, align 4
  br label %301

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %200, %195
  %197 = load i8, i8* %24, align 1
  %198 = add i8 %197, -1
  store i8 %198, i8* %24, align 1
  %199 = icmp ne i8 %197, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i8*, i8** %22, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %22, align 8
  %203 = load i8, i8* %201, align 1
  %204 = load i8*, i8** %15, align 8
  store i8 %203, i8* %204, align 1
  %205 = load i32, i32* %25, align 4
  %206 = load i8*, i8** %15, align 8
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %15, align 8
  br label %196

209:                                              ; preds = %196
  br label %245

210:                                              ; preds = %158
  %211 = load i8, i8* %24, align 1
  %212 = zext i8 %211 to i32
  %213 = sub nsw i32 257, %212
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %24, align 1
  %215 = load i8*, i8** %16, align 8
  %216 = load i8*, i8** %15, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = load i8, i8* %24, align 1
  %221 = zext i8 %220 to i32
  %222 = load i32, i32* %25, align 4
  %223 = mul i32 %221, %222
  %224 = zext i32 %223 to i64
  %225 = icmp slt i64 %219, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %210
  br label %246

227:                                              ; preds = %210
  br label %228

228:                                              ; preds = %232, %227
  %229 = load i8, i8* %24, align 1
  %230 = add i8 %229, -1
  store i8 %230, i8* %24, align 1
  %231 = icmp ne i8 %229, 0
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load i8*, i8** %22, align 8
  %234 = load i8, i8* %233, align 1
  %235 = load i8*, i8** %15, align 8
  store i8 %234, i8* %235, align 1
  %236 = load i32, i32* %25, align 4
  %237 = load i8*, i8** %15, align 8
  %238 = zext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %15, align 8
  br label %228

240:                                              ; preds = %228
  %241 = load i8*, i8** %22, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %22, align 8
  %243 = load i32, i32* %18, align 4
  %244 = sub i32 %243, 2
  store i32 %244, i32* %18, align 4
  br label %245

245:                                              ; preds = %240, %209
  br label %146

246:                                              ; preds = %226, %183, %146
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %20, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %20, align 4
  br label %90

250:                                              ; preds = %90
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %19, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %78

254:                                              ; preds = %78
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp sle i32 %257, 8
  br i1 %258, label %259, label %298

259:                                              ; preds = %254
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %261 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %262 = call i8* @av_packet_get_side_data(%struct.TYPE_12__* %260, i32 %261, i32* %29)
  store i8* %262, i8** %30, align 8
  %263 = load i8*, i8** %30, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %278

265:                                              ; preds = %259
  %266 = load i32, i32* %29, align 4
  %267 = load i32, i32* @AVPALETTE_SIZE, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %265
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 2
  store i32 1, i32* %271, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = load i8*, i8** %30, align 8
  %276 = load i32, i32* @AVPALETTE_SIZE, align 4
  %277 = call i32 @memcpy(i8* %274, i8* %275, i32 %276)
  br label %287

278:                                              ; preds = %265, %259
  %279 = load i8*, i8** %30, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %283 = load i32, i32* @AV_LOG_ERROR, align 4
  %284 = load i32, i32* %29, align 4
  %285 = call i32 @av_log(%struct.TYPE_14__* %282, i32 %283, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %281, %278
  br label %287

287:                                              ; preds = %286, %269
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  %292 = load i8*, i8** %291, align 8
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 2
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* @AVPALETTE_SIZE, align 4
  %297 = call i32 @memcpy(i8* %292, i8* %295, i32 %296)
  br label %298

298:                                              ; preds = %287, %254
  %299 = load i32*, i32** %8, align 8
  store i32 1, i32* %299, align 4
  %300 = load i32, i32* %12, align 4
  store i32 %300, i32* %5, align 4
  br label %301

301:                                              ; preds = %298, %193, %156, %135, %56
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_be2ne16(i16 zeroext) #1

declare dso_local i8* @av_packet_get_side_data(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
