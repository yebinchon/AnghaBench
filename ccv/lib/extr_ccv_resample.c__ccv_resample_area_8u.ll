; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_area_8u.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_resample.c__ccv_resample_area_8u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, double, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*)* @_ccv_resample_area_8u to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_resample_area_8u(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 0
  br label %38

38:                                               ; preds = %33, %2
  %39 = phi i1 [ false, %2 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 12, %45
  %47 = mul i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = call i64 @alloca(i32 %48)
  %50 = inttoptr i64 %49 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @CCV_GET_CHANNEL(i32 %53)
  %55 = call i8* @ccv_clamp(i32 %54, i32 1, i32 4)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sitofp i32 %59 to double
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %60, %64
  store double %65, double* %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load double, double* %70, align 8
  %72 = fdiv double %68, %71
  store double %72, double* %8, align 8
  %73 = load double, double* %7, align 8
  %74 = load double, double* %8, align 8
  %75 = fmul double %73, %74
  %76 = fmul double %75, 6.553600e+04
  %77 = fptosi double %76 to i32
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %212, %38
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %215

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = sitofp i32 %85 to double
  %87 = load double, double* %7, align 8
  %88 = fmul double %86, %87
  store double %88, double* %16, align 8
  %89 = load double, double* %16, align 8
  %90 = load double, double* %7, align 8
  %91 = fadd double %89, %90
  store double %91, double* %17, align 8
  %92 = load double, double* %16, align 8
  %93 = fadd double %92, 1.000000e+00
  %94 = fsub double %93, 0x3EB0C6F7A0B5ED8D
  %95 = fptosi double %94 to i32
  store i32 %95, i32* %18, align 4
  %96 = load double, double* %17, align 8
  %97 = fptosi double %96 to i32
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @ccv_min(i32 %98, i32 %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %19, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @ccv_min(i32 %104, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %18, align 4
  %111 = sitofp i32 %110 to double
  %112 = load double, double* %16, align 8
  %113 = fcmp ogt double %111, %112
  br i1 %113, label %114, label %144

114:                                              ; preds = %84
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %117, i32* %122, align 4
  %123 = load i32, i32* %18, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %6, align 4
  %126 = mul nsw i32 %124, %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %18, align 4
  %133 = sitofp i32 %132 to double
  %134 = load double, double* %16, align 8
  %135 = fsub double %133, %134
  %136 = fmul double %135, 2.560000e+02
  %137 = fptoui double %136 to i32
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %114, %84
  %145 = load i32, i32* %18, align 4
  store i32 %145, i32* %12, align 4
  br label %146

146:                                              ; preds = %173, %144
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %19, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %176

150:                                              ; preds = %146
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %6, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %6, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  store i32 %161, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  store i32 256, i32* %172, align 4
  br label %173

173:                                              ; preds = %150
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %146

176:                                              ; preds = %146
  %177 = load double, double* %17, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sitofp i32 %178 to double
  %180 = fsub double %177, %179
  %181 = fcmp ogt double %180, 1.000000e-03
  br i1 %181, label %182, label %211

182:                                              ; preds = %176
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %6, align 4
  %185 = mul nsw i32 %183, %184
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  store i32 %185, i32* %190, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %6, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  store i32 %193, i32* %198, align 4
  %199 = load double, double* %17, align 8
  %200 = load i32, i32* %19, align 4
  %201 = sitofp i32 %200 to double
  %202 = fsub double %199, %201
  %203 = fmul double %202, 2.560000e+02
  %204 = fptoui double %203 to i32
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  store i32 %204, i32* %210, align 4
  br label %211

211:                                              ; preds = %182, %176
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %78

215:                                              ; preds = %78
  %216 = load i32, i32* %15, align 4
  store i32 %216, i32* %20, align 4
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %6, align 4
  %221 = mul nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = mul i64 %222, 4
  %224 = trunc i64 %223 to i32
  %225 = call i64 @alloca(i32 %224)
  %226 = inttoptr i64 %225 to i32*
  store i32* %226, i32** %21, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = mul nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = mul i64 %232, 4
  %234 = trunc i64 %233 to i32
  %235 = call i64 @alloca(i32 %234)
  %236 = inttoptr i64 %235 to i32*
  store i32* %236, i32** %22, align 8
  store i32 0, i32* %10, align 4
  br label %237

237:                                              ; preds = %254, %215
  %238 = load i32, i32* %10, align 4
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = mul nsw i32 %241, %242
  %244 = icmp slt i32 %238, %243
  br i1 %244, label %245, label %257

245:                                              ; preds = %237
  %246 = load i32*, i32** %22, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 0, i32* %249, align 4
  %250 = load i32*, i32** %21, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %245
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %237

257:                                              ; preds = %237
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %501, %257
  %259 = load i32, i32* %13, align 4
  %260 = sitofp i32 %259 to double
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load double, double* %262, align 8
  %264 = fcmp olt double %260, %263
  br i1 %264, label %265, label %504

265:                                              ; preds = %258
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = mul nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %269, i64 %275
  store i8* %276, i8** %23, align 8
  store i32 0, i32* %15, align 4
  br label %277

277:                                              ; preds = %326, %265
  %278 = load i32, i32* %15, align 4
  %279 = load i32, i32* %20, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %329

281:                                              ; preds = %277
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %24, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %25, align 4
  store i32 0, i32* %14, align 4
  br label %294

294:                                              ; preds = %322, %281
  %295 = load i32, i32* %14, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %325

298:                                              ; preds = %294
  %299 = load i8*, i8** %23, align 8
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %299, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = zext i8 %310 to i32
  %312 = load i32, i32* %25, align 4
  %313 = mul i32 %311, %312
  %314 = load i32*, i32** %21, align 8
  %315 = load i32, i32* %24, align 4
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add i32 %320, %313
  store i32 %321, i32* %319, align 4
  br label %322

322:                                              ; preds = %298
  %323 = load i32, i32* %14, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %14, align 4
  br label %294

325:                                              ; preds = %294
  br label %326

326:                                              ; preds = %325
  %327 = load i32, i32* %15, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %277

329:                                              ; preds = %277
  %330 = load i32, i32* %11, align 4
  %331 = add nsw i32 %330, 1
  %332 = sitofp i32 %331 to double
  %333 = load double, double* %8, align 8
  %334 = fmul double %332, %333
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 1
  %337 = sitofp i32 %336 to double
  %338 = fcmp ole double %334, %337
  br i1 %338, label %347, label %339

339:                                              ; preds = %329
  %340 = load i32, i32* %13, align 4
  %341 = sitofp i32 %340 to double
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 1
  %344 = load double, double* %343, align 8
  %345 = fsub double %344, 1.000000e+00
  %346 = fcmp oeq double %341, %345
  br i1 %346, label %347, label %470

347:                                              ; preds = %339, %329
  %348 = load i32, i32* %13, align 4
  %349 = add nsw i32 %348, 1
  %350 = sitofp i32 %349 to double
  %351 = load i32, i32* %11, align 4
  %352 = add nsw i32 %351, 1
  %353 = sitofp i32 %352 to double
  %354 = load double, double* %8, align 8
  %355 = fmul double %353, %354
  %356 = fsub double %350, %355
  %357 = fptosi double %356 to i32
  %358 = call i32 @ccv_max(i32 %357, float 0.000000e+00)
  %359 = mul nsw i32 %358, 256
  store i32 %359, i32* %26, align 4
  %360 = load i32, i32* %26, align 4
  %361 = sub i32 256, %360
  store i32 %361, i32* %27, align 4
  %362 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 3
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %11, align 4
  %370 = mul nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %365, i64 %371
  store i8* %372, i8** %28, align 8
  %373 = load i32, i32* %26, align 4
  %374 = icmp ule i32 %373, 0
  br i1 %374, label %375, label %417

375:                                              ; preds = %347
  store i32 0, i32* %10, align 4
  br label %376

376:                                              ; preds = %413, %375
  %377 = load i32, i32* %10, align 4
  %378 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = mul nsw i32 %380, %381
  %383 = icmp slt i32 %377, %382
  br i1 %383, label %384, label %416

384:                                              ; preds = %376
  %385 = load i32*, i32** %22, align 8
  %386 = load i32, i32* %10, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32*, i32** %21, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = mul i32 %394, 256
  %396 = add i32 %389, %395
  %397 = load i32, i32* %9, align 4
  %398 = udiv i32 %396, %397
  %399 = call i8* @ccv_clamp(i32 %398, i32 0, i32 255)
  %400 = ptrtoint i8* %399 to i8
  %401 = load i8*, i8** %28, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %401, i64 %403
  store i8 %400, i8* %404, align 1
  %405 = load i32*, i32** %21, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %405, i64 %407
  store i32 0, i32* %408, align 4
  %409 = load i32*, i32** %22, align 8
  %410 = load i32, i32* %10, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 0, i32* %412, align 4
  br label %413

413:                                              ; preds = %384
  %414 = load i32, i32* %10, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %10, align 4
  br label %376

416:                                              ; preds = %376
  br label %467

417:                                              ; preds = %347
  store i32 0, i32* %10, align 4
  br label %418

418:                                              ; preds = %463, %417
  %419 = load i32, i32* %10, align 4
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %6, align 4
  %424 = mul nsw i32 %422, %423
  %425 = icmp slt i32 %419, %424
  br i1 %425, label %426, label %466

426:                                              ; preds = %418
  %427 = load i32*, i32** %22, align 8
  %428 = load i32, i32* %10, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32*, i32** %21, align 8
  %433 = load i32, i32* %10, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %432, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %27, align 4
  %438 = mul i32 %436, %437
  %439 = add i32 %431, %438
  %440 = load i32, i32* %9, align 4
  %441 = udiv i32 %439, %440
  %442 = call i8* @ccv_clamp(i32 %441, i32 0, i32 255)
  %443 = ptrtoint i8* %442 to i8
  %444 = load i8*, i8** %28, align 8
  %445 = load i32, i32* %10, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, i8* %444, i64 %446
  store i8 %443, i8* %447, align 1
  %448 = load i32*, i32** %21, align 8
  %449 = load i32, i32* %10, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* %26, align 4
  %454 = mul i32 %452, %453
  %455 = load i32*, i32** %22, align 8
  %456 = load i32, i32* %10, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %454, i32* %458, align 4
  %459 = load i32*, i32** %21, align 8
  %460 = load i32, i32* %10, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  store i32 0, i32* %462, align 4
  br label %463

463:                                              ; preds = %426
  %464 = load i32, i32* %10, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %10, align 4
  br label %418

466:                                              ; preds = %418
  br label %467

467:                                              ; preds = %466, %416
  %468 = load i32, i32* %11, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %11, align 4
  br label %500

470:                                              ; preds = %339
  store i32 0, i32* %10, align 4
  br label %471

471:                                              ; preds = %496, %470
  %472 = load i32, i32* %10, align 4
  %473 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* %6, align 4
  %477 = mul nsw i32 %475, %476
  %478 = icmp slt i32 %472, %477
  br i1 %478, label %479, label %499

479:                                              ; preds = %471
  %480 = load i32*, i32** %21, align 8
  %481 = load i32, i32* %10, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = mul i32 %484, 256
  %486 = load i32*, i32** %22, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, i32* %486, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = add i32 %490, %485
  store i32 %491, i32* %489, align 4
  %492 = load i32*, i32** %21, align 8
  %493 = load i32, i32* %10, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32 0, i32* %495, align 4
  br label %496

496:                                              ; preds = %479
  %497 = load i32, i32* %10, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %10, align 4
  br label %471

499:                                              ; preds = %471
  br label %500

500:                                              ; preds = %499, %467
  br label %501

501:                                              ; preds = %500
  %502 = load i32, i32* %13, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %13, align 4
  br label %258

504:                                              ; preds = %258
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i8* @ccv_clamp(i32, i32, i32) #1

declare dso_local i32 @CCV_GET_CHANNEL(i32) #1

declare dso_local i32 @ccv_min(i32, i32) #1

declare dso_local i32 @ccv_max(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
