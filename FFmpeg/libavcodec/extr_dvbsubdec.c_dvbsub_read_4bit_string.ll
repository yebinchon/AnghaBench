; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_4bit_string.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dvbsubdec.c_dvbsub_read_4bit_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"line overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i8***, i32, i32, i8**, i32)* @dvbsub_read_4bit_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvbsub_read_4bit_string(i32* %0, i8** %1, i32 %2, i8*** %3, i32 %4, i32 %5, i8** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8***, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8*** %3, i8**** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8** %6, i8*** %16, align 8
  store i32 %7, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i8***, i8**** %13, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %14, align 4
  %26 = shl i32 %25, 3
  %27 = call i32 @init_get_bits(i32* %18, i8** %24, i32 %26)
  %28 = load i32, i32* %17, align 4
  %29 = load i8**, i8*** %11, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  store i8** %31, i8*** %11, align 8
  br label %32

32:                                               ; preds = %319, %8
  %33 = call i32 @get_bits_count(i32* %18)
  %34 = load i32, i32* %14, align 4
  %35 = shl i32 %34, 3
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br label %41

41:                                               ; preds = %37, %32
  %42 = phi i1 [ false, %32 ], [ %40, %37 ]
  br i1 %42, label %43, label %320

43:                                               ; preds = %41
  %44 = call i32 @get_bits(i32* %18, i32 4)
  store i32 %44, i32* %19, align 4
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %71

53:                                               ; preds = %50, %47
  %54 = load i8**, i8*** %16, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8**, i8*** %16, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %11, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %11, align 8
  store i8* %61, i8** %62, align 8
  br label %70

64:                                               ; preds = %53
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %11, align 8
  store i8* %67, i8** %68, align 8
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70, %50
  %72 = load i32, i32* %21, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %21, align 4
  br label %319

74:                                               ; preds = %43
  %75 = call i32 @get_bits1(i32* %18)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %74
  %79 = call i32 @get_bits(i32* %18, i32 3)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = call i32 @get_bits_count(i32* %18)
  %84 = add nsw i32 %83, 7
  %85 = ashr i32 %84, 3
  %86 = load i8***, i8**** %13, align 8
  %87 = load i8**, i8*** %86, align 8
  %88 = sext i32 %85 to i64
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  store i8** %89, i8*** %86, align 8
  %90 = load i32, i32* %21, align 4
  store i32 %90, i32* %9, align 4
  br label %336

91:                                               ; preds = %78
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %20, align 4
  %94 = load i8**, i8*** %16, align 8
  %95 = icmp ne i8** %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i8**, i8*** %16, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* %19, align 4
  br label %102

101:                                              ; preds = %91
  store i32 0, i32* %19, align 4
  br label %102

102:                                              ; preds = %101, %96
  br label %103

103:                                              ; preds = %113, %102
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %20, align 4
  %106 = icmp sgt i32 %104, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br label %111

111:                                              ; preds = %107, %103
  %112 = phi i1 [ false, %103 ], [ %110, %107 ]
  br i1 %112, label %113, label %121

113:                                              ; preds = %111
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8**, i8*** %11, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %11, align 8
  store i8* %116, i8** %117, align 8
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  br label %103

121:                                              ; preds = %111
  br label %318

122:                                              ; preds = %74
  %123 = call i32 @get_bits1(i32* %18)
  store i32 %123, i32* %19, align 4
  %124 = load i32, i32* %19, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %122
  %127 = call i32 @get_bits(i32* %18, i32 2)
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %20, align 4
  %129 = call i32 @get_bits(i32* %18, i32 4)
  store i32 %129, i32* %19, align 4
  %130 = load i32, i32* %15, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load i32, i32* %19, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %21, align 4
  br label %169

139:                                              ; preds = %132, %126
  %140 = load i8**, i8*** %16, align 8
  %141 = icmp ne i8** %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %139
  %143 = load i8**, i8*** %16, align 8
  %144 = load i32, i32* %19, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %19, align 4
  br label %149

149:                                              ; preds = %142, %139
  br label %150

150:                                              ; preds = %160, %149
  %151 = load i32, i32* %20, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %20, align 4
  %153 = icmp sgt i32 %151, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %155, %156
  br label %158

158:                                              ; preds = %154, %150
  %159 = phi i1 [ false, %150 ], [ %157, %154 ]
  br i1 %159, label %160, label %168

160:                                              ; preds = %158
  %161 = load i32, i32* %19, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = load i8**, i8*** %11, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i32 1
  store i8** %165, i8*** %11, align 8
  store i8* %163, i8** %164, align 8
  %166 = load i32, i32* %21, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %21, align 4
  br label %150

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %135
  br label %317

170:                                              ; preds = %122
  %171 = call i32 @get_bits(i32* %18, i32 2)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %218

174:                                              ; preds = %170
  %175 = call i32 @get_bits(i32* %18, i32 4)
  %176 = add nsw i32 %175, 9
  store i32 %176, i32* %20, align 4
  %177 = call i32 @get_bits(i32* %18, i32 4)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load i32, i32* %19, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %21, align 4
  br label %217

187:                                              ; preds = %180, %174
  %188 = load i8**, i8*** %16, align 8
  %189 = icmp ne i8** %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i8**, i8*** %16, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %19, align 4
  br label %197

197:                                              ; preds = %190, %187
  br label %198

198:                                              ; preds = %208, %197
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %20, align 4
  %201 = icmp sgt i32 %199, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* %21, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %203, %204
  br label %206

206:                                              ; preds = %202, %198
  %207 = phi i1 [ false, %198 ], [ %205, %202 ]
  br i1 %207, label %208, label %216

208:                                              ; preds = %206
  %209 = load i32, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = load i8**, i8*** %11, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i32 1
  store i8** %213, i8*** %11, align 8
  store i8* %211, i8** %212, align 8
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %21, align 4
  br label %198

216:                                              ; preds = %206
  br label %217

217:                                              ; preds = %216, %183
  br label %316

218:                                              ; preds = %170
  %219 = load i32, i32* %19, align 4
  %220 = icmp eq i32 %219, 3
  br i1 %220, label %221, label %265

221:                                              ; preds = %218
  %222 = call i32 @get_bits(i32* %18, i32 8)
  %223 = add nsw i32 %222, 25
  store i32 %223, i32* %20, align 4
  %224 = call i32 @get_bits(i32* %18, i32 4)
  store i32 %224, i32* %19, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %234

227:                                              ; preds = %221
  %228 = load i32, i32* %19, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load i32, i32* %20, align 4
  %232 = load i32, i32* %21, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %21, align 4
  br label %264

234:                                              ; preds = %227, %221
  %235 = load i8**, i8*** %16, align 8
  %236 = icmp ne i8** %235, null
  br i1 %236, label %237, label %244

237:                                              ; preds = %234
  %238 = load i8**, i8*** %16, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = ptrtoint i8* %242 to i32
  store i32 %243, i32* %19, align 4
  br label %244

244:                                              ; preds = %237, %234
  br label %245

245:                                              ; preds = %255, %244
  %246 = load i32, i32* %20, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %20, align 4
  %248 = icmp sgt i32 %246, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %250, %251
  br label %253

253:                                              ; preds = %249, %245
  %254 = phi i1 [ false, %245 ], [ %252, %249 ]
  br i1 %254, label %255, label %263

255:                                              ; preds = %253
  %256 = load i32, i32* %19, align 4
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = load i8**, i8*** %11, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i32 1
  store i8** %260, i8*** %11, align 8
  store i8* %258, i8** %259, align 8
  %261 = load i32, i32* %21, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %21, align 4
  br label %245

263:                                              ; preds = %253
  br label %264

264:                                              ; preds = %263, %230
  br label %315

265:                                              ; preds = %218
  %266 = load i32, i32* %19, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %297

268:                                              ; preds = %265
  %269 = load i8**, i8*** %16, align 8
  %270 = icmp ne i8** %269, null
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load i8**, i8*** %16, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i64 0
  %274 = load i8*, i8** %273, align 8
  %275 = ptrtoint i8* %274 to i32
  store i32 %275, i32* %19, align 4
  br label %277

276:                                              ; preds = %268
  store i32 0, i32* %19, align 4
  br label %277

277:                                              ; preds = %276, %271
  store i32 2, i32* %20, align 4
  br label %278

278:                                              ; preds = %288, %277
  %279 = load i32, i32* %20, align 4
  %280 = add nsw i32 %279, -1
  store i32 %280, i32* %20, align 4
  %281 = icmp sgt i32 %279, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %12, align 4
  %285 = icmp slt i32 %283, %284
  br label %286

286:                                              ; preds = %282, %278
  %287 = phi i1 [ false, %278 ], [ %285, %282 ]
  br i1 %287, label %288, label %296

288:                                              ; preds = %286
  %289 = load i32, i32* %19, align 4
  %290 = sext i32 %289 to i64
  %291 = inttoptr i64 %290 to i8*
  %292 = load i8**, i8*** %11, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i32 1
  store i8** %293, i8*** %11, align 8
  store i8* %291, i8** %292, align 8
  %294 = load i32, i32* %21, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %21, align 4
  br label %278

296:                                              ; preds = %286
  br label %314

297:                                              ; preds = %265
  %298 = load i8**, i8*** %16, align 8
  %299 = icmp ne i8** %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i8**, i8*** %16, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 0
  %303 = load i8*, i8** %302, align 8
  %304 = ptrtoint i8* %303 to i32
  store i32 %304, i32* %19, align 4
  br label %306

305:                                              ; preds = %297
  store i32 0, i32* %19, align 4
  br label %306

306:                                              ; preds = %305, %300
  %307 = load i32, i32* %19, align 4
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to i8*
  %310 = load i8**, i8*** %11, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i32 1
  store i8** %311, i8*** %11, align 8
  store i8* %309, i8** %310, align 8
  %312 = load i32, i32* %21, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %21, align 4
  br label %314

314:                                              ; preds = %306, %296
  br label %315

315:                                              ; preds = %314, %264
  br label %316

316:                                              ; preds = %315, %217
  br label %317

317:                                              ; preds = %316, %169
  br label %318

318:                                              ; preds = %317, %121
  br label %319

319:                                              ; preds = %318, %71
  br label %32

320:                                              ; preds = %41
  %321 = call i32 @get_bits(i32* %18, i32 8)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i32*, i32** %10, align 8
  %325 = load i32, i32* @AV_LOG_ERROR, align 4
  %326 = call i32 @av_log(i32* %324, i32 %325, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %327

327:                                              ; preds = %323, %320
  %328 = call i32 @get_bits_count(i32* %18)
  %329 = add nsw i32 %328, 7
  %330 = ashr i32 %329, 3
  %331 = load i8***, i8**** %13, align 8
  %332 = load i8**, i8*** %331, align 8
  %333 = sext i32 %330 to i64
  %334 = getelementptr inbounds i8*, i8** %332, i64 %333
  store i8** %334, i8*** %331, align 8
  %335 = load i32, i32* %21, align 4
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %327, %82
  %337 = load i32, i32* %9, align 4
  ret i32 %337
}

declare dso_local i32 @init_get_bits(i32*, i8**, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
