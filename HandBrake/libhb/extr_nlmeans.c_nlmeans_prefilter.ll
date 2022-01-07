; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_prefilter.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_nlmeans.c_nlmeans_prefilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32 }

@NLMEANS_PREFILTER_MODE_MEAN3X3 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_MEAN5X5 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_MEDIAN3X3 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_MEDIAN5X5 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_CSM3X3 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_CSM5X5 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_EDGEBOOST = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_REDUCE50 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_REDUCE25 = common dso_local global i32 0, align 4
@NLMEANS_PREFILTER_MODE_PASSTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @nlmeans_prefilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmeans_prefilter(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @hb_lock(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hb_unlock(i32 %30)
  br label %333

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEAN3X3, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEAN5X5, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEDIAN3X3, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEDIAN5X5, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @NLMEANS_PREFILTER_MODE_CSM3X3, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NLMEANS_PREFILTER_MODE_CSM5X5, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %326

62:                                               ; preds = %57, %52, %47, %42, %37, %32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %6, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 2, %79
  %81 = add nsw i32 %78, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = call i32* @malloc(i32 %91)
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32* %101, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %102

102:                                              ; preds = %121, %62
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %10, align 4
  %110 = mul nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %107, i64 %111
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %113, i64 %117
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @memcpy(i32* %112, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %106
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %102

124:                                              ; preds = %102
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @NLMEANS_PREFILTER_MODE_CSM5X5, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load i32*, i32** %6, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @nlmeans_filter_csm(i32* %130, i32* %131, i32 %132, i32 %133, i32 %134, i32 5)
  br label %201

136:                                              ; preds = %124
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @NLMEANS_PREFILTER_MODE_CSM3X3, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32*, i32** %6, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @nlmeans_filter_csm(i32* %142, i32* %143, i32 %144, i32 %145, i32 %146, i32 3)
  br label %200

148:                                              ; preds = %136
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEDIAN5X5, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @nlmeans_filter_median(i32* %154, i32* %155, i32 %156, i32 %157, i32 %158, i32 5)
  br label %199

160:                                              ; preds = %148
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEDIAN3X3, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32*, i32** %6, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @nlmeans_filter_median(i32* %166, i32* %167, i32 %168, i32 %169, i32 %170, i32 3)
  br label %198

172:                                              ; preds = %160
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEAN5X5, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i32*, i32** %6, align 8
  %179 = load i32*, i32** %13, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @nlmeans_filter_mean(i32* %178, i32* %179, i32 %180, i32 %181, i32 %182, i32 5)
  br label %197

184:                                              ; preds = %172
  %185 = load i32, i32* %4, align 4
  %186 = load i32, i32* @NLMEANS_PREFILTER_MODE_MEAN3X3, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i32*, i32** %6, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @nlmeans_filter_mean(i32* %190, i32* %191, i32 %192, i32 %193, i32 %194, i32 3)
  br label %196

196:                                              ; preds = %189, %184
  br label %197

197:                                              ; preds = %196, %177
  br label %198

198:                                              ; preds = %197, %165
  br label %199

199:                                              ; preds = %198, %153
  br label %200

200:                                              ; preds = %199, %141
  br label %201

201:                                              ; preds = %200, %129
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @NLMEANS_PREFILTER_MODE_EDGEBOOST, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i32*, i32** %6, align 8
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @nlmeans_filter_edgeboost(i32* %207, i32* %208, i32 %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %206, %201
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @NLMEANS_PREFILTER_MODE_REDUCE50, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i32, i32* %4, align 4
  %220 = load i32, i32* @NLMEANS_PREFILTER_MODE_REDUCE25, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  store i32 1, i32* %15, align 4
  store i32 3, i32* %16, align 4
  br label %238

224:                                              ; preds = %218, %213
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @NLMEANS_PREFILTER_MODE_REDUCE50, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %237

230:                                              ; preds = %224
  %231 = load i32, i32* %4, align 4
  %232 = load i32, i32* @NLMEANS_PREFILTER_MODE_REDUCE25, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i32 3, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %236

236:                                              ; preds = %235, %230
  br label %237

237:                                              ; preds = %236, %229
  br label %238

238:                                              ; preds = %237, %223
  %239 = load i32, i32* %16, align 4
  %240 = icmp sgt i32 %239, 0
  br i1 %240, label %241, label %298

241:                                              ; preds = %238
  store i32 0, i32* %17, align 4
  br label %242

242:                                              ; preds = %294, %241
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %297

246:                                              ; preds = %242
  store i32 0, i32* %18, align 4
  br label %247

247:                                              ; preds = %290, %246
  %248 = load i32, i32* %18, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %293

251:                                              ; preds = %247
  %252 = load i32, i32* %15, align 4
  %253 = load i32*, i32** %12, align 8
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %17, align 4
  %256 = mul nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  %259 = load i32, i32* %18, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %252, %262
  %264 = load i32, i32* %16, align 4
  %265 = load i32*, i32** %5, align 8
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %17, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = mul nsw i32 %264, %274
  %276 = add nsw i32 %263, %275
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %16, align 4
  %279 = add nsw i32 %277, %278
  %280 = sdiv i32 %276, %279
  %281 = load i32*, i32** %12, align 8
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* %17, align 4
  %284 = mul nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32, i32* %18, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  store i32 %280, i32* %289, align 4
  br label %290

290:                                              ; preds = %251
  %291 = load i32, i32* %18, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %18, align 4
  br label %247

293:                                              ; preds = %247
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %17, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %17, align 4
  br label %242

297:                                              ; preds = %242
  br label %298

298:                                              ; preds = %297, %238
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %7, align 4
  %303 = call i32 @nlmeans_border(i32* %299, i32 %300, i32 %301, i32 %302)
  %304 = load i32*, i32** %12, align 8
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 6
  store i32* %304, i32** %306, align 8
  %307 = load i32*, i32** %13, align 8
  %308 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %308, i32 0, i32 7
  store i32* %307, i32** %309, align 8
  %310 = load i32, i32* %4, align 4
  %311 = load i32, i32* @NLMEANS_PREFILTER_MODE_PASSTHRU, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %325

314:                                              ; preds = %298
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 6
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 1
  store i32* %317, i32** %319, align 8
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 7
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 2
  store i32* %322, i32** %324, align 8
  br label %325

325:                                              ; preds = %314, %298
  br label %326

326:                                              ; preds = %325, %57
  %327 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %327, i32 0, i32 0
  store i32 1, i32* %328, align 8
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 8
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @hb_unlock(i32 %331)
  br label %333

333:                                              ; preds = %326, %27
  ret void
}

declare dso_local i32 @hb_lock(i32) #1

declare dso_local i32 @hb_unlock(i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nlmeans_filter_csm(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmeans_filter_median(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmeans_filter_mean(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmeans_filter_edgeboost(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @nlmeans_border(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
