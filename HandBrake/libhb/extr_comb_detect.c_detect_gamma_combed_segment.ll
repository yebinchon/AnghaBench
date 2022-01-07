; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_detect_gamma_combed_segment.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_comb_detect.c_detect_gamma_combed_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, i64, %struct.TYPE_10__*, %struct.TYPE_8__**, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32)* @detect_gamma_combed_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_gamma_combed_segment(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to float
  %32 = fdiv float %31, 2.550000e+02
  store float %32, float* %7, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = sitofp i64 %35 to float
  %37 = fdiv float %36, 2.550000e+02
  store float %37, float* %8, align 4
  %38 = load float, float* %8, align 4
  %39 = fmul float 6.000000e+00, %38
  store float %39, float* %9, align 4
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %476, %3
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %479

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %46, i64 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %13, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %58, i64 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %43
  store i32 2, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %43
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %15, align 4
  %86 = sub nsw i32 %85, 2
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %472, %91
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %475

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 -2, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %13, align 4
  %101 = mul nsw i32 -1, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 2, %103
  store i32 %104, i32* %19, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %107, i64 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %116, i64 %120
  store i64* %121, i64** %20, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %124, i64 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  store i64* %138, i64** %21, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %141, i64 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %150, i64 %154
  store i64* %155, i64** %22, align 8
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %13, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %165, i64 %169
  store i64* %170, i64** %23, align 8
  %171 = load i64*, i64** %23, align 8
  %172 = load i32, i32* %13, align 4
  %173 = call i32 @memset(i64* %171, i32 0, i32 %172)
  store i32 0, i32* %11, align 4
  br label %174

174:                                              ; preds = %468, %97
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %471

178:                                              ; preds = %174
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load float*, float** %180, align 8
  %182 = load i64*, i64** %21, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds float, float* %181, i64 %184
  %186 = load float, float* %185, align 4
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load float*, float** %188, align 8
  %190 = load i64*, i64** %21, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds float, float* %189, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fsub float %186, %196
  store float %197, float* %24, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load float*, float** %199, align 8
  %201 = load i64*, i64** %21, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds float, float* %200, i64 %203
  %205 = load float, float* %204, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = load float*, float** %207, align 8
  %209 = load i64*, i64** %21, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds float, float* %208, i64 %213
  %215 = load float, float* %214, align 4
  %216 = fsub float %205, %215
  store float %216, float* %25, align 4
  %217 = load float, float* %24, align 4
  %218 = load float, float* %8, align 4
  %219 = fcmp ogt float %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %178
  %221 = load float, float* %25, align 4
  %222 = load float, float* %8, align 4
  %223 = fcmp ogt float %221, %222
  br i1 %223, label %234, label %224

224:                                              ; preds = %220, %178
  %225 = load float, float* %24, align 4
  %226 = load float, float* %8, align 4
  %227 = fneg float %226
  %228 = fcmp olt float %225, %227
  br i1 %228, label %229, label %459

229:                                              ; preds = %224
  %230 = load float, float* %25, align 4
  %231 = load float, float* %8, align 4
  %232 = fneg float %231
  %233 = fcmp olt float %230, %232
  br i1 %233, label %234, label %459

234:                                              ; preds = %229, %220
  store i32 0, i32* %26, align 4
  %235 = load float, float* %7, align 4
  %236 = fcmp ogt float %235, 0.000000e+00
  br i1 %236, label %237, label %386

237:                                              ; preds = %234
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 0
  %240 = load float*, float** %239, align 8
  %241 = load i64*, i64** %20, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds float, float* %240, i64 %243
  %245 = load float, float* %244, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load float*, float** %247, align 8
  %249 = load i64*, i64** %21, align 8
  %250 = getelementptr inbounds i64, i64* %249, i64 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds float, float* %248, i64 %251
  %253 = load float, float* %252, align 4
  %254 = fsub float %245, %253
  %255 = call float @fabs(float %254)
  %256 = load float, float* %7, align 4
  %257 = fcmp ogt float %255, %256
  br i1 %257, label %258, label %311

258:                                              ; preds = %237
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 0
  %261 = load float*, float** %260, align 8
  %262 = load i64*, i64** %21, align 8
  %263 = load i32, i32* %17, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i64, i64* %262, i64 %264
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds float, float* %261, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = load float*, float** %270, align 8
  %272 = load i64*, i64** %22, align 8
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds float, float* %271, i64 %276
  %278 = load float, float* %277, align 4
  %279 = fsub float %268, %278
  %280 = call float @fabs(float %279)
  %281 = load float, float* %7, align 4
  %282 = fcmp ogt float %280, %281
  br i1 %282, label %283, label %311

283:                                              ; preds = %258
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load float*, float** %285, align 8
  %287 = load i64*, i64** %21, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds float, float* %286, i64 %291
  %293 = load float, float* %292, align 4
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = load float*, float** %295, align 8
  %297 = load i64*, i64** %22, align 8
  %298 = load i32, i32* %18, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds float, float* %296, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fsub float %293, %303
  %305 = call float @fabs(float %304)
  %306 = load float, float* %7, align 4
  %307 = fcmp ogt float %305, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %283
  %309 = load i32, i32* %26, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %26, align 4
  br label %311

311:                                              ; preds = %308, %283, %258, %237
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 0
  %314 = load float*, float** %313, align 8
  %315 = load i64*, i64** %22, align 8
  %316 = getelementptr inbounds i64, i64* %315, i64 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds float, float* %314, i64 %317
  %319 = load float, float* %318, align 4
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load float*, float** %321, align 8
  %323 = load i64*, i64** %21, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 0
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds float, float* %322, i64 %325
  %327 = load float, float* %326, align 4
  %328 = fsub float %319, %327
  %329 = call float @fabs(float %328)
  %330 = load float, float* %7, align 4
  %331 = fcmp ogt float %329, %330
  br i1 %331, label %332, label %385

332:                                              ; preds = %311
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = load float*, float** %334, align 8
  %336 = load i64*, i64** %20, align 8
  %337 = load i32, i32* %17, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  %340 = load i64, i64* %339, align 8
  %341 = getelementptr inbounds float, float* %335, i64 %340
  %342 = load float, float* %341, align 4
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load float*, float** %344, align 8
  %346 = load i64*, i64** %21, align 8
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64, i64* %346, i64 %348
  %350 = load i64, i64* %349, align 8
  %351 = getelementptr inbounds float, float* %345, i64 %350
  %352 = load float, float* %351, align 4
  %353 = fsub float %342, %352
  %354 = call float @fabs(float %353)
  %355 = load float, float* %7, align 4
  %356 = fcmp ogt float %354, %355
  br i1 %356, label %357, label %385

357:                                              ; preds = %332
  %358 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 0
  %360 = load float*, float** %359, align 8
  %361 = load i64*, i64** %20, align 8
  %362 = load i32, i32* %18, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %361, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds float, float* %360, i64 %365
  %367 = load float, float* %366, align 4
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load float*, float** %369, align 8
  %371 = load i64*, i64** %21, align 8
  %372 = load i32, i32* %18, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  %375 = load i64, i64* %374, align 8
  %376 = getelementptr inbounds float, float* %370, i64 %375
  %377 = load float, float* %376, align 4
  %378 = fsub float %367, %377
  %379 = call float @fabs(float %378)
  %380 = load float, float* %7, align 4
  %381 = fcmp ogt float %379, %380
  br i1 %381, label %382, label %385

382:                                              ; preds = %357
  %383 = load i32, i32* %26, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %26, align 4
  br label %385

385:                                              ; preds = %382, %357, %332, %311
  br label %387

386:                                              ; preds = %234
  store i32 1, i32* %26, align 4
  br label %387

387:                                              ; preds = %386, %385
  %388 = load i32, i32* %26, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %387
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %458

395:                                              ; preds = %390, %387
  %396 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  %398 = load float*, float** %397, align 8
  %399 = load i64*, i64** %21, align 8
  %400 = load i32, i32* %16, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i64, i64* %399, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds float, float* %398, i64 %403
  %405 = load float, float* %404, align 4
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load float*, float** %407, align 8
  %409 = load i64*, i64** %21, align 8
  %410 = getelementptr inbounds i64, i64* %409, i64 0
  %411 = load i64, i64* %410, align 8
  %412 = getelementptr inbounds float, float* %408, i64 %411
  %413 = load float, float* %412, align 4
  %414 = fmul float 4.000000e+00, %413
  %415 = fadd float %405, %414
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load float*, float** %417, align 8
  %419 = load i64*, i64** %21, align 8
  %420 = load i32, i32* %19, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64, i64* %419, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds float, float* %418, i64 %423
  %425 = load float, float* %424, align 4
  %426 = fadd float %415, %425
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 0
  %429 = load float*, float** %428, align 8
  %430 = load i64*, i64** %21, align 8
  %431 = load i32, i32* %17, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i64, i64* %430, i64 %432
  %434 = load i64, i64* %433, align 8
  %435 = getelementptr inbounds float, float* %429, i64 %434
  %436 = load float, float* %435, align 4
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i32 0, i32 0
  %439 = load float*, float** %438, align 8
  %440 = load i64*, i64** %21, align 8
  %441 = load i32, i32* %18, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i64, i64* %440, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds float, float* %439, i64 %444
  %446 = load float, float* %445, align 4
  %447 = fadd float %436, %446
  %448 = fmul float 3.000000e+00, %447
  %449 = fsub float %426, %448
  %450 = call float @fabs(float %449)
  store float %450, float* %27, align 4
  %451 = load float, float* %27, align 4
  %452 = load float, float* %9, align 4
  %453 = fcmp ogt float %451, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %395
  %455 = load i64*, i64** %23, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 0
  store i64 1, i64* %456, align 8
  br label %457

457:                                              ; preds = %454, %395
  br label %458

458:                                              ; preds = %457, %390
  br label %459

459:                                              ; preds = %458, %229, %224
  %460 = load i64*, i64** %21, align 8
  %461 = getelementptr inbounds i64, i64* %460, i32 1
  store i64* %461, i64** %21, align 8
  %462 = load i64*, i64** %20, align 8
  %463 = getelementptr inbounds i64, i64* %462, i32 1
  store i64* %463, i64** %20, align 8
  %464 = load i64*, i64** %22, align 8
  %465 = getelementptr inbounds i64, i64* %464, i32 1
  store i64* %465, i64** %22, align 8
  %466 = load i64*, i64** %23, align 8
  %467 = getelementptr inbounds i64, i64* %466, i32 1
  store i64* %467, i64** %23, align 8
  br label %468

468:                                              ; preds = %459
  %469 = load i32, i32* %11, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %11, align 4
  br label %174

471:                                              ; preds = %174
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %12, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %12, align 4
  br label %93

475:                                              ; preds = %93
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %10, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %10, align 4
  br label %40

479:                                              ; preds = %40
  ret void
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
