; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_asvenc.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32 (i32*, i32*, i32)* }
%struct.TYPE_20__ = type { i64*, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MAX_MB_SIZE = common dso_local global i32 0, align 4
@AV_INPUT_BUFFER_MIN_SIZE = common dso_local global i64 0, align 8
@AV_CODEC_ID_ASV1 = common dso_local global i64 0, align 8
@ff_reverse = common dso_local global i64* null, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_frame(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %10, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = srem i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = srem i32 %35, 16
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %255

38:                                               ; preds = %32, %4
  %39 = call %struct.TYPE_21__* (...) @av_frame_alloc()
  store %struct.TYPE_21__* %39, %struct.TYPE_21__** %15, align 8
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %41 = icmp ne %struct.TYPE_21__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %5, align 4
  br label %459

45:                                               ; preds = %38
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @FFALIGN(i32 %53, i32 16)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @FFALIGN(i32 %60, i32 16)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %66 = call i32 @av_frame_get_buffer(%struct.TYPE_21__* %65, i32 32)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %45
  %70 = call i32 @av_frame_free(%struct.TYPE_21__** %15)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %5, align 4
  br label %459

72:                                               ; preds = %45
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %75 = call i32 @av_frame_copy(%struct.TYPE_21__* %73, %struct.TYPE_21__* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = call i32 @av_frame_free(%struct.TYPE_21__** %15)
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %459

81:                                               ; preds = %72
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %244, %81
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 3
  br i1 %84, label %85, label %247

85:                                               ; preds = %82
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @AV_CEIL_RSHIFT(i32 %88, i32 %93)
  store i32 %94, i32* %19, align 4
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = call i32 @AV_CEIL_RSHIFT(i32 %97, i32 %102)
  store i32 %103, i32* %20, align 4
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @AV_CEIL_RSHIFT(i32 %106, i32 %111)
  store i32 %112, i32* %21, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @AV_CEIL_RSHIFT(i32 %115, i32 %120)
  store i32 %121, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %179, %85
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %20, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %182

126:                                              ; preds = %122
  %127 = load i32, i32* %19, align 4
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %175, %126
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %178

132:                                              ; preds = %128
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 3
  %135 = load i32**, i32*** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %135, i64 %137
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32, i32* %18, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %142, %149
  %151 = add nsw i32 %141, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %139, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 3
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %16, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = mul nsw i32 %163, %170
  %172 = add nsw i32 %162, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %161, i64 %173
  store i32 %154, i32* %174, align 4
  br label %175

175:                                              ; preds = %132
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %128

178:                                              ; preds = %128
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %18, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %18, align 4
  br label %122

182:                                              ; preds = %122
  %183 = load i32, i32* %20, align 4
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %240, %182
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %22, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %243

188:                                              ; preds = %184
  store i32 0, i32* %17, align 4
  br label %189

189:                                              ; preds = %236, %188
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %21, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %189
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %20, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %203, %210
  %212 = add nsw i32 %201, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %200, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 3
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %224, %231
  %233 = add nsw i32 %223, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %222, i64 %234
  store i32 %215, i32* %235, align 4
  br label %236

236:                                              ; preds = %193
  %237 = load i32, i32* %17, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %189

239:                                              ; preds = %189
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %184

243:                                              ; preds = %184
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %16, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %16, align 4
  br label %82

247:                                              ; preds = %82
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = call i32 @encode_frame(%struct.TYPE_22__* %248, %struct.TYPE_20__* %249, %struct.TYPE_21__* %250, i32* %251)
  store i32 %252, i32* %12, align 4
  %253 = call i32 @av_frame_free(%struct.TYPE_21__** %15)
  %254 = load i32, i32* %12, align 4
  store i32 %254, i32* %5, align 4
  br label %459

255:                                              ; preds = %32
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %260, %263
  %265 = load i32, i32* @MAX_MB_SIZE, align 4
  %266 = mul nsw i32 %264, %265
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* @AV_INPUT_BUFFER_MIN_SIZE, align 8
  %269 = add nsw i64 %267, %268
  %270 = call i32 @ff_alloc_packet2(%struct.TYPE_22__* %256, %struct.TYPE_20__* %257, i64 %269, i32 0)
  store i32 %270, i32* %12, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %255
  %273 = load i32, i32* %12, align 4
  store i32 %273, i32* %5, align 4
  br label %459

274:                                              ; preds = %255
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 5
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64*, i64** %278, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @init_put_bits(i32* %276, i64* %279, i32 %282)
  store i32 0, i32* %14, align 4
  br label %284

284:                                              ; preds = %312, %274
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %284
  store i32 0, i32* %13, align 4
  br label %291

291:                                              ; preds = %308, %290
  %292 = load i32, i32* %13, align 4
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %311

297:                                              ; preds = %291
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @dct_get(%struct.TYPE_23__* %298, %struct.TYPE_21__* %299, i32 %300, i32 %301)
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @encode_mb(%struct.TYPE_23__* %303, i32 %306)
  br label %308

308:                                              ; preds = %297
  %309 = load i32, i32* %13, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %13, align 4
  br label %291

311:                                              ; preds = %291
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %14, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %14, align 4
  br label %284

315:                                              ; preds = %284
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %318, %321
  br i1 %322, label %323, label %348

323:                                              ; preds = %315
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %327

327:                                              ; preds = %344, %323
  %328 = load i32, i32* %14, align 4
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %347

333:                                              ; preds = %327
  %334 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %336 = load i32, i32* %13, align 4
  %337 = load i32, i32* %14, align 4
  %338 = call i32 @dct_get(%struct.TYPE_23__* %334, %struct.TYPE_21__* %335, i32 %336, i32 %337)
  %339 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 6
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @encode_mb(%struct.TYPE_23__* %339, i32 %342)
  br label %344

344:                                              ; preds = %333
  %345 = load i32, i32* %14, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %14, align 4
  br label %327

347:                                              ; preds = %327
  br label %348

348:                                              ; preds = %347, %315
  %349 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %351, %354
  br i1 %355, label %356, label %381

356:                                              ; preds = %348
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  store i32 %359, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %360

360:                                              ; preds = %377, %356
  %361 = load i32, i32* %13, align 4
  %362 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = icmp slt i32 %361, %364
  br i1 %365, label %366, label %380

366:                                              ; preds = %360
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %368 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* %14, align 4
  %371 = call i32 @dct_get(%struct.TYPE_23__* %367, %struct.TYPE_21__* %368, i32 %369, i32 %370)
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %373 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %373, i32 0, i32 6
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @encode_mb(%struct.TYPE_23__* %372, i32 %375)
  br label %377

377:                                              ; preds = %366
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %360

380:                                              ; preds = %360
  br label %381

381:                                              ; preds = %380, %348
  %382 = call i32 (...) @emms_c()
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 5
  %385 = call i32 @avpriv_align_put_bits(i32* %384)
  br label %386

386:                                              ; preds = %392, %381
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 5
  %389 = call i32 @put_bits_count(i32* %388)
  %390 = and i32 %389, 31
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %386
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 5
  %395 = call i32 @put_bits(i32* %394, i32 8, i32 0)
  br label %386

396:                                              ; preds = %386
  %397 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %398 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %397, i32 0, i32 5
  %399 = call i32 @put_bits_count(i32* %398)
  %400 = sdiv i32 %399, 32
  store i32 %400, i32* %11, align 4
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @AV_CODEC_ID_ASV1, align 8
  %405 = icmp eq i64 %403, %404
  br i1 %405, label %406, label %421

406:                                              ; preds = %396
  %407 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %407, i32 0, i32 4
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 0
  %410 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %409, align 8
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 0
  %413 = load i64*, i64** %412, align 8
  %414 = bitcast i64* %413 to i32*
  %415 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = bitcast i64* %417 to i32*
  %419 = load i32, i32* %11, align 4
  %420 = call i32 %410(i32* %414, i32* %418, i32 %419)
  br label %448

421:                                              ; preds = %396
  store i32 0, i32* %23, align 4
  br label %422

422:                                              ; preds = %444, %421
  %423 = load i32, i32* %23, align 4
  %424 = load i32, i32* %11, align 4
  %425 = mul nsw i32 4, %424
  %426 = icmp slt i32 %423, %425
  br i1 %426, label %427, label %447

427:                                              ; preds = %422
  %428 = load i64*, i64** @ff_reverse, align 8
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 0
  %431 = load i64*, i64** %430, align 8
  %432 = load i32, i32* %23, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds i64, i64* %428, i64 %435
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 0
  %440 = load i64*, i64** %439, align 8
  %441 = load i32, i32* %23, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  store i64 %437, i64* %443, align 8
  br label %444

444:                                              ; preds = %427
  %445 = load i32, i32* %23, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %23, align 4
  br label %422

447:                                              ; preds = %422
  br label %448

448:                                              ; preds = %447, %406
  %449 = load i32, i32* %11, align 4
  %450 = mul nsw i32 %449, 4
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 8
  %453 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %454 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 4
  %457 = or i32 %456, %453
  store i32 %457, i32* %455, align 4
  %458 = load i32*, i32** %9, align 8
  store i32 1, i32* %458, align 4
  store i32 0, i32* %5, align 4
  br label %459

459:                                              ; preds = %448, %272, %247, %78, %69, %42
  %460 = load i32, i32* %5, align 4
  ret i32 %460
}

declare dso_local %struct.TYPE_21__* @av_frame_alloc(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_frame_get_buffer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @av_frame_copy(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @AV_CEIL_RSHIFT(i32, i32) #1

declare dso_local i32 @ff_alloc_packet2(%struct.TYPE_22__*, %struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @init_put_bits(i32*, i64*, i32) #1

declare dso_local i32 @dct_get(%struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @encode_mb(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @emms_c(...) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
