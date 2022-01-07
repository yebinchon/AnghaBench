; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_search.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32*, i32, i64, i64*, i32*, i32, i32, i32, i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSG_CHEAT_SEARCH_NOT_INITIALIZED = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_CHEAT_SEARCH_FOUND_MATCHES = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cheat_manager_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cheat_manager_search(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [100 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  store i8* %22, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 8, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @MSG_CHEAT_SEARCH_NOT_INITIALIZED, align 4
  %27 = call i8* @msg_hash_to_str(i32 %26)
  %28 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %29 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %30 = call i32 @runloop_msg_queue_push(i8* %27, i32 1, i32 180, i32 1, i32* null, i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %525

31:                                               ; preds = %1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 12), align 4
  %33 = call i32 @cheat_manager_setup_search_meta(i32 %32, i32* %11, i32* %10, i32* %12)
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %477, %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %481

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @translate_address(i32 %39, i8** %5)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %321 [
    i32 2, label %42
    i32 4, label %131
    i32 1, label %320
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 11), align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %13, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = mul nsw i32 %55, 256
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i32, i32* %13, align 4
  %63 = zext i32 %62 to i64
  %64 = sub i64 0, %63
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add nsw i32 %56, %67
  br label %93

69:                                               ; preds = %42
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %13, align 4
  %75 = zext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = mul nsw i32 %90, 256
  %92 = add nsw i32 %79, %91
  br label %93

93:                                               ; preds = %69, %45
  %94 = phi i32 [ %68, %45 ], [ %92, %69 ]
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 11), align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = mul nsw i32 %103, 256
  %105 = load i8*, i8** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %104, %111
  br label %129

113:                                              ; preds = %93
  %114 = load i8*, i8** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8*, i8** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = mul nsw i32 %126, 256
  %128 = add nsw i32 %119, %127
  br label %129

129:                                              ; preds = %113, %97
  %130 = phi i32 [ %112, %97 ], [ %128, %113 ]
  store i32 %130, i32* %9, align 4
  br label %338

131:                                              ; preds = %38
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 11), align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %187

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = sub i64 0, %140
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = mul nsw i32 %144, 256
  %146 = mul nsw i32 %145, 256
  %147 = mul nsw i32 %146, 256
  %148 = load i8*, i8** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %152, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = mul nsw i32 %158, 256
  %160 = mul nsw i32 %159, 256
  %161 = add nsw i32 %147, %160
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %7, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 2
  %167 = load i32, i32* %13, align 4
  %168 = zext i32 %167 to i64
  %169 = sub i64 0, %168
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = mul nsw i32 %172, 256
  %174 = add nsw i32 %161, %173
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %7, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = getelementptr inbounds i8, i8* %178, i64 3
  %180 = load i32, i32* %13, align 4
  %181 = zext i32 %180 to i64
  %182 = sub i64 0, %181
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = add nsw i32 %174, %185
  br label %240

187:                                              ; preds = %131
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %7, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* %13, align 4
  %193 = zext i32 %192 to i64
  %194 = sub i64 0, %193
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8*, i8** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i32, i32* %13, align 4
  %204 = zext i32 %203 to i64
  %205 = sub i64 0, %204
  %206 = getelementptr inbounds i8, i8* %202, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = mul nsw i32 %208, 256
  %210 = add nsw i32 %197, %209
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* %7, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = getelementptr inbounds i8, i8* %214, i64 2
  %216 = load i32, i32* %13, align 4
  %217 = zext i32 %216 to i64
  %218 = sub i64 0, %217
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = mul nsw i32 %221, 256
  %223 = mul nsw i32 %222, 256
  %224 = add nsw i32 %210, %223
  %225 = load i8*, i8** %5, align 8
  %226 = load i32, i32* %7, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = getelementptr inbounds i8, i8* %228, i64 3
  %230 = load i32, i32* %13, align 4
  %231 = zext i32 %230 to i64
  %232 = sub i64 0, %231
  %233 = getelementptr inbounds i8, i8* %229, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = mul nsw i32 %235, 256
  %237 = mul nsw i32 %236, 256
  %238 = mul nsw i32 %237, 256
  %239 = add nsw i32 %224, %238
  br label %240

240:                                              ; preds = %187, %134
  %241 = phi i32 [ %186, %134 ], [ %239, %187 ]
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 11), align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %281

244:                                              ; preds = %240
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %7, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = mul nsw i32 %250, 256
  %252 = mul nsw i32 %251, 256
  %253 = mul nsw i32 %252, 256
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* %7, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = mul nsw i32 %260, 256
  %262 = mul nsw i32 %261, 256
  %263 = add nsw i32 %253, %262
  %264 = load i8*, i8** %6, align 8
  %265 = load i32, i32* %7, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = getelementptr inbounds i8, i8* %267, i64 2
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  %271 = mul nsw i32 %270, 256
  %272 = add nsw i32 %263, %271
  %273 = load i8*, i8** %6, align 8
  %274 = load i32, i32* %7, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = getelementptr inbounds i8, i8* %276, i64 3
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = add nsw i32 %272, %279
  br label %318

281:                                              ; preds = %240
  %282 = load i8*, i8** %6, align 8
  %283 = load i32, i32* %7, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = load i8*, i8** %6, align 8
  %289 = load i32, i32* %7, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i8, i8* %288, i64 %290
  %292 = getelementptr inbounds i8, i8* %291, i64 1
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = mul nsw i32 %294, 256
  %296 = add nsw i32 %287, %295
  %297 = load i8*, i8** %6, align 8
  %298 = load i32, i32* %7, align 4
  %299 = zext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %297, i64 %299
  %301 = getelementptr inbounds i8, i8* %300, i64 2
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = mul nsw i32 %303, 256
  %305 = mul nsw i32 %304, 256
  %306 = add nsw i32 %296, %305
  %307 = load i8*, i8** %6, align 8
  %308 = load i32, i32* %7, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = getelementptr inbounds i8, i8* %310, i64 3
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = mul nsw i32 %313, 256
  %315 = mul nsw i32 %314, 256
  %316 = mul nsw i32 %315, 256
  %317 = add nsw i32 %306, %316
  br label %318

318:                                              ; preds = %281, %244
  %319 = phi i32 [ %280, %244 ], [ %317, %281 ]
  store i32 %319, i32* %9, align 4
  br label %338

320:                                              ; preds = %38
  br label %321

321:                                              ; preds = %38, %320
  %322 = load i8*, i8** %5, align 8
  %323 = load i32, i32* %13, align 4
  %324 = zext i32 %323 to i64
  %325 = sub i64 0, %324
  %326 = getelementptr inbounds i8, i8* %322, i64 %325
  %327 = load i32, i32* %7, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds i8, i8* %326, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  store i32 %331, i32* %8, align 4
  %332 = load i8*, i8** %6, align 8
  %333 = load i32, i32* %7, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  store i32 %337, i32* %9, align 4
  br label %338

338:                                              ; preds = %321, %318, %129
  store i32 0, i32* %16, align 4
  br label %339

339:                                              ; preds = %473, %338
  %340 = load i32, i32* %16, align 4
  %341 = load i32, i32* %12, align 4
  %342 = udiv i32 8, %341
  %343 = icmp ult i32 %340, %342
  br i1 %343, label %344, label %476

344:                                              ; preds = %339
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %12, align 4
  %348 = mul i32 %346, %347
  %349 = lshr i32 %345, %348
  %350 = load i32, i32* %10, align 4
  %351 = and i32 %349, %350
  store i32 %351, i32* %17, align 4
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %16, align 4
  %354 = load i32, i32* %12, align 4
  %355 = mul i32 %353, %354
  %356 = lshr i32 %352, %355
  %357 = load i32, i32* %10, align 4
  %358 = and i32 %356, %357
  store i32 %358, i32* %18, align 4
  %359 = load i32, i32* %12, align 4
  %360 = icmp ult i32 %359, 8
  br i1 %360, label %361, label %373

361:                                              ; preds = %344
  %362 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %363 = load i32, i32* %7, align 4
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %10, align 4
  %368 = load i32, i32* %16, align 4
  %369 = load i32, i32* %12, align 4
  %370 = mul i32 %368, %369
  %371 = shl i32 %367, %370
  %372 = and i32 %366, %371
  store i32 %372, i32* %19, align 4
  br label %379

373:                                              ; preds = %344
  %374 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %375 = load i32, i32* %7, align 4
  %376 = zext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %19, align 4
  br label %379

379:                                              ; preds = %373, %361
  %380 = load i32, i32* %19, align 4
  %381 = icmp ugt i32 %380, 0
  br i1 %381, label %382, label %472

382:                                              ; preds = %379
  store i32 0, i32* %20, align 4
  %383 = load i32, i32* %3, align 4
  switch i32 %383, label %433 [
    i32 133, label %384
    i32 130, label %389
    i32 132, label %394
    i32 129, label %399
    i32 131, label %404
    i32 136, label %409
    i32 128, label %414
    i32 134, label %419
    i32 135, label %426
  ]

384:                                              ; preds = %382
  %385 = load i32, i32* %17, align 4
  %386 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %387 = icmp eq i32 %385, %386
  %388 = zext i1 %387 to i32
  store i32 %388, i32* %20, align 4
  br label %433

389:                                              ; preds = %382
  %390 = load i32, i32* %17, align 4
  %391 = load i32, i32* %18, align 4
  %392 = icmp ult i32 %390, %391
  %393 = zext i1 %392 to i32
  store i32 %393, i32* %20, align 4
  br label %433

394:                                              ; preds = %382
  %395 = load i32, i32* %17, align 4
  %396 = load i32, i32* %18, align 4
  %397 = icmp ugt i32 %395, %396
  %398 = zext i1 %397 to i32
  store i32 %398, i32* %20, align 4
  br label %433

399:                                              ; preds = %382
  %400 = load i32, i32* %17, align 4
  %401 = load i32, i32* %18, align 4
  %402 = icmp ule i32 %400, %401
  %403 = zext i1 %402 to i32
  store i32 %403, i32* %20, align 4
  br label %433

404:                                              ; preds = %382
  %405 = load i32, i32* %17, align 4
  %406 = load i32, i32* %18, align 4
  %407 = icmp uge i32 %405, %406
  %408 = zext i1 %407 to i32
  store i32 %408, i32* %20, align 4
  br label %433

409:                                              ; preds = %382
  %410 = load i32, i32* %17, align 4
  %411 = load i32, i32* %18, align 4
  %412 = icmp eq i32 %410, %411
  %413 = zext i1 %412 to i32
  store i32 %413, i32* %20, align 4
  br label %433

414:                                              ; preds = %382
  %415 = load i32, i32* %17, align 4
  %416 = load i32, i32* %18, align 4
  %417 = icmp ne i32 %415, %416
  %418 = zext i1 %417 to i32
  store i32 %418, i32* %20, align 4
  br label %433

419:                                              ; preds = %382
  %420 = load i32, i32* %17, align 4
  %421 = load i32, i32* %18, align 4
  %422 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 10), align 4
  %423 = add i32 %421, %422
  %424 = icmp eq i32 %420, %423
  %425 = zext i1 %424 to i32
  store i32 %425, i32* %20, align 4
  br label %433

426:                                              ; preds = %382
  %427 = load i32, i32* %17, align 4
  %428 = load i32, i32* %18, align 4
  %429 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 9), align 8
  %430 = sub i32 %428, %429
  %431 = icmp eq i32 %427, %430
  %432 = zext i1 %431 to i32
  store i32 %432, i32* %20, align 4
  br label %433

433:                                              ; preds = %382, %426, %419, %414, %409, %404, %399, %394, %389, %384
  %434 = load i32, i32* %20, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %471, label %436

436:                                              ; preds = %433
  %437 = load i32, i32* %12, align 4
  %438 = icmp ult i32 %437, 8
  br i1 %438, label %439, label %457

439:                                              ; preds = %436
  %440 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %441 = load i32, i32* %7, align 4
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* %10, align 4
  %446 = load i32, i32* %16, align 4
  %447 = load i32, i32* %12, align 4
  %448 = mul i32 %446, %447
  %449 = shl i32 %445, %448
  %450 = xor i32 %449, -1
  %451 = and i32 %450, 255
  %452 = and i32 %444, %451
  %453 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %454 = load i32, i32* %7, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 %452, i32* %456, align 4
  br label %464

457:                                              ; preds = %436
  %458 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %459 = load i32, i32* %7, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %11, align 4
  %463 = call i32 @memset(i32* %461, i32 0, i32 %462)
  br label %464

464:                                              ; preds = %457, %439
  %465 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %466 = icmp sgt i64 %465, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %464
  %468 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %469 = add nsw i64 %468, -1
  store i64 %469, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  br label %470

470:                                              ; preds = %467, %464
  br label %471

471:                                              ; preds = %470, %433
  br label %472

472:                                              ; preds = %471, %379
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %16, align 4
  %475 = add i32 %474, 1
  store i32 %475, i32* %16, align 4
  br label %339

476:                                              ; preds = %339
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %7, align 4
  %479 = load i32, i32* %11, align 4
  %480 = add i32 %478, %479
  store i32 %480, i32* %7, align 4
  br label %34

481:                                              ; preds = %34
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %482

482:                                              ; preds = %511, %481
  %483 = load i32, i32* %14, align 4
  %484 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %485 = icmp ult i32 %483, %484
  br i1 %485, label %486, label %514

486:                                              ; preds = %482
  %487 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %488 = load i32, i32* %13, align 4
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  %491 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 8), align 8
  %492 = load i32, i32* %14, align 4
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 7), align 8
  %497 = load i32, i32* %14, align 4
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds i64, i64* %496, i64 %498
  %500 = load i64, i64* %499, align 8
  %501 = call i32 @memcpy(i8* %490, i32 %495, i64 %500)
  %502 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 7), align 8
  %503 = load i32, i32* %14, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds i64, i64* %502, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = load i32, i32* %13, align 4
  %508 = zext i32 %507 to i64
  %509 = add nsw i64 %508, %506
  %510 = trunc i64 %509 to i32
  store i32 %510, i32* %13, align 4
  br label %511

511:                                              ; preds = %486
  %512 = load i32, i32* %14, align 4
  %513 = add i32 %512, 1
  store i32 %513, i32* %14, align 4
  br label %482

514:                                              ; preds = %482
  %515 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %516 = load i32, i32* @MSG_CHEAT_SEARCH_FOUND_MATCHES, align 4
  %517 = call i8* @msg_hash_to_str(i32 %516)
  %518 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %519 = call i32 @snprintf(i8* %515, i32 100, i8* %517, i64 %518)
  %520 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 99
  store i8 0, i8* %520, align 1
  %521 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %522 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %523 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %524 = call i32 @runloop_msg_queue_push(i8* %521, i32 1, i32 180, i32 1, i32* null, i32 %522, i32 %523)
  store i32 0, i32* %2, align 4
  br label %525

525:                                              ; preds = %514, %25
  %526 = load i32, i32* %2, align 4
  ret i32 %526
}

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @cheat_manager_setup_search_meta(i32, i32*, i32*, i32*) #1

declare dso_local i32 @translate_address(i32, i8**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
