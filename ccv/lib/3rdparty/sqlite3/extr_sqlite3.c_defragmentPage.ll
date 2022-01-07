; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_defragmentPage.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_defragmentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8*, i32, i32, i32, i32 (%struct.TYPE_7__*, i8*)*, i8, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @defragmentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defragmentPage(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3PagerIswriteable(i32 %30)
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sqlite3_mutex_held(i32 %58)
  %60 = call i32 @assert(i32 %59)
  store i8* null, i8** %15, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %14, align 8
  store i8* %63, i8** %16, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %8, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = call i32 @get2byte(i8* %78)
  %80 = icmp eq i32 %73, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %83, %85
  store i32 %86, i32* %17, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load i8*, i8** %14, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 7
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = load i32, i32* %5, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %318

101:                                              ; preds = %2
  %102 = load i8*, i8** %14, align 8
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = call i32 @get2byte(i8* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %317

110:                                              ; preds = %101
  %111 = load i8*, i8** %14, align 8
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = call i32 @get2byte(i8* %114)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp sgt i32 %119, %120
  br label %122

122:                                              ; preds = %118, %110
  %123 = phi i1 [ true, %110 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load i32, i32* %19, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* %19, align 4
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = call i32 @get2byte(i8* %131)
  %133 = add nsw i32 %126, %132
  %134 = load i32, i32* %10, align 4
  %135 = icmp sle i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %122
  %141 = load i32, i32* %20, align 4
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = call i32 @get2byte(i8* %146)
  %148 = add nsw i32 %141, %147
  %149 = load i32, i32* %10, align 4
  %150 = icmp sle i32 %148, %149
  br label %151

151:                                              ; preds = %140, %122
  %152 = phi i1 [ true, %122 ], [ %150, %140 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %20, align 4
  %156 = icmp eq i32 0, %155
  br i1 %156, label %174, label %157

157:                                              ; preds = %151
  %158 = load i8*, i8** %14, align 8
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %316

165:                                              ; preds = %157
  %166 = load i8*, i8** %14, align 8
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %166, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %316

174:                                              ; preds = %165, %151
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %13, align 4
  %178 = mul nsw i32 %177, 2
  %179 = add nsw i32 %176, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  store i8* %181, i8** %21, align 8
  store i32 0, i32* %23, align 4
  %182 = load i8*, i8** %14, align 8
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, 2
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = call i32 @get2byte(i8* %186)
  store i32 %187, i32* %24, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %189, 5
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = call i32 @get2byte(i8* %192)
  store i32 %193, i32* %25, align 4
  %194 = load i32, i32* %25, align 4
  %195 = load i32, i32* %19, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %174
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %199 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %198)
  store i32 %199, i32* %3, align 4
  br label %535

200:                                              ; preds = %174
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %255

203:                                              ; preds = %200
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %24, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %20, align 4
  %208 = icmp sle i32 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load i8*, i8** %14, align 8
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 2
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  %216 = call i32 @get2byte(i8* %215)
  store i32 %216, i32* %23, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %24, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* %23, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %20, align 4
  %223 = add nsw i32 %221, %222
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %24, align 4
  %226 = add nsw i32 %224, %225
  %227 = sub nsw i32 %223, %226
  %228 = load i32, i32* %10, align 4
  %229 = icmp sle i32 %227, %228
  %230 = zext i1 %229 to i32
  %231 = call i32 @assert(i32 %230)
  %232 = load i8*, i8** %14, align 8
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %24, align 4
  %235 = add nsw i32 %233, %234
  %236 = load i32, i32* %23, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %232, i64 %238
  %240 = load i8*, i8** %14, align 8
  %241 = load i32, i32* %19, align 4
  %242 = load i32, i32* %24, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %240, i64 %244
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %24, align 4
  %249 = add nsw i32 %247, %248
  %250 = sub nsw i32 %246, %249
  %251 = call i32 @memmove(i8* %239, i8* %245, i32 %250)
  %252 = load i32, i32* %23, align 4
  %253 = load i32, i32* %24, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %24, align 4
  br label %255

255:                                              ; preds = %203, %200
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* %24, align 4
  %258 = add nsw i32 %256, %257
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load i32, i32* %25, align 4
  %262 = sub nsw i32 %260, %261
  %263 = add nsw i32 %259, %262
  %264 = load i32, i32* %10, align 4
  %265 = icmp sle i32 %263, %264
  %266 = zext i1 %265 to i32
  %267 = call i32 @assert(i32 %266)
  %268 = load i8*, i8** %14, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, i8* %268, i64 %270
  %272 = load i8*, i8** %14, align 8
  %273 = load i32, i32* %25, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i32, i32* %19, align 4
  %277 = load i32, i32* %25, align 4
  %278 = sub nsw i32 %276, %277
  %279 = call i32 @memmove(i8* %271, i8* %275, i32 %278)
  %280 = load i8*, i8** %14, align 8
  %281 = load i32, i32* %11, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %280, i64 %282
  store i8* %283, i8** %22, align 8
  br label %284

284:                                              ; preds = %312, %255
  %285 = load i8*, i8** %22, align 8
  %286 = load i8*, i8** %21, align 8
  %287 = icmp ult i8* %285, %286
  br i1 %287, label %288, label %315

288:                                              ; preds = %284
  %289 = load i8*, i8** %22, align 8
  %290 = call i32 @get2byte(i8* %289)
  store i32 %290, i32* %7, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %19, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = load i8*, i8** %22, align 8
  %296 = load i32, i32* %7, align 4
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %296, %297
  %299 = call i32 @put2byte(i8* %295, i32 %298)
  br label %311

300:                                              ; preds = %288
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %20, align 4
  %303 = icmp slt i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load i8*, i8** %22, align 8
  %306 = load i32, i32* %7, align 4
  %307 = load i32, i32* %23, align 4
  %308 = add nsw i32 %306, %307
  %309 = call i32 @put2byte(i8* %305, i32 %308)
  br label %310

310:                                              ; preds = %304, %300
  br label %311

311:                                              ; preds = %310, %294
  br label %312

312:                                              ; preds = %311
  %313 = load i8*, i8** %22, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 2
  store i8* %314, i8** %22, align 8
  br label %284

315:                                              ; preds = %284
  br label %478

316:                                              ; preds = %165, %157
  br label %317

317:                                              ; preds = %316, %101
  br label %318

318:                                              ; preds = %317, %2
  %319 = load i32, i32* %10, align 4
  store i32 %319, i32* %12, align 4
  %320 = load i32, i32* %10, align 4
  %321 = sub nsw i32 %320, 4
  store i32 %321, i32* %18, align 4
  store i32 0, i32* %6, align 4
  br label %322

322:                                              ; preds = %469, %318
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* %13, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %472

326:                                              ; preds = %322
  %327 = load i8*, i8** %14, align 8
  %328 = load i32, i32* %11, align 4
  %329 = load i32, i32* %6, align 4
  %330 = mul nsw i32 %329, 2
  %331 = add nsw i32 %328, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %327, i64 %332
  store i8* %333, i8** %26, align 8
  %334 = load i8*, i8** %26, align 8
  %335 = call i32 @get2byte(i8* %334)
  store i32 %335, i32* %7, align 4
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* %17, align 4
  %338 = icmp eq i32 %336, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @testcase(i32 %339)
  %341 = load i32, i32* %7, align 4
  %342 = load i32, i32* %18, align 4
  %343 = icmp eq i32 %341, %342
  %344 = zext i1 %343 to i32
  %345 = call i32 @testcase(i32 %344)
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* %17, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %353, label %349

349:                                              ; preds = %326
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* %18, align 4
  %352 = icmp sgt i32 %350, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %349, %326
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %355 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %354)
  store i32 %355, i32* %3, align 4
  br label %535

356:                                              ; preds = %349
  %357 = load i32, i32* %7, align 4
  %358 = load i32, i32* %17, align 4
  %359 = icmp sge i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = load i32, i32* %7, align 4
  %362 = load i32, i32* %18, align 4
  %363 = icmp sle i32 %361, %362
  br label %364

364:                                              ; preds = %360, %356
  %365 = phi i1 [ false, %356 ], [ %363, %360 ]
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 5
  %370 = load i32 (%struct.TYPE_7__*, i8*)*, i32 (%struct.TYPE_7__*, i8*)** %369, align 8
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %372 = load i8*, i8** %16, align 8
  %373 = load i32, i32* %7, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  %376 = call i32 %370(%struct.TYPE_7__* %371, i8* %375)
  store i32 %376, i32* %9, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load i32, i32* %12, align 4
  %379 = sub nsw i32 %378, %377
  store i32 %379, i32* %12, align 4
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %17, align 4
  %382 = icmp slt i32 %380, %381
  br i1 %382, label %389, label %383

383:                                              ; preds = %364
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* %9, align 4
  %386 = add nsw i32 %384, %385
  %387 = load i32, i32* %10, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %392

389:                                              ; preds = %383, %364
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %391 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %390)
  store i32 %391, i32* %3, align 4
  br label %535

392:                                              ; preds = %383
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %9, align 4
  %395 = add nsw i32 %393, %394
  %396 = load i32, i32* %10, align 4
  %397 = icmp sle i32 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %392
  %399 = load i32, i32* %12, align 4
  %400 = load i32, i32* %17, align 4
  %401 = icmp sge i32 %399, %400
  br label %402

402:                                              ; preds = %398, %392
  %403 = phi i1 [ false, %392 ], [ %401, %398 ]
  %404 = zext i1 %403 to i32
  %405 = call i32 @assert(i32 %404)
  %406 = load i32, i32* %12, align 4
  %407 = load i32, i32* %9, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32, i32* %10, align 4
  %410 = icmp eq i32 %408, %409
  %411 = zext i1 %410 to i32
  %412 = call i32 @testcase(i32 %411)
  %413 = load i32, i32* %7, align 4
  %414 = load i32, i32* %9, align 4
  %415 = add nsw i32 %413, %414
  %416 = load i32, i32* %10, align 4
  %417 = icmp eq i32 %415, %416
  %418 = zext i1 %417 to i32
  %419 = call i32 @testcase(i32 %418)
  %420 = load i8*, i8** %26, align 8
  %421 = load i32, i32* %12, align 4
  %422 = call i32 @put2byte(i8* %420, i32 %421)
  %423 = load i8*, i8** %15, align 8
  %424 = icmp eq i8* %423, null
  br i1 %424, label %425, label %458

425:                                              ; preds = %402
  %426 = load i32, i32* %12, align 4
  %427 = load i32, i32* %7, align 4
  %428 = icmp eq i32 %426, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %425
  br label %469

430:                                              ; preds = %425
  %431 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 8
  %433 = load %struct.TYPE_6__*, %struct.TYPE_6__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = call i8* @sqlite3PagerTempSpace(i32 %435)
  store i8* %436, i8** %15, align 8
  %437 = load i8*, i8** %14, align 8
  %438 = load i32, i32* %8, align 4
  %439 = add nsw i32 %438, 5
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i8, i8* %437, i64 %440
  %442 = call i32 @get2byte(i8* %441)
  store i32 %442, i32* %27, align 4
  %443 = load i8*, i8** %15, align 8
  %444 = load i32, i32* %27, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %443, i64 %445
  %447 = load i8*, i8** %14, align 8
  %448 = load i32, i32* %27, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, i8* %447, i64 %449
  %451 = load i32, i32* %12, align 4
  %452 = load i32, i32* %9, align 4
  %453 = add nsw i32 %451, %452
  %454 = load i32, i32* %27, align 4
  %455 = sub nsw i32 %453, %454
  %456 = call i32 @memcpy(i8* %446, i8* %450, i32 %455)
  %457 = load i8*, i8** %15, align 8
  store i8* %457, i8** %16, align 8
  br label %458

458:                                              ; preds = %430, %402
  %459 = load i8*, i8** %14, align 8
  %460 = load i32, i32* %12, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i8, i8* %459, i64 %461
  %463 = load i8*, i8** %16, align 8
  %464 = load i32, i32* %7, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i8, i8* %463, i64 %465
  %467 = load i32, i32* %9, align 4
  %468 = call i32 @memcpy(i8* %462, i8* %466, i32 %467)
  br label %469

469:                                              ; preds = %458, %429
  %470 = load i32, i32* %6, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %6, align 4
  br label %322

472:                                              ; preds = %322
  %473 = load i8*, i8** %14, align 8
  %474 = load i32, i32* %8, align 4
  %475 = add nsw i32 %474, 7
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i8, i8* %473, i64 %476
  store i8 0, i8* %477, align 1
  br label %478

478:                                              ; preds = %472, %315
  %479 = load i8*, i8** %14, align 8
  %480 = load i32, i32* %8, align 4
  %481 = add nsw i32 %480, 7
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, i8* %479, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = zext i8 %484 to i32
  %486 = load i32, i32* %12, align 4
  %487 = add nsw i32 %485, %486
  %488 = load i32, i32* %17, align 4
  %489 = sub nsw i32 %487, %488
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 6
  %492 = load i8, i8* %491, align 8
  %493 = zext i8 %492 to i32
  %494 = icmp ne i32 %489, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %478
  %496 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %497 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__* %496)
  store i32 %497, i32* %3, align 4
  br label %535

498:                                              ; preds = %478
  %499 = load i32, i32* %12, align 4
  %500 = load i32, i32* %17, align 4
  %501 = icmp sge i32 %499, %500
  %502 = zext i1 %501 to i32
  %503 = call i32 @assert(i32 %502)
  %504 = load i8*, i8** %14, align 8
  %505 = load i32, i32* %8, align 4
  %506 = add nsw i32 %505, 5
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, i8* %504, i64 %507
  %509 = load i32, i32* %12, align 4
  %510 = call i32 @put2byte(i8* %508, i32 %509)
  %511 = load i8*, i8** %14, align 8
  %512 = load i32, i32* %8, align 4
  %513 = add nsw i32 %512, 1
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %511, i64 %514
  store i8 0, i8* %515, align 1
  %516 = load i8*, i8** %14, align 8
  %517 = load i32, i32* %8, align 4
  %518 = add nsw i32 %517, 2
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i8, i8* %516, i64 %519
  store i8 0, i8* %520, align 1
  %521 = load i8*, i8** %14, align 8
  %522 = load i32, i32* %17, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %521, i64 %523
  %525 = load i32, i32* %12, align 4
  %526 = load i32, i32* %17, align 4
  %527 = sub nsw i32 %525, %526
  %528 = call i32 @memset(i8* %524, i32 0, i32 %527)
  %529 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %529, i32 0, i32 7
  %531 = load i32, i32* %530, align 4
  %532 = call i32 @sqlite3PagerIswriteable(i32 %531)
  %533 = call i32 @assert(i32 %532)
  %534 = load i32, i32* @SQLITE_OK, align 4
  store i32 %534, i32* %3, align 4
  br label %535

535:                                              ; preds = %498, %495, %389, %353, %197
  %536 = load i32, i32* %3, align 4
  ret i32 %536
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_7__*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i8* @sqlite3PagerTempSpace(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
