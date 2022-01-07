; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_fft_tone_synthesizer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_qdm2_fft_tone_synthesizer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__, i64, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32, i32, i64, double, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_15__** }
%struct.TYPE_15__ = type { float, float }
%struct.TYPE_14__ = type { i32, double, i32, i32, i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { float, float }

@M_PI = common dso_local global double 0.000000e+00, align 8
@fft_tone_level_table = common dso_local global double** null, align 8
@fft_tone_sample_table = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @qdm2_fft_tone_synthesizer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdm2_fft_tone_synthesizer(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load double, double* @M_PI, align 8
  %15 = fmul double 2.500000e-01, %14
  store double %15, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %38, %2
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %26, i64 %28
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(%struct.TYPE_15__* %30, i32 0, i32 %36)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %254

48:                                               ; preds = %41
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %250, %48
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %55, %60
  br i1 %61, label %62, label %253

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %253

74:                                               ; preds = %62
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %89

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 7
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %80, %79
  %90 = phi i32 [ 0, %79 ], [ %88, %80 ]
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %123

101:                                              ; preds = %89
  %102 = load double**, double*** @fft_tone_level_table, align 8
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 0, i32 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double*, double** %102, i64 %109
  %111 = load double*, double** %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = and i64 %119, 63
  %121 = getelementptr inbounds double, double* %111, i64 %120
  %122 = load double, double* %121, align 8
  br label %123

123:                                              ; preds = %101, %100
  %124 = phi double [ 0.000000e+00, %100 ], [ %122, %101 ]
  %125 = fptrunc double %124 to float
  store float %125, float* %9, align 4
  %126 = load float, float* %9, align 4
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = load double, double* %133, align 8
  %135 = load double, double* %8, align 8
  %136 = fmul double %134, %135
  %137 = call float @cos(double %136)
  %138 = fmul float %126, %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store float %138, float* %139, align 4
  %140 = load float, float* %9, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load double, double* %147, align 8
  %149 = load double, double* %8, align 8
  %150 = fmul double %148, %149
  %151 = call float @sin(double %150)
  %152 = fmul float %140, %151
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store float %152, float* %153, align 4
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %155 = load float, float* %154, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %159, i64 %161
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 0
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load float, float* %175, align 4
  %177 = fadd float %176, %155
  store float %177, float* %175, align 4
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %179 = load float, float* %178, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %182, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %183, i64 %185
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %189, align 8
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 0
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load float, float* %199, align 4
  %201 = fadd float %200, %179
  store float %201, float* %199, align 4
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %203 = load float, float* %202, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %207, i64 %209
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load float, float* %223, align 4
  %225 = fsub float %224, %203
  store float %225, float* %223, align 4
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %227 = load float, float* %226, align 4
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %231, i64 %233
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 7
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 1
  %248 = load float, float* %247, align 4
  %249 = fsub float %248, %227
  store float %249, float* %247, align 4
  br label %250

250:                                              ; preds = %123
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %54

253:                                              ; preds = %73, %54
  br label %254

254:                                              ; preds = %253, %41
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  store i32 %257, i32* %5, align 4
  br label %258

258:                                              ; preds = %264, %254
  %259 = load i32, i32* %5, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %259, %262
  br i1 %263, label %264, label %282

264:                                              ; preds = %258
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 10
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %267, align 8
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i64 %272
  %274 = call i32 @qdm2_fft_generate_tone(%struct.TYPE_12__* %265, %struct.TYPE_14__* %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  %279 = srem i32 %278, 1000
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 4
  br label %258

282:                                              ; preds = %258
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %488, %282
  %284 = load i32, i32* %5, align 4
  %285 = icmp slt i32 %284, 4
  br i1 %285, label %286, label %491

286:                                              ; preds = %283
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp sge i32 %293, 0
  br i1 %294, label %295, label %487

295:                                              ; preds = %286
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %476, %295
  %304 = load i32, i32* %6, align 4
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp slt i32 %304, %311
  br i1 %312, label %313, label %479

313:                                              ; preds = %303
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 7
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %315, align 8
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* %4, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %325

324:                                              ; preds = %313
  br label %479

325:                                              ; preds = %313
  %326 = load i32, i32* %5, align 4
  %327 = sub nsw i32 4, %326
  store i32 %327, i32* %12, align 4
  %328 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 7
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = ashr i32 %335, %336
  store i32 %337, i32* %11, align 4
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %343

342:                                              ; preds = %325
  br label %352

343:                                              ; preds = %325
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 7
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %6, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  br label %352

352:                                              ; preds = %343, %342
  %353 = phi i32 [ 0, %342 ], [ %351, %343 ]
  store i32 %353, i32* %7, align 4
  %354 = load i32, i32* %11, align 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %475

359:                                              ; preds = %352
  %360 = load i32, i32* %11, align 4
  %361 = icmp slt i32 %360, 2
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i32, i32* %11, align 4
  %364 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 %363, i32* %364, align 8
  br label %371

365:                                              ; preds = %359
  %366 = load i32, i32* %11, align 4
  %367 = icmp sge i32 %366, 60
  %368 = zext i1 %367 to i64
  %369 = select i1 %367, i32 3, i32 2
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32 %369, i32* %370, align 8
  br label %371

371:                                              ; preds = %365, %362
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 7
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %373, align 8
  %375 = load i32, i32* %6, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = icmp slt i64 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %371
  br label %404

382:                                              ; preds = %371
  %383 = load double**, double*** @fft_tone_level_table, align 8
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 9
  %386 = load i64, i64* %385, align 8
  %387 = icmp ne i64 %386, 0
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i32 0, i32 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds double*, double** %383, i64 %390
  %392 = load double*, double** %391, align 8
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 7
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %394, align 8
  %396 = load i32, i32* %6, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 2
  %400 = load i64, i64* %399, align 8
  %401 = and i64 %400, 63
  %402 = getelementptr inbounds double, double* %392, i64 %401
  %403 = load double, double* %402, align 8
  br label %404

404:                                              ; preds = %382, %381
  %405 = phi double [ 0.000000e+00, %381 ], [ %403, %382 ]
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store double %405, double* %406, align 8
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 8
  %409 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %409, align 8
  %411 = load i32, i32* %7, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %410, i64 %412
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %413, align 8
  %415 = load i32, i32* %11, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i64 %416
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 7
  store %struct.TYPE_15__* %417, %struct.TYPE_15__** %418, align 8
  %419 = load i32**, i32*** @fft_tone_sample_table, align 8
  %420 = load i32, i32* %5, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32*, i32** %419, i64 %421
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %424, i32 0, i32 7
  %426 = load %struct.TYPE_11__*, %struct.TYPE_11__** %425, align 8
  %427 = load i32, i32* %6, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 4
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %11, align 4
  %433 = load i32, i32* %12, align 4
  %434 = shl i32 %432, %433
  %435 = sub nsw i32 %431, %434
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %423, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 6
  store i32 %438, i32* %439, align 8
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 7
  %442 = load %struct.TYPE_11__*, %struct.TYPE_11__** %441, align 8
  %443 = load i32, i32* %6, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %442, i64 %444
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 3
  %447 = load double, double* %446, align 8
  %448 = fmul double 6.400000e+01, %447
  %449 = load i32, i32* %11, align 4
  %450 = shl i32 %449, 8
  %451 = sitofp i32 %450 to double
  %452 = fsub double %448, %451
  %453 = fsub double %452, 1.280000e+02
  %454 = fptosi double %453 to i32
  %455 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %454, i32* %455, align 8
  %456 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 7
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** %457, align 8
  %459 = load i32, i32* %6, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = mul nsw i32 2, %463
  %465 = add nsw i32 %464, 1
  %466 = load i32, i32* %12, align 4
  %467 = sub nsw i32 7, %466
  %468 = shl i32 %465, %467
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 3
  store i32 %468, i32* %469, align 4
  %470 = load i32, i32* %5, align 4
  %471 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  store i32 %470, i32* %471, align 8
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 5
  store i64 0, i64* %472, align 8
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %474 = call i32 @qdm2_fft_generate_tone(%struct.TYPE_12__* %473, %struct.TYPE_14__* %13)
  br label %475

475:                                              ; preds = %404, %352
  br label %476

476:                                              ; preds = %475
  %477 = load i32, i32* %6, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %6, align 4
  br label %303

479:                                              ; preds = %324, %303
  %480 = load i32, i32* %6, align 4
  %481 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %482 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %5, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  store i32 %480, i32* %486, align 4
  br label %487

487:                                              ; preds = %479, %286
  br label %488

488:                                              ; preds = %487
  %489 = load i32, i32* %5, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %5, align 4
  br label %283

491:                                              ; preds = %283
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local float @cos(double) #1

declare dso_local float @sin(double) #1

declare dso_local i32 @qdm2_fft_generate_tone(%struct.TYPE_12__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
