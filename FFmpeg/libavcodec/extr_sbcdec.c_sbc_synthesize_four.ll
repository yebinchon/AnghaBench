; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_four.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_four.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_decoder_state = type { i32**, i32** }
%struct.sbc_frame = type { i32*** }
%struct.TYPE_3__ = type { i32** }

@ff_synmatrix4 = common dso_local global i64** null, align 8
@ff_sbc_proto_4_40m0 = common dso_local global i32* null, align 8
@ff_sbc_proto_4_40m1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbc_decoder_state*, %struct.sbc_frame*, i32, i32, %struct.TYPE_3__*)* @sbc_synthesize_four to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbc_synthesize_four(%struct.sbc_decoder_state* %0, %struct.sbc_frame* %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca %struct.sbc_decoder_state*, align 8
  %7 = alloca %struct.sbc_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.sbc_decoder_state* %0, %struct.sbc_decoder_state** %6, align 8
  store %struct.sbc_frame* %1, %struct.sbc_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %16 = load %struct.sbc_decoder_state*, %struct.sbc_decoder_state** %6, align 8
  %17 = getelementptr inbounds %struct.sbc_decoder_state, %struct.sbc_decoder_state* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %14, align 8
  %23 = load %struct.sbc_decoder_state*, %struct.sbc_decoder_state** %6, align 8
  %24 = getelementptr inbounds %struct.sbc_decoder_state, %struct.sbc_decoder_state* %23, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %156, %5
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %159

33:                                               ; preds = %30
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %15, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %33
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 79, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 80
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 36)
  br label %55

55:                                               ; preds = %46, %33
  %56 = load i64**, i64*** @ff_synmatrix4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %65 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %64, i32 0, i32 0
  %66 = load i32***, i32**** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32**, i32*** %66, i64 %68
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 %63, %76
  %78 = load i64**, i64*** @ff_synmatrix4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %78, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %87 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %86, i32 0, i32 0
  %88 = load i32***, i32**** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32**, i32*** %88, i64 %90
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = mul i32 %85, %98
  %100 = add i32 %77, %99
  %101 = load i64**, i64*** @ff_synmatrix4, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64*, i64** %101, i64 %103
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %110 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %109, i32 0, i32 0
  %111 = load i32***, i32**** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32**, i32*** %111, i64 %113
  %115 = load i32**, i32*** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = mul i32 %108, %121
  %123 = add i32 %100, %122
  %124 = load i64**, i64*** @ff_synmatrix4, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64*, i64** %124, i64 %126
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 3
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %133 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %132, i32 0, i32 0
  %134 = load i32***, i32**** %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32**, i32*** %134, i64 %136
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = mul i32 %131, %144
  %146 = add i32 %123, %145
  %147 = ashr i32 %146, 15
  %148 = load i32*, i32** %14, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  store i32 %147, i32* %155, align 4
  br label %156

156:                                              ; preds = %55
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %30

159:                                              ; preds = %30
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %363, %159
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 4
  br i1 %162, label %163, label %368

163:                                              ; preds = %160
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 4
  %166 = and i32 %165, 15
  store i32 %166, i32* %12, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32**, i32*** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = mul nsw i32 %174, 8
  %176 = load i32, i32* %11, align 4
  %177 = mul nsw i32 %176, 2
  %178 = add nsw i32 %175, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32*, i32** %14, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 0
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %181, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** @ff_sbc_proto_4_40m0, align 8
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 0
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = mul i32 %190, %196
  %198 = load i32*, i32** %14, align 8
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %198, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** @ff_sbc_proto_4_40m1, align 8
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 0
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = mul i32 %207, %213
  %215 = add i32 %197, %214
  %216 = load i32*, i32** %14, align 8
  %217 = load i32*, i32** %15, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 2
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %216, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** @ff_sbc_proto_4_40m0, align 8
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul i32 %225, %231
  %233 = add i32 %215, %232
  %234 = load i32*, i32** %14, align 8
  %235 = load i32*, i32** %15, align 8
  %236 = load i32, i32* %12, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 3
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %234, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** @ff_sbc_proto_4_40m1, align 8
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = mul i32 %243, %249
  %251 = add i32 %233, %250
  %252 = load i32*, i32** %14, align 8
  %253 = load i32*, i32** %15, align 8
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %252, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** @ff_sbc_proto_4_40m0, align 8
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = mul i32 %261, %267
  %269 = add i32 %251, %268
  %270 = load i32*, i32** %14, align 8
  %271 = load i32*, i32** %15, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 5
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %270, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** @ff_sbc_proto_4_40m1, align 8
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 2
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = mul i32 %279, %285
  %287 = add i32 %269, %286
  %288 = load i32*, i32** %14, align 8
  %289 = load i32*, i32** %15, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 6
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %288, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** @ff_sbc_proto_4_40m0, align 8
  %299 = load i32, i32* %13, align 4
  %300 = add nsw i32 %299, 3
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = mul i32 %297, %303
  %305 = add i32 %287, %304
  %306 = load i32*, i32** %14, align 8
  %307 = load i32*, i32** %15, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, 7
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %306, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load i32*, i32** @ff_sbc_proto_4_40m1, align 8
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, 3
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = mul i32 %315, %321
  %323 = add i32 %305, %322
  %324 = load i32*, i32** %14, align 8
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 8
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %324, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32*, i32** @ff_sbc_proto_4_40m0, align 8
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %334, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = mul i32 %333, %339
  %341 = add i32 %323, %340
  %342 = load i32*, i32** %14, align 8
  %343 = load i32*, i32** %15, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = add nsw i32 %347, 9
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %342, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = load i32*, i32** @ff_sbc_proto_4_40m1, align 8
  %353 = load i32, i32* %13, align 4
  %354 = add nsw i32 %353, 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %352, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = mul i32 %351, %357
  %359 = add i32 %341, %358
  %360 = ashr i32 %359, 15
  %361 = call i32 @av_clip_int16(i32 %360)
  %362 = call i32 @AV_WN16A(i32* %180, i32 %361)
  br label %363

363:                                              ; preds = %163
  %364 = load i32, i32* %11, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %13, align 4
  %367 = add nsw i32 %366, 5
  store i32 %367, i32* %13, align 4
  br label %160

368:                                              ; preds = %160
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_WN16A(i32*, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
