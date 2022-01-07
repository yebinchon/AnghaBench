; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_BoxOnPlaneSide.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_BoxOnPlaneSide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, float, i32, i64* }

@PLANESIDE_EPSILON = common dso_local global i64 0, align 8
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BoxOnPlaneSide(i64* %0, i64* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %57

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %16 = load i64*, i64** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = sitofp i64 %22 to float
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = load i64, i64* @PLANESIDE_EPSILON, align 8
  %28 = sitofp i64 %27 to float
  %29 = fadd float %26, %28
  %30 = fcmp ogt float %23, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %15
  %32 = load i32, i32* @PSIDE_FRONT, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %15
  %36 = load i64*, i64** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %36, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to float
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load float, float* %45, align 4
  %47 = load i64, i64* @PLANESIDE_EPSILON, align 8
  %48 = sitofp i64 %47 to float
  %49 = fsub float %46, %48
  %50 = fcmp olt float %43, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load i32, i32* @PSIDE_BACK, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %576

57:                                               ; preds = %3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %549 [
    i32 0, label %61
    i32 1, label %122
    i32 2, label %183
    i32 3, label %244
    i32 4, label %305
    i32 5, label %366
    i32 6, label %427
    i32 7, label %488
  ]

61:                                               ; preds = %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = mul nsw i64 %66, %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = mul nsw i64 %75, %78
  %80 = add nsw i64 %70, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = mul nsw i64 %85, %88
  %90 = add nsw i64 %80, %89
  %91 = sitofp i64 %90 to float
  store float %91, float* %8, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %5, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = mul nsw i64 %96, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %5, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = mul nsw i64 %105, %108
  %110 = add nsw i64 %100, %109
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** %5, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 2
  %118 = load i64, i64* %117, align 8
  %119 = mul nsw i64 %115, %118
  %120 = add nsw i64 %110, %119
  %121 = sitofp i64 %120 to float
  store float %121, float* %9, align 4
  br label %550

122:                                              ; preds = %57
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %5, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = mul nsw i64 %127, %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i64*, i64** %133, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** %6, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 1
  %139 = load i64, i64* %138, align 8
  %140 = mul nsw i64 %136, %139
  %141 = add nsw i64 %131, %140
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** %6, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 2
  %149 = load i64, i64* %148, align 8
  %150 = mul nsw i64 %146, %149
  %151 = add nsw i64 %141, %150
  %152 = sitofp i64 %151 to float
  store float %152, float* %8, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %6, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = mul nsw i64 %157, %160
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %5, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = mul nsw i64 %166, %169
  %171 = add nsw i64 %161, %170
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64*, i64** %5, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 2
  %179 = load i64, i64* %178, align 8
  %180 = mul nsw i64 %176, %179
  %181 = add nsw i64 %171, %180
  %182 = sitofp i64 %181 to float
  store float %182, float* %9, align 4
  br label %550

183:                                              ; preds = %57
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %6, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 0
  %191 = load i64, i64* %190, align 8
  %192 = mul nsw i64 %188, %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64*, i64** %5, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 1
  %200 = load i64, i64* %199, align 8
  %201 = mul nsw i64 %197, %200
  %202 = add nsw i64 %192, %201
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 3
  %205 = load i64*, i64** %204, align 8
  %206 = getelementptr inbounds i64, i64* %205, i64 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %6, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 2
  %210 = load i64, i64* %209, align 8
  %211 = mul nsw i64 %207, %210
  %212 = add nsw i64 %202, %211
  %213 = sitofp i64 %212 to float
  store float %213, float* %8, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 3
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %5, align 8
  %220 = getelementptr inbounds i64, i64* %219, i64 0
  %221 = load i64, i64* %220, align 8
  %222 = mul nsw i64 %218, %221
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %6, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  %230 = load i64, i64* %229, align 8
  %231 = mul nsw i64 %227, %230
  %232 = add nsw i64 %222, %231
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 3
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 2
  %237 = load i64, i64* %236, align 8
  %238 = load i64*, i64** %5, align 8
  %239 = getelementptr inbounds i64, i64* %238, i64 2
  %240 = load i64, i64* %239, align 8
  %241 = mul nsw i64 %237, %240
  %242 = add nsw i64 %232, %241
  %243 = sitofp i64 %242 to float
  store float %243, float* %9, align 4
  br label %550

244:                                              ; preds = %57
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = getelementptr inbounds i64, i64* %247, i64 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64*, i64** %5, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 0
  %252 = load i64, i64* %251, align 8
  %253 = mul nsw i64 %249, %252
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 1
  %258 = load i64, i64* %257, align 8
  %259 = load i64*, i64** %5, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 1
  %261 = load i64, i64* %260, align 8
  %262 = mul nsw i64 %258, %261
  %263 = add nsw i64 %253, %262
  %264 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 3
  %266 = load i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 2
  %268 = load i64, i64* %267, align 8
  %269 = load i64*, i64** %6, align 8
  %270 = getelementptr inbounds i64, i64* %269, i64 2
  %271 = load i64, i64* %270, align 8
  %272 = mul nsw i64 %268, %271
  %273 = add nsw i64 %263, %272
  %274 = sitofp i64 %273 to float
  store float %274, float* %8, align 4
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 3
  %277 = load i64*, i64** %276, align 8
  %278 = getelementptr inbounds i64, i64* %277, i64 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64*, i64** %6, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  %282 = load i64, i64* %281, align 8
  %283 = mul nsw i64 %279, %282
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 3
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 1
  %288 = load i64, i64* %287, align 8
  %289 = load i64*, i64** %6, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 1
  %291 = load i64, i64* %290, align 8
  %292 = mul nsw i64 %288, %291
  %293 = add nsw i64 %283, %292
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 3
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 2
  %298 = load i64, i64* %297, align 8
  %299 = load i64*, i64** %5, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 2
  %301 = load i64, i64* %300, align 8
  %302 = mul nsw i64 %298, %301
  %303 = add nsw i64 %293, %302
  %304 = sitofp i64 %303 to float
  store float %304, float* %9, align 4
  br label %550

305:                                              ; preds = %57
  %306 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %306, i32 0, i32 3
  %308 = load i64*, i64** %307, align 8
  %309 = getelementptr inbounds i64, i64* %308, i64 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64*, i64** %6, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 0
  %313 = load i64, i64* %312, align 8
  %314 = mul nsw i64 %310, %313
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 3
  %317 = load i64*, i64** %316, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 1
  %319 = load i64, i64* %318, align 8
  %320 = load i64*, i64** %6, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 1
  %322 = load i64, i64* %321, align 8
  %323 = mul nsw i64 %319, %322
  %324 = add nsw i64 %314, %323
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 3
  %327 = load i64*, i64** %326, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 2
  %329 = load i64, i64* %328, align 8
  %330 = load i64*, i64** %5, align 8
  %331 = getelementptr inbounds i64, i64* %330, i64 2
  %332 = load i64, i64* %331, align 8
  %333 = mul nsw i64 %329, %332
  %334 = add nsw i64 %324, %333
  %335 = sitofp i64 %334 to float
  store float %335, float* %8, align 4
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 3
  %338 = load i64*, i64** %337, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64*, i64** %5, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 0
  %343 = load i64, i64* %342, align 8
  %344 = mul nsw i64 %340, %343
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 3
  %347 = load i64*, i64** %346, align 8
  %348 = getelementptr inbounds i64, i64* %347, i64 1
  %349 = load i64, i64* %348, align 8
  %350 = load i64*, i64** %5, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 1
  %352 = load i64, i64* %351, align 8
  %353 = mul nsw i64 %349, %352
  %354 = add nsw i64 %344, %353
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 3
  %357 = load i64*, i64** %356, align 8
  %358 = getelementptr inbounds i64, i64* %357, i64 2
  %359 = load i64, i64* %358, align 8
  %360 = load i64*, i64** %6, align 8
  %361 = getelementptr inbounds i64, i64* %360, i64 2
  %362 = load i64, i64* %361, align 8
  %363 = mul nsw i64 %359, %362
  %364 = add nsw i64 %354, %363
  %365 = sitofp i64 %364 to float
  store float %365, float* %9, align 4
  br label %550

366:                                              ; preds = %57
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 3
  %369 = load i64*, i64** %368, align 8
  %370 = getelementptr inbounds i64, i64* %369, i64 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64*, i64** %5, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 0
  %374 = load i64, i64* %373, align 8
  %375 = mul nsw i64 %371, %374
  %376 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 3
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 1
  %380 = load i64, i64* %379, align 8
  %381 = load i64*, i64** %6, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 1
  %383 = load i64, i64* %382, align 8
  %384 = mul nsw i64 %380, %383
  %385 = add nsw i64 %375, %384
  %386 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %387 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %386, i32 0, i32 3
  %388 = load i64*, i64** %387, align 8
  %389 = getelementptr inbounds i64, i64* %388, i64 2
  %390 = load i64, i64* %389, align 8
  %391 = load i64*, i64** %5, align 8
  %392 = getelementptr inbounds i64, i64* %391, i64 2
  %393 = load i64, i64* %392, align 8
  %394 = mul nsw i64 %390, %393
  %395 = add nsw i64 %385, %394
  %396 = sitofp i64 %395 to float
  store float %396, float* %8, align 4
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 3
  %399 = load i64*, i64** %398, align 8
  %400 = getelementptr inbounds i64, i64* %399, i64 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64*, i64** %6, align 8
  %403 = getelementptr inbounds i64, i64* %402, i64 0
  %404 = load i64, i64* %403, align 8
  %405 = mul nsw i64 %401, %404
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 3
  %408 = load i64*, i64** %407, align 8
  %409 = getelementptr inbounds i64, i64* %408, i64 1
  %410 = load i64, i64* %409, align 8
  %411 = load i64*, i64** %5, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 1
  %413 = load i64, i64* %412, align 8
  %414 = mul nsw i64 %410, %413
  %415 = add nsw i64 %405, %414
  %416 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 3
  %418 = load i64*, i64** %417, align 8
  %419 = getelementptr inbounds i64, i64* %418, i64 2
  %420 = load i64, i64* %419, align 8
  %421 = load i64*, i64** %6, align 8
  %422 = getelementptr inbounds i64, i64* %421, i64 2
  %423 = load i64, i64* %422, align 8
  %424 = mul nsw i64 %420, %423
  %425 = add nsw i64 %415, %424
  %426 = sitofp i64 %425 to float
  store float %426, float* %9, align 4
  br label %550

427:                                              ; preds = %57
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 3
  %430 = load i64*, i64** %429, align 8
  %431 = getelementptr inbounds i64, i64* %430, i64 0
  %432 = load i64, i64* %431, align 8
  %433 = load i64*, i64** %6, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 0
  %435 = load i64, i64* %434, align 8
  %436 = mul nsw i64 %432, %435
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 3
  %439 = load i64*, i64** %438, align 8
  %440 = getelementptr inbounds i64, i64* %439, i64 1
  %441 = load i64, i64* %440, align 8
  %442 = load i64*, i64** %5, align 8
  %443 = getelementptr inbounds i64, i64* %442, i64 1
  %444 = load i64, i64* %443, align 8
  %445 = mul nsw i64 %441, %444
  %446 = add nsw i64 %436, %445
  %447 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %447, i32 0, i32 3
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 2
  %451 = load i64, i64* %450, align 8
  %452 = load i64*, i64** %5, align 8
  %453 = getelementptr inbounds i64, i64* %452, i64 2
  %454 = load i64, i64* %453, align 8
  %455 = mul nsw i64 %451, %454
  %456 = add nsw i64 %446, %455
  %457 = sitofp i64 %456 to float
  store float %457, float* %8, align 4
  %458 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 3
  %460 = load i64*, i64** %459, align 8
  %461 = getelementptr inbounds i64, i64* %460, i64 0
  %462 = load i64, i64* %461, align 8
  %463 = load i64*, i64** %5, align 8
  %464 = getelementptr inbounds i64, i64* %463, i64 0
  %465 = load i64, i64* %464, align 8
  %466 = mul nsw i64 %462, %465
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 3
  %469 = load i64*, i64** %468, align 8
  %470 = getelementptr inbounds i64, i64* %469, i64 1
  %471 = load i64, i64* %470, align 8
  %472 = load i64*, i64** %6, align 8
  %473 = getelementptr inbounds i64, i64* %472, i64 1
  %474 = load i64, i64* %473, align 8
  %475 = mul nsw i64 %471, %474
  %476 = add nsw i64 %466, %475
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 3
  %479 = load i64*, i64** %478, align 8
  %480 = getelementptr inbounds i64, i64* %479, i64 2
  %481 = load i64, i64* %480, align 8
  %482 = load i64*, i64** %6, align 8
  %483 = getelementptr inbounds i64, i64* %482, i64 2
  %484 = load i64, i64* %483, align 8
  %485 = mul nsw i64 %481, %484
  %486 = add nsw i64 %476, %485
  %487 = sitofp i64 %486 to float
  store float %487, float* %9, align 4
  br label %550

488:                                              ; preds = %57
  %489 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %489, i32 0, i32 3
  %491 = load i64*, i64** %490, align 8
  %492 = getelementptr inbounds i64, i64* %491, i64 0
  %493 = load i64, i64* %492, align 8
  %494 = load i64*, i64** %5, align 8
  %495 = getelementptr inbounds i64, i64* %494, i64 0
  %496 = load i64, i64* %495, align 8
  %497 = mul nsw i64 %493, %496
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 3
  %500 = load i64*, i64** %499, align 8
  %501 = getelementptr inbounds i64, i64* %500, i64 1
  %502 = load i64, i64* %501, align 8
  %503 = load i64*, i64** %5, align 8
  %504 = getelementptr inbounds i64, i64* %503, i64 1
  %505 = load i64, i64* %504, align 8
  %506 = mul nsw i64 %502, %505
  %507 = add nsw i64 %497, %506
  %508 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %508, i32 0, i32 3
  %510 = load i64*, i64** %509, align 8
  %511 = getelementptr inbounds i64, i64* %510, i64 2
  %512 = load i64, i64* %511, align 8
  %513 = load i64*, i64** %5, align 8
  %514 = getelementptr inbounds i64, i64* %513, i64 2
  %515 = load i64, i64* %514, align 8
  %516 = mul nsw i64 %512, %515
  %517 = add nsw i64 %507, %516
  %518 = sitofp i64 %517 to float
  store float %518, float* %8, align 4
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 3
  %521 = load i64*, i64** %520, align 8
  %522 = getelementptr inbounds i64, i64* %521, i64 0
  %523 = load i64, i64* %522, align 8
  %524 = load i64*, i64** %6, align 8
  %525 = getelementptr inbounds i64, i64* %524, i64 0
  %526 = load i64, i64* %525, align 8
  %527 = mul nsw i64 %523, %526
  %528 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i32 0, i32 3
  %530 = load i64*, i64** %529, align 8
  %531 = getelementptr inbounds i64, i64* %530, i64 1
  %532 = load i64, i64* %531, align 8
  %533 = load i64*, i64** %6, align 8
  %534 = getelementptr inbounds i64, i64* %533, i64 1
  %535 = load i64, i64* %534, align 8
  %536 = mul nsw i64 %532, %535
  %537 = add nsw i64 %527, %536
  %538 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 3
  %540 = load i64*, i64** %539, align 8
  %541 = getelementptr inbounds i64, i64* %540, i64 2
  %542 = load i64, i64* %541, align 8
  %543 = load i64*, i64** %6, align 8
  %544 = getelementptr inbounds i64, i64* %543, i64 2
  %545 = load i64, i64* %544, align 8
  %546 = mul nsw i64 %542, %545
  %547 = add nsw i64 %537, %546
  %548 = sitofp i64 %547 to float
  store float %548, float* %9, align 4
  br label %550

549:                                              ; preds = %57
  store float 0.000000e+00, float* %9, align 4
  store float 0.000000e+00, float* %8, align 4
  br label %550

550:                                              ; preds = %549, %488, %427, %366, %305, %244, %183, %122, %61
  store i32 0, i32* %10, align 4
  %551 = load float, float* %8, align 4
  %552 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 1
  %554 = load float, float* %553, align 4
  %555 = fsub float %551, %554
  %556 = load i64, i64* @PLANESIDE_EPSILON, align 8
  %557 = sitofp i64 %556 to float
  %558 = fcmp oge float %555, %557
  br i1 %558, label %559, label %561

559:                                              ; preds = %550
  %560 = load i32, i32* @PSIDE_FRONT, align 4
  store i32 %560, i32* %10, align 4
  br label %561

561:                                              ; preds = %559, %550
  %562 = load float, float* %9, align 4
  %563 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i32 0, i32 1
  %565 = load float, float* %564, align 4
  %566 = fsub float %562, %565
  %567 = load i64, i64* @PLANESIDE_EPSILON, align 8
  %568 = sitofp i64 %567 to float
  %569 = fcmp olt float %566, %568
  br i1 %569, label %570, label %574

570:                                              ; preds = %561
  %571 = load i32, i32* @PSIDE_BACK, align 4
  %572 = load i32, i32* %10, align 4
  %573 = or i32 %572, %571
  store i32 %573, i32* %10, align 4
  br label %574

574:                                              ; preds = %570, %561
  %575 = load i32, i32* %10, align 4
  store i32 %575, i32* %4, align 4
  br label %576

576:                                              ; preds = %574, %55
  %577 = load i32, i32* %4, align 4
  ret i32 %577
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
