; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_dsfmt_chk_init_by_array.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/dsfmt/extr_dSFMT.c_dsfmt_chk_init_by_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@DSFMT_N = common dso_local global i32 0, align 4
@dsfmt_mexp = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"DSFMT_MEXP doesn't match with dSFMT.c\0A\00", align 1
@DSFMT_N64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsfmt_chk_init_by_array(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @DSFMT_N, align 4
  %18 = add nsw i32 %17, 1
  %19 = mul nsw i32 %18, 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @dsfmt_mexp, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %4
  %28 = load i32, i32* %16, align 4
  %29 = icmp sge i32 %28, 623
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 11, i32* %14, align 4
  br label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %16, align 4
  %33 = icmp sge i32 %32, 68
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, i32* %14, align 4
  br label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %16, align 4
  %37 = icmp sge i32 %36, 39
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 5, i32* %14, align 4
  br label %40

39:                                               ; preds = %35
  store i32 3, i32* %14, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32* %53, i32** %13, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @memset(%struct.TYPE_7__* %56, i32 139, i32 8)
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %16, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %67

65:                                               ; preds = %42
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32*, i32** %13, align 8
  %69 = call i64 @idxof(i32 0)
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = srem i32 %73, %74
  %76 = call i64 @idxof(i32 %75)
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %71, %78
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %16, align 4
  %84 = srem i32 %82, %83
  %85 = call i64 @idxof(i32 %84)
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %79, %87
  %89 = call i32 @ini_func1(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = srem i32 %92, %93
  %95 = call i64 @idxof(i32 %94)
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %90
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %16, align 4
  %108 = srem i32 %106, %107
  %109 = call i64 @idxof(i32 %108)
  %110 = getelementptr inbounds i32, i32* %103, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %102
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = call i64 @idxof(i32 0)
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %11, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %199, %67
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %124, %125
  br label %127

127:                                              ; preds = %123, %119
  %128 = phi i1 [ false, %119 ], [ %126, %123 ]
  br i1 %128, label %129, label %202

129:                                              ; preds = %127
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i64 @idxof(i32 %131)
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %16, align 4
  %140 = srem i32 %138, %139
  %141 = call i64 @idxof(i32 %140)
  %142 = getelementptr inbounds i32, i32* %135, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = xor i32 %134, %143
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %16, align 4
  %148 = add nsw i32 %146, %147
  %149 = sub nsw i32 %148, 1
  %150 = load i32, i32* %16, align 4
  %151 = srem i32 %149, %150
  %152 = call i64 @idxof(i32 %151)
  %153 = getelementptr inbounds i32, i32* %145, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %144, %154
  %156 = call i32 @ini_func1(i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %16, align 4
  %163 = srem i32 %161, %162
  %164 = call i64 @idxof(i32 %163)
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, %157
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32*, i32** %13, align 8
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %16, align 4
  %185 = srem i32 %183, %184
  %186 = call i64 @idxof(i32 %185)
  %187 = getelementptr inbounds i32, i32* %178, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %177
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %9, align 4
  %193 = call i64 @idxof(i32 %192)
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %16, align 4
  %198 = srem i32 %196, %197
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %129
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %10, align 4
  br label %119

202:                                              ; preds = %127
  br label %203

203:                                              ; preds = %271, %202
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %274

207:                                              ; preds = %203
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %9, align 4
  %210 = call i64 @idxof(i32 %209)
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %214, %215
  %217 = load i32, i32* %16, align 4
  %218 = srem i32 %216, %217
  %219 = call i64 @idxof(i32 %218)
  %220 = getelementptr inbounds i32, i32* %213, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = xor i32 %212, %221
  %223 = load i32*, i32** %13, align 8
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %224, %225
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* %16, align 4
  %229 = srem i32 %227, %228
  %230 = call i64 @idxof(i32 %229)
  %231 = getelementptr inbounds i32, i32* %223, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = xor i32 %222, %232
  %234 = call i32 @ini_func1(i32 %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32*, i32** %13, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %237, %238
  %240 = load i32, i32* %16, align 4
  %241 = srem i32 %239, %240
  %242 = call i64 @idxof(i32 %241)
  %243 = getelementptr inbounds i32, i32* %236, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, %235
  store i32 %245, i32* %243, align 4
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %12, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32*, i32** %13, align 8
  %251 = load i32, i32* %9, align 4
  %252 = load i32, i32* %15, align 4
  %253 = add nsw i32 %251, %252
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %253, %254
  %256 = load i32, i32* %16, align 4
  %257 = srem i32 %255, %256
  %258 = call i64 @idxof(i32 %257)
  %259 = getelementptr inbounds i32, i32* %250, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, %249
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* %12, align 4
  %263 = load i32*, i32** %13, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i64 @idxof(i32 %264)
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* %9, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %16, align 4
  %270 = srem i32 %268, %269
  store i32 %270, i32* %9, align 4
  br label %271

271:                                              ; preds = %207
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  br label %203

274:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  br label %275

275:                                              ; preds = %343, %274
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %346

279:                                              ; preds = %275
  %280 = load i32*, i32** %13, align 8
  %281 = load i32, i32* %9, align 4
  %282 = call i64 @idxof(i32 %281)
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %13, align 8
  %286 = load i32, i32* %9, align 4
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %286, %287
  %289 = load i32, i32* %16, align 4
  %290 = srem i32 %288, %289
  %291 = call i64 @idxof(i32 %290)
  %292 = getelementptr inbounds i32, i32* %285, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %284, %293
  %295 = load i32*, i32** %13, align 8
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %296, %297
  %299 = sub nsw i32 %298, 1
  %300 = load i32, i32* %16, align 4
  %301 = srem i32 %299, %300
  %302 = call i64 @idxof(i32 %301)
  %303 = getelementptr inbounds i32, i32* %295, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %294, %304
  %306 = call i32 @ini_func2(i32 %305)
  store i32 %306, i32* %12, align 4
  %307 = load i32, i32* %12, align 4
  %308 = load i32*, i32** %13, align 8
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %309, %310
  %312 = load i32, i32* %16, align 4
  %313 = srem i32 %311, %312
  %314 = call i64 @idxof(i32 %313)
  %315 = getelementptr inbounds i32, i32* %308, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = xor i32 %316, %307
  store i32 %317, i32* %315, align 4
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* %12, align 4
  %320 = sub nsw i32 %319, %318
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %15, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32, i32* %14, align 4
  %327 = add nsw i32 %325, %326
  %328 = load i32, i32* %16, align 4
  %329 = srem i32 %327, %328
  %330 = call i64 @idxof(i32 %329)
  %331 = getelementptr inbounds i32, i32* %322, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = xor i32 %332, %321
  store i32 %333, i32* %331, align 4
  %334 = load i32, i32* %12, align 4
  %335 = load i32*, i32** %13, align 8
  %336 = load i32, i32* %9, align 4
  %337 = call i64 @idxof(i32 %336)
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  store i32 %334, i32* %338, align 4
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  %341 = load i32, i32* %16, align 4
  %342 = srem i32 %340, %341
  store i32 %342, i32* %9, align 4
  br label %343

343:                                              ; preds = %279
  %344 = load i32, i32* %10, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %10, align 4
  br label %275

346:                                              ; preds = %275
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %348 = call i32 @initial_mask(%struct.TYPE_6__* %347)
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %350 = call i32 @period_certification(%struct.TYPE_6__* %349)
  %351 = load i32, i32* @DSFMT_N64, align 4
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i32 0, i32 0
  store i32 %351, i32* %353, align 8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ini_func1(i32) #1

declare dso_local i64 @idxof(i32) #1

declare dso_local i32 @ini_func2(i32) #1

declare dso_local i32 @initial_mask(%struct.TYPE_6__*) #1

declare dso_local i32 @period_certification(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
