; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_filter_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_adeclick.c_filter_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { double*, i32, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, double, i32, i32, i32, i32*, double*, double*)*, i64, i32, i32, i64, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { double*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64* }
%struct.TYPE_16__ = type { i64* }
%struct.TYPE_15__ = type { i64* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i32, i32)* @filter_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_channel(%struct.TYPE_22__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %11, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %12, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 11
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to double*
  store double* %44, double** %13, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to double*
  store double* %54, double** %14, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 9
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to double*
  store double* %64, double** %15, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to double*
  store double* %72, double** %16, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to double*
  store double* %82, double** %17, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load double*, double** %84, align 8
  store double* %85, double** %18, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i64 %90
  store %struct.TYPE_19__* %91, %struct.TYPE_19__** %19, align 8
  %92 = load double*, double** %13, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 6
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call double @autoregression(double* %92, i64 %95, i32 %98, i32 %101, i32 %104, i32 %107)
  store double %108, double* %20, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  %116 = call i64 @isfinite_array(i32 %111, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %198

118:                                              ; preds = %4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load double*, double** %120, align 8
  store double* %121, double** %23, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %24, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, double, i32, i32, i32, i32*, double*, double*)*, i32 (%struct.TYPE_20__*, %struct.TYPE_19__*, double, i32, i32, i32, i32*, double*, double*)** %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %130 = load double, double* %20, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %24, align 8
  %141 = load double*, double** %13, align 8
  %142 = load double*, double** %15, align 8
  %143 = call i32 %127(%struct.TYPE_20__* %128, %struct.TYPE_19__* %129, double %130, i32 %133, i32 %136, i32 %139, i32* %140, double* %141, double* %142)
  store i32 %143, i32* %25, align 4
  %144 = load i32, i32* %25, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %197

146:                                              ; preds = %118
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %148 = load double*, double** %13, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %24, align 8
  %156 = load i32, i32* %25, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load double*, double** %23, align 8
  %161 = call i32 @interpolation(%struct.TYPE_19__* %147, double* %148, i64 %151, i32 %154, i32* %155, i32 %156, i32 %159, double* %160)
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %146
  %165 = load i32, i32* %22, align 4
  store i32 %165, i32* %5, align 4
  br label %365

166:                                              ; preds = %146
  store i32 0, i32* %21, align 4
  br label %167

167:                                              ; preds = %193, %166
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %25, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %196

171:                                              ; preds = %167
  %172 = load double*, double** %23, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %172, i64 %174
  %176 = load double, double* %175, align 8
  %177 = load double*, double** %15, align 8
  %178 = load i32*, i32** %24, align 8
  %179 = load i32, i32* %21, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds double, double* %177, i64 %183
  store double %176, double* %184, align 8
  %185 = load double*, double** %14, align 8
  %186 = load i32*, i32** %24, align 8
  %187 = load i32, i32* %21, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %185, i64 %191
  store double 1.000000e+00, double* %192, align 8
  br label %193

193:                                              ; preds = %171
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %21, align 4
  br label %167

196:                                              ; preds = %167
  br label %197

197:                                              ; preds = %196, %118
  br label %208

198:                                              ; preds = %4
  %199 = load double*, double** %15, align 8
  %200 = load double*, double** %13, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 @memcpy(double* %199, double* %200, i32 %206)
  br label %208

208:                                              ; preds = %198, %197
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %242

213:                                              ; preds = %208
  store i32 0, i32* %21, align 4
  br label %214

214:                                              ; preds = %238, %213
  %215 = load i32, i32* %21, align 4
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %241

220:                                              ; preds = %214
  %221 = load double*, double** %15, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  %225 = load double, double* %224, align 8
  %226 = load double*, double** %18, align 8
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds double, double* %226, i64 %228
  %230 = load double, double* %229, align 8
  %231 = fmul double %225, %230
  %232 = load double*, double** %17, align 8
  %233 = load i32, i32* %21, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  %236 = load double, double* %235, align 8
  %237 = fadd double %236, %231
  store double %237, double* %235, align 8
  br label %238

238:                                              ; preds = %220
  %239 = load i32, i32* %21, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  br label %214

241:                                              ; preds = %214
  br label %268

242:                                              ; preds = %208
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %26, align 4
  store i32 0, i32* %21, align 4
  br label %246

246:                                              ; preds = %264, %242
  %247 = load i32, i32* %21, align 4
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %246
  %253 = load double*, double** %15, align 8
  %254 = load i32, i32* %26, align 4
  %255 = load i32, i32* %21, align 4
  %256 = add nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds double, double* %253, i64 %257
  %259 = load double, double* %258, align 8
  %260 = load double*, double** %17, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  store double %259, double* %263, align 8
  br label %264

264:                                              ; preds = %252
  %265 = load i32, i32* %21, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %21, align 4
  br label %246

267:                                              ; preds = %246
  br label %268

268:                                              ; preds = %267, %241
  store i32 0, i32* %21, align 4
  br label %269

269:                                              ; preds = %285, %268
  %270 = load i32, i32* %21, align 4
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %270, %273
  br i1 %274, label %275, label %288

275:                                              ; preds = %269
  %276 = load double*, double** %17, align 8
  %277 = load i32, i32* %21, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %276, i64 %278
  %280 = load double, double* %279, align 8
  %281 = load double*, double** %16, align 8
  %282 = load i32, i32* %21, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds double, double* %281, i64 %283
  store double %280, double* %284, align 8
  br label %285

285:                                              ; preds = %275
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %21, align 4
  br label %269

288:                                              ; preds = %269
  %289 = load double*, double** %17, align 8
  %290 = load double*, double** %17, align 8
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds double, double* %290, i64 %294
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = mul nsw i32 %298, 2
  %300 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = sub nsw i32 %299, %302
  %304 = sext i32 %303 to i64
  %305 = mul i64 %304, 8
  %306 = trunc i64 %305 to i32
  %307 = call i32 @memmove(double* %289, double* %295, i32 %306)
  %308 = load double*, double** %14, align 8
  %309 = load double*, double** %14, align 8
  %310 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %309, i64 %313
  %315 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 %317, %320
  %322 = sext i32 %321 to i64
  %323 = mul i64 %322, 8
  %324 = trunc i64 %323 to i32
  %325 = call i32 @memmove(double* %308, double* %314, i32 %324)
  %326 = load double*, double** %17, align 8
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = mul nsw i32 %329, 2
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %326, i64 %331
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = sub i64 0, %336
  %338 = getelementptr inbounds double, double* %332, i64 %337
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = mul i64 %342, 8
  %344 = trunc i64 %343 to i32
  %345 = call i32 @memset(double* %338, i32 0, i32 %344)
  %346 = load double*, double** %14, align 8
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds double, double* %346, i64 %350
  %352 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = sub i64 0, %355
  %357 = getelementptr inbounds double, double* %351, i64 %356
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = mul i64 %361, 8
  %363 = trunc i64 %362 to i32
  %364 = call i32 @memset(double* %357, i32 0, i32 %363)
  store i32 0, i32* %5, align 4
  br label %365

365:                                              ; preds = %288, %164
  %366 = load i32, i32* %5, align 4
  ret i32 %366
}

declare dso_local double @autoregression(double*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @isfinite_array(i32, i64) #1

declare dso_local i32 @interpolation(%struct.TYPE_19__*, double*, i64, i32, i32*, i32, i32, double*) #1

declare dso_local i32 @memcpy(double*, double*, i32) #1

declare dso_local i32 @memmove(double*, double*, i32) #1

declare dso_local i32 @memset(double*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
