; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_numeric.c__ccv_filter_direct_8u.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_numeric.c__ccv_filter_direct_8u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@CCV_8U = common dso_local global i32 0, align 4
@CCV_C1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @_ccv_filter_direct_8u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_filter_direct_8u(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i64 @ccmalloc(i32 %36)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %15, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @ccmalloc(i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %16, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = call i64 @ccmalloc(i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %17, align 8
  store i32 16384, i32* %18, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %102, %4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %98, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %101

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @ccv_get_dense_matrix_cell_value(%struct.TYPE_10__* %65, i32 %66, i32 %67, i32 0)
  %69 = load i32, i32* %18, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sitofp i32 %70 to double
  %72 = fadd double %71, 5.000000e-01
  %73 = fptosi double %72 to i32
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %64
  br label %98

85:                                               ; preds = %64
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %85, %84
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %58

101:                                              ; preds = %58
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %51

105:                                              ; preds = %51
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 2
  %113 = mul nsw i32 %112, 2
  %114 = add nsw i32 %108, %113
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sdiv i32 %120, 2
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %117, %122
  %124 = load i32, i32* @CCV_8U, align 4
  %125 = load i32, i32* @CCV_C1, align 4
  %126 = or i32 %124, %125
  %127 = call %struct.TYPE_10__* @ccv_dense_matrix_new(i32 %114, i32 %123, i32 %126, i32 0, i32 0)
  store %struct.TYPE_10__* %127, %struct.TYPE_10__** %19, align 8
  store i32 0, i32* %9, align 4
  br label %128

128:                                              ; preds = %193, %105
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %196

134:                                              ; preds = %128
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %189, %134
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %192

141:                                              ; preds = %135
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sdiv i32 %149, 2
  %151 = sub nsw i32 %146, %150
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = call i64 @ccv_clamp(i32 %151, i32 0, i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = mul i64 %156, %160
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sdiv i32 %165, 2
  %167 = sub nsw i32 %162, %166
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %170, 1
  %172 = call i64 @ccv_clamp(i32 %167, i32 0, i32 %171)
  %173 = add i64 %161, %172
  %174 = getelementptr inbounds i8, i8* %145, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %180, %183
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %179, i64 %187
  store i8 %175, i8* %188, align 1
  br label %189

189:                                              ; preds = %141
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %135

192:                                              ; preds = %135
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %128

196:                                              ; preds = %128
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  store i8* %200, i8** %20, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %21, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sitofp i32 %205 to double
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 %209, %212
  %214 = sitofp i32 %213 to double
  %215 = fmul double %214, 7.500000e-01
  %216 = fcmp olt double %206, %215
  br i1 %216, label %217, label %299

217:                                              ; preds = %196
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %295, %217
  %219 = load i32, i32* %9, align 4
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %298

224:                                              ; preds = %218
  store i32 0, i32* %10, align 4
  br label %225

225:                                              ; preds = %279, %224
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %282

231:                                              ; preds = %225
  store i32 0, i32* %22, align 4
  store i32 0, i32* %13, align 4
  br label %232

232:                                              ; preds = %267, %231
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %14, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %270

236:                                              ; preds = %232
  %237 = load i8*, i8** %21, align 8
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = mul nsw i32 %242, %245
  %247 = load i32, i32* %10, align 4
  %248 = add nsw i32 %246, %247
  %249 = load i32*, i32** %16, align 8
  %250 = load i32, i32* %13, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %248, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, i8* %237, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = load i32*, i32** %15, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %258, %263
  %265 = load i32, i32* %22, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %22, align 4
  br label %267

267:                                              ; preds = %236
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %13, align 4
  br label %232

270:                                              ; preds = %232
  %271 = load i32, i32* %22, align 4
  %272 = ashr i32 %271, 14
  %273 = call i64 @ccv_clamp(i32 %272, i32 0, i32 255)
  %274 = trunc i64 %273 to i8
  %275 = load i8*, i8** %20, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  store i8 %274, i8* %278, align 1
  br label %279

279:                                              ; preds = %270
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %225

282:                                              ; preds = %225
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = load i8*, i8** %20, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  store i8* %288, i8** %20, align 8
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i8*, i8** %21, align 8
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  store i8* %294, i8** %21, align 8
  br label %295

295:                                              ; preds = %282
  %296 = load i32, i32* %9, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %9, align 4
  br label %218

298:                                              ; preds = %218
  br label %425

299:                                              ; preds = %196
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %300

300:                                              ; preds = %333, %299
  %301 = load i32, i32* %9, align 4
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %336

306:                                              ; preds = %300
  store i32 0, i32* %10, align 4
  br label %307

307:                                              ; preds = %329, %306
  %308 = load i32, i32* %10, align 4
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %332

313:                                              ; preds = %307
  %314 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %10, align 4
  %317 = call i32 @ccv_get_dense_matrix_cell_value(%struct.TYPE_10__* %314, i32 %315, i32 %316, i32 0)
  %318 = load i32, i32* %18, align 4
  %319 = mul nsw i32 %317, %318
  %320 = sitofp i32 %319 to double
  %321 = fadd double %320, 5.000000e-01
  %322 = fptosi double %321 to i32
  %323 = load i32*, i32** %15, align 8
  %324 = load i32, i32* %13, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  store i32 %322, i32* %326, align 4
  %327 = load i32, i32* %13, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %13, align 4
  br label %329

329:                                              ; preds = %313
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %10, align 4
  br label %307

332:                                              ; preds = %307
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %300

336:                                              ; preds = %300
  store i32 0, i32* %9, align 4
  br label %337

337:                                              ; preds = %421, %336
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp slt i32 %338, %341
  br i1 %342, label %343, label %424

343:                                              ; preds = %337
  store i32 0, i32* %10, align 4
  br label %344

344:                                              ; preds = %405, %343
  %345 = load i32, i32* %10, align 4
  %346 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp slt i32 %345, %348
  br i1 %349, label %350, label %408

350:                                              ; preds = %344
  %351 = load i32*, i32** %15, align 8
  store i32* %351, i32** %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %11, align 4
  br label %352

352:                                              ; preds = %393, %350
  %353 = load i32, i32* %11, align 4
  %354 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp slt i32 %353, %356
  br i1 %357, label %358, label %396

358:                                              ; preds = %352
  %359 = load i32, i32* %11, align 4
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 8
  %363 = mul nsw i32 %359, %362
  store i32 %363, i32* %25, align 4
  store i32 0, i32* %12, align 4
  br label %364

364:                                              ; preds = %389, %358
  %365 = load i32, i32* %12, align 4
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = icmp slt i32 %365, %368
  br i1 %369, label %370, label %392

370:                                              ; preds = %364
  %371 = load i8*, i8** %21, align 8
  %372 = load i32, i32* %25, align 4
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %372, %373
  %375 = load i32, i32* %12, align 4
  %376 = add nsw i32 %374, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, i8* %371, i64 %377
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = load i32*, i32** %23, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 0
  %383 = load i32, i32* %382, align 4
  %384 = mul nsw i32 %380, %383
  %385 = load i32, i32* %24, align 4
  %386 = add nsw i32 %385, %384
  store i32 %386, i32* %24, align 4
  %387 = load i32*, i32** %23, align 8
  %388 = getelementptr inbounds i32, i32* %387, i32 1
  store i32* %388, i32** %23, align 8
  br label %389

389:                                              ; preds = %370
  %390 = load i32, i32* %12, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %12, align 4
  br label %364

392:                                              ; preds = %364
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %11, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %11, align 4
  br label %352

396:                                              ; preds = %352
  %397 = load i32, i32* %24, align 4
  %398 = ashr i32 %397, 14
  %399 = call i64 @ccv_clamp(i32 %398, i32 0, i32 255)
  %400 = trunc i64 %399 to i8
  %401 = load i8*, i8** %20, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %401, i64 %403
  store i8 %400, i8* %404, align 1
  br label %405

405:                                              ; preds = %396
  %406 = load i32, i32* %10, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %10, align 4
  br label %344

408:                                              ; preds = %344
  %409 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = load i8*, i8** %20, align 8
  %413 = sext i32 %411 to i64
  %414 = getelementptr inbounds i8, i8* %412, i64 %413
  store i8* %414, i8** %20, align 8
  %415 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = load i8*, i8** %21, align 8
  %419 = sext i32 %417 to i64
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  store i8* %420, i8** %21, align 8
  br label %421

421:                                              ; preds = %408
  %422 = load i32, i32* %9, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %9, align 4
  br label %337

424:                                              ; preds = %337
  br label %425

425:                                              ; preds = %424, %298
  %426 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %427 = call i32 @ccv_matrix_free(%struct.TYPE_10__* %426)
  %428 = load i32*, i32** %15, align 8
  %429 = call i32 @ccfree(i32* %428)
  %430 = load i32*, i32** %16, align 8
  %431 = call i32 @ccfree(i32* %430)
  %432 = load i32*, i32** %17, align 8
  %433 = call i32 @ccfree(i32* %432)
  ret void
}

declare dso_local i64 @ccmalloc(i32) #1

declare dso_local i32 @ccv_get_dense_matrix_cell_value(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @ccv_dense_matrix_new(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ccv_clamp(i32, i32, i32) #1

declare dso_local i32 @ccv_matrix_free(%struct.TYPE_10__*) #1

declare dso_local i32 @ccfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
