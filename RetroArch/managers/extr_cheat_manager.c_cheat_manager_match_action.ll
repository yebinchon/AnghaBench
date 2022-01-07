; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_match_action.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_match_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i64, i32, i32*, i32, i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSG_CHEAT_SEARCH_ADD_MATCH_FAIL = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_CHEAT_SEARCH_ADD_MATCH_SUCCESS = common dso_local global i32 0, align 4
@MSG_CHEAT_SEARCH_DELETE_MATCH_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheat_manager_match_action(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
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
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i8* %26, i8** %22, align 8
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  store i8* %27, i8** %23, align 8
  store i32 0, i32* %24, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %30 = sub nsw i32 %29, 1
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %586

33:                                               ; preds = %6
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %586

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 7), align 4
  %39 = call i32 @cheat_manager_setup_search_meta(i32 %38, i32* %17, i32* %16, i32* %18)
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 131
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %582, %46
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %586

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @translate_address(i32 %53, i8** %22)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %17, align 4
  switch i32 %55, label %343 [
    i32 2, label %56
    i32 4, label %149
    i32 1, label %342
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load i8*, i8** %22, align 8
  %61 = load i32, i32* %14, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i32, i32* %21, align 4
  %65 = zext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = mul nsw i32 %69, 256
  %71 = load i8*, i8** %22, align 8
  %72 = load i32, i32* %14, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i32, i32* %21, align 4
  %77 = zext i32 %76 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = add nsw i32 %70, %81
  br label %107

83:                                               ; preds = %56
  %84 = load i8*, i8** %22, align 8
  %85 = load i32, i32* %14, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %21, align 4
  %89 = zext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8*, i8** %22, align 8
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i32, i32* %21, align 4
  %100 = zext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = mul nsw i32 %104, 256
  %106 = add nsw i32 %93, %105
  br label %107

107:                                              ; preds = %83, %59
  %108 = phi i32 [ %82, %59 ], [ %106, %83 ]
  store i32 %108, i32* %19, align 4
  %109 = load i8*, i8** %23, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %148

111:                                              ; preds = %107
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load i8*, i8** %23, align 8
  %116 = load i32, i32* %14, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = mul nsw i32 %120, 256
  %122 = load i8*, i8** %23, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = add nsw i32 %121, %128
  br label %146

130:                                              ; preds = %111
  %131 = load i8*, i8** %23, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i8*, i8** %23, align 8
  %138 = load i32, i32* %14, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = getelementptr inbounds i8, i8* %140, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = mul nsw i32 %143, 256
  %145 = add nsw i32 %136, %144
  br label %146

146:                                              ; preds = %130, %114
  %147 = phi i32 [ %129, %114 ], [ %145, %130 ]
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %146, %107
  br label %364

149:                                              ; preds = %52
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %205

152:                                              ; preds = %149
  %153 = load i8*, i8** %22, align 8
  %154 = load i32, i32* %14, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %21, align 4
  %158 = zext i32 %157 to i64
  %159 = sub i64 0, %158
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = mul nsw i32 %162, 256
  %164 = mul nsw i32 %163, 256
  %165 = mul nsw i32 %164, 256
  %166 = load i8*, i8** %22, align 8
  %167 = load i32, i32* %14, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i32, i32* %21, align 4
  %172 = zext i32 %171 to i64
  %173 = sub i64 0, %172
  %174 = getelementptr inbounds i8, i8* %170, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = mul nsw i32 %176, 256
  %178 = mul nsw i32 %177, 256
  %179 = add nsw i32 %165, %178
  %180 = load i8*, i8** %22, align 8
  %181 = load i32, i32* %14, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = load i32, i32* %21, align 4
  %186 = zext i32 %185 to i64
  %187 = sub i64 0, %186
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = mul nsw i32 %190, 256
  %192 = add nsw i32 %179, %191
  %193 = load i8*, i8** %22, align 8
  %194 = load i32, i32* %14, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = getelementptr inbounds i8, i8* %196, i64 3
  %198 = load i32, i32* %21, align 4
  %199 = zext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = add nsw i32 %192, %203
  br label %258

205:                                              ; preds = %149
  %206 = load i8*, i8** %22, align 8
  %207 = load i32, i32* %14, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i32, i32* %21, align 4
  %211 = zext i32 %210 to i64
  %212 = sub i64 0, %211
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = load i8*, i8** %22, align 8
  %217 = load i32, i32* %14, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = getelementptr inbounds i8, i8* %219, i64 1
  %221 = load i32, i32* %21, align 4
  %222 = zext i32 %221 to i64
  %223 = sub i64 0, %222
  %224 = getelementptr inbounds i8, i8* %220, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = mul nsw i32 %226, 256
  %228 = add nsw i32 %215, %227
  %229 = load i8*, i8** %22, align 8
  %230 = load i32, i32* %14, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = getelementptr inbounds i8, i8* %232, i64 2
  %234 = load i32, i32* %21, align 4
  %235 = zext i32 %234 to i64
  %236 = sub i64 0, %235
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = mul nsw i32 %239, 256
  %241 = mul nsw i32 %240, 256
  %242 = add nsw i32 %228, %241
  %243 = load i8*, i8** %22, align 8
  %244 = load i32, i32* %14, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = getelementptr inbounds i8, i8* %246, i64 3
  %248 = load i32, i32* %21, align 4
  %249 = zext i32 %248 to i64
  %250 = sub i64 0, %249
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = mul nsw i32 %253, 256
  %255 = mul nsw i32 %254, 256
  %256 = mul nsw i32 %255, 256
  %257 = add nsw i32 %242, %256
  br label %258

258:                                              ; preds = %205, %152
  %259 = phi i32 [ %204, %152 ], [ %257, %205 ]
  store i32 %259, i32* %19, align 4
  %260 = load i8*, i8** %23, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %341

262:                                              ; preds = %258
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %302

265:                                              ; preds = %262
  %266 = load i8*, i8** %23, align 8
  %267 = load i32, i32* %14, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = mul nsw i32 %271, 256
  %273 = mul nsw i32 %272, 256
  %274 = mul nsw i32 %273, 256
  %275 = load i8*, i8** %23, align 8
  %276 = load i32, i32* %14, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = getelementptr inbounds i8, i8* %278, i64 1
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = mul nsw i32 %281, 256
  %283 = mul nsw i32 %282, 256
  %284 = add nsw i32 %274, %283
  %285 = load i8*, i8** %23, align 8
  %286 = load i32, i32* %14, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = getelementptr inbounds i8, i8* %288, i64 2
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = mul nsw i32 %291, 256
  %293 = add nsw i32 %284, %292
  %294 = load i8*, i8** %23, align 8
  %295 = load i32, i32* %14, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = getelementptr inbounds i8, i8* %297, i64 3
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i32
  %301 = add nsw i32 %293, %300
  br label %339

302:                                              ; preds = %262
  %303 = load i8*, i8** %23, align 8
  %304 = load i32, i32* %14, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = load i8*, i8** %23, align 8
  %310 = load i32, i32* %14, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = getelementptr inbounds i8, i8* %312, i64 1
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = mul nsw i32 %315, 256
  %317 = add nsw i32 %308, %316
  %318 = load i8*, i8** %23, align 8
  %319 = load i32, i32* %14, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = getelementptr inbounds i8, i8* %321, i64 2
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = mul nsw i32 %324, 256
  %326 = mul nsw i32 %325, 256
  %327 = add nsw i32 %317, %326
  %328 = load i8*, i8** %23, align 8
  %329 = load i32, i32* %14, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = getelementptr inbounds i8, i8* %331, i64 3
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = mul nsw i32 %334, 256
  %336 = mul nsw i32 %335, 256
  %337 = mul nsw i32 %336, 256
  %338 = add nsw i32 %327, %337
  br label %339

339:                                              ; preds = %302, %265
  %340 = phi i32 [ %301, %265 ], [ %338, %302 ]
  store i32 %340, i32* %20, align 4
  br label %341

341:                                              ; preds = %339, %258
  br label %364

342:                                              ; preds = %52
  br label %343

343:                                              ; preds = %52, %342
  %344 = load i8*, i8** %22, align 8
  %345 = load i32, i32* %14, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i8, i8* %344, i64 %346
  %348 = load i32, i32* %21, align 4
  %349 = zext i32 %348 to i64
  %350 = sub i64 0, %349
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  store i32 %353, i32* %19, align 4
  %354 = load i8*, i8** %23, align 8
  %355 = icmp ne i8* %354, null
  br i1 %355, label %356, label %363

356:                                              ; preds = %343
  %357 = load i8*, i8** %23, align 8
  %358 = load i32, i32* %14, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i8, i8* %357, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  store i32 %362, i32* %20, align 4
  br label %363

363:                                              ; preds = %356, %343
  br label %364

364:                                              ; preds = %363, %341, %148
  %365 = load i32, i32* %7, align 4
  %366 = icmp eq i32 %365, 131
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i32, i32* %19, align 4
  %369 = load i32*, i32** %12, align 8
  store i32 %368, i32* %369, align 4
  %370 = load i32, i32* %20, align 4
  %371 = load i32*, i32** %11, align 8
  store i32 %370, i32* %371, align 4
  br label %586

372:                                              ; preds = %364
  %373 = load i8*, i8** %23, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %376, label %375

375:                                              ; preds = %372
  br label %586

376:                                              ; preds = %372
  store i32 0, i32* %13, align 4
  br label %377

377:                                              ; preds = %578, %376
  %378 = load i32, i32* %13, align 4
  %379 = load i32, i32* %18, align 4
  %380 = udiv i32 8, %379
  %381 = icmp ult i32 %378, %380
  br i1 %381, label %382, label %581

382:                                              ; preds = %377
  %383 = load i32, i32* %18, align 4
  %384 = icmp ult i32 %383, 8
  br i1 %384, label %385, label %489

385:                                              ; preds = %382
  %386 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %387 = load i32, i32* %14, align 4
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* %13, align 4
  %393 = load i32, i32* %18, align 4
  %394 = mul i32 %392, %393
  %395 = shl i32 %391, %394
  %396 = and i32 %390, %395
  store i32 %396, i32* %25, align 4
  %397 = load i32, i32* %25, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %488

399:                                              ; preds = %385
  %400 = load i32, i32* %8, align 4
  %401 = load i32, i32* %24, align 4
  %402 = icmp eq i32 %400, %401
  br i1 %402, label %403, label %485

403:                                              ; preds = %399
  %404 = load i32, i32* %7, align 4
  switch i32 %404, label %484 [
    i32 131, label %405
    i32 128, label %406
    i32 130, label %419
    i32 129, label %444
  ]

405:                                              ; preds = %403
  br label %586

406:                                              ; preds = %403
  %407 = load i32, i32* %14, align 4
  %408 = load i32*, i32** %9, align 8
  store i32 %407, i32* %408, align 4
  %409 = load i32, i32* %16, align 4
  %410 = load i32, i32* %13, align 4
  %411 = load i32, i32* %18, align 4
  %412 = mul i32 %410, %411
  %413 = shl i32 %409, %412
  %414 = load i32*, i32** %10, align 8
  store i32 %413, i32* %414, align 4
  %415 = load i32, i32* %19, align 4
  %416 = load i32*, i32** %12, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32, i32* %20, align 4
  %418 = load i32*, i32** %11, align 8
  store i32 %417, i32* %418, align 4
  br label %586

419:                                              ; preds = %403
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 7), align 4
  %421 = load i32, i32* %14, align 4
  %422 = load i32, i32* %16, align 4
  %423 = load i32, i32* %13, align 4
  %424 = load i32, i32* %18, align 4
  %425 = mul i32 %423, %424
  %426 = shl i32 %422, %425
  %427 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %428 = load i32, i32* %19, align 4
  %429 = call i32 @cheat_manager_add_new_code(i32 %420, i32 %421, i32 %426, i32 %427, i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %437, label %431

431:                                              ; preds = %419
  %432 = load i32, i32* @MSG_CHEAT_SEARCH_ADD_MATCH_FAIL, align 4
  %433 = call i32 @msg_hash_to_str(i32 %432)
  %434 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %435 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %436 = call i32 @runloop_msg_queue_push(i32 %433, i32 1, i32 180, i32 1, i32* null, i32 %434, i32 %435)
  br label %443

437:                                              ; preds = %419
  %438 = load i32, i32* @MSG_CHEAT_SEARCH_ADD_MATCH_SUCCESS, align 4
  %439 = call i32 @msg_hash_to_str(i32 %438)
  %440 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %441 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %442 = call i32 @runloop_msg_queue_push(i32 %439, i32 1, i32 180, i32 1, i32* null, i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %437, %431
  br label %586

444:                                              ; preds = %403
  %445 = load i32, i32* %18, align 4
  %446 = icmp ult i32 %445, 8
  br i1 %446, label %447, label %465

447:                                              ; preds = %444
  %448 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %449 = load i32, i32* %14, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %16, align 4
  %454 = load i32, i32* %13, align 4
  %455 = load i32, i32* %18, align 4
  %456 = mul i32 %454, %455
  %457 = shl i32 %453, %456
  %458 = xor i32 %457, -1
  %459 = and i32 %458, 255
  %460 = and i32 %452, %459
  %461 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %462 = load i32, i32* %14, align 4
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %461, i64 %463
  store i32 %460, i32* %464, align 4
  br label %472

465:                                              ; preds = %444
  %466 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %467 = load i32, i32* %14, align 4
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  %470 = load i32, i32* %17, align 4
  %471 = call i32 @memset(i32* %469, i32 0, i32 %470)
  br label %472

472:                                              ; preds = %465, %447
  %473 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %474 = icmp sgt i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %477 = add nsw i32 %476, -1
  store i32 %477, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i32, i32* @MSG_CHEAT_SEARCH_DELETE_MATCH_SUCCESS, align 4
  %480 = call i32 @msg_hash_to_str(i32 %479)
  %481 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %482 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %483 = call i32 @runloop_msg_queue_push(i32 %480, i32 1, i32 180, i32 1, i32* null, i32 %481, i32 %482)
  br label %586

484:                                              ; preds = %403
  br label %586

485:                                              ; preds = %399
  %486 = load i32, i32* %24, align 4
  %487 = add i32 %486, 1
  store i32 %487, i32* %24, align 4
  br label %488

488:                                              ; preds = %485, %385
  br label %577

489:                                              ; preds = %382
  %490 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %491 = load i32, i32* %14, align 4
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %25, align 4
  %495 = load i32, i32* %25, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %576

497:                                              ; preds = %489
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* %24, align 4
  %500 = icmp eq i32 %498, %499
  br i1 %500, label %501, label %573

501:                                              ; preds = %497
  %502 = load i32, i32* %7, align 4
  switch i32 %502, label %572 [
    i32 131, label %503
    i32 128, label %504
    i32 130, label %512
    i32 129, label %532
  ]

503:                                              ; preds = %501
  br label %586

504:                                              ; preds = %501
  %505 = load i32, i32* %14, align 4
  %506 = load i32*, i32** %9, align 8
  store i32 %505, i32* %506, align 4
  %507 = load i32*, i32** %10, align 8
  store i32 255, i32* %507, align 4
  %508 = load i32, i32* %19, align 4
  %509 = load i32*, i32** %12, align 8
  store i32 %508, i32* %509, align 4
  %510 = load i32, i32* %20, align 4
  %511 = load i32*, i32** %11, align 8
  store i32 %510, i32* %511, align 4
  br label %586

512:                                              ; preds = %501
  %513 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 7), align 4
  %514 = load i32, i32* %14, align 4
  %515 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 8
  %516 = load i32, i32* %19, align 4
  %517 = call i32 @cheat_manager_add_new_code(i32 %513, i32 %514, i32 255, i32 %515, i32 %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %525, label %519

519:                                              ; preds = %512
  %520 = load i32, i32* @MSG_CHEAT_SEARCH_ADD_MATCH_FAIL, align 4
  %521 = call i32 @msg_hash_to_str(i32 %520)
  %522 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %523 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %524 = call i32 @runloop_msg_queue_push(i32 %521, i32 1, i32 180, i32 1, i32* null, i32 %522, i32 %523)
  br label %531

525:                                              ; preds = %512
  %526 = load i32, i32* @MSG_CHEAT_SEARCH_ADD_MATCH_SUCCESS, align 4
  %527 = call i32 @msg_hash_to_str(i32 %526)
  %528 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %529 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %530 = call i32 @runloop_msg_queue_push(i32 %527, i32 1, i32 180, i32 1, i32* null, i32 %528, i32 %529)
  br label %531

531:                                              ; preds = %525, %519
  br label %586

532:                                              ; preds = %501
  %533 = load i32, i32* %18, align 4
  %534 = icmp ult i32 %533, 8
  br i1 %534, label %535, label %553

535:                                              ; preds = %532
  %536 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %537 = load i32, i32* %14, align 4
  %538 = zext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %16, align 4
  %542 = load i32, i32* %13, align 4
  %543 = load i32, i32* %18, align 4
  %544 = mul i32 %542, %543
  %545 = shl i32 %541, %544
  %546 = xor i32 %545, -1
  %547 = and i32 %546, 255
  %548 = and i32 %540, %547
  %549 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %550 = load i32, i32* %14, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  store i32 %548, i32* %552, align 4
  br label %560

553:                                              ; preds = %532
  %554 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %555 = load i32, i32* %14, align 4
  %556 = zext i32 %555 to i64
  %557 = getelementptr inbounds i32, i32* %554, i64 %556
  %558 = load i32, i32* %17, align 4
  %559 = call i32 @memset(i32* %557, i32 0, i32 %558)
  br label %560

560:                                              ; preds = %553, %535
  %561 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %562 = icmp sgt i32 %561, 0
  br i1 %562, label %563, label %566

563:                                              ; preds = %560
  %564 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  %565 = add nsw i32 %564, -1
  store i32 %565, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 8
  br label %566

566:                                              ; preds = %563, %560
  %567 = load i32, i32* @MSG_CHEAT_SEARCH_DELETE_MATCH_SUCCESS, align 4
  %568 = call i32 @msg_hash_to_str(i32 %567)
  %569 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %570 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %571 = call i32 @runloop_msg_queue_push(i32 %568, i32 1, i32 180, i32 1, i32* null, i32 %569, i32 %570)
  br label %586

572:                                              ; preds = %501
  br label %573

573:                                              ; preds = %572, %497
  %574 = load i32, i32* %24, align 4
  %575 = add i32 %574, 1
  store i32 %575, i32* %24, align 4
  br label %576

576:                                              ; preds = %573, %489
  br label %577

577:                                              ; preds = %576, %488
  br label %578

578:                                              ; preds = %577
  %579 = load i32, i32* %13, align 4
  %580 = add i32 %579, 1
  store i32 %580, i32* %13, align 4
  br label %377

581:                                              ; preds = %377
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %14, align 4
  %584 = load i32, i32* %17, align 4
  %585 = add i32 %583, %584
  store i32 %585, i32* %14, align 4
  br label %48

586:                                              ; preds = %32, %36, %367, %375, %405, %406, %443, %478, %484, %503, %504, %531, %566, %48
  ret void
}

declare dso_local i32 @cheat_manager_setup_search_meta(i32, i32*, i32*, i32*) #1

declare dso_local i32 @translate_address(i32, i8**) #1

declare dso_local i32 @cheat_manager_add_new_code(i32, i32, i32, i32, i32) #1

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @msg_hash_to_str(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
