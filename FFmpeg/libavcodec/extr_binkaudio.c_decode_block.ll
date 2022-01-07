; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_binkaudio.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, double, i32, i32, i32*, i32, i32**, i64, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, double*)* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, double*)* }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@quant_table = common dso_local global float* null, align 8
@rle_length_tab = common dso_local global i32* null, align 8
@CONFIG_BINKAUDIO_DCT_DECODER = common dso_local global i64 0, align 8
@CONFIG_BINKAUDIO_RDFT_DECODER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, float**, i32)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(%struct.TYPE_7__* %0, float** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca [25 x float], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store float** %1, float*** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 10
  store i32* %24, i32** %16, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @skip_bits(i32* %28, i32 2)
  br label %30

30:                                               ; preds = %27, %3
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %306, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %309

37:                                               ; preds = %31
  %38 = load float**, float*** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float*, float** %38, i64 %40
  %42 = load float*, float** %41, align 8
  %43 = bitcast float* %42 to double*
  store double* %43, double** %17, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 9
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %37
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @get_bits_left(i32* %49)
  %51 = icmp slt i32 %50, 64
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %4, align 4
  br label %421

54:                                               ; preds = %48
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @get_bits_long(i32* %55, i32 32)
  %57 = call double @av_int2float(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load double, double* %59, align 8
  %61 = fmul double %57, %60
  %62 = load double*, double** %17, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  store double %61, double* %63, align 8
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @get_bits_long(i32* %64, i32 32)
  %66 = call double @av_int2float(i32 %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load double, double* %68, align 8
  %70 = fmul double %66, %69
  %71 = load double*, double** %17, align 8
  %72 = getelementptr inbounds double, double* %71, i64 1
  store double %70, double* %72, align 8
  br label %96

73:                                               ; preds = %37
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @get_bits_left(i32* %74)
  %76 = icmp slt i32 %75, 58
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %78, i32* %4, align 4
  br label %421

79:                                               ; preds = %73
  %80 = load i32*, i32** %16, align 8
  %81 = call double @get_float(i32* %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load double, double* %83, align 8
  %85 = fmul double %81, %84
  %86 = load double*, double** %17, align 8
  %87 = getelementptr inbounds double, double* %86, i64 0
  store double %85, double* %87, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = call double @get_float(i32* %88)
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fmul double %89, %92
  %94 = load double*, double** %17, align 8
  %95 = getelementptr inbounds double, double* %94, i64 1
  store double %93, double* %95, align 8
  br label %96

96:                                               ; preds = %79, %54
  %97 = load i32*, i32** %16, align 8
  %98 = call i32 @get_bits_left(i32* %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 8
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %4, align 4
  br label %421

106:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %124, %106
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %107
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @get_bits(i32* %114, i32 8)
  store i32 %115, i32* %18, align 4
  %116 = load float*, float** @quant_table, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i64 @FFMIN(i32 %117, i32 95)
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [25 x float], [25 x float]* %13, i64 0, i64 %122
  store float %120, float* %123, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %107

127:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  %128 = getelementptr inbounds [25 x float], [25 x float]* %13, i64 0, i64 0
  %129 = load float, float* %128, align 16
  store float %129, float* %12, align 4
  store i32 2, i32* %9, align 4
  br label %130

130:                                              ; preds = %268, %127
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %269

136:                                              ; preds = %130
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 16
  store i32 %143, i32* %10, align 4
  br label %164

144:                                              ; preds = %136
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @get_bits1(i32* %145)
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = load i32*, i32** %16, align 8
  %151 = call i32 @get_bits(i32* %150, i32 4)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32*, i32** @rle_length_tab, align 8
  %154 = load i32, i32* %19, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %157, 8
  %159 = add nsw i32 %152, %158
  store i32 %159, i32* %10, align 4
  br label %163

160:                                              ; preds = %144
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 8
  store i32 %162, i32* %10, align 4
  br label %163

163:                                              ; preds = %160, %149
  br label %164

164:                                              ; preds = %163, %141
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @FFMIN(i32 %165, i32 %168)
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %10, align 4
  %171 = load i32*, i32** %16, align 8
  %172 = call i32 @get_bits(i32* %171, i32 4)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %205

175:                                              ; preds = %164
  %176 = load double*, double** %17, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* %9, align 4
  %182 = sub nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 @memset(double* %179, i32 0, i32 %185)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %9, align 4
  br label %188

188:                                              ; preds = %198, %175
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %188
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds [25 x float], [25 x float]* %13, i64 0, i64 %201
  %203 = load float, float* %202, align 4
  store float %203, float* %12, align 4
  br label %188

204:                                              ; preds = %188
  br label %268

205:                                              ; preds = %164
  br label %206

206:                                              ; preds = %264, %205
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %267

210:                                              ; preds = %206
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 4
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %11, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %210
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %11, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds [25 x float], [25 x float]* %13, i64 0, i64 %223
  %225 = load float, float* %224, align 4
  store float %225, float* %12, align 4
  br label %226

226:                                              ; preds = %220, %210
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @get_bits(i32* %227, i32 %228)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %259

232:                                              ; preds = %226
  %233 = load i32*, i32** %16, align 8
  %234 = call i32 @get_bits1(i32* %233)
  store i32 %234, i32* %20, align 4
  %235 = load i32, i32* %20, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %248

237:                                              ; preds = %232
  %238 = load float, float* %12, align 4
  %239 = fneg float %238
  %240 = load i32, i32* %15, align 4
  %241 = sitofp i32 %240 to float
  %242 = fmul float %239, %241
  %243 = fpext float %242 to double
  %244 = load double*, double** %17, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %244, i64 %246
  store double %243, double* %247, align 8
  br label %258

248:                                              ; preds = %232
  %249 = load float, float* %12, align 4
  %250 = load i32, i32* %15, align 4
  %251 = sitofp i32 %250 to float
  %252 = fmul float %249, %251
  %253 = fpext float %252 to double
  %254 = load double*, double** %17, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds double, double* %254, i64 %256
  store double %253, double* %257, align 8
  br label %258

258:                                              ; preds = %248, %237
  br label %264

259:                                              ; preds = %226
  %260 = load double*, double** %17, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  store double 0.000000e+00, double* %263, align 8
  br label %264

264:                                              ; preds = %259, %258
  %265 = load i32, i32* %9, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %9, align 4
  br label %206

267:                                              ; preds = %206
  br label %268

268:                                              ; preds = %267, %204
  br label %130

269:                                              ; preds = %130
  %270 = load i64, i64* @CONFIG_BINKAUDIO_DCT_DECODER, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %290

272:                                              ; preds = %269
  %273 = load i32, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load double*, double** %17, align 8
  %277 = getelementptr inbounds double, double* %276, i64 0
  %278 = load double, double* %277, align 8
  %279 = fdiv double %278, 5.000000e-01
  store double %279, double* %277, align 8
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32 (%struct.TYPE_9__*, double*)*, i32 (%struct.TYPE_9__*, double*)** %283, align 8
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  %288 = load double*, double** %17, align 8
  %289 = call i32 %284(%struct.TYPE_9__* %287, double* %288)
  br label %305

290:                                              ; preds = %272, %269
  %291 = load i64, i64* @CONFIG_BINKAUDIO_RDFT_DECODER, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %290
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i32 (%struct.TYPE_8__*, double*)*, i32 (%struct.TYPE_8__*, double*)** %297, align 8
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = load double*, double** %17, align 8
  %303 = call i32 %298(%struct.TYPE_8__* %301, double* %302)
  br label %304

304:                                              ; preds = %293, %290
  br label %305

305:                                              ; preds = %304, %275
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %8, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %8, align 4
  br label %31

309:                                              ; preds = %31
  store i32 0, i32* %8, align 4
  br label %310

310:                                              ; preds = %415, %309
  %311 = load i32, i32* %8, align 4
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %418

316:                                              ; preds = %310
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = mul nsw i32 %319, %322
  store i32 %323, i32* %22, align 4
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 7
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %386, label %328

328:                                              ; preds = %316
  %329 = load i32, i32* %8, align 4
  store i32 %329, i32* %21, align 4
  store i32 0, i32* %9, align 4
  br label %330

330:                                              ; preds = %377, %328
  %331 = load i32, i32* %9, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 8
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %385

336:                                              ; preds = %330
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 6
  %339 = load i32**, i32*** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32*, i32** %339, i64 %341
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %22, align 4
  %349 = load i32, i32* %21, align 4
  %350 = sub nsw i32 %348, %349
  %351 = mul nsw i32 %347, %350
  %352 = sitofp i32 %351 to float
  %353 = load float**, float*** %6, align 8
  %354 = load i32, i32* %8, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float*, float** %353, i64 %355
  %357 = load float*, float** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds float, float* %357, i64 %359
  %361 = load float, float* %360, align 4
  %362 = load i32, i32* %21, align 4
  %363 = sitofp i32 %362 to float
  %364 = fmul float %361, %363
  %365 = fadd float %352, %364
  %366 = load i32, i32* %22, align 4
  %367 = sitofp i32 %366 to float
  %368 = fdiv float %365, %367
  %369 = load float**, float*** %6, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float*, float** %369, i64 %371
  %373 = load float*, float** %372, align 8
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %373, i64 %375
  store float %368, float* %376, align 4
  br label %377

377:                                              ; preds = %336
  %378 = load i32, i32* %9, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %9, align 4
  %380 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %21, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %21, align 4
  br label %330

385:                                              ; preds = %330
  br label %386

386:                                              ; preds = %385, %316
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 6
  %389 = load i32**, i32*** %388, align 8
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32*, i32** %389, i64 %391
  %393 = load i32*, i32** %392, align 8
  %394 = load float**, float*** %6, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float*, float** %394, i64 %396
  %398 = load float*, float** %397, align 8
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 5
  %404 = load i32, i32* %403, align 8
  %405 = sub nsw i32 %401, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %398, i64 %406
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 5
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = mul i64 %411, 4
  %413 = trunc i64 %412 to i32
  %414 = call i32 @memcpy(i32* %393, float* %407, i32 %413)
  br label %415

415:                                              ; preds = %386
  %416 = load i32, i32* %8, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %8, align 4
  br label %310

418:                                              ; preds = %310
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 7
  store i64 0, i64* %420, align 8
  store i32 0, i32* %4, align 4
  br label %421

421:                                              ; preds = %418, %104, %77, %52
  %422 = load i32, i32* %4, align 4
  ret i32 %422
}

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local double @av_int2float(i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local double @get_float(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @memset(double*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
