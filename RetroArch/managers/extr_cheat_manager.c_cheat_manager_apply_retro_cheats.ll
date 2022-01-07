; ModuleID = '/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_apply_retro_cheats.c'
source_filename = "/home/carl/AnghaBench/RetroArch/managers/extr_cheat_manager.c_cheat_manager_apply_retro_cheats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@cheat_manager_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@CHEAT_HANDLER_TYPE_RETRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cheat_manager_apply_retro_cheats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  br label %675

20:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %672, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 0), align 8
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %675

25:                                               ; preds = %21
  store i8* null, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %33 = load i32, i32* %1, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHEAT_HANDLER_TYPE_RETRO, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %25
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %42 = load i32, i32* %1, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40, %25
  br label %672

49:                                               ; preds = %40
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 5), align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 @cheat_manager_initialize_memory(i32* null, i32 0)
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 5), align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %675

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %672

62:                                               ; preds = %58
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %64 = load i32, i32* %1, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cheat_manager_setup_search_meta(i32 %68, i32* %4, i32* %3, i32* %5)
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 1), align 8
  store i8* %70, i8** %8, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %72 = load i32, i32* %1, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @translate_address(i32 %77, i8** %8)
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %4, align 4
  switch i32 %79, label %245 [
    i32 2, label %80
    i32 4, label %133
    i32 1, label %244
  ]

80:                                               ; preds = %62
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 4), align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* %2, align 4
  %89 = zext i32 %88 to i64
  %90 = sub i64 0, %89
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = mul nsw i32 %93, 256
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i32, i32* %2, align 4
  %101 = zext i32 %100 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %94, %105
  br label %131

107:                                              ; preds = %80
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i32, i32* %2, align 4
  %113 = zext i32 %112 to i64
  %114 = sub i64 0, %113
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i32, i32* %2, align 4
  %124 = zext i32 %123 to i64
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, i8* %122, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = mul nsw i32 %128, 256
  %130 = add nsw i32 %117, %129
  br label %131

131:                                              ; preds = %107, %83
  %132 = phi i32 [ %106, %83 ], [ %130, %107 ]
  store i32 %132, i32* %6, align 4
  br label %256

133:                                              ; preds = %62
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 4), align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %2, align 4
  %142 = zext i32 %141 to i64
  %143 = sub i64 0, %142
  %144 = getelementptr inbounds i8, i8* %140, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = mul nsw i32 %146, 256
  %148 = mul nsw i32 %147, 256
  %149 = mul nsw i32 %148, 256
  %150 = load i8*, i8** %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i32, i32* %2, align 4
  %156 = zext i32 %155 to i64
  %157 = sub i64 0, %156
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = mul nsw i32 %160, 256
  %162 = mul nsw i32 %161, 256
  %163 = add nsw i32 %149, %162
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* %10, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i32, i32* %2, align 4
  %170 = zext i32 %169 to i64
  %171 = sub i64 0, %170
  %172 = getelementptr inbounds i8, i8* %168, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = mul nsw i32 %174, 256
  %176 = add nsw i32 %163, %175
  %177 = load i8*, i8** %8, align 8
  %178 = load i32, i32* %10, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = getelementptr inbounds i8, i8* %180, i64 3
  %182 = load i32, i32* %2, align 4
  %183 = zext i32 %182 to i64
  %184 = sub i64 0, %183
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = add nsw i32 %176, %187
  br label %242

189:                                              ; preds = %133
  %190 = load i8*, i8** %8, align 8
  %191 = load i32, i32* %10, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i32, i32* %2, align 4
  %195 = zext i32 %194 to i64
  %196 = sub i64 0, %195
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = load i8*, i8** %8, align 8
  %201 = load i32, i32* %10, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i32, i32* %2, align 4
  %206 = zext i32 %205 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = mul nsw i32 %210, 256
  %212 = add nsw i32 %199, %211
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %10, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  %218 = load i32, i32* %2, align 4
  %219 = zext i32 %218 to i64
  %220 = sub i64 0, %219
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = mul nsw i32 %223, 256
  %225 = mul nsw i32 %224, 256
  %226 = add nsw i32 %212, %225
  %227 = load i8*, i8** %8, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  %231 = getelementptr inbounds i8, i8* %230, i64 3
  %232 = load i32, i32* %2, align 4
  %233 = zext i32 %232 to i64
  %234 = sub i64 0, %233
  %235 = getelementptr inbounds i8, i8* %231, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = mul nsw i32 %237, 256
  %239 = mul nsw i32 %238, 256
  %240 = mul nsw i32 %239, 256
  %241 = add nsw i32 %226, %240
  br label %242

242:                                              ; preds = %189, %136
  %243 = phi i32 [ %188, %136 ], [ %241, %189 ]
  store i32 %243, i32* %6, align 4
  br label %256

244:                                              ; preds = %62
  br label %245

245:                                              ; preds = %62, %244
  %246 = load i8*, i8** %8, align 8
  %247 = load i32, i32* %10, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i32, i32* %2, align 4
  %251 = zext i32 %250 to i64
  %252 = sub i64 0, %251
  %253 = getelementptr inbounds i8, i8* %249, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %245, %242, %131
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %258 = load i32, i32* %1, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i64 %259
  %261 = load i32, i32* %6, align 4
  %262 = call i32 @cheat_manager_apply_rumble(%struct.TYPE_4__* %260, i32 %261)
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %264 = load i32, i32* %1, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  switch i32 %268, label %338 [
    i32 128, label %269
    i32 133, label %276
    i32 134, label %285
    i32 132, label %294
    i32 129, label %305
    i32 130, label %316
    i32 131, label %327
  ]

269:                                              ; preds = %256
  store i32 1, i32* %9, align 4
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %271 = load i32, i32* %1, align 4
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %11, align 4
  br label %338

276:                                              ; preds = %256
  store i32 1, i32* %9, align 4
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %279 = load i32, i32* %1, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = add i32 %277, %283
  store i32 %284, i32* %11, align 4
  br label %338

285:                                              ; preds = %256
  store i32 1, i32* %9, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %288 = load i32, i32* %1, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = sub i32 %286, %292
  store i32 %293, i32* %11, align 4
  br label %338

294:                                              ; preds = %256
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %297 = load i32, i32* %1, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %295, %301
  br i1 %302, label %304, label %303

303:                                              ; preds = %294
  store i32 0, i32* %7, align 4
  br label %304

304:                                              ; preds = %303, %294
  br label %338

305:                                              ; preds = %256
  %306 = load i32, i32* %6, align 4
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %308 = load i32, i32* %1, align 4
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %306, %312
  br i1 %313, label %315, label %314

314:                                              ; preds = %305
  store i32 0, i32* %7, align 4
  br label %315

315:                                              ; preds = %314, %305
  br label %338

316:                                              ; preds = %256
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %318 = load i32, i32* %1, align 4
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = icmp ult i32 %322, %323
  br i1 %324, label %326, label %325

325:                                              ; preds = %316
  store i32 0, i32* %7, align 4
  br label %326

326:                                              ; preds = %325, %316
  br label %338

327:                                              ; preds = %256
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %329 = load i32, i32* %1, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* %6, align 4
  %335 = icmp ugt i32 %333, %334
  br i1 %335, label %337, label %336

336:                                              ; preds = %327
  store i32 0, i32* %7, align 4
  br label %337

337:                                              ; preds = %336, %327
  br label %338

338:                                              ; preds = %256, %337, %326, %315, %304, %285, %276, %269
  %339 = load i32, i32* %9, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %671

341:                                              ; preds = %338
  store i32 1, i32* %12, align 4
  br label %342

342:                                              ; preds = %667, %341
  %343 = load i32, i32* %12, align 4
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %345 = load i32, i32* %1, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 5
  %349 = load i32, i32* %348, align 4
  %350 = icmp ule i32 %343, %349
  br i1 %350, label %351, label %670

351:                                              ; preds = %342
  %352 = load i32, i32* %4, align 4
  switch i32 %352, label %592 [
    i32 2, label %353
    i32 4, label %412
    i32 1, label %523
  ]

353:                                              ; preds = %351
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %355 = load i32, i32* %1, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %386

361:                                              ; preds = %353
  %362 = load i32, i32* %11, align 4
  %363 = lshr i32 %362, 8
  %364 = and i32 %363, 255
  %365 = trunc i32 %364 to i8
  %366 = load i8*, i8** %8, align 8
  %367 = load i32, i32* %10, align 4
  %368 = zext i32 %367 to i64
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i32, i32* %2, align 4
  %371 = zext i32 %370 to i64
  %372 = sub i64 0, %371
  %373 = getelementptr inbounds i8, i8* %369, i64 %372
  store i8 %365, i8* %373, align 1
  %374 = load i32, i32* %11, align 4
  %375 = and i32 %374, 255
  %376 = trunc i32 %375 to i8
  %377 = load i8*, i8** %8, align 8
  %378 = load i32, i32* %10, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i8, i8* %377, i64 %379
  %381 = getelementptr inbounds i8, i8* %380, i64 1
  %382 = load i32, i32* %2, align 4
  %383 = zext i32 %382 to i64
  %384 = sub i64 0, %383
  %385 = getelementptr inbounds i8, i8* %381, i64 %384
  store i8 %376, i8* %385, align 1
  br label %411

386:                                              ; preds = %353
  %387 = load i32, i32* %11, align 4
  %388 = and i32 %387, 255
  %389 = trunc i32 %388 to i8
  %390 = load i8*, i8** %8, align 8
  %391 = load i32, i32* %10, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %390, i64 %392
  %394 = load i32, i32* %2, align 4
  %395 = zext i32 %394 to i64
  %396 = sub i64 0, %395
  %397 = getelementptr inbounds i8, i8* %393, i64 %396
  store i8 %389, i8* %397, align 1
  %398 = load i32, i32* %11, align 4
  %399 = lshr i32 %398, 8
  %400 = and i32 %399, 255
  %401 = trunc i32 %400 to i8
  %402 = load i8*, i8** %8, align 8
  %403 = load i32, i32* %10, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %402, i64 %404
  %406 = getelementptr inbounds i8, i8* %405, i64 1
  %407 = load i32, i32* %2, align 4
  %408 = zext i32 %407 to i64
  %409 = sub i64 0, %408
  %410 = getelementptr inbounds i8, i8* %406, i64 %409
  store i8 %401, i8* %410, align 1
  br label %411

411:                                              ; preds = %386, %361
  br label %604

412:                                              ; preds = %351
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %414 = load i32, i32* %1, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 8
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %471

420:                                              ; preds = %412
  %421 = load i32, i32* %11, align 4
  %422 = lshr i32 %421, 24
  %423 = and i32 %422, 255
  %424 = trunc i32 %423 to i8
  %425 = load i8*, i8** %8, align 8
  %426 = load i32, i32* %10, align 4
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i32, i32* %2, align 4
  %430 = zext i32 %429 to i64
  %431 = sub i64 0, %430
  %432 = getelementptr inbounds i8, i8* %428, i64 %431
  store i8 %424, i8* %432, align 1
  %433 = load i32, i32* %11, align 4
  %434 = lshr i32 %433, 16
  %435 = and i32 %434, 255
  %436 = trunc i32 %435 to i8
  %437 = load i8*, i8** %8, align 8
  %438 = load i32, i32* %10, align 4
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %437, i64 %439
  %441 = getelementptr inbounds i8, i8* %440, i64 1
  %442 = load i32, i32* %2, align 4
  %443 = zext i32 %442 to i64
  %444 = sub i64 0, %443
  %445 = getelementptr inbounds i8, i8* %441, i64 %444
  store i8 %436, i8* %445, align 1
  %446 = load i32, i32* %11, align 4
  %447 = lshr i32 %446, 8
  %448 = and i32 %447, 255
  %449 = trunc i32 %448 to i8
  %450 = load i8*, i8** %8, align 8
  %451 = load i32, i32* %10, align 4
  %452 = zext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = getelementptr inbounds i8, i8* %453, i64 2
  %455 = load i32, i32* %2, align 4
  %456 = zext i32 %455 to i64
  %457 = sub i64 0, %456
  %458 = getelementptr inbounds i8, i8* %454, i64 %457
  store i8 %449, i8* %458, align 1
  %459 = load i32, i32* %11, align 4
  %460 = and i32 %459, 255
  %461 = trunc i32 %460 to i8
  %462 = load i8*, i8** %8, align 8
  %463 = load i32, i32* %10, align 4
  %464 = zext i32 %463 to i64
  %465 = getelementptr inbounds i8, i8* %462, i64 %464
  %466 = getelementptr inbounds i8, i8* %465, i64 3
  %467 = load i32, i32* %2, align 4
  %468 = zext i32 %467 to i64
  %469 = sub i64 0, %468
  %470 = getelementptr inbounds i8, i8* %466, i64 %469
  store i8 %461, i8* %470, align 1
  br label %522

471:                                              ; preds = %412
  %472 = load i32, i32* %11, align 4
  %473 = and i32 %472, 255
  %474 = trunc i32 %473 to i8
  %475 = load i8*, i8** %8, align 8
  %476 = load i32, i32* %10, align 4
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds i8, i8* %475, i64 %477
  %479 = load i32, i32* %2, align 4
  %480 = zext i32 %479 to i64
  %481 = sub i64 0, %480
  %482 = getelementptr inbounds i8, i8* %478, i64 %481
  store i8 %474, i8* %482, align 1
  %483 = load i32, i32* %11, align 4
  %484 = lshr i32 %483, 8
  %485 = and i32 %484, 255
  %486 = trunc i32 %485 to i8
  %487 = load i8*, i8** %8, align 8
  %488 = load i32, i32* %10, align 4
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, i8* %487, i64 %489
  %491 = getelementptr inbounds i8, i8* %490, i64 1
  %492 = load i32, i32* %2, align 4
  %493 = zext i32 %492 to i64
  %494 = sub i64 0, %493
  %495 = getelementptr inbounds i8, i8* %491, i64 %494
  store i8 %486, i8* %495, align 1
  %496 = load i32, i32* %11, align 4
  %497 = lshr i32 %496, 16
  %498 = and i32 %497, 255
  %499 = trunc i32 %498 to i8
  %500 = load i8*, i8** %8, align 8
  %501 = load i32, i32* %10, align 4
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds i8, i8* %500, i64 %502
  %504 = getelementptr inbounds i8, i8* %503, i64 2
  %505 = load i32, i32* %2, align 4
  %506 = zext i32 %505 to i64
  %507 = sub i64 0, %506
  %508 = getelementptr inbounds i8, i8* %504, i64 %507
  store i8 %499, i8* %508, align 1
  %509 = load i32, i32* %11, align 4
  %510 = lshr i32 %509, 24
  %511 = and i32 %510, 255
  %512 = trunc i32 %511 to i8
  %513 = load i8*, i8** %8, align 8
  %514 = load i32, i32* %10, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds i8, i8* %513, i64 %515
  %517 = getelementptr inbounds i8, i8* %516, i64 3
  %518 = load i32, i32* %2, align 4
  %519 = zext i32 %518 to i64
  %520 = sub i64 0, %519
  %521 = getelementptr inbounds i8, i8* %517, i64 %520
  store i8 %512, i8* %521, align 1
  br label %522

522:                                              ; preds = %471, %420
  br label %604

523:                                              ; preds = %351
  %524 = load i32, i32* %5, align 4
  %525 = icmp ult i32 %524, 8
  br i1 %525, label %526, label %579

526:                                              ; preds = %523
  %527 = load i8*, i8** %8, align 8
  %528 = load i32, i32* %10, align 4
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds i8, i8* %527, i64 %529
  %531 = load i32, i32* %2, align 4
  %532 = zext i32 %531 to i64
  %533 = sub i64 0, %532
  %534 = getelementptr inbounds i8, i8* %530, i64 %533
  %535 = load i8, i8* %534, align 1
  store i8 %535, i8* %15, align 1
  store i32 0, i32* %14, align 4
  br label %536

536:                                              ; preds = %566, %526
  %537 = load i32, i32* %14, align 4
  %538 = icmp ult i32 %537, 8
  br i1 %538, label %539, label %569

539:                                              ; preds = %536
  %540 = load i32, i32* %13, align 4
  %541 = load i32, i32* %14, align 4
  %542 = lshr i32 %540, %541
  %543 = and i32 %542, 1
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %565

545:                                              ; preds = %539
  %546 = load i32, i32* %14, align 4
  %547 = shl i32 1, %546
  %548 = xor i32 %547, -1
  %549 = and i32 %548, 255
  store i32 %549, i32* %3, align 4
  %550 = load i8, i8* %15, align 1
  %551 = zext i8 %550 to i32
  %552 = load i32, i32* %3, align 4
  %553 = and i32 %551, %552
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %15, align 1
  %555 = load i8, i8* %15, align 1
  %556 = zext i8 %555 to i32
  %557 = load i32, i32* %11, align 4
  %558 = load i32, i32* %14, align 4
  %559 = lshr i32 %557, %558
  %560 = and i32 %559, 1
  %561 = load i32, i32* %14, align 4
  %562 = shl i32 %560, %561
  %563 = or i32 %556, %562
  %564 = trunc i32 %563 to i8
  store i8 %564, i8* %15, align 1
  br label %565

565:                                              ; preds = %545, %539
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %14, align 4
  %568 = add i32 %567, 1
  store i32 %568, i32* %14, align 4
  br label %536

569:                                              ; preds = %536
  %570 = load i8, i8* %15, align 1
  %571 = load i8*, i8** %8, align 8
  %572 = load i32, i32* %10, align 4
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds i8, i8* %571, i64 %573
  %575 = load i32, i32* %2, align 4
  %576 = zext i32 %575 to i64
  %577 = sub i64 0, %576
  %578 = getelementptr inbounds i8, i8* %574, i64 %577
  store i8 %570, i8* %578, align 1
  br label %591

579:                                              ; preds = %523
  %580 = load i32, i32* %11, align 4
  %581 = and i32 %580, 255
  %582 = trunc i32 %581 to i8
  %583 = load i8*, i8** %8, align 8
  %584 = load i32, i32* %10, align 4
  %585 = zext i32 %584 to i64
  %586 = getelementptr inbounds i8, i8* %583, i64 %585
  %587 = load i32, i32* %2, align 4
  %588 = zext i32 %587 to i64
  %589 = sub i64 0, %588
  %590 = getelementptr inbounds i8, i8* %586, i64 %589
  store i8 %582, i8* %590, align 1
  br label %591

591:                                              ; preds = %579, %569
  br label %604

592:                                              ; preds = %351
  %593 = load i32, i32* %11, align 4
  %594 = and i32 %593, 255
  %595 = trunc i32 %594 to i8
  %596 = load i8*, i8** %8, align 8
  %597 = load i32, i32* %10, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i8, i8* %596, i64 %598
  %600 = load i32, i32* %2, align 4
  %601 = zext i32 %600 to i64
  %602 = sub i64 0, %601
  %603 = getelementptr inbounds i8, i8* %599, i64 %602
  store i8 %595, i8* %603, align 1
  br label %604

604:                                              ; preds = %592, %591, %522, %411
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %606 = load i32, i32* %1, align 4
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i64 %607
  %609 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %608, i32 0, i32 7
  %610 = load i64, i64* %609, align 8
  %611 = load i32, i32* %11, align 4
  %612 = zext i32 %611 to i64
  %613 = add nsw i64 %612, %610
  %614 = trunc i64 %613 to i32
  store i32 %614, i32* %11, align 4
  %615 = load i32, i32* %3, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %621

617:                                              ; preds = %604
  %618 = load i32, i32* %11, align 4
  %619 = load i32, i32* %3, align 4
  %620 = urem i32 %618, %619
  store i32 %620, i32* %11, align 4
  br label %621

621:                                              ; preds = %617, %604
  %622 = load i32, i32* %5, align 4
  %623 = icmp ult i32 %622, 8
  br i1 %623, label %624, label %650

624:                                              ; preds = %621
  store i32 0, i32* %16, align 4
  br label %625

625:                                              ; preds = %646, %624
  %626 = load i32, i32* %16, align 4
  %627 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %628 = load i32, i32* %1, align 4
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %627, i64 %629
  %631 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %630, i32 0, i32 6
  %632 = load i32, i32* %631, align 8
  %633 = icmp ult i32 %626, %632
  br i1 %633, label %634, label %649

634:                                              ; preds = %625
  %635 = load i32, i32* %13, align 4
  %636 = load i32, i32* %3, align 4
  %637 = shl i32 %635, %636
  %638 = and i32 %637, 255
  store i32 %638, i32* %13, align 4
  %639 = load i32, i32* %13, align 4
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %645

641:                                              ; preds = %634
  %642 = load i32, i32* %3, align 4
  store i32 %642, i32* %13, align 4
  %643 = load i32, i32* %10, align 4
  %644 = add i32 %643, 1
  store i32 %644, i32* %10, align 4
  br label %645

645:                                              ; preds = %641, %634
  br label %646

646:                                              ; preds = %645
  %647 = load i32, i32* %16, align 4
  %648 = add i32 %647, 1
  store i32 %648, i32* %16, align 4
  br label %625

649:                                              ; preds = %625
  br label %661

650:                                              ; preds = %621
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 3), align 8
  %652 = load i32, i32* %1, align 4
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i64 %653
  %655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %654, i32 0, i32 6
  %656 = load i32, i32* %655, align 8
  %657 = load i32, i32* %4, align 4
  %658 = mul i32 %656, %657
  %659 = load i32, i32* %10, align 4
  %660 = add i32 %659, %658
  store i32 %660, i32* %10, align 4
  br label %661

661:                                              ; preds = %650, %649
  %662 = load i32, i32* %10, align 4
  %663 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cheat_manager_state, i32 0, i32 2), align 8
  %664 = urem i32 %662, %663
  store i32 %664, i32* %10, align 4
  %665 = load i32, i32* %10, align 4
  %666 = call i32 @translate_address(i32 %665, i8** %8)
  store i32 %666, i32* %2, align 4
  br label %667

667:                                              ; preds = %661
  %668 = load i32, i32* %12, align 4
  %669 = add i32 %668, 1
  store i32 %669, i32* %12, align 4
  br label %342

670:                                              ; preds = %342
  br label %671

671:                                              ; preds = %670, %338
  br label %672

672:                                              ; preds = %671, %61, %48
  %673 = load i32, i32* %1, align 4
  %674 = add i32 %673, 1
  store i32 %674, i32* %1, align 4
  br label %21

675:                                              ; preds = %19, %57, %21
  ret void
}

declare dso_local i32 @cheat_manager_initialize_memory(i32*, i32) #1

declare dso_local i32 @cheat_manager_setup_search_meta(i32, i32*, i32*, i32*) #1

declare dso_local i32 @translate_address(i32, i8**) #1

declare dso_local i32 @cheat_manager_apply_rumble(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
