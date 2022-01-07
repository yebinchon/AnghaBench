; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_filter_channel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afftdn.c_filter_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, float*, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { double*, double, double, double, %struct.TYPE_19__*, i32, i32, i32, i32, i64* }
%struct.TYPE_19__ = type { float, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*, i32, i32)* @filter_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_channel(%struct.TYPE_18__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca float*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %10, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %11, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %39, %41
  %43 = load i32, i32* %8, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %278, %4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %281

50:                                               ; preds = %46
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %15, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to float*
  store float* %64, float** %16, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load double*, double** %66, align 8
  store double* %67, double** %17, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %50
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 511
  store i32 %76, i32* %18, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 9
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load double, double* %87, align 8
  %89 = fadd double %88, -1.000000e+00
  store double %89, double* %87, align 8
  br label %90

90:                                               ; preds = %85, %72
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 9
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 3
  %99 = load double, double* %98, align 8
  %100 = fsub double 1.000000e+00, %99
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load double, double* %102, align 8
  %104 = fmul double %103, %100
  store double %104, double* %102, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load double, double* %106, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load double, double* %109, align 8
  %111 = fmul double 1.562500e-03, %110
  %112 = fadd double 5.000000e-01, %111
  %113 = fmul double %107, %112
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load double, double* %115, align 8
  %117 = fadd double %116, %113
  store double %117, double* %115, align 8
  br label %118

118:                                              ; preds = %90, %50
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %154, %118
  %120 = load i32, i32* %19, align 4
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %119
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load float*, float** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %128, i64 %130
  %132 = load float, float* %131, align 4
  %133 = load float*, float** %16, align 8
  %134 = load i32, i32* %19, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fmul float %132, %137
  %139 = fmul float %138, 0x4170000000000000
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  store float %139, float* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %125
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %119

157:                                              ; preds = %119
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %20, align 4
  br label %161

161:                                              ; preds = %182, %157
  %162 = load i32, i32* %20, align 4
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %161
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  store float 0.000000e+00, float* %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = load i32, i32* %20, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %167
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  br label %161

185:                                              ; preds = %161
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %190, align 8
  %192 = call i32 @av_fft_permute(i32 %188, %struct.TYPE_19__* %191)
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %197, align 8
  %199 = call i32 @av_fft_calc(i32 %195, %struct.TYPE_19__* %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @preprocess(%struct.TYPE_19__* %202, i32 %205)
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %210, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @process_frame(%struct.TYPE_16__* %207, %struct.TYPE_15__* %208, %struct.TYPE_19__* %211, i32 %214, i32 %217, i32 %220)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @postprocess(%struct.TYPE_19__* %224, i32 %227)
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = call i32 @av_fft_permute(i32 %231, %struct.TYPE_19__* %234)
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %240, align 8
  %242 = call i32 @av_fft_calc(i32 %238, %struct.TYPE_19__* %241)
  store i32 0, i32* %21, align 4
  br label %243

243:                                              ; preds = %274, %185
  %244 = load i32, i32* %21, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %277

249:                                              ; preds = %243
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 2
  %252 = load float*, float** %251, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds float, float* %252, i64 %254
  %256 = load float, float* %255, align 4
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %258, align 8
  %260 = load i32, i32* %21, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = fmul float %256, %264
  %266 = fdiv float %265, 0x4170000000000000
  %267 = fpext float %266 to double
  %268 = load double*, double** %17, align 8
  %269 = load i32, i32* %21, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds double, double* %268, i64 %270
  %272 = load double, double* %271, align 8
  %273 = fadd double %272, %267
  store double %273, double* %271, align 8
  br label %274

274:                                              ; preds = %249
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %243

277:                                              ; preds = %243
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %14, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %14, align 4
  br label %46

281:                                              ; preds = %46
  ret i32 0
}

declare dso_local i32 @av_fft_permute(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @av_fft_calc(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @preprocess(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @process_frame(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @postprocess(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
