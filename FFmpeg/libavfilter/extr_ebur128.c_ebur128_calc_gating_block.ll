; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_calc_gating_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_ebur128.c_ebur128_calc_gating_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, i64, double*, i64, i32* }

@FF_EBUR128_UNUSED = common dso_local global i64 0, align 8
@FF_EBUR128_Mp110 = common dso_local global i64 0, align 8
@FF_EBUR128_Mm110 = common dso_local global i64 0, align 8
@FF_EBUR128_Mp060 = common dso_local global i64 0, align 8
@FF_EBUR128_Mm060 = common dso_local global i64 0, align 8
@FF_EBUR128_Mp090 = common dso_local global i64 0, align 8
@FF_EBUR128_Mm090 = common dso_local global i64 0, align 8
@FF_EBUR128_DUAL_MONO = common dso_local global i64 0, align 8
@histogram_energy_boundaries = common dso_local global double* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64, double*)* @ebur128_calc_gating_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ebur128_calc_gating_block(%struct.TYPE_5__* %0, i64 %1, double* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store double* %2, double** %6, align 8
  store double 0.000000e+00, double* %9, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %299, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %302

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FF_EBUR128_UNUSED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %299

29:                                               ; preds = %17
  store double 0.000000e+00, double* %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = mul i64 %35, %38
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %151

41:                                               ; preds = %29
  store i64 0, i64* %7, align 8
  br label %42

42:                                               ; preds = %86, %41
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %48, %51
  %53 = icmp ult i64 %43, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %42
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load double*, double** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %60, %63
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %64, %65
  %67 = getelementptr inbounds double, double* %59, i64 %66
  %68 = load double, double* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load double*, double** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %74, %77
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %78, %79
  %81 = getelementptr inbounds double, double* %73, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fmul double %68, %82
  %84 = load double, double* %10, align 8
  %85 = fadd double %84, %83
  store double %85, double* %10, align 8
  br label %86

86:                                               ; preds = %54
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  br label %42

89:                                               ; preds = %42
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = udiv i64 %100, %103
  %105 = sub i64 %95, %104
  %106 = sub i64 %94, %105
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %147, %89
  %108 = load i64, i64* %7, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %108, %113
  br i1 %114, label %115, label %150

115:                                              ; preds = %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load double*, double** %119, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 %121, %124
  %126 = load i64, i64* %8, align 8
  %127 = add i64 %125, %126
  %128 = getelementptr inbounds double, double* %120, i64 %127
  %129 = load double, double* %128, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load double*, double** %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = mul i64 %135, %138
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %139, %140
  %142 = getelementptr inbounds double, double* %134, i64 %141
  %143 = load double, double* %142, align 8
  %144 = fmul double %129, %143
  %145 = load double, double* %10, align 8
  %146 = fadd double %145, %144
  store double %146, double* %10, align 8
  br label %147

147:                                              ; preds = %115
  %148 = load i64, i64* %7, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %7, align 8
  br label %107

150:                                              ; preds = %107
  br label %211

151:                                              ; preds = %29
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = udiv i64 %156, %159
  %161 = load i64, i64* %5, align 8
  %162 = sub i64 %160, %161
  store i64 %162, i64* %7, align 8
  br label %163

163:                                              ; preds = %207, %151
  %164 = load i64, i64* %7, align 8
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = udiv i64 %169, %172
  %174 = icmp ult i64 %164, %173
  br i1 %174, label %175, label %210

175:                                              ; preds = %163
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 2
  %180 = load double*, double** %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = mul i64 %181, %184
  %186 = load i64, i64* %8, align 8
  %187 = add i64 %185, %186
  %188 = getelementptr inbounds double, double* %180, i64 %187
  %189 = load double, double* %188, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 2
  %194 = load double*, double** %193, align 8
  %195 = load i64, i64* %7, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = mul i64 %195, %198
  %200 = load i64, i64* %8, align 8
  %201 = add i64 %199, %200
  %202 = getelementptr inbounds double, double* %194, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fmul double %189, %203
  %205 = load double, double* %10, align 8
  %206 = fadd double %205, %204
  store double %206, double* %10, align 8
  br label %207

207:                                              ; preds = %175
  %208 = load i64, i64* %7, align 8
  %209 = add i64 %208, 1
  store i64 %209, i64* %7, align 8
  br label %163

210:                                              ; preds = %163
  br label %211

211:                                              ; preds = %210, %150
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* %8, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @FF_EBUR128_Mp110, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %277, label %222

222:                                              ; preds = %211
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* %8, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @FF_EBUR128_Mm110, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %277, label %233

233:                                              ; preds = %222
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* %8, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @FF_EBUR128_Mp060, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %277, label %244

244:                                              ; preds = %233
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = load i64*, i64** %248, align 8
  %250 = load i64, i64* %8, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @FF_EBUR128_Mm060, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %277, label %255

255:                                              ; preds = %244
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* %8, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @FF_EBUR128_Mp090, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %277, label %266

266:                                              ; preds = %255
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load i64, i64* %8, align 8
  %273 = getelementptr inbounds i64, i64* %271, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @FF_EBUR128_Mm090, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %266, %255, %244, %233, %222, %211
  %278 = load double, double* %10, align 8
  %279 = fmul double %278, 1.410000e+00
  store double %279, double* %10, align 8
  br label %295

280:                                              ; preds = %266
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i64*, i64** %284, align 8
  %286 = load i64, i64* %8, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @FF_EBUR128_DUAL_MONO, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %280
  %292 = load double, double* %10, align 8
  %293 = fmul double %292, 2.000000e+00
  store double %293, double* %10, align 8
  br label %294

294:                                              ; preds = %291, %280
  br label %295

295:                                              ; preds = %294, %277
  %296 = load double, double* %10, align 8
  %297 = load double, double* %9, align 8
  %298 = fadd double %297, %296
  store double %298, double* %9, align 8
  br label %299

299:                                              ; preds = %295, %28
  %300 = load i64, i64* %8, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %8, align 8
  br label %11

302:                                              ; preds = %11
  %303 = load i64, i64* %5, align 8
  %304 = uitofp i64 %303 to double
  %305 = load double, double* %9, align 8
  %306 = fdiv double %305, %304
  store double %306, double* %9, align 8
  %307 = load double*, double** %6, align 8
  %308 = icmp ne double* %307, null
  br i1 %308, label %309, label %312

309:                                              ; preds = %302
  %310 = load double, double* %9, align 8
  %311 = load double*, double** %6, align 8
  store double %310, double* %311, align 8
  br label %330

312:                                              ; preds = %302
  %313 = load double, double* %9, align 8
  %314 = load double*, double** @histogram_energy_boundaries, align 8
  %315 = getelementptr inbounds double, double* %314, i64 0
  %316 = load double, double* %315, align 8
  %317 = fcmp oge double %313, %316
  br i1 %317, label %318, label %329

318:                                              ; preds = %312
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 4
  %323 = load i32*, i32** %322, align 8
  %324 = load double, double* %9, align 8
  %325 = call i64 @find_histogram_index(double %324)
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  br label %329

329:                                              ; preds = %318, %312
  br label %330

330:                                              ; preds = %329, %309
  ret void
}

declare dso_local i64 @find_histogram_index(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
