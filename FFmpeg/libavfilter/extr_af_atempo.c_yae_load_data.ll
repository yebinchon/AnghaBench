; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_load_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_atempo.c_yae_load_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, double, i32, i32, i32, i32, i32* }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32**, i32*, i64)* @yae_load_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yae_load_data(%struct.TYPE_3__* %0, i32** %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %20, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %294

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load double, double* %44, align 8
  %46 = fcmp ogt double %45, 2.000000e+00
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi i1 [ true, %36 ], [ %46, %42 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @av_assert0(i32 %49)
  br label %51

51:                                               ; preds = %268, %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ult i32* %60, %61
  br label %63

63:                                               ; preds = %59, %51
  %64 = phi i1 [ false, %51 ], [ %62, %59 ]
  br i1 %64, label %65, label %269

65:                                               ; preds = %63
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sdiv i64 %71, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i8* @FFMIN(i32 %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i8* @FFMIN(i32 %82, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = call i8* @FFMIN(i32 %88, i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @FFMIN(i32 %100, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %191

108:                                              ; preds = %65
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 7
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %111, i64 %119
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %16, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %123, %126
  %128 = call i32 @memcpy(i32* %121, i32* %122, i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %129, %132
  %134 = load i32*, i32** %10, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32* %136, i32** %10, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %138
  store i64 %144, i64* %142, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i8* @FFMIN(i32 %149, i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %159, %160
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = srem i32 %161, %164
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %108
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  br label %187

183:                                              ; preds = %108
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  br label %187

187:                                              ; preds = %183, %175
  %188 = phi i32 [ %182, %175 ], [ %186, %183 ]
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %65
  %192 = load i32, i32* %15, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %268

194:                                              ; preds = %191
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %17, align 8
  %198 = load i32*, i32** %17, align 8
  %199 = load i32*, i32** %10, align 8
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 %200, %203
  %205 = call i32 @memcpy(i32* %198, i32* %199, i32 %204)
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = mul nsw i32 %206, %209
  %211 = load i32*, i32** %10, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32* %213, i32** %10, align 8
  %214 = load i32, i32* %15, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, %215
  store i64 %221, i64* %219, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %15, align 4
  %226 = add nsw i32 %224, %225
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i8* @FFMIN(i32 %226, i32 %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %15, align 4
  %238 = add nsw i32 %236, %237
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = srem i32 %238, %241
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 4
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %194
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %255, %258
  br label %264

260:                                              ; preds = %194
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  br label %264

264:                                              ; preds = %260, %252
  %265 = phi i32 [ %259, %252 ], [ %263, %260 ]
  %266 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %266, i32 0, i32 6
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %264, %191
  br label %51

269:                                              ; preds = %63
  %270 = load i32*, i32** %10, align 8
  %271 = load i32**, i32*** %7, align 8
  store i32* %270, i32** %271, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 0
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* %9, align 8
  %278 = icmp sle i64 %276, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @av_assert0(i32 %279)
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %9, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %269
  br label %292

289:                                              ; preds = %269
  %290 = load i32, i32* @EAGAIN, align 4
  %291 = call i32 @AVERROR(i32 %290)
  br label %292

292:                                              ; preds = %289, %288
  %293 = phi i32 [ 0, %288 ], [ %291, %289 ]
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %292, %35
  %295 = load i32, i32* %5, align 4
  ret i32 %295
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
