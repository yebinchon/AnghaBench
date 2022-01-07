; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_sky.c_FillCloudBox.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_sky.c_FillCloudBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALF_SKY_SUBDIVISIONS = common dso_local global i32 0, align 4
@sky_mins = common dso_local global i32** null, align 8
@sky_maxs = common dso_local global i32** null, align 8
@s_skyPoints = common dso_local global i32** null, align 8
@s_cloudTexCoords = common dso_local global i32**** null, align 8
@s_skyTexCoords = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @FillCloudBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillCloudBox(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %362, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %365

14:                                               ; preds = %11
  %15 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %16 = sub nsw i32 0, %15
  %17 = sitofp i32 %16 to float
  store float %17, float* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %362

21:                                               ; preds = %14
  %22 = load i32**, i32*** @sky_mins, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @floor(i32 %30)
  %32 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32**, i32*** @sky_mins, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  %40 = load i32**, i32*** @sky_mins, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @floor(i32 %48)
  %50 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %51 = sdiv i32 %49, %50
  %52 = load i32**, i32*** @sky_mins, align 8
  %53 = getelementptr inbounds i32*, i32** %52, i64 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  %58 = load i32**, i32*** @sky_maxs, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @ceil(i32 %66)
  %68 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32**, i32*** @sky_maxs, align 8
  %71 = getelementptr inbounds i32*, i32** %70, i64 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32**, i32*** @sky_maxs, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call i32 @ceil(i32 %84)
  %86 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32**, i32*** @sky_maxs, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i64 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load i32**, i32*** @sky_mins, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32**, i32*** @sky_maxs, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %100, %107
  br i1 %108, label %125, label %109

109:                                              ; preds = %21
  %110 = load i32**, i32*** @sky_mins, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32**, i32*** @sky_maxs, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp sge i32 %116, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %109, %21
  br label %362

126:                                              ; preds = %109
  %127 = load i32**, i32*** @sky_mins, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %135 = mul nsw i32 %133, %134
  %136 = call i32 @myftol(i32 %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %136, i32* %137, align 4
  %138 = load i32**, i32*** @sky_mins, align 8
  %139 = getelementptr inbounds i32*, i32** %138, i64 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %146 = mul nsw i32 %144, %145
  %147 = call i32 @myftol(i32 %146)
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %147, i32* %148, align 4
  %149 = load i32**, i32*** @sky_maxs, align 8
  %150 = getelementptr inbounds i32*, i32** %149, i64 0
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %157 = mul nsw i32 %155, %156
  %158 = call i32 @myftol(i32 %157)
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %158, i32* %159, align 4
  %160 = load i32**, i32*** @sky_maxs, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %168 = mul nsw i32 %166, %167
  %169 = call i32 @myftol(i32 %168)
  %170 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %169, i32* %170, align 4
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %174 = sub nsw i32 0, %173
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %126
  %177 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %178 = sub nsw i32 0, %177
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %178, i32* %179, align 4
  br label %189

180:                                              ; preds = %126
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %188, %176
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = sitofp i32 %191 to float
  %193 = load float, float* %10, align 4
  %194 = fcmp olt float %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189
  %196 = load float, float* %10, align 4
  %197 = fptosi float %196 to i32
  %198 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %197, i32* %198, align 4
  br label %208

199:                                              ; preds = %189
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %199
  br label %208

208:                                              ; preds = %207, %195
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %212 = sub nsw i32 0, %211
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %208
  %215 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %216 = sub nsw i32 0, %215
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %216, i32* %217, align 4
  br label %227

218:                                              ; preds = %208
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %218
  %224 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %224, i32* %225, align 4
  br label %226

226:                                              ; preds = %223, %218
  br label %227

227:                                              ; preds = %226, %214
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = sitofp i32 %229 to float
  %231 = load float, float* %10, align 4
  %232 = fcmp olt float %230, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load float, float* %10, align 4
  %235 = fptosi float %234 to i32
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %235, i32* %236, align 4
  br label %246

237:                                              ; preds = %227
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %242, %237
  br label %246

246:                                              ; preds = %245, %233
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %250 = add nsw i32 %248, %249
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %352, %246
  %252 = load i32, i32* %9, align 4
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %256 = add nsw i32 %254, %255
  %257 = icmp sle i32 %252, %256
  br i1 %257, label %258, label %355

258:                                              ; preds = %251
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %348, %258
  %264 = load i32, i32* %8, align 4
  %265 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %268 = add nsw i32 %266, %267
  %269 = icmp sle i32 %264, %268
  br i1 %269, label %270, label %351

270:                                              ; preds = %263
  %271 = load i32, i32* %8, align 4
  %272 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %273 = sub nsw i32 %271, %272
  %274 = sitofp i32 %273 to float
  %275 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %276 = sitofp i32 %275 to float
  %277 = fdiv float %274, %276
  %278 = fptosi float %277 to i32
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %281 = sub nsw i32 %279, %280
  %282 = sitofp i32 %281 to float
  %283 = load i32, i32* @HALF_SKY_SUBDIVISIONS, align 4
  %284 = sitofp i32 %283 to float
  %285 = fdiv float %282, %284
  %286 = fptosi float %285 to i32
  %287 = load i32, i32* %5, align 4
  %288 = load i32**, i32*** @s_skyPoints, align 8
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32*, i32** %288, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @MakeSkyVec(i32 %278, i32 %286, i32 %287, i32* null, i32 %296)
  %298 = load i32****, i32***** @s_cloudTexCoords, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32***, i32**** %298, i64 %300
  %302 = load i32***, i32**** %301, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32**, i32*** %302, i64 %304
  %306 = load i32**, i32*** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32*, i32** %306, i64 %308
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32***, i32**** @s_skyTexCoords, align 8
  %314 = load i32, i32* %9, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32**, i32*** %313, i64 %315
  %317 = load i32**, i32*** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32*, i32** %317, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  store i32 %312, i32* %322, align 4
  %323 = load i32****, i32***** @s_cloudTexCoords, align 8
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32***, i32**** %323, i64 %325
  %327 = load i32***, i32**** %326, align 8
  %328 = load i32, i32* %9, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32**, i32*** %327, i64 %329
  %331 = load i32**, i32*** %330, align 8
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32***, i32**** @s_skyTexCoords, align 8
  %339 = load i32, i32* %9, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32**, i32*** %338, i64 %340
  %342 = load i32**, i32*** %341, align 8
  %343 = load i32, i32* %8, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %342, i64 %344
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 1
  store i32 %337, i32* %347, align 4
  br label %348

348:                                              ; preds = %270
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %263

351:                                              ; preds = %263
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %9, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %9, align 4
  br label %251

355:                                              ; preds = %251
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %358 = load i32, i32* %4, align 4
  %359 = icmp eq i32 %358, 0
  %360 = zext i1 %359 to i32
  %361 = call i32 @FillCloudySkySide(i32* %356, i32* %357, i32 %360)
  br label %362

362:                                              ; preds = %355, %125, %20
  %363 = load i32, i32* %5, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %5, align 4
  br label %11

365:                                              ; preds = %11
  ret void
}

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @ceil(i32) #1

declare dso_local i32 @myftol(i32) #1

declare dso_local i32 @MakeSkyVec(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FillCloudySkySide(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
