; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_freeSpace.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_freeSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@BTS_SECURE_DELETE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @freeSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freeSpace(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sqlite3PagerIswriteable(i32 %29)
  %31 = call i32 @assert(i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = icmp sge i32 %32, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %46, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @sqlite3_mutex_held(i32 %59)
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %3
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @memset(i8* %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %74, %3
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp sle i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  br label %98

98:                                               ; preds = %118, %81
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = call i32 @get2byte(i8* %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = icmp sgt i32 %107, 0
  br label %109

109:                                              ; preds = %106, %98
  %110 = phi i1 [ false, %98 ], [ %108, %106 ]
  br i1 %110, label %111, label %120

111:                                              ; preds = %109
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 4
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %117, i32* %4, align 4
  br label %348

118:                                              ; preds = %111
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %8, align 4
  br label %98

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %125, i32* %4, align 4
  br label %348

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i1 [ true, %126 ], [ %132, %130 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i8*, i8** %12, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @put2byte(i8* %140, i32 %141)
  %143 = load i8*, i8** %12, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @put2byte(i8* %146, i32 %147)
  %149 = load i8*, i8** %12, align 8
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @put2byte(i8* %153, i32 %154)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 5
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %271, %133
  %167 = load i8*, i8** %12, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = call i32 @get2byte(i8* %170)
  store i32 %171, i32* %9, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %272

173:                                              ; preds = %166
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %174, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 4
  %186 = icmp sle i32 %179, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = load i8*, i8** %12, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = call i32 @get2byte(i8* %192)
  store i32 %193, i32* %13, align 4
  %194 = load i8*, i8** %12, align 8
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 2
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = call i32 @get2byte(i8* %198)
  store i32 %199, i32* %14, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %200, %201
  %203 = add nsw i32 %202, 3
  %204 = load i32, i32* %13, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %269

206:                                              ; preds = %173
  %207 = load i32, i32* %13, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %269

209:                                              ; preds = %206
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %211, %212
  %214 = sub nsw i32 %210, %213
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %16, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %16, align 4
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 7
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %219, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp sgt i32 %218, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %217, %209
  %228 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %228, i32* %4, align 4
  br label %348

229:                                              ; preds = %217
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = load i8*, i8** %12, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 7
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i64
  %239 = sub nsw i64 %238, %231
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %236, align 1
  %241 = load i8*, i8** %12, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = call i32 @get2byte(i8* %244)
  store i32 %245, i32* %15, align 4
  %246 = load i8*, i8** %12, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  %250 = load i32, i32* %15, align 4
  %251 = call i32 @put2byte(i8* %249, i32 %250)
  %252 = load i32, i32* %13, align 4
  %253 = load i8*, i8** %12, align 8
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %254, 2
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = call i32 @get2byte(i8* %257)
  %259 = add nsw i32 %252, %258
  %260 = load i32, i32* %9, align 4
  %261 = sub nsw i32 %259, %260
  store i32 %261, i32* %15, align 4
  %262 = load i8*, i8** %12, align 8
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, 2
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %262, i64 %265
  %267 = load i32, i32* %15, align 4
  %268 = call i32 @put2byte(i8* %266, i32 %267)
  br label %271

269:                                              ; preds = %206, %173
  %270 = load i32, i32* %9, align 4
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %269, %229
  br label %166

272:                                              ; preds = %166
  %273 = load i8*, i8** %12, align 8
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %273, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = load i8*, i8** %12, align 8
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 5
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %279, %286
  br i1 %287, label %288, label %341

288:                                              ; preds = %272
  %289 = load i8*, i8** %12, align 8
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 2
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %289, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = load i8*, i8** %12, align 8
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, 6
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp eq i32 %295, %302
  br i1 %303, label %304, label %341

304:                                              ; preds = %288
  %305 = load i8*, i8** %12, align 8
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %305, i64 %308
  %310 = call i32 @get2byte(i8* %309)
  store i32 %310, i32* %9, align 4
  %311 = load i8*, i8** %12, align 8
  %312 = load i32, i32* %10, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  %316 = load i8*, i8** %12, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = call i32 @memcpy(i8* %315, i8* %319, i32 2)
  %321 = load i8*, i8** %12, align 8
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 5
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %321, i64 %324
  %326 = call i32 @get2byte(i8* %325)
  %327 = load i8*, i8** %12, align 8
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 2
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %327, i64 %330
  %332 = call i32 @get2byte(i8* %331)
  %333 = add nsw i32 %326, %332
  store i32 %333, i32* %17, align 4
  %334 = load i8*, i8** %12, align 8
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 5
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %334, i64 %337
  %339 = load i32, i32* %17, align 4
  %340 = call i32 @put2byte(i8* %338, i32 %339)
  br label %341

341:                                              ; preds = %304, %288, %272
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @sqlite3PagerIswriteable(i32 %344)
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* @SQLITE_OK, align 4
  store i32 %347, i32* %4, align 4
  br label %348

348:                                              ; preds = %341, %227, %124, %116
  %349 = load i32, i32* %4, align 4
  ret i32 %349
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @get2byte(i8*) #1

declare dso_local i32 @put2byte(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
