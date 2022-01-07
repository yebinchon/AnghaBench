; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_add_matches.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..managerscheat_manager.c_cheat_manager_add_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32*, i32, i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSG_CHEAT_SEARCH_ADDED_MATCHES_TOO_MANY = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@MSG_CHEAT_SEARCH_ADDED_MATCHES_FAIL = common dso_local global i32 0, align 4
@MSG_CHEAT_SEARCH_ADDED_MATCHES_SUCCESS = common dso_local global i32 0, align 4
@MENU_ENTRIES_CTL_SET_REFRESH = common dso_local global i32 0, align 4
@RARCH_MENU_CTL_SET_PREVENT_POPULATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cheat_manager_add_matches(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [100 x i8], align 16
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
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 0), align 8
  store i8* %24, i8** %22, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 2), align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp sgt i32 %27, 100
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load i32, i32* @MSG_CHEAT_SEARCH_ADDED_MATCHES_TOO_MANY, align 4
  %31 = call i8* @msg_hash_to_str(i32 %30)
  %32 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %33 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %34 = call i32 @runloop_msg_queue_push(i8* %31, i32 1, i32 180, i32 1, i32* null, i32 %32, i32 %33)
  store i32 0, i32* %6, align 4
  br label %312

35:                                               ; preds = %5
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 4
  %37 = call i32 @cheat_manager_setup_search_meta(i32 %36, i32* %17, i32* %16, i32* %18)
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %297, %35
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 3), align 8
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %301

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @translate_address(i32 %43, i8** %22)
  store i32 %44, i32* %21, align 4
  %45 = load i32, i32* %17, align 4
  switch i32 %45, label %211 [
    i32 2, label %46
    i32 4, label %99
    i32 1, label %210
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load i8*, i8** %22, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i32, i32* %21, align 4
  %55 = zext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = mul nsw i32 %59, 256
  %61 = load i8*, i8** %22, align 8
  %62 = load i32, i32* %15, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i32, i32* %21, align 4
  %67 = zext i32 %66 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %60, %71
  br label %97

73:                                               ; preds = %46
  %74 = load i8*, i8** %22, align 8
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i32, i32* %21, align 4
  %79 = zext i32 %78 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %22, align 8
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i32, i32* %21, align 4
  %90 = zext i32 %89 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = mul nsw i32 %94, 256
  %96 = add nsw i32 %83, %95
  br label %97

97:                                               ; preds = %73, %49
  %98 = phi i32 [ %72, %49 ], [ %96, %73 ]
  store i32 %98, i32* %19, align 4
  br label %222

99:                                               ; preds = %42
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %155

102:                                              ; preds = %99
  %103 = load i8*, i8** %22, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %21, align 4
  %108 = zext i32 %107 to i64
  %109 = sub i64 0, %108
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = mul nsw i32 %112, 256
  %114 = mul nsw i32 %113, 256
  %115 = mul nsw i32 %114, 256
  %116 = load i8*, i8** %22, align 8
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i32, i32* %21, align 4
  %122 = zext i32 %121 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = mul nsw i32 %126, 256
  %128 = mul nsw i32 %127, 256
  %129 = add nsw i32 %115, %128
  %130 = load i8*, i8** %22, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = getelementptr inbounds i8, i8* %133, i64 2
  %135 = load i32, i32* %21, align 4
  %136 = zext i32 %135 to i64
  %137 = sub i64 0, %136
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = mul nsw i32 %140, 256
  %142 = add nsw i32 %129, %141
  %143 = load i8*, i8** %22, align 8
  %144 = load i32, i32* %15, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  %148 = load i32, i32* %21, align 4
  %149 = zext i32 %148 to i64
  %150 = sub i64 0, %149
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = add nsw i32 %142, %153
  br label %208

155:                                              ; preds = %99
  %156 = load i8*, i8** %22, align 8
  %157 = load i32, i32* %15, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %21, align 4
  %161 = zext i32 %160 to i64
  %162 = sub i64 0, %161
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = load i8*, i8** %22, align 8
  %167 = load i32, i32* %15, align 4
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
  %178 = add nsw i32 %165, %177
  %179 = load i8*, i8** %22, align 8
  %180 = load i32, i32* %15, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i32, i32* %21, align 4
  %185 = zext i32 %184 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = mul nsw i32 %189, 256
  %191 = mul nsw i32 %190, 256
  %192 = add nsw i32 %178, %191
  %193 = load i8*, i8** %22, align 8
  %194 = load i32, i32* %15, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = getelementptr inbounds i8, i8* %196, i64 3
  %198 = load i32, i32* %21, align 4
  %199 = zext i32 %198 to i64
  %200 = sub i64 0, %199
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = mul nsw i32 %203, 256
  %205 = mul nsw i32 %204, 256
  %206 = mul nsw i32 %205, 256
  %207 = add nsw i32 %192, %206
  br label %208

208:                                              ; preds = %155, %102
  %209 = phi i32 [ %154, %102 ], [ %207, %155 ]
  store i32 %209, i32* %19, align 4
  br label %222

210:                                              ; preds = %42
  br label %211

211:                                              ; preds = %42, %210
  %212 = load i8*, i8** %22, align 8
  %213 = load i32, i32* %21, align 4
  %214 = zext i32 %213 to i64
  %215 = sub i64 0, %214
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  %217 = load i32, i32* %15, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  store i32 %221, i32* %19, align 4
  br label %222

222:                                              ; preds = %211, %208, %97
  store i32 0, i32* %14, align 4
  br label %223

223:                                              ; preds = %293, %222
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* %18, align 4
  %226 = udiv i32 8, %225
  %227 = icmp ult i32 %224, %226
  br i1 %227, label %228, label %296

228:                                              ; preds = %223
  %229 = load i32, i32* %18, align 4
  %230 = icmp ult i32 %229, 8
  br i1 %230, label %231, label %267

231:                                              ; preds = %228
  %232 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %18, align 4
  %240 = mul i32 %238, %239
  %241 = shl i32 %237, %240
  %242 = and i32 %236, %241
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %23, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %266

245:                                              ; preds = %231
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 4
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %18, align 4
  %251 = mul i32 %249, %250
  %252 = shl i32 %248, %251
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %254 = load i32, i32* %19, align 4
  %255 = call i32 @cheat_manager_add_new_code(i32 %246, i32 %247, i32 %252, i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %245
  %258 = load i32, i32* @MSG_CHEAT_SEARCH_ADDED_MATCHES_FAIL, align 4
  %259 = call i8* @msg_hash_to_str(i32 %258)
  %260 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %261 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %262 = call i32 @runloop_msg_queue_push(i8* %259, i32 1, i32 180, i32 1, i32* null, i32 %260, i32 %261)
  store i32 0, i32* %6, align 4
  br label %312

263:                                              ; preds = %245
  %264 = load i32, i32* %20, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %20, align 4
  br label %266

266:                                              ; preds = %263, %231
  br label %292

267:                                              ; preds = %228
  %268 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 4), align 8
  %269 = load i32, i32* %15, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %23, align 4
  %273 = load i32, i32* %23, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %267
  %276 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 6), align 4
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 5), align 8
  %279 = load i32, i32* %19, align 4
  %280 = call i32 @cheat_manager_add_new_code(i32 %276, i32 %277, i32 255, i32 %278, i32 %279)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %275
  %283 = load i32, i32* @MSG_CHEAT_SEARCH_ADDED_MATCHES_FAIL, align 4
  %284 = call i8* @msg_hash_to_str(i32 %283)
  %285 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %286 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %287 = call i32 @runloop_msg_queue_push(i8* %284, i32 1, i32 180, i32 1, i32* null, i32 %285, i32 %286)
  store i32 0, i32* %6, align 4
  br label %312

288:                                              ; preds = %275
  %289 = load i32, i32* %20, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %20, align 4
  br label %291

291:                                              ; preds = %288, %267
  br label %292

292:                                              ; preds = %291, %266
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %14, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %14, align 4
  br label %223

296:                                              ; preds = %223
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %15, align 4
  %299 = load i32, i32* %17, align 4
  %300 = add i32 %298, %299
  store i32 %300, i32* %15, align 4
  br label %38

301:                                              ; preds = %38
  %302 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %303 = load i32, i32* @MSG_CHEAT_SEARCH_ADDED_MATCHES_SUCCESS, align 4
  %304 = call i8* @msg_hash_to_str(i32 %303)
  %305 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cheat_manager_state, i32 0, i32 1), align 8
  %306 = call i32 @snprintf(i8* %302, i32 100, i8* %304, i32 %305)
  %307 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 99
  store i8 0, i8* %307, align 1
  %308 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %309 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %310 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %311 = call i32 @runloop_msg_queue_push(i8* %308, i32 1, i32 180, i32 1, i32* null, i32 %309, i32 %310)
  store i32 0, i32* %6, align 4
  br label %312

312:                                              ; preds = %301, %282, %257, %29
  %313 = load i32, i32* %6, align 4
  ret i32 %313
}

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @cheat_manager_setup_search_meta(i32, i32*, i32*, i32*) #1

declare dso_local i32 @translate_address(i32, i8**) #1

declare dso_local i32 @cheat_manager_add_new_code(i32, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
