; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@acceleratestage = common dso_local global i64 0, align 8
@sp_state = common dso_local global i32 0, align 4
@plrs = common dso_local global %struct.TYPE_4__* null, align 8
@me = common dso_local global i64 0, align 8
@wbs = common dso_local global %struct.TYPE_3__* null, align 8
@cnt_kills = common dso_local global i32* null, align 8
@cnt_items = common dso_local global i32* null, align 8
@cnt_secret = common dso_local global i32* null, align 8
@TICRATE = common dso_local global i32 0, align 4
@cnt_time = common dso_local global i32 0, align 4
@cnt_par = common dso_local global i32 0, align 4
@sfx_barexp = common dso_local global i32 0, align 4
@bcnt = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@sfx_sgcock = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@cnt_pause = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_updateStats() #0 {
  %1 = call i32 (...) @WI_updateAnimatedBack()
  %2 = load i64, i64* @acceleratestage, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %58

4:                                                ; preds = %0
  %5 = load i32, i32* @sp_state, align 4
  %6 = icmp ne i32 %5, 10
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  store i64 0, i64* @acceleratestage, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %9 = load i64, i64* @me, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 100
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %13, %16
  %18 = load i32*, i32** @cnt_kills, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %21 = load i64, i64* @me, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 100
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  %30 = load i32*, i32** @cnt_items, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %33 = load i64, i64* @me, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 100
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %37, %40
  %42 = load i32*, i32** @cnt_secret, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %45 = load i64, i64* @me, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @TICRATE, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* @cnt_time, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TICRATE, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* @cnt_par, align 4
  %56 = load i32, i32* @sfx_barexp, align 4
  %57 = call i32 @S_StartSound(i32 0, i32 %56)
  store i32 10, i32* @sp_state, align 4
  br label %58

58:                                               ; preds = %7, %4, %0
  %59 = load i32, i32* @sp_state, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %105

61:                                               ; preds = %58
  %62 = load i32*, i32** @cnt_kills, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @bcnt, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @sfx_pistol, align 4
  %71 = call i32 @S_StartSound(i32 0, i32 %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32*, i32** @cnt_kills, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %77 = load i64, i64* @me, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, 100
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %81, %84
  %86 = icmp sge i32 %75, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %72
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %89 = load i64, i64* @me, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 100
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  %98 = load i32*, i32** @cnt_kills, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @sfx_barexp, align 4
  %101 = call i32 @S_StartSound(i32 0, i32 %100)
  %102 = load i32, i32* @sp_state, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @sp_state, align 4
  br label %104

104:                                              ; preds = %87, %72
  br label %297

105:                                              ; preds = %58
  %106 = load i32, i32* @sp_state, align 4
  %107 = icmp eq i32 %106, 4
  br i1 %107, label %108, label %152

108:                                              ; preds = %105
  %109 = load i32*, i32** @cnt_items, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 2
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* @bcnt, align 4
  %114 = and i32 %113, 3
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* @sfx_pistol, align 4
  %118 = call i32 @S_StartSound(i32 0, i32 %117)
  br label %119

119:                                              ; preds = %116, %108
  %120 = load i32*, i32** @cnt_items, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %124 = load i64, i64* @me, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 100
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sdiv i32 %128, %131
  %133 = icmp sge i32 %122, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %119
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %136 = load i64, i64* @me, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 100
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sdiv i32 %140, %143
  %145 = load i32*, i32** @cnt_items, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @sfx_barexp, align 4
  %148 = call i32 @S_StartSound(i32 0, i32 %147)
  %149 = load i32, i32* @sp_state, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* @sp_state, align 4
  br label %151

151:                                              ; preds = %134, %119
  br label %296

152:                                              ; preds = %105
  %153 = load i32, i32* @sp_state, align 4
  %154 = icmp eq i32 %153, 6
  br i1 %154, label %155, label %199

155:                                              ; preds = %152
  %156 = load i32*, i32** @cnt_secret, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 2
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* @bcnt, align 4
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* @sfx_pistol, align 4
  %165 = call i32 @S_StartSound(i32 0, i32 %164)
  br label %166

166:                                              ; preds = %163, %155
  %167 = load i32*, i32** @cnt_secret, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %171 = load i64, i64* @me, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 100
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %175, %178
  %180 = icmp sge i32 %169, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %166
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %183 = load i64, i64* @me, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %186, 100
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = sdiv i32 %187, %190
  %192 = load i32*, i32** @cnt_secret, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @sfx_barexp, align 4
  %195 = call i32 @S_StartSound(i32 0, i32 %194)
  %196 = load i32, i32* @sp_state, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* @sp_state, align 4
  br label %198

198:                                              ; preds = %181, %166
  br label %295

199:                                              ; preds = %152
  %200 = load i32, i32* @sp_state, align 4
  %201 = icmp eq i32 %200, 8
  br i1 %201, label %202, label %261

202:                                              ; preds = %199
  %203 = load i32, i32* @bcnt, align 4
  %204 = and i32 %203, 3
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* @sfx_pistol, align 4
  %208 = call i32 @S_StartSound(i32 0, i32 %207)
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* @cnt_time, align 4
  %211 = add nsw i32 %210, 3
  store i32 %211, i32* @cnt_time, align 4
  %212 = load i32, i32* @cnt_time, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %214 = load i64, i64* @me, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @TICRATE, align 4
  %219 = sdiv i32 %217, %218
  %220 = icmp sge i32 %212, %219
  br i1 %220, label %221, label %229

221:                                              ; preds = %209
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %223 = load i64, i64* @me, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @TICRATE, align 4
  %228 = sdiv i32 %226, %227
  store i32 %228, i32* @cnt_time, align 4
  br label %229

229:                                              ; preds = %221, %209
  %230 = load i32, i32* @cnt_par, align 4
  %231 = add nsw i32 %230, 3
  store i32 %231, i32* @cnt_par, align 4
  %232 = load i32, i32* @cnt_par, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @TICRATE, align 4
  %237 = sdiv i32 %235, %236
  %238 = icmp sge i32 %232, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %229
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @TICRATE, align 4
  %244 = sdiv i32 %242, %243
  store i32 %244, i32* @cnt_par, align 4
  %245 = load i32, i32* @cnt_time, align 4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %247 = load i64, i64* @me, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @TICRATE, align 4
  %252 = sdiv i32 %250, %251
  %253 = icmp sge i32 %245, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %239
  %255 = load i32, i32* @sfx_barexp, align 4
  %256 = call i32 @S_StartSound(i32 0, i32 %255)
  %257 = load i32, i32* @sp_state, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @sp_state, align 4
  br label %259

259:                                              ; preds = %254, %239
  br label %260

260:                                              ; preds = %259, %229
  br label %294

261:                                              ; preds = %199
  %262 = load i32, i32* @sp_state, align 4
  %263 = icmp eq i32 %262, 10
  br i1 %263, label %264, label %279

264:                                              ; preds = %261
  %265 = load i64, i64* @acceleratestage, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load i32, i32* @sfx_sgcock, align 4
  %269 = call i32 @S_StartSound(i32 0, i32 %268)
  %270 = load i64, i64* @gamemode, align 8
  %271 = load i64, i64* @commercial, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = call i32 (...) @WI_initNoState()
  br label %277

275:                                              ; preds = %267
  %276 = call i32 (...) @WI_initShowNextLoc()
  br label %277

277:                                              ; preds = %275, %273
  br label %278

278:                                              ; preds = %277, %264
  br label %293

279:                                              ; preds = %261
  %280 = load i32, i32* @sp_state, align 4
  %281 = and i32 %280, 1
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %279
  %284 = load i32, i32* @cnt_pause, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* @cnt_pause, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %291, label %287

287:                                              ; preds = %283
  %288 = load i32, i32* @sp_state, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* @sp_state, align 4
  %290 = load i32, i32* @TICRATE, align 4
  store i32 %290, i32* @cnt_pause, align 4
  br label %291

291:                                              ; preds = %287, %283
  br label %292

292:                                              ; preds = %291, %279
  br label %293

293:                                              ; preds = %292, %278
  br label %294

294:                                              ; preds = %293, %260
  br label %295

295:                                              ; preds = %294, %198
  br label %296

296:                                              ; preds = %295, %151
  br label %297

297:                                              ; preds = %296, %104
  ret void
}

declare dso_local i32 @WI_updateAnimatedBack(...) #1

declare dso_local i32 @S_StartSound(i32, i32) #1

declare dso_local i32 @WI_initNoState(...) #1

declare dso_local i32 @WI_initShowNextLoc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
