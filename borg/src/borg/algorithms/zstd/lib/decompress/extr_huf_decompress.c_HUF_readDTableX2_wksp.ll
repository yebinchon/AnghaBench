; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_readDTableX2_wksp.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_huf_decompress.c_HUF_readDTableX2_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readDTableX2_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_6__*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call { i64, i8* } @HUF_getDTableDesc(i32* %43)
  %45 = bitcast %struct.TYPE_7__* %16 to { i64, i8* }*
  %46 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %45, i32 0, i32 0
  %47 = extractvalue { i64, i8* } %44, 0
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %45, i32 0, i32 1
  %49 = extractvalue { i64, i8* } %44, 1
  store i8* %49, i8** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %19, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %20, align 8
  store i64 0, i64* %27, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i64, i64* %27, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = bitcast i32* %60 to i32**
  store i32** %61, i32*** %22, align 8
  %62 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = lshr i64 %64, 2
  %66 = load i64, i64* %27, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %27, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = load i64, i64* %27, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %23, align 8
  %72 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %27, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %27, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = load i64, i64* %27, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %24, align 8
  %81 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %27, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %27, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_6__*
  %88 = load i64, i64* %27, align 8
  %89 = mul i64 %88, 4
  %90 = udiv i64 %89, 16
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %90
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %25, align 8
  %92 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 16, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @HUF_ALIGN(i32 %96, i32 4)
  %98 = ashr i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %27, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %27, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i64, i64* %27, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = bitcast i32* %105 to i8**
  store i8** %106, i8*** %26, align 8
  %107 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @HUF_ALIGN(i32 %108, i32 4)
  %110 = ashr i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %27, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %27, align 8
  %114 = load i64, i64* %27, align 8
  %115 = shl i64 %114, 2
  %116 = load i64, i64* %11, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %5
  %119 = load i32, i32* @tableLog_tooLarge, align 4
  %120 = call i64 @ERROR(i32 %119)
  store i64 %120, i64* %6, align 8
  br label %335

121:                                              ; preds = %5
  %122 = load i32*, i32** %24, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32* %123, i32** %21, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %126 = mul nsw i32 2, %125
  %127 = add nsw i32 %126, 2
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 4, %129
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(i32* %124, i32 0, i32 %131)
  %133 = call i32 @DEBUG_STATIC_ASSERT(i32 1)
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %121
  %138 = load i32, i32* @tableLog_tooLarge, align 4
  %139 = call i64 @ERROR(i32 %138)
  store i64 %139, i64* %6, align 8
  br label %335

140:                                              ; preds = %121
  %141 = load i8**, i8*** %26, align 8
  %142 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32*, i32** %23, align 8
  %145 = load i8*, i8** %8, align 8
  %146 = load i64, i64* %9, align 8
  %147 = call i64 @HUF_readStats(i8** %141, i32 %143, i32* %144, i32* %15, i32* %12, i8* %145, i64 %146)
  store i64 %147, i64* %18, align 8
  %148 = load i64, i64* %18, align 8
  %149 = call i64 @HUF_isError(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %140
  %152 = load i64, i64* %18, align 8
  store i64 %152, i64* %6, align 8
  br label %335

153:                                              ; preds = %140
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* @tableLog_tooLarge, align 4
  %159 = call i64 @ERROR(i32 %158)
  store i64 %159, i64* %6, align 8
  br label %335

160:                                              ; preds = %153
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %170, %160
  %163 = load i32*, i32** %23, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %13, align 4
  br label %162

173:                                              ; preds = %162
  store i32 0, i32* %29, align 4
  store i32 1, i32* %28, align 4
  br label %174

174:                                              ; preds = %193, %173
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %174
  %180 = load i32, i32* %29, align 4
  store i32 %180, i32* %30, align 4
  %181 = load i32*, i32** %23, align 8
  %182 = load i32, i32* %28, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %29, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %29, align 4
  %188 = load i32, i32* %30, align 4
  %189 = load i32*, i32** %21, align 8
  %190 = load i32, i32* %28, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  br label %193

193:                                              ; preds = %179
  %194 = load i32, i32* %28, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %28, align 4
  br label %174

196:                                              ; preds = %174
  %197 = load i32, i32* %29, align 4
  %198 = load i32*, i32** %21, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %29, align 4
  store i32 %200, i32* %14, align 4
  store i32 0, i32* %31, align 4
  br label %201

201:                                              ; preds = %234, %196
  %202 = load i32, i32* %31, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %201
  %206 = load i8**, i8*** %26, align 8
  %207 = load i32, i32* %31, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = ptrtoint i8* %210 to i32
  store i32 %211, i32* %32, align 4
  %212 = load i32*, i32** %21, align 8
  %213 = load i32, i32* %32, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  store i32 %216, i32* %33, align 4
  %218 = load i32, i32* %31, align 4
  %219 = sext i32 %218 to i64
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %222 = load i32, i32* %33, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  store i8* %220, i8** %225, align 8
  %226 = load i32, i32* %32, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to i8*
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %230 = load i32, i32* %33, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  store i8* %228, i8** %233, align 8
  br label %234

234:                                              ; preds = %205
  %235 = load i32, i32* %31, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %31, align 4
  br label %201

237:                                              ; preds = %201
  %238 = load i32*, i32** %21, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  store i32 0, i32* %239, align 4
  %240 = load i32**, i32*** %22, align 8
  %241 = getelementptr inbounds i32*, i32** %240, i64 0
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %34, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %12, align 4
  %245 = sub nsw i32 %243, %244
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 1, i32* %37, align 4
  br label %247

247:                                              ; preds = %270, %237
  %248 = load i32, i32* %37, align 4
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %249, 1
  %251 = icmp slt i32 %248, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %247
  %253 = load i32, i32* %36, align 4
  store i32 %253, i32* %38, align 4
  %254 = load i32*, i32** %23, align 8
  %255 = load i32, i32* %37, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %35, align 4
  %261 = add nsw i32 %259, %260
  %262 = shl i32 %258, %261
  %263 = load i32, i32* %36, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %36, align 4
  %265 = load i32, i32* %38, align 4
  %266 = load i32*, i32** %34, align 8
  %267 = load i32, i32* %37, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  br label %270

270:                                              ; preds = %252
  %271 = load i32, i32* %37, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %37, align 4
  br label %247

273:                                              ; preds = %247
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %274, 1
  %276 = load i32, i32* %13, align 4
  %277 = sub nsw i32 %275, %276
  store i32 %277, i32* %39, align 4
  %278 = load i32, i32* %39, align 4
  store i32 %278, i32* %40, align 4
  br label %279

279:                                              ; preds = %313, %273
  %280 = load i32, i32* %40, align 4
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %39, align 4
  %283 = sub nsw i32 %281, %282
  %284 = add nsw i32 %283, 1
  %285 = icmp slt i32 %280, %284
  br i1 %285, label %286, label %316

286:                                              ; preds = %279
  %287 = load i32**, i32*** %22, align 8
  %288 = load i32, i32* %40, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  store i32* %291, i32** %41, align 8
  store i32 1, i32* %42, align 4
  br label %292

292:                                              ; preds = %309, %286
  %293 = load i32, i32* %42, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  %296 = icmp slt i32 %293, %295
  br i1 %296, label %297, label %312

297:                                              ; preds = %292
  %298 = load i32*, i32** %34, align 8
  %299 = load i32, i32* %42, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* %40, align 4
  %304 = ashr i32 %302, %303
  %305 = load i32*, i32** %41, align 8
  %306 = load i32, i32* %42, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %304, i32* %308, align 4
  br label %309

309:                                              ; preds = %297
  %310 = load i32, i32* %42, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %42, align 4
  br label %292

312:                                              ; preds = %292
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %40, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %40, align 4
  br label %279

316:                                              ; preds = %279
  %317 = load i32*, i32** %20, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %320 = load i32, i32* %14, align 4
  %321 = load i32*, i32** %24, align 8
  %322 = load i32**, i32*** %22, align 8
  %323 = load i32, i32* %13, align 4
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %324, 1
  %326 = call i32 @HUF_fillDTableX2(i32* %317, i32 %318, %struct.TYPE_6__* %319, i32 %320, i32* %321, i32** %322, i32 %323, i32 %325)
  %327 = load i32, i32* %17, align 4
  %328 = sext i32 %327 to i64
  %329 = inttoptr i64 %328 to i8*
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i8* %329, i8** %330, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i32 1, i32* %331, align 4
  %332 = load i32*, i32** %7, align 8
  %333 = call i32 @memcpy(i32* %332, %struct.TYPE_7__* %16, i32 16)
  %334 = load i64, i64* %18, align 8
  store i64 %334, i64* %6, align 8
  br label %335

335:                                              ; preds = %316, %157, %151, %137, %118
  %336 = load i64, i64* %6, align 8
  ret i64 %336
}

declare dso_local { i64, i8* } @HUF_getDTableDesc(i32*) #1

declare dso_local i32 @HUF_ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @DEBUG_STATIC_ASSERT(i32) #1

declare dso_local i64 @HUF_readStats(i8**, i32, i32*, i32*, i32*, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local i32 @HUF_fillDTableX2(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32**, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
