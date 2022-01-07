; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_box_variance.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_tld.c__ccv_tld_box_variance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32*, i64* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@CCV_32S = common dso_local global i64 0, align 8
@CCV_64S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_9__*, %struct.TYPE_9__*, i64, i64)* @_ccv_tld_box_variance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_ccv_tld_box_variance(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = bitcast %struct.TYPE_8__* %5 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 4
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %3, i64* %20, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @CCV_GET_DATA_TYPE(i32 %23)
  %25 = load i64, i64* @CCV_32S, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @CCV_GET_DATA_TYPE(i32 %31)
  %33 = load i64, i64* @CCV_64S, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %54, %57
  %59 = add nsw i32 %51, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %48, i64 %60
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %40, %4
  br label %64

64:                                               ; preds = %63, %44
  %65 = phi i32 [ %62, %44 ], [ 0, %63 ]
  store i32 %65, i32* %8, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %75, %77
  %79 = sub nsw i32 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %82, %85
  %87 = add nsw i32 %79, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %73, i64 %88
  %90 = load i32, i32* %89, align 4
  br label %92

91:                                               ; preds = %64
  br label %92

92:                                               ; preds = %91, %69
  %93 = phi i32 [ %90, %69 ], [ 0, %91 ]
  store i32 %93, i32* %9, align 4
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %106, %108
  %110 = sub nsw i32 %109, 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = add nsw i32 %104, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %101, i64 %116
  %118 = load i32, i32* %117, align 4
  br label %120

119:                                              ; preds = %92
  br label %120

120:                                              ; preds = %119, %97
  %121 = phi i32 [ %118, %97 ], [ 0, %119 ]
  store i32 %121, i32* %10, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %127, %129
  %131 = sub nsw i32 %130, 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %133, %135
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = add nsw i32 %131, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %125, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %9, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %150, %151
  %153 = sitofp i32 %152 to double
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %155, %157
  %159 = sitofp i32 %158 to double
  %160 = fdiv double %153, %159
  store double %160, double* %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %187

164:                                              ; preds = %120
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %164
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 1
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 %178, %181
  %183 = add nsw i32 %175, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %172, i64 %184
  %186 = load i64, i64* %185, align 8
  br label %188

187:                                              ; preds = %164, %120
  br label %188

188:                                              ; preds = %187, %168
  %189 = phi i64 [ %186, %168 ], [ 0, %187 ]
  store i64 %189, i64* %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %188
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 1
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %199, %201
  %203 = sub nsw i32 %202, 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 %205, 1
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = mul nsw i32 %206, %209
  %211 = add nsw i32 %203, %210
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %197, i64 %212
  %214 = load i64, i64* %213, align 8
  br label %216

215:                                              ; preds = %188
  br label %216

216:                                              ; preds = %215, %193
  %217 = phi i64 [ %214, %193 ], [ 0, %215 ]
  store i64 %217, i64* %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %243

221:                                              ; preds = %216
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i64*, i64** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %230, %232
  %234 = sub nsw i32 %233, 1
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %234, %237
  %239 = add nsw i32 %228, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %225, i64 %240
  %242 = load i64, i64* %241, align 8
  br label %244

243:                                              ; preds = %216
  br label %244

244:                                              ; preds = %243, %221
  %245 = phi i64 [ %242, %221 ], [ 0, %243 ]
  store i64 %245, i64* %15, align 8
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i64*, i64** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %251, %253
  %255 = sub nsw i32 %254, 1
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %257, %259
  %261 = sub nsw i32 %260, 1
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = mul nsw i32 %261, %264
  %266 = add nsw i32 %255, %265
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %249, i64 %267
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %16, align 8
  %270 = load i64, i64* %16, align 8
  %271 = load i64, i64* %14, align 8
  %272 = sub nsw i64 %270, %271
  %273 = load i64, i64* %15, align 8
  %274 = sub nsw i64 %272, %273
  %275 = load i64, i64* %13, align 8
  %276 = add nsw i64 %274, %275
  %277 = sitofp i64 %276 to double
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %279, %281
  %283 = sitofp i32 %282 to double
  %284 = fdiv double %277, %283
  store double %284, double* %17, align 8
  %285 = load double, double* %17, align 8
  %286 = load double, double* %12, align 8
  %287 = load double, double* %12, align 8
  %288 = fmul double %286, %287
  %289 = fsub double %285, %288
  store double %289, double* %17, align 8
  %290 = load double, double* %17, align 8
  %291 = fcmp oge double %290, 0.000000e+00
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load double, double* %17, align 8
  ret double %294
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CCV_GET_DATA_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
