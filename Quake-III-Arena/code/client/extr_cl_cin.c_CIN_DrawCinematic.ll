; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_DrawCinematic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_CIN_DrawCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, float, float, float, float, i32, i32, i32, i32, i8* }
%struct.TYPE_3__ = type { i32 (float, float, float, float, i32, i32, i32*, i32, i8*)* }

@MAX_VIDEO_HANDLES = common dso_local global i32 0, align 4
@cinTable = common dso_local global %struct.TYPE_4__* null, align 8
@FMV_EOF = common dso_local global i64 0, align 8
@re = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CIN_DrawCinematic(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @MAX_VIDEO_HANDLES, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FMV_EOF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29, %25, %1
  br label %364

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %364

48:                                               ; preds = %39
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load float, float* %53, align 8
  store float %54, float* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load float, float* %59, align 4
  store float %60, float* %4, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load float, float* %65, align 8
  store float %66, float* %5, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load float, float* %71, align 4
  store float %72, float* %6, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %7, align 8
  %79 = call i32 @SCR_AdjustFrom640(float* %3, float* %4, float* %5, float* %6)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 10
  %85 = load i8*, i8** %84, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %331

87:                                               ; preds = %48
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %93, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %87
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %107, %113
  br i1 %114, label %115, label %331

115:                                              ; preds = %101, %87
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 256
  store i32 %122, i32* %12, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = sdiv i32 %128, 256
  store i32 %129, i32* %13, align 4
  store i32 8, i32* %14, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 512
  br i1 %136, label %137, label %138

137:                                              ; preds = %115
  store i32 9, i32* %14, align 4
  br label %138

138:                                              ; preds = %137, %115
  %139 = load i32*, i32** %7, align 8
  store i32* %139, i32** %11, align 8
  %140 = call i32* @Hunk_AllocateTempMemory(i32 262144)
  store i32* %140, i32** %10, align 8
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %217

143:                                              ; preds = %138
  %144 = load i32, i32* %13, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %217

146:                                              ; preds = %143
  %147 = load i32*, i32** %10, align 8
  store i32* %147, i32** %15, align 8
  %148 = load i32*, i32** %11, align 8
  store i32* %148, i32** %16, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %213, %146
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 256
  br i1 %151, label %152, label %216

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = shl i32 %153, 12
  store i32 %154, i32* %18, align 4
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %209, %152
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 2048
  br i1 %157, label %158, label %212

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %17, align 4
  br label %160

160:                                              ; preds = %205, %158
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 4
  %164 = icmp slt i32 %161, %163
  br i1 %164, label %165, label %208

165:                                              ; preds = %160
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %166, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %16, align 8
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %173, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %172, %180
  %182 = load i32*, i32** %16, align 8
  %183 = load i32, i32* %18, align 4
  %184 = add nsw i32 %183, 2048
  %185 = load i32, i32* %17, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %181, %189
  %191 = load i32*, i32** %16, align 8
  %192 = load i32, i32* %18, align 4
  %193 = add nsw i32 %192, 2048
  %194 = add nsw i32 %193, 4
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %191, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %190, %199
  %201 = ashr i32 %200, 2
  %202 = load i32*, i32** %15, align 8
  store i32 %201, i32* %202, align 4
  %203 = load i32*, i32** %15, align 8
  %204 = getelementptr inbounds i32, i32* %203, i32 1
  store i32* %204, i32** %15, align 8
  br label %205

205:                                              ; preds = %165
  %206 = load i32, i32* %17, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %160

208:                                              ; preds = %160
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 8
  store i32 %211, i32* %8, align 4
  br label %155

212:                                              ; preds = %155
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %149

216:                                              ; preds = %149
  br label %313

217:                                              ; preds = %143, %138
  %218 = load i32, i32* %12, align 4
  %219 = icmp eq i32 %218, 2
  br i1 %219, label %220, label %275

220:                                              ; preds = %217
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %275

223:                                              ; preds = %220
  %224 = load i32*, i32** %10, align 8
  store i32* %224, i32** %19, align 8
  %225 = load i32*, i32** %11, align 8
  store i32* %225, i32** %20, align 8
  store i32 0, i32* %9, align 4
  br label %226

226:                                              ; preds = %271, %223
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %227, 256
  br i1 %228, label %229, label %274

229:                                              ; preds = %226
  %230 = load i32, i32* %9, align 4
  %231 = shl i32 %230, 11
  store i32 %231, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %232

232:                                              ; preds = %267, %229
  %233 = load i32, i32* %8, align 4
  %234 = icmp slt i32 %233, 2048
  br i1 %234, label %235, label %270

235:                                              ; preds = %232
  %236 = load i32, i32* %8, align 4
  store i32 %236, i32* %21, align 4
  br label %237

237:                                              ; preds = %263, %235
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, 4
  %241 = icmp slt i32 %238, %240
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  %243 = load i32*, i32** %20, align 8
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %21, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %243, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32*, i32** %20, align 8
  %251 = load i32, i32* %22, align 4
  %252 = add nsw i32 %251, 4
  %253 = load i32, i32* %21, align 4
  %254 = add nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %250, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %249, %257
  %259 = ashr i32 %258, 1
  %260 = load i32*, i32** %19, align 8
  store i32 %259, i32* %260, align 4
  %261 = load i32*, i32** %19, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %19, align 8
  br label %263

263:                                              ; preds = %242
  %264 = load i32, i32* %21, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %21, align 4
  br label %237

266:                                              ; preds = %237
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 8
  store i32 %269, i32* %8, align 4
  br label %232

270:                                              ; preds = %232
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %9, align 4
  br label %226

274:                                              ; preds = %226
  br label %312

275:                                              ; preds = %220, %217
  store i32 0, i32* %9, align 4
  br label %276

276:                                              ; preds = %308, %275
  %277 = load i32, i32* %9, align 4
  %278 = icmp slt i32 %277, 256
  br i1 %278, label %279, label %311

279:                                              ; preds = %276
  store i32 0, i32* %8, align 4
  br label %280

280:                                              ; preds = %304, %279
  %281 = load i32, i32* %8, align 4
  %282 = icmp slt i32 %281, 256
  br i1 %282, label %283, label %307

283:                                              ; preds = %280
  %284 = load i32*, i32** %11, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %13, align 4
  %287 = mul nsw i32 %285, %286
  %288 = load i32, i32* %14, align 4
  %289 = shl i32 %287, %288
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* %12, align 4
  %292 = mul nsw i32 %290, %291
  %293 = add nsw i32 %289, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %284, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %10, align 8
  %298 = load i32, i32* %9, align 4
  %299 = shl i32 %298, 8
  %300 = load i32, i32* %8, align 4
  %301 = add nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %297, i64 %302
  store i32 %296, i32* %303, align 4
  br label %304

304:                                              ; preds = %283
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %280

307:                                              ; preds = %280
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %9, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %9, align 4
  br label %276

311:                                              ; preds = %276
  br label %312

312:                                              ; preds = %311, %274
  br label %313

313:                                              ; preds = %312, %216
  %314 = load i32 (float, float, float, float, i32, i32, i32*, i32, i8*)*, i32 (float, float, float, float, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %315 = load float, float* %3, align 4
  %316 = load float, float* %4, align 4
  %317 = load float, float* %5, align 4
  %318 = load float, float* %6, align 4
  %319 = load i32*, i32** %10, align 8
  %320 = load i32, i32* %2, align 4
  %321 = load i8*, i8** @qtrue, align 8
  %322 = call i32 %314(float %315, float %316, float %317, float %318, i32 256, i32 256, i32* %319, i32 %320, i8* %321)
  %323 = load i8*, i8** @qfalse, align 8
  %324 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %325 = load i32, i32* %2, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 10
  store i8* %323, i8** %328, align 8
  %329 = load i32*, i32** %10, align 8
  %330 = call i32 @Hunk_FreeTempMemory(i32* %329)
  br label %364

331:                                              ; preds = %101, %48
  %332 = load i32 (float, float, float, float, i32, i32, i32*, i32, i8*)*, i32 (float, float, float, float, i32, i32, i32*, i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @re, i32 0, i32 0), align 8
  %333 = load float, float* %3, align 4
  %334 = load float, float* %4, align 4
  %335 = load float, float* %5, align 4
  %336 = load float, float* %6, align 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %338 = load i32, i32* %2, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %344 = load i32, i32* %2, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 9
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %7, align 8
  %350 = load i32, i32* %2, align 4
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %352 = load i32, i32* %2, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 10
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 %332(float %333, float %334, float %335, float %336, i32 %342, i32 %348, i32* %349, i32 %350, i8* %356)
  %358 = load i8*, i8** @qfalse, align 8
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cinTable, align 8
  %360 = load i32, i32* %2, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 10
  store i8* %358, i8** %363, align 8
  br label %364

364:                                              ; preds = %331, %313, %47, %38
  ret void
}

declare dso_local i32 @SCR_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32* @Hunk_AllocateTempMemory(i32) #1

declare dso_local i32 @Hunk_FreeTempMemory(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
