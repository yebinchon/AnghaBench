; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateNetgameStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_updateNetgameStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@acceleratestage = common dso_local global i64 0, align 8
@ng_state = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@plrs = common dso_local global %struct.TYPE_4__* null, align 8
@wbs = common dso_local global %struct.TYPE_3__* null, align 8
@cnt_kills = common dso_local global i32* null, align 8
@cnt_items = common dso_local global i32* null, align 8
@cnt_secret = common dso_local global i32* null, align 8
@dofrags = common dso_local global i64 0, align 8
@cnt_frags = common dso_local global i32* null, align 8
@sfx_barexp = common dso_local global i32 0, align 4
@bcnt = common dso_local global i32 0, align 4
@sfx_pistol = common dso_local global i32 0, align 4
@sfx_pldeth = common dso_local global i32 0, align 4
@sfx_sgcock = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@cnt_pause = common dso_local global i64 0, align 8
@TICRATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_updateNetgameStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @WI_updateAnimatedBack()
  %5 = load i64, i64* @acceleratestage, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %85

7:                                                ; preds = %0
  %8 = load i32, i32* @ng_state, align 4
  %9 = icmp ne i32 %8, 10
  br i1 %9, label %10, label %85

10:                                               ; preds = %7
  store i64 0, i64* @acceleratestage, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %79, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @MAXPLAYERS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %82

15:                                               ; preds = %11
  %16 = load i32*, i32** @playeringame, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %79

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 100
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  %35 = load i32*, i32** @cnt_kills, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 100
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %45, %48
  %50 = load i32*, i32** @cnt_items, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 100
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %60, %63
  %65 = load i32*, i32** @cnt_secret, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i64, i64* @dofrags, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %23
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @WI_fragSum(i32 %72)
  %74 = load i32*, i32** @cnt_frags, align 8
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %23
  br label %79

79:                                               ; preds = %78, %22
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %11

82:                                               ; preds = %11
  %83 = load i32, i32* @sfx_barexp, align 4
  %84 = call i32 @S_StartSound(i32 0, i32 %83)
  store i32 10, i32* @ng_state, align 4
  br label %85

85:                                               ; preds = %82, %7, %0
  %86 = load i32, i32* @ng_state, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %162

88:                                               ; preds = %85
  %89 = load i32, i32* @bcnt, align 4
  %90 = and i32 %89, 3
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @sfx_pistol, align 4
  %94 = call i32 @S_StartSound(i32 0, i32 %93)
  br label %95

95:                                               ; preds = %92, %88
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %96

96:                                               ; preds = %150, %95
  %97 = load i32, i32* %1, align 4
  %98 = load i32, i32* @MAXPLAYERS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %153

100:                                              ; preds = %96
  %101 = load i32*, i32** @playeringame, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %150

108:                                              ; preds = %100
  %109 = load i32*, i32** @cnt_kills, align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 2
  store i32 %114, i32* %112, align 4
  %115 = load i32*, i32** @cnt_kills, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %125, 100
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sdiv i32 %126, %129
  %131 = icmp sge i32 %119, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %108
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 100
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sdiv i32 %139, %142
  %144 = load i32*, i32** @cnt_kills, align 8
  %145 = load i32, i32* %1, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %149

148:                                              ; preds = %108
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %148, %132
  br label %150

150:                                              ; preds = %149, %107
  %151 = load i32, i32* %1, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %1, align 4
  br label %96

153:                                              ; preds = %96
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* @sfx_barexp, align 4
  %158 = call i32 @S_StartSound(i32 0, i32 %157)
  %159 = load i32, i32* @ng_state, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @ng_state, align 4
  br label %161

161:                                              ; preds = %156, %153
  br label %416

162:                                              ; preds = %85
  %163 = load i32, i32* @ng_state, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %239

165:                                              ; preds = %162
  %166 = load i32, i32* @bcnt, align 4
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @sfx_pistol, align 4
  %171 = call i32 @S_StartSound(i32 0, i32 %170)
  br label %172

172:                                              ; preds = %169, %165
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %173

173:                                              ; preds = %227, %172
  %174 = load i32, i32* %1, align 4
  %175 = load i32, i32* @MAXPLAYERS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %230

177:                                              ; preds = %173
  %178 = load i32*, i32** @playeringame, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %177
  br label %227

185:                                              ; preds = %177
  %186 = load i32*, i32** @cnt_items, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %189, align 4
  %192 = load i32*, i32** @cnt_items, align 8
  %193 = load i32, i32* %1, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %198 = load i32, i32* %1, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %202, 100
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sdiv i32 %203, %206
  %208 = icmp sge i32 %196, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %185
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %211 = load i32, i32* %1, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %215, 100
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sdiv i32 %216, %219
  %221 = load i32*, i32** @cnt_items, align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 %220, i32* %224, align 4
  br label %226

225:                                              ; preds = %185
  store i32 1, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %209
  br label %227

227:                                              ; preds = %226, %184
  %228 = load i32, i32* %1, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %1, align 4
  br label %173

230:                                              ; preds = %173
  %231 = load i32, i32* %3, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load i32, i32* @sfx_barexp, align 4
  %235 = call i32 @S_StartSound(i32 0, i32 %234)
  %236 = load i32, i32* @ng_state, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* @ng_state, align 4
  br label %238

238:                                              ; preds = %233, %230
  br label %415

239:                                              ; preds = %162
  %240 = load i32, i32* @ng_state, align 4
  %241 = icmp eq i32 %240, 6
  br i1 %241, label %242, label %322

242:                                              ; preds = %239
  %243 = load i32, i32* @bcnt, align 4
  %244 = and i32 %243, 3
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* @sfx_pistol, align 4
  %248 = call i32 @S_StartSound(i32 0, i32 %247)
  br label %249

249:                                              ; preds = %246, %242
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %250

250:                                              ; preds = %304, %249
  %251 = load i32, i32* %1, align 4
  %252 = load i32, i32* @MAXPLAYERS, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %307

254:                                              ; preds = %250
  %255 = load i32*, i32** @playeringame, align 8
  %256 = load i32, i32* %1, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %254
  br label %304

262:                                              ; preds = %254
  %263 = load i32*, i32** @cnt_secret, align 8
  %264 = load i32, i32* %1, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 2
  store i32 %268, i32* %266, align 4
  %269 = load i32*, i32** @cnt_secret, align 8
  %270 = load i32, i32* %1, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %275 = load i32, i32* %1, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = mul nsw i32 %279, 100
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = sdiv i32 %280, %283
  %285 = icmp sge i32 %273, %284
  br i1 %285, label %286, label %302

286:                                              ; preds = %262
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** @plrs, align 8
  %288 = load i32, i32* %1, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %292, 100
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wbs, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = sdiv i32 %293, %296
  %298 = load i32*, i32** @cnt_secret, align 8
  %299 = load i32, i32* %1, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %297, i32* %301, align 4
  br label %303

302:                                              ; preds = %262
  store i32 1, i32* %3, align 4
  br label %303

303:                                              ; preds = %302, %286
  br label %304

304:                                              ; preds = %303, %261
  %305 = load i32, i32* %1, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %1, align 4
  br label %250

307:                                              ; preds = %250
  %308 = load i32, i32* %3, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %321, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* @sfx_barexp, align 4
  %312 = call i32 @S_StartSound(i32 0, i32 %311)
  %313 = load i64, i64* @dofrags, align 8
  %314 = icmp ne i64 %313, 0
  %315 = xor i1 %314, true
  %316 = zext i1 %315 to i32
  %317 = mul nsw i32 2, %316
  %318 = add nsw i32 1, %317
  %319 = load i32, i32* @ng_state, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* @ng_state, align 4
  br label %321

321:                                              ; preds = %310, %307
  br label %414

322:                                              ; preds = %239
  %323 = load i32, i32* @ng_state, align 4
  %324 = icmp eq i32 %323, 8
  br i1 %324, label %325, label %380

325:                                              ; preds = %322
  %326 = load i32, i32* @bcnt, align 4
  %327 = and i32 %326, 3
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %325
  %330 = load i32, i32* @sfx_pistol, align 4
  %331 = call i32 @S_StartSound(i32 0, i32 %330)
  br label %332

332:                                              ; preds = %329, %325
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %333

333:                                              ; preds = %368, %332
  %334 = load i32, i32* %1, align 4
  %335 = load i32, i32* @MAXPLAYERS, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %371

337:                                              ; preds = %333
  %338 = load i32*, i32** @playeringame, align 8
  %339 = load i32, i32* %1, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %337
  br label %368

345:                                              ; preds = %337
  %346 = load i32*, i32** @cnt_frags, align 8
  %347 = load i32, i32* %1, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 4
  %352 = load i32*, i32** @cnt_frags, align 8
  %353 = load i32, i32* %1, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %1, align 4
  %358 = call i32 @WI_fragSum(i32 %357)
  store i32 %358, i32* %2, align 4
  %359 = icmp sge i32 %356, %358
  br i1 %359, label %360, label %366

360:                                              ; preds = %345
  %361 = load i32, i32* %2, align 4
  %362 = load i32*, i32** @cnt_frags, align 8
  %363 = load i32, i32* %1, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 %361, i32* %365, align 4
  br label %367

366:                                              ; preds = %345
  store i32 1, i32* %3, align 4
  br label %367

367:                                              ; preds = %366, %360
  br label %368

368:                                              ; preds = %367, %344
  %369 = load i32, i32* %1, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %1, align 4
  br label %333

371:                                              ; preds = %333
  %372 = load i32, i32* %3, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %379, label %374

374:                                              ; preds = %371
  %375 = load i32, i32* @sfx_pldeth, align 4
  %376 = call i32 @S_StartSound(i32 0, i32 %375)
  %377 = load i32, i32* @ng_state, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* @ng_state, align 4
  br label %379

379:                                              ; preds = %374, %371
  br label %413

380:                                              ; preds = %322
  %381 = load i32, i32* @ng_state, align 4
  %382 = icmp eq i32 %381, 10
  br i1 %382, label %383, label %398

383:                                              ; preds = %380
  %384 = load i64, i64* @acceleratestage, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %383
  %387 = load i32, i32* @sfx_sgcock, align 4
  %388 = call i32 @S_StartSound(i32 0, i32 %387)
  %389 = load i64, i64* @gamemode, align 8
  %390 = load i64, i64* @commercial, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = call i32 (...) @WI_initNoState()
  br label %396

394:                                              ; preds = %386
  %395 = call i32 (...) @WI_initShowNextLoc()
  br label %396

396:                                              ; preds = %394, %392
  br label %397

397:                                              ; preds = %396, %383
  br label %412

398:                                              ; preds = %380
  %399 = load i32, i32* @ng_state, align 4
  %400 = and i32 %399, 1
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %411

402:                                              ; preds = %398
  %403 = load i64, i64* @cnt_pause, align 8
  %404 = add nsw i64 %403, -1
  store i64 %404, i64* @cnt_pause, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %402
  %407 = load i32, i32* @ng_state, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* @ng_state, align 4
  %409 = load i64, i64* @TICRATE, align 8
  store i64 %409, i64* @cnt_pause, align 8
  br label %410

410:                                              ; preds = %406, %402
  br label %411

411:                                              ; preds = %410, %398
  br label %412

412:                                              ; preds = %411, %397
  br label %413

413:                                              ; preds = %412, %379
  br label %414

414:                                              ; preds = %413, %321
  br label %415

415:                                              ; preds = %414, %238
  br label %416

416:                                              ; preds = %415, %161
  ret void
}

declare dso_local i32 @WI_updateAnimatedBack(...) #1

declare dso_local i32 @WI_fragSum(i32) #1

declare dso_local i32 @S_StartSound(i32, i32) #1

declare dso_local i32 @WI_initNoState(...) #1

declare dso_local i32 @WI_initShowNextLoc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
