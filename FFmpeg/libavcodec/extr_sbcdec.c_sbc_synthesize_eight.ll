; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_eight.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sbcdec.c_sbc_synthesize_eight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbc_decoder_state = type { i32**, i32** }
%struct.sbc_frame = type { i32*** }
%struct.TYPE_3__ = type { i32** }

@ff_synmatrix8 = common dso_local global i64** null, align 8
@ff_sbc_proto_8_80m0 = common dso_local global i32* null, align 8
@ff_sbc_proto_8_80m1 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbc_decoder_state*, %struct.sbc_frame*, i32, i32, %struct.TYPE_3__*)* @sbc_synthesize_eight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbc_synthesize_eight(%struct.sbc_decoder_state* %0, %struct.sbc_frame* %1, i32 %2, i32 %3, %struct.TYPE_3__* %4) #0 {
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

30:                                               ; preds = %248, %5
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %251

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
  store i32 159, i32* %50, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 160
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @memcpy(i32* %52, i32* %53, i32 36)
  br label %55

55:                                               ; preds = %46, %33
  %56 = load i64**, i64*** @ff_synmatrix8, align 8
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
  %78 = load i64**, i64*** @ff_synmatrix8, align 8
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
  %101 = load i64**, i64*** @ff_synmatrix8, align 8
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
  %124 = load i64**, i64*** @ff_synmatrix8, align 8
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
  %147 = load i64**, i64*** @ff_synmatrix8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64*, i64** %147, i64 %149
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %156 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %155, i32 0, i32 0
  %157 = load i32***, i32**** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32**, i32*** %157, i64 %159
  %161 = load i32**, i32*** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 4
  %167 = load i32, i32* %166, align 4
  %168 = mul i32 %154, %167
  %169 = add i32 %146, %168
  %170 = load i64**, i64*** @ff_synmatrix8, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64*, i64** %170, i64 %172
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 5
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %179 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %178, i32 0, i32 0
  %180 = load i32***, i32**** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32**, i32*** %180, i64 %182
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = mul i32 %177, %190
  %192 = add i32 %169, %191
  %193 = load i64**, i64*** @ff_synmatrix8, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64*, i64** %193, i64 %195
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 6
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %202 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %201, i32 0, i32 0
  %203 = load i32***, i32**** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32**, i32*** %203, i64 %205
  %207 = load i32**, i32*** %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32*, i32** %207, i64 %209
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 6
  %213 = load i32, i32* %212, align 4
  %214 = mul i32 %200, %213
  %215 = add i32 %192, %214
  %216 = load i64**, i64*** @ff_synmatrix8, align 8
  %217 = load i32, i32* %11, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64*, i64** %216, i64 %218
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 7
  %222 = load i64, i64* %221, align 8
  %223 = trunc i64 %222 to i32
  %224 = load %struct.sbc_frame*, %struct.sbc_frame** %7, align 8
  %225 = getelementptr inbounds %struct.sbc_frame, %struct.sbc_frame* %224, i32 0, i32 0
  %226 = load i32***, i32**** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32**, i32*** %226, i64 %228
  %230 = load i32**, i32*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 7
  %236 = load i32, i32* %235, align 4
  %237 = mul i32 %223, %236
  %238 = add i32 %215, %237
  %239 = ashr i32 %238, 15
  %240 = load i32*, i32** %14, align 8
  %241 = load i32*, i32** %15, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %240, i64 %246
  store i32 %239, i32* %247, align 4
  br label %248

248:                                              ; preds = %55
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %11, align 4
  br label %30

251:                                              ; preds = %30
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %252

252:                                              ; preds = %455, %251
  %253 = load i32, i32* %11, align 4
  %254 = icmp slt i32 %253, 8
  br i1 %254, label %255, label %460

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 8
  %258 = and i32 %257, 15
  store i32 %258, i32* %12, align 4
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 0
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %9, align 4
  %267 = mul nsw i32 %266, 16
  %268 = load i32, i32* %11, align 4
  %269 = mul nsw i32 %268, 2
  %270 = add nsw i32 %267, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %265, i64 %271
  %273 = load i32*, i32** %14, align 8
  %274 = load i32*, i32** %15, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 0
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %273, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** @ff_sbc_proto_8_80m0, align 8
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, 0
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %283, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = mul i32 %282, %288
  %290 = load i32*, i32** %14, align 8
  %291 = load i32*, i32** %15, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %290, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** @ff_sbc_proto_8_80m1, align 8
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 0
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = mul i32 %299, %305
  %307 = add i32 %289, %306
  %308 = load i32*, i32** %14, align 8
  %309 = load i32*, i32** %15, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 2
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %308, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** @ff_sbc_proto_8_80m0, align 8
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = mul i32 %317, %323
  %325 = add i32 %307, %324
  %326 = load i32*, i32** %14, align 8
  %327 = load i32*, i32** %15, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, 3
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %326, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = load i32*, i32** @ff_sbc_proto_8_80m1, align 8
  %337 = load i32, i32* %13, align 4
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = mul i32 %335, %341
  %343 = add i32 %325, %342
  %344 = load i32*, i32** %14, align 8
  %345 = load i32*, i32** %15, align 8
  %346 = load i32, i32* %11, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %345, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %344, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32*, i32** @ff_sbc_proto_8_80m0, align 8
  %355 = load i32, i32* %13, align 4
  %356 = add nsw i32 %355, 2
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = mul i32 %353, %359
  %361 = add i32 %343, %360
  %362 = load i32*, i32** %14, align 8
  %363 = load i32*, i32** %15, align 8
  %364 = load i32, i32* %12, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, 5
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %362, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** @ff_sbc_proto_8_80m1, align 8
  %373 = load i32, i32* %13, align 4
  %374 = add nsw i32 %373, 2
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %372, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = mul i32 %371, %377
  %379 = add i32 %361, %378
  %380 = load i32*, i32** %14, align 8
  %381 = load i32*, i32** %15, align 8
  %382 = load i32, i32* %11, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 6
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %380, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** @ff_sbc_proto_8_80m0, align 8
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %391, 3
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %390, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = mul i32 %389, %395
  %397 = add i32 %379, %396
  %398 = load i32*, i32** %14, align 8
  %399 = load i32*, i32** %15, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 7
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %398, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32*, i32** @ff_sbc_proto_8_80m1, align 8
  %409 = load i32, i32* %13, align 4
  %410 = add nsw i32 %409, 3
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %408, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = mul i32 %407, %413
  %415 = add i32 %397, %414
  %416 = load i32*, i32** %14, align 8
  %417 = load i32*, i32** %15, align 8
  %418 = load i32, i32* %11, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, 8
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %416, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32*, i32** @ff_sbc_proto_8_80m0, align 8
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %427, 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %426, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = mul i32 %425, %431
  %433 = add i32 %415, %432
  %434 = load i32*, i32** %14, align 8
  %435 = load i32*, i32** %15, align 8
  %436 = load i32, i32* %12, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %439, 9
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %434, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32*, i32** @ff_sbc_proto_8_80m1, align 8
  %445 = load i32, i32* %13, align 4
  %446 = add nsw i32 %445, 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = mul i32 %443, %449
  %451 = add i32 %433, %450
  %452 = ashr i32 %451, 15
  %453 = call i32 @av_clip_int16(i32 %452)
  %454 = call i32 @AV_WN16A(i32* %272, i32 %453)
  br label %455

455:                                              ; preds = %255
  %456 = load i32, i32* %11, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %11, align 4
  %458 = load i32, i32* %13, align 4
  %459 = add nsw i32 %458, 5
  store i32 %459, i32* %13, align 4
  br label %252

460:                                              ; preds = %252
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
