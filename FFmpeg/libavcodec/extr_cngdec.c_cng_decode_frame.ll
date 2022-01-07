; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cngdec.c_cng_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cngdec.c_cng_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32, i32, double*, float*, double*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i64* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_12__*)* @cng_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cng_decode_frame(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %10, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %11, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %12, align 4
  store float 1.000000e+00, float* %16, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %94

32:                                               ; preds = %4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 1.000000e+01
  %42 = fptosi double %41 to i32
  %43 = call i32 @ff_exp10(i32 %42)
  %44 = mul nsw i32 1081109975, %43
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 7.500000e-01
  %47 = fptosi double %46 to i32
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memset(i32* %52, i32 0, i32 %58)
  store i32 0, i32* %14, align 4
  br label %60

60:                                               ; preds = %90, %32
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @FFMIN(i32 %65, i32 %68)
  %70 = icmp slt i32 %61, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %60
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 1, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 127
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %81, 1.280000e+02
  %83 = fptosi double %82 to i32
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %71
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %60

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93, %4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 10, %102
  %104 = icmp sgt i32 %99, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %94
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 4
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %5, align 4
  br label %347

111:                                              ; preds = %94
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %111
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = sdiv i32 %119, 2
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = add nsw i32 %120, %124
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %159, %116
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %128
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 5
  %137 = load double*, double** %136, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  %141 = load double, double* %140, align 8
  %142 = fmul double 6.000000e-01, %141
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sitofp i32 %149 to double
  %151 = fmul double 4.000000e-01, %150
  %152 = fadd double %142, %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 5
  %155 = load double*, double** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds double, double* %155, i64 %157
  store double %152, double* %158, align 8
  br label %159

159:                                              ; preds = %134
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %128

162:                                              ; preds = %128
  br label %185

163:                                              ; preds = %111
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 5
  %171 = load double*, double** %170, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to double*
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memcpy(double* %171, double* %175, i32 %181)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  br label %185

185:                                              ; preds = %163, %162
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 8
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 5
  %191 = load double*, double** %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @make_lpc_coefs(i32 %188, double* %191, i32 %194)
  store i32 0, i32* %14, align 4
  br label %196

196:                                              ; preds = %223, %185
  %197 = load i32, i32* %14, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %226

202:                                              ; preds = %196
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 5
  %205 = load double*, double** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 5
  %212 = load double*, double** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds double, double* %212, i64 %214
  %216 = load double, double* %215, align 8
  %217 = fmul double %209, %216
  %218 = fsub double 1.000000e+00, %217
  %219 = load float, float* %16, align 4
  %220 = fpext float %219 to double
  %221 = fmul double %220, %218
  %222 = fptrunc double %221 to float
  store float %222, float* %16, align 4
  br label %223

223:                                              ; preds = %202
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  br label %196

226:                                              ; preds = %196
  %227 = load float, float* %16, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = sitofp i32 %230 to float
  %232 = fmul float %227, %231
  %233 = fdiv float %232, 0x41D01C1B80000000
  %234 = call float @sqrt(float %233)
  store float %234, float* %17, align 4
  store i32 0, i32* %14, align 4
  br label %235

235:                                              ; preds = %257, %226
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %260

241:                                              ; preds = %235
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 9
  %244 = call i32 @av_lfg_get(i32* %243)
  %245 = and i32 %244, 65535
  %246 = sub nsw i32 %245, 32768
  store i32 %246, i32* %19, align 4
  %247 = load float, float* %17, align 4
  %248 = load i32, i32* %19, align 4
  %249 = sitofp i32 %248 to float
  %250 = fmul float %247, %249
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 6
  %253 = load float*, float** %252, align 8
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  store float %250, float* %256, align 4
  br label %257

257:                                              ; preds = %241
  %258 = load i32, i32* %14, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %14, align 4
  br label %235

260:                                              ; preds = %235
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 7
  %263 = load double*, double** %262, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double, double* %263, i64 %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %272, i32 0, i32 6
  %274 = load float*, float** %273, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @ff_celp_lp_synthesis_filterf(double* %268, i32 %271, float* %274, i32 %277, i32 %280)
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  store i32 %284, i32* %286, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %289 = call i32 @ff_get_buffer(%struct.TYPE_14__* %287, %struct.TYPE_13__* %288, i32 0)
  store i32 %289, i32* %13, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %260
  %292 = load i32, i32* %13, align 4
  store i32 %292, i32* %5, align 4
  br label %347

293:                                              ; preds = %260
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 0
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to i32*
  store i32* %299, i32** %15, align 8
  store i32 0, i32* %14, align 4
  br label %300

300:                                              ; preds = %323, %293
  %301 = load i32, i32* %14, align 4
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp slt i32 %301, %304
  br i1 %305, label %306, label %326

306:                                              ; preds = %300
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 7
  %309 = load double*, double** %308, align 8
  %310 = load i32, i32* %14, align 4
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = add nsw i32 %310, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, double* %309, i64 %315
  %317 = load double, double* %316, align 8
  %318 = call i32 @av_clip_int16(double %317)
  %319 = load i32*, i32** %15, align 8
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %318, i32* %322, align 4
  br label %323

323:                                              ; preds = %306
  %324 = load i32, i32* %14, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %14, align 4
  br label %300

326:                                              ; preds = %300
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 7
  %329 = load double*, double** %328, align 8
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 7
  %332 = load double*, double** %331, align 8
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double, double* %332, i64 %336
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = mul i64 %341, 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 @memcpy(double* %329, double* %337, i32 %343)
  %345 = load i32*, i32** %8, align 8
  store i32 1, i32* %345, align 4
  %346 = load i32, i32* %12, align 4
  store i32 %346, i32* %5, align 4
  br label %347

347:                                              ; preds = %326, %291, %105
  %348 = load i32, i32* %5, align 4
  ret i32 %348
}

declare dso_local i32 @ff_exp10(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcpy(double*, double*, i32) #1

declare dso_local i32 @make_lpc_coefs(i32, double*, i32) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @av_lfg_get(i32*) #1

declare dso_local i32 @ff_celp_lp_synthesis_filterf(double*, i32, float*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @av_clip_int16(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
