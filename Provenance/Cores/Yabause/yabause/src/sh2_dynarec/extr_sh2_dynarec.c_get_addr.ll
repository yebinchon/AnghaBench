; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_addr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { i32, i8*, %struct.ll_entry* }

@jump_in = common dso_local global %struct.ll_entry** null, align 8
@hash_table = common dso_local global i32** null, align 8
@jump_dirty = common dso_local global %struct.ll_entry** null, align 8
@out = common dso_local global i64 0, align 8
@TARGET_SIZE_2 = common dso_local global i32 0, align 4
@MAX_OUTPUT_BLOCK_SIZE = common dso_local global i32 0, align 4
@cached_code = common dso_local global i32* null, align 8
@memory_map = common dso_local global i32* null, align 8
@restore_candidate = common dso_local global i32* null, align 8
@HighWram = common dso_local global i64 0, align 8
@cached_code_words = common dso_local global i32* null, align 8
@LowWram = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_addr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, -536870913
  %18 = lshr i32 %17, 12
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 1024
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 1023
  %24 = add nsw i32 1024, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.ll_entry**, %struct.ll_entry*** @jump_in, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %26, i64 %28
  %30 = load %struct.ll_entry*, %struct.ll_entry** %29, align 8
  store %struct.ll_entry* %30, %struct.ll_entry** %4, align 8
  br label %31

31:                                               ; preds = %72, %25
  %32 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %33 = icmp ne %struct.ll_entry* %32, null
  br i1 %33, label %34, label %76

34:                                               ; preds = %31
  %35 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %36 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %34
  %41 = load i32**, i32*** @hash_table, align 8
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 16
  %44 = load i32, i32* %3, align 4
  %45 = xor i32 %43, %44
  %46 = and i32 %45, 65535
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %41, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %61 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %70 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %2, align 8
  br label %328

72:                                               ; preds = %34
  %73 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %74 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %73, i32 0, i32 2
  %75 = load %struct.ll_entry*, %struct.ll_entry** %74, align 8
  store %struct.ll_entry* %75, %struct.ll_entry** %4, align 8
  br label %31

76:                                               ; preds = %31
  %77 = load %struct.ll_entry**, %struct.ll_entry*** @jump_dirty, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %77, i64 %79
  %81 = load %struct.ll_entry*, %struct.ll_entry** %80, align 8
  store %struct.ll_entry* %81, %struct.ll_entry** %4, align 8
  br label %82

82:                                               ; preds = %319, %76
  %83 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %84 = icmp ne %struct.ll_entry* %83, null
  br i1 %84, label %85, label %323

85:                                               ; preds = %82
  %86 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %87 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %319

91:                                               ; preds = %85
  %92 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %93 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load i64, i64* @out, align 8
  %97 = trunc i64 %96 to i32
  %98 = sub nsw i32 %95, %97
  %99 = load i32, i32* @TARGET_SIZE_2, align 4
  %100 = sub nsw i32 32, %99
  %101 = shl i32 %98, %100
  %102 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %103 = load i32, i32* @TARGET_SIZE_2, align 4
  %104 = sub nsw i32 32, %103
  %105 = shl i32 %102, %104
  %106 = add nsw i32 1610612736, %105
  %107 = icmp sgt i32 %101, %106
  br i1 %107, label %108, label %318

108:                                              ; preds = %91
  %109 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %110 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @verify_dirty(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %317

114:                                              ; preds = %108
  %115 = load i32, i32* %3, align 4
  %116 = ashr i32 %115, 12
  %117 = and i32 %116, 7
  %118 = shl i32 1, %117
  %119 = load i32*, i32** @cached_code, align 8
  %120 = load i32, i32* %3, align 4
  %121 = ashr i32 %120, 15
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %118
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* %3, align 4
  %127 = ashr i32 %126, 12
  %128 = and i32 %127, 7
  %129 = shl i32 1, %128
  %130 = load i32*, i32** @cached_code, align 8
  %131 = load i32, i32* %3, align 4
  %132 = xor i32 %131, 536870912
  %133 = ashr i32 %132, 15
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %129
  store i32 %137, i32* %135, align 4
  %138 = load i32*, i32** @memory_map, align 8
  %139 = load i32, i32* %3, align 4
  %140 = ashr i32 %139, 12
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, 1073741824
  store i32 %144, i32* %142, align 4
  %145 = load i32*, i32** @memory_map, align 8
  %146 = load i32, i32* %3, align 4
  %147 = xor i32 %146, 536870912
  %148 = ashr i32 %147, 12
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, 1073741824
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 7
  %155 = shl i32 1, %154
  %156 = load i32*, i32** @restore_candidate, align 8
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 3
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %155
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %164 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = ptrtoint i8* %165 to i32
  %167 = call i32 @get_bounds(i32 %166, i32* %7, i32* %8)
  %168 = load i32, i32* %7, align 4
  %169 = load i64, i64* @HighWram, align 8
  %170 = trunc i64 %169 to i32
  %171 = sub nsw i32 %168, %170
  %172 = icmp slt i32 %171, 1048576
  br i1 %172, label %173, label %219

173:                                              ; preds = %114
  %174 = load i32, i32* %7, align 4
  %175 = load i64, i64* @HighWram, align 8
  %176 = trunc i64 %175 to i32
  %177 = sub nsw i32 %174, %176
  %178 = add nsw i32 %177, 100663296
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i64, i64* @HighWram, align 8
  %181 = trunc i64 %180 to i32
  %182 = sub nsw i32 %179, %181
  %183 = add nsw i32 %182, 100663296
  store i32 %183, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %184

184:                                              ; preds = %215, %173
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub nsw i32 %186, %187
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %218

190:                                              ; preds = %184
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %191, %192
  %194 = ashr i32 %193, 2
  %195 = and i32 %194, 7
  %196 = shl i32 1, %195
  %197 = load i32*, i32** @cached_code_words, align 8
  %198 = load i32, i32* %10, align 4
  %199 = icmp slt i32 %198, 4194304
  br i1 %199, label %200, label %202

200:                                              ; preds = %190
  %201 = load i32, i32* %10, align 4
  br label %206

202:                                              ; preds = %190
  %203 = load i32, i32* %10, align 4
  %204 = or i32 %203, 4194304
  %205 = and i32 %204, 8388607
  br label %206

206:                                              ; preds = %202, %200
  %207 = phi i32 [ %201, %200 ], [ %205, %202 ]
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %207, %208
  %210 = ashr i32 %209, 5
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %197, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %196
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %206
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 %216, 4
  store i32 %217, i32* %12, align 4
  br label %184

218:                                              ; preds = %184
  br label %219

219:                                              ; preds = %218, %114
  %220 = load i32, i32* %7, align 4
  %221 = load i64, i64* @LowWram, align 8
  %222 = trunc i64 %221 to i32
  %223 = sub nsw i32 %220, %222
  %224 = icmp slt i32 %223, 1048576
  br i1 %224, label %225, label %271

225:                                              ; preds = %219
  %226 = load i32, i32* %7, align 4
  %227 = load i64, i64* @LowWram, align 8
  %228 = trunc i64 %227 to i32
  %229 = sub nsw i32 %226, %228
  %230 = add nsw i32 %229, 2097152
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i64, i64* @LowWram, align 8
  %233 = trunc i64 %232 to i32
  %234 = sub nsw i32 %231, %233
  %235 = add nsw i32 %234, 2097152
  store i32 %235, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %236

236:                                              ; preds = %267, %225
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %13, align 4
  %240 = sub nsw i32 %238, %239
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %270

242:                                              ; preds = %236
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %243, %244
  %246 = ashr i32 %245, 2
  %247 = and i32 %246, 7
  %248 = shl i32 1, %247
  %249 = load i32*, i32** @cached_code_words, align 8
  %250 = load i32, i32* %13, align 4
  %251 = icmp slt i32 %250, 4194304
  br i1 %251, label %252, label %254

252:                                              ; preds = %242
  %253 = load i32, i32* %13, align 4
  br label %258

254:                                              ; preds = %242
  %255 = load i32, i32* %13, align 4
  %256 = or i32 %255, 4194304
  %257 = and i32 %256, 8388607
  br label %258

258:                                              ; preds = %254, %252
  %259 = phi i32 [ %253, %252 ], [ %257, %254 ]
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %259, %260
  %262 = ashr i32 %261, 5
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %249, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %248
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %258
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 4
  store i32 %269, i32* %15, align 4
  br label %236

270:                                              ; preds = %236
  br label %271

271:                                              ; preds = %270, %219
  %272 = load i32**, i32*** @hash_table, align 8
  %273 = load i32, i32* %3, align 4
  %274 = ashr i32 %273, 16
  %275 = load i32, i32* %3, align 4
  %276 = xor i32 %274, %275
  %277 = and i32 %276, 65535
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32*, i32** %272, i64 %278
  %280 = load i32*, i32** %279, align 8
  store i32* %280, i32** %9, align 8
  %281 = load i32*, i32** %9, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %3, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %271
  %287 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %288 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = ptrtoint i8* %289 to i32
  %291 = load i32*, i32** %9, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 1
  store i32 %290, i32* %292, align 4
  br label %313

293:                                              ; preds = %271
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %9, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 3
  store i32 %296, i32* %298, align 4
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  store i32 %301, i32* %303, align 4
  %304 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %305 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = ptrtoint i8* %306 to i32
  %308 = load i32*, i32** %9, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %3, align 4
  %311 = load i32*, i32** %9, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  store i32 %310, i32* %312, align 4
  br label %313

313:                                              ; preds = %293, %286
  %314 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %315 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  store i8* %316, i8** %2, align 8
  br label %328

317:                                              ; preds = %108
  br label %318

318:                                              ; preds = %317, %91
  br label %319

319:                                              ; preds = %318, %85
  %320 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %321 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %320, i32 0, i32 2
  %322 = load %struct.ll_entry*, %struct.ll_entry** %321, align 8
  store %struct.ll_entry* %322, %struct.ll_entry** %4, align 8
  br label %82

323:                                              ; preds = %82
  %324 = load i32, i32* %3, align 4
  %325 = call i32 @sh2_recompile_block(i32 %324)
  %326 = load i32, i32* %3, align 4
  %327 = call i8* @get_addr(i32 %326)
  store i8* %327, i8** %2, align 8
  br label %328

328:                                              ; preds = %323, %313, %40
  %329 = load i8*, i8** %2, align 8
  ret i8* %329
}

declare dso_local i64 @verify_dirty(i8*) #1

declare dso_local i32 @get_bounds(i32, i32*, i32*) #1

declare dso_local i32 @sh2_recompile_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
