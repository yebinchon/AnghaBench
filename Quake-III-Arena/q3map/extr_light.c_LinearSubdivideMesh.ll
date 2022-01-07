; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LinearSubdivideMesh.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_light.c_LinearSubdivideMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { double*, double* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @LinearSubdivideMesh(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = call i8* @malloc(i32 16)
  %10 = bitcast i8* %9 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 %13, 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 16
  %31 = trunc i64 %30 to i32
  %32 = call i8* @malloc(i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_7__*
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %360, %1
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %363

42:                                               ; preds = %36
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %46, %49
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %61, 0
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %63
  %65 = bitcast %struct.TYPE_7__* %53 to i8*
  %66 = bitcast %struct.TYPE_7__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %80
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %95
  %97 = bitcast %struct.TYPE_7__* %81 to i8*
  %98 = bitcast %struct.TYPE_7__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %356, %42
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %100, %104
  br i1 %105, label %106, label %359

106:                                              ; preds = %99
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %115
  %117 = load i32, i32* %3, align 4
  %118 = ashr i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %119
  store %struct.TYPE_7__* %120, %struct.TYPE_7__** %6, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 1
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %7, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i64 %131
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %8, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load double*, double** %137, align 8
  %139 = getelementptr inbounds double, double* %138, i64 0
  %140 = load double, double* %139, align 8
  %141 = fmul double 7.500000e-01, %140
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load double*, double** %143, align 8
  %145 = getelementptr inbounds double, double* %144, i64 0
  %146 = load double, double* %145, align 8
  %147 = fmul double 2.500000e-01, %146
  %148 = fadd double %141, %147
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load double*, double** %150, align 8
  %152 = getelementptr inbounds double, double* %151, i64 0
  store double %148, double* %152, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load double*, double** %154, align 8
  %156 = getelementptr inbounds double, double* %155, i64 1
  %157 = load double, double* %156, align 8
  %158 = fmul double 7.500000e-01, %157
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load double*, double** %160, align 8
  %162 = getelementptr inbounds double, double* %161, i64 1
  %163 = load double, double* %162, align 8
  %164 = fmul double 2.500000e-01, %163
  %165 = fadd double %158, %164
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load double*, double** %167, align 8
  %169 = getelementptr inbounds double, double* %168, i64 1
  store double %165, double* %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load double*, double** %171, align 8
  %173 = getelementptr inbounds double, double* %172, i64 2
  %174 = load double, double* %173, align 8
  %175 = fmul double 7.500000e-01, %174
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load double*, double** %177, align 8
  %179 = getelementptr inbounds double, double* %178, i64 2
  %180 = load double, double* %179, align 8
  %181 = fmul double 2.500000e-01, %180
  %182 = fadd double %175, %181
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load double*, double** %184, align 8
  %186 = getelementptr inbounds double, double* %185, i64 2
  store double %182, double* %186, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load double*, double** %188, align 8
  %190 = getelementptr inbounds double, double* %189, i64 0
  %191 = load double, double* %190, align 8
  %192 = fmul double 7.500000e-01, %191
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load double*, double** %194, align 8
  %196 = getelementptr inbounds double, double* %195, i64 0
  %197 = load double, double* %196, align 8
  %198 = fmul double 2.500000e-01, %197
  %199 = fadd double %192, %198
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load double*, double** %201, align 8
  %203 = getelementptr inbounds double, double* %202, i64 0
  store double %199, double* %203, align 8
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load double*, double** %205, align 8
  %207 = getelementptr inbounds double, double* %206, i64 1
  %208 = load double, double* %207, align 8
  %209 = fmul double 7.500000e-01, %208
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load double*, double** %211, align 8
  %213 = getelementptr inbounds double, double* %212, i64 1
  %214 = load double, double* %213, align 8
  %215 = fmul double 2.500000e-01, %214
  %216 = fadd double %209, %215
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds double, double* %219, i64 1
  store double %216, double* %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load double*, double** %222, align 8
  %224 = getelementptr inbounds double, double* %223, i64 2
  %225 = load double, double* %224, align 8
  %226 = fmul double 7.500000e-01, %225
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load double*, double** %228, align 8
  %230 = getelementptr inbounds double, double* %229, i64 2
  %231 = load double, double* %230, align 8
  %232 = fmul double 2.500000e-01, %231
  %233 = fadd double %226, %232
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load double*, double** %235, align 8
  %237 = getelementptr inbounds double, double* %236, i64 2
  store double %233, double* %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load double*, double** %239, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 1
  %243 = load double*, double** %242, align 8
  %244 = call i32 @VectorNormalize(double* %240, double* %243)
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 1
  store %struct.TYPE_7__* %246, %struct.TYPE_7__** %8, align 8
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load double*, double** %248, align 8
  %250 = getelementptr inbounds double, double* %249, i64 0
  %251 = load double, double* %250, align 8
  %252 = fmul double 2.500000e-01, %251
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load double*, double** %254, align 8
  %256 = getelementptr inbounds double, double* %255, i64 0
  %257 = load double, double* %256, align 8
  %258 = fmul double 7.500000e-01, %257
  %259 = fadd double %252, %258
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load double*, double** %261, align 8
  %263 = getelementptr inbounds double, double* %262, i64 0
  store double %259, double* %263, align 8
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load double*, double** %265, align 8
  %267 = getelementptr inbounds double, double* %266, i64 1
  %268 = load double, double* %267, align 8
  %269 = fmul double 2.500000e-01, %268
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 0
  %272 = load double*, double** %271, align 8
  %273 = getelementptr inbounds double, double* %272, i64 1
  %274 = load double, double* %273, align 8
  %275 = fmul double 7.500000e-01, %274
  %276 = fadd double %269, %275
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load double*, double** %278, align 8
  %280 = getelementptr inbounds double, double* %279, i64 1
  store double %276, double* %280, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load double*, double** %282, align 8
  %284 = getelementptr inbounds double, double* %283, i64 2
  %285 = load double, double* %284, align 8
  %286 = fmul double 2.500000e-01, %285
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load double*, double** %288, align 8
  %290 = getelementptr inbounds double, double* %289, i64 2
  %291 = load double, double* %290, align 8
  %292 = fmul double 7.500000e-01, %291
  %293 = fadd double %286, %292
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load double*, double** %295, align 8
  %297 = getelementptr inbounds double, double* %296, i64 2
  store double %293, double* %297, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = load double*, double** %299, align 8
  %301 = getelementptr inbounds double, double* %300, i64 0
  %302 = load double, double* %301, align 8
  %303 = fmul double 2.500000e-01, %302
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load double*, double** %305, align 8
  %307 = getelementptr inbounds double, double* %306, i64 0
  %308 = load double, double* %307, align 8
  %309 = fmul double 7.500000e-01, %308
  %310 = fadd double %303, %309
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load double*, double** %312, align 8
  %314 = getelementptr inbounds double, double* %313, i64 0
  store double %310, double* %314, align 8
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = load double*, double** %316, align 8
  %318 = getelementptr inbounds double, double* %317, i64 1
  %319 = load double, double* %318, align 8
  %320 = fmul double 2.500000e-01, %319
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 1
  %323 = load double*, double** %322, align 8
  %324 = getelementptr inbounds double, double* %323, i64 1
  %325 = load double, double* %324, align 8
  %326 = fmul double 7.500000e-01, %325
  %327 = fadd double %320, %326
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 1
  %330 = load double*, double** %329, align 8
  %331 = getelementptr inbounds double, double* %330, i64 1
  store double %327, double* %331, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = load double*, double** %333, align 8
  %335 = getelementptr inbounds double, double* %334, i64 2
  %336 = load double, double* %335, align 8
  %337 = fmul double 2.500000e-01, %336
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = load double*, double** %339, align 8
  %341 = getelementptr inbounds double, double* %340, i64 2
  %342 = load double, double* %341, align 8
  %343 = fmul double 7.500000e-01, %342
  %344 = fadd double %337, %343
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 1
  %347 = load double*, double** %346, align 8
  %348 = getelementptr inbounds double, double* %347, i64 2
  store double %344, double* %348, align 8
  %349 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %349, i32 0, i32 1
  %351 = load double*, double** %350, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 1
  %354 = load double*, double** %353, align 8
  %355 = call i32 @VectorNormalize(double* %351, double* %354)
  br label %356

356:                                              ; preds = %106
  %357 = load i32, i32* %3, align 4
  %358 = add nsw i32 %357, 2
  store i32 %358, i32* %3, align 4
  br label %99

359:                                              ; preds = %99
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %4, align 4
  br label %36

363:                                              ; preds = %36
  %364 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %365 = call i32 @FreeMesh(%struct.TYPE_6__* %364)
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %366
}

declare dso_local i8* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VectorNormalize(double*, double*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
