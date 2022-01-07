; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_flanger.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_flanger.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, double*, i32, double*, double, i64, double, double, i64* }
%struct.TYPE_14__ = type { i32, i64* }

@ENOMEM = common dso_local global i32 0, align 4
@INTERPOLATION_LINEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double*, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %6, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = call i64 @av_frame_is_writable(%struct.TYPE_14__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %36, %struct.TYPE_14__** %8, align 8
  br label %57

37:                                               ; preds = %2
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_14__* @ff_get_audio_buffer(i32 %42, i32 %45)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %8, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = call i32 @av_frame_free(%struct.TYPE_14__** %5)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %300

53:                                               ; preds = %37
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = call i32 @av_frame_copy_props(%struct.TYPE_14__* %54, %struct.TYPE_14__* %55)
  br label %57

57:                                               ; preds = %53, %35
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %283, %57
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %286

64:                                               ; preds = %58
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  %72 = sub nsw i32 %71, 1
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = srem i32 %72, %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %269, %64
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %272

85:                                               ; preds = %79
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to double*
  store double* %93, double** %11, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to double*
  store double* %101, double** %12, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = sitofp i32 %110 to double
  %112 = fadd double %111, 5.000000e-01
  %113 = fptosi double %112 to i32
  store i32 %113, i32* %18, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 4
  %116 = load double*, double** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = srem i32 %121, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds double, double* %116, i64 %126
  %128 = load double, double* %127, align 8
  store double %128, double* %19, align 8
  %129 = load double, double* %19, align 8
  %130 = fptosi double %129 to i32
  store i32 %130, i32* %20, align 4
  %131 = load double, double* %19, align 8
  %132 = call double @modf(double %131, double* %19) #3
  store double %132, double* %21, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 11
  %135 = load i64*, i64** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %135, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = inttoptr i64 %139 to double*
  store double* %140, double** %22, align 8
  %141 = load double*, double** %11, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  store double %145, double* %16, align 8
  %146 = load double, double* %16, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 6
  %149 = load double*, double** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 7
  %156 = load double, double* %155, align 8
  %157 = fmul double %153, %156
  %158 = fadd double %146, %157
  %159 = load double*, double** %22, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds double, double* %159, i64 %163
  store double %158, double* %164, align 8
  %165 = load double*, double** %22, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %20, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %20, align 4
  %171 = add nsw i32 %168, %169
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = srem i32 %171, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %165, i64 %176
  %178 = load double, double* %177, align 8
  store double %178, double* %13, align 8
  %179 = load double*, double** %22, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  %185 = add nsw i32 %182, %183
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = srem i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds double, double* %179, i64 %190
  %192 = load double, double* %191, align 8
  store double %192, double* %14, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @INTERPOLATION_LINEAR, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %85
  %199 = load double, double* %13, align 8
  %200 = load double, double* %14, align 8
  %201 = load double, double* %13, align 8
  %202 = fsub double %200, %201
  %203 = load double, double* %21, align 8
  %204 = fmul double %202, %203
  %205 = fadd double %199, %204
  store double %205, double* %15, align 8
  br label %245

206:                                              ; preds = %85
  %207 = load double*, double** %22, align 8
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %20, align 4
  %213 = add nsw i32 %210, %211
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = srem i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, double* %207, i64 %218
  %220 = load double, double* %219, align 8
  store double %220, double* %25, align 8
  %221 = load double, double* %13, align 8
  %222 = load double, double* %25, align 8
  %223 = fsub double %222, %221
  store double %223, double* %25, align 8
  %224 = load double, double* %13, align 8
  %225 = load double, double* %14, align 8
  %226 = fsub double %225, %224
  store double %226, double* %14, align 8
  %227 = load double, double* %25, align 8
  %228 = fmul double %227, 5.000000e-01
  %229 = load double, double* %14, align 8
  %230 = fsub double %228, %229
  store double %230, double* %23, align 8
  %231 = load double, double* %14, align 8
  %232 = fmul double %231, 2.000000e+00
  %233 = load double, double* %25, align 8
  %234 = fmul double %233, 5.000000e-01
  %235 = fsub double %232, %234
  store double %235, double* %24, align 8
  %236 = load double, double* %13, align 8
  %237 = load double, double* %23, align 8
  %238 = load double, double* %21, align 8
  %239 = fmul double %237, %238
  %240 = load double, double* %24, align 8
  %241 = fadd double %239, %240
  %242 = load double, double* %21, align 8
  %243 = fmul double %241, %242
  %244 = fadd double %236, %243
  store double %244, double* %15, align 8
  br label %245

245:                                              ; preds = %206, %198
  %246 = load double, double* %15, align 8
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 6
  %249 = load double*, double** %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %249, i64 %251
  store double %246, double* %252, align 8
  %253 = load double, double* %16, align 8
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 9
  %256 = load double, double* %255, align 8
  %257 = fmul double %253, %256
  %258 = load double, double* %15, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 10
  %261 = load double, double* %260, align 8
  %262 = fmul double %258, %261
  %263 = fadd double %257, %262
  store double %263, double* %17, align 8
  %264 = load double, double* %17, align 8
  %265 = load double*, double** %12, align 8
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %265, i64 %267
  store double %264, double* %268, align 8
  br label %269

269:                                              ; preds = %245
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %79

272:                                              ; preds = %79
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 5
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = srem i32 %276, %279
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 5
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %272
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  br label %58

286:                                              ; preds = %58
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %289 = icmp ne %struct.TYPE_14__* %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = call i32 @av_frame_free(%struct.TYPE_14__** %5)
  br label %292

292:                                              ; preds = %290, %286
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %299 = call i32 @ff_filter_frame(i32 %297, %struct.TYPE_14__* %298)
  store i32 %299, i32* %3, align 4
  br label %300

300:                                              ; preds = %292, %49
  %301 = load i32, i32* %3, align 4
  ret i32 %301
}

declare dso_local i64 @av_frame_is_writable(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @ff_get_audio_buffer(i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_14__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #2

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
