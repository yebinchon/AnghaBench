; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_owdenoise.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32***, i32 }

@dither = common dso_local global double** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32*, i32, i32, i32, double)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, double %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca double, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store double %7, double* %16, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %21, align 4
  br label %28

28:                                               ; preds = %40, %8
  %29 = load i32, i32* %21, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %21, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %15, align 4
  %37 = icmp sgt i32 %35, %36
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i32, i32* %21, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %21, align 4
  br label %28

43:                                               ; preds = %38
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sle i32 %46, 8
  br i1 %47, label %48, label %92

48:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %84, %53
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i32***, i32**** %69, align 8
  %71 = getelementptr inbounds i32**, i32*** %70, i64 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %18, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %74, i64 %82
  store i32 %67, i32* %83, align 4
  br label %84

84:                                               ; preds = %58
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %54

87:                                               ; preds = %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %49

91:                                               ; preds = %49
  br label %139

92:                                               ; preds = %43
  %93 = load i32*, i32** %12, align 8
  store i32* %93, i32** %22, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %135, %92
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %138

100:                                              ; preds = %96
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %131, %100
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load i32*, i32** %22, align 8
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %13, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32***, i32**** %116, align 8
  %118 = getelementptr inbounds i32**, i32*** %117, i64 0
  %119 = load i32**, i32*** %118, align 8
  %120 = getelementptr inbounds i32*, i32** %119, i64 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %121, i64 %129
  store i32 %114, i32* %130, align 4
  br label %131

131:                                              ; preds = %105
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %17, align 4
  br label %101

134:                                              ; preds = %101
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %18, align 4
  br label %96

138:                                              ; preds = %96
  br label %139

139:                                              ; preds = %138, %91
  store i32 0, i32* %19, align 4
  br label %140

140:                                              ; preds = %176, %139
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %21, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %179

144:                                              ; preds = %140
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 2
  %147 = load i32***, i32**** %146, align 8
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32**, i32*** %147, i64 %150
  %152 = load i32**, i32*** %151, align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32***, i32**** %154, align 8
  %156 = load i32, i32* %19, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32**, i32*** %155, i64 %157
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32***, i32**** %163, align 8
  %165 = getelementptr inbounds i32**, i32*** %164, i64 0
  %166 = load i32**, i32*** %165, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 1
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %19, align 4
  %172 = shl i32 1, %171
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @decompose2D2(i32** %152, i32* %161, i32** %167, i32 %170, i32 %172, i32 %173, i32 %174)
  br label %176

176:                                              ; preds = %144
  %177 = load i32, i32* %19, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %19, align 4
  br label %140

179:                                              ; preds = %140
  store i32 0, i32* %19, align 4
  br label %180

180:                                              ; preds = %276, %179
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* %21, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %279

184:                                              ; preds = %180
  store i32 1, i32* %20, align 4
  br label %185

185:                                              ; preds = %272, %184
  %186 = load i32, i32* %20, align 4
  %187 = icmp slt i32 %186, 4
  br i1 %187, label %188, label %275

188:                                              ; preds = %185
  store i32 0, i32* %18, align 4
  br label %189

189:                                              ; preds = %268, %188
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %15, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %271

193:                                              ; preds = %189
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %264, %193
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %267

198:                                              ; preds = %194
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32***, i32**** %200, align 8
  %202 = load i32, i32* %19, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32**, i32*** %201, i64 %204
  %206 = load i32**, i32*** %205, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %18, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %211, %214
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %210, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = sitofp i32 %220 to double
  store double %221, double* %23, align 8
  %222 = load double, double* %23, align 8
  %223 = load double, double* %16, align 8
  %224 = fcmp ogt double %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %198
  %226 = load double, double* %16, align 8
  %227 = load double, double* %23, align 8
  %228 = fsub double %227, %226
  store double %228, double* %23, align 8
  br label %240

229:                                              ; preds = %198
  %230 = load double, double* %23, align 8
  %231 = load double, double* %16, align 8
  %232 = fneg double %231
  %233 = fcmp olt double %230, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %229
  %235 = load double, double* %16, align 8
  %236 = load double, double* %23, align 8
  %237 = fadd double %236, %235
  store double %237, double* %23, align 8
  br label %239

238:                                              ; preds = %229
  store double 0.000000e+00, double* %23, align 8
  br label %239

239:                                              ; preds = %238, %234
  br label %240

240:                                              ; preds = %239, %225
  %241 = load double, double* %23, align 8
  %242 = fptosi double %241 to i32
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 2
  %245 = load i32***, i32**** %244, align 8
  %246 = load i32, i32* %19, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32**, i32*** %245, i64 %248
  %250 = load i32**, i32*** %249, align 8
  %251 = load i32, i32* %20, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32*, i32** %250, i64 %252
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %17, align 4
  %256 = load i32, i32* %18, align 4
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = mul nsw i32 %256, %259
  %261 = add nsw i32 %255, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %254, i64 %262
  store i32 %242, i32* %263, align 4
  br label %264

264:                                              ; preds = %240
  %265 = load i32, i32* %17, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %17, align 4
  br label %194

267:                                              ; preds = %194
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %18, align 4
  br label %189

271:                                              ; preds = %189
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %20, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %20, align 4
  br label %185

275:                                              ; preds = %185
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %19, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %19, align 4
  br label %180

279:                                              ; preds = %180
  %280 = load i32, i32* %21, align 4
  %281 = sub nsw i32 %280, 1
  store i32 %281, i32* %19, align 4
  br label %282

282:                                              ; preds = %320, %279
  %283 = load i32, i32* %19, align 4
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %323

285:                                              ; preds = %282
  %286 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %286, i32 0, i32 2
  %288 = load i32***, i32**** %287, align 8
  %289 = load i32, i32* %19, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32**, i32*** %288, i64 %290
  %292 = load i32**, i32*** %291, align 8
  %293 = getelementptr inbounds i32*, i32** %292, i64 0
  %294 = load i32*, i32** %293, align 8
  %295 = bitcast i32* %294 to double*
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 2
  %298 = load i32***, i32**** %297, align 8
  %299 = load i32, i32* %19, align 4
  %300 = add nsw i32 %299, 1
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32**, i32*** %298, i64 %301
  %303 = load i32**, i32*** %302, align 8
  %304 = bitcast i32** %303 to double**
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load i32***, i32**** %306, align 8
  %308 = getelementptr inbounds i32**, i32*** %307, i64 0
  %309 = load i32**, i32*** %308, align 8
  %310 = getelementptr inbounds i32*, i32** %309, i64 1
  %311 = bitcast i32** %310 to double**
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %19, align 4
  %316 = shl i32 1, %315
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @compose2D2(double* %295, double** %304, double** %311, i32 %314, i32 %316, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %285
  %321 = load i32, i32* %19, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %19, align 4
  br label %282

323:                                              ; preds = %282
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = icmp sle i32 %326, 8
  br i1 %327, label %328, label %396

328:                                              ; preds = %323
  store i32 0, i32* %18, align 4
  br label %329

329:                                              ; preds = %392, %328
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* %15, align 4
  %332 = icmp slt i32 %330, %331
  br i1 %332, label %333, label %395

333:                                              ; preds = %329
  store i32 0, i32* %17, align 4
  br label %334

334:                                              ; preds = %388, %333
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %14, align 4
  %337 = icmp slt i32 %335, %336
  br i1 %337, label %338, label %391

338:                                              ; preds = %334
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  %341 = load i32***, i32**** %340, align 8
  %342 = getelementptr inbounds i32**, i32*** %341, i64 0
  %343 = load i32**, i32*** %342, align 8
  %344 = getelementptr inbounds i32*, i32** %343, i64 0
  %345 = load i32*, i32** %344, align 8
  %346 = load i32, i32* %18, align 4
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = mul nsw i32 %346, %349
  %351 = load i32, i32* %17, align 4
  %352 = add nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %345, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sitofp i32 %355 to double
  %357 = load double**, double*** @dither, align 8
  %358 = load i32, i32* %17, align 4
  %359 = and i32 %358, 7
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds double*, double** %357, i64 %360
  %362 = load double*, double** %361, align 8
  %363 = load i32, i32* %18, align 4
  %364 = and i32 %363, 7
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds double, double* %362, i64 %365
  %367 = load double, double* %366, align 8
  %368 = fmul double %367, 1.562500e-02
  %369 = fadd double %356, %368
  %370 = fadd double %369, 7.812500e-03
  %371 = fptosi double %370 to i32
  store i32 %371, i32* %19, align 4
  %372 = load i32, i32* %19, align 4
  %373 = icmp ugt i32 %372, 255
  br i1 %373, label %374, label %378

374:                                              ; preds = %338
  %375 = load i32, i32* %19, align 4
  %376 = ashr i32 %375, 31
  %377 = xor i32 %376, -1
  store i32 %377, i32* %19, align 4
  br label %378

378:                                              ; preds = %374, %338
  %379 = load i32, i32* %19, align 4
  %380 = load i32*, i32** %10, align 8
  %381 = load i32, i32* %18, align 4
  %382 = load i32, i32* %11, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32, i32* %17, align 4
  %385 = add nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %380, i64 %386
  store i32 %379, i32* %387, align 4
  br label %388

388:                                              ; preds = %378
  %389 = load i32, i32* %17, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %17, align 4
  br label %334

391:                                              ; preds = %334
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %18, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %18, align 4
  br label %329

395:                                              ; preds = %329
  br label %444

396:                                              ; preds = %323
  %397 = load i32*, i32** %10, align 8
  store i32* %397, i32** %24, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sdiv i32 %398, 2
  store i32 %399, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %400

400:                                              ; preds = %440, %396
  %401 = load i32, i32* %18, align 4
  %402 = load i32, i32* %15, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %443

404:                                              ; preds = %400
  store i32 0, i32* %17, align 4
  br label %405

405:                                              ; preds = %436, %404
  %406 = load i32, i32* %17, align 4
  %407 = load i32, i32* %14, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %439

409:                                              ; preds = %405
  %410 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %410, i32 0, i32 2
  %412 = load i32***, i32**** %411, align 8
  %413 = getelementptr inbounds i32**, i32*** %412, i64 0
  %414 = load i32**, i32*** %413, align 8
  %415 = getelementptr inbounds i32*, i32** %414, i64 0
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %18, align 4
  %418 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %419 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = mul nsw i32 %417, %420
  %422 = load i32, i32* %17, align 4
  %423 = add nsw i32 %421, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %416, i64 %424
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %19, align 4
  %427 = load i32, i32* %19, align 4
  %428 = load i32*, i32** %24, align 8
  %429 = load i32, i32* %18, align 4
  %430 = load i32, i32* %11, align 4
  %431 = mul nsw i32 %429, %430
  %432 = load i32, i32* %17, align 4
  %433 = add nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32, i32* %428, i64 %434
  store i32 %427, i32* %435, align 4
  br label %436

436:                                              ; preds = %409
  %437 = load i32, i32* %17, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %17, align 4
  br label %405

439:                                              ; preds = %405
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %18, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %18, align 4
  br label %400

443:                                              ; preds = %400
  br label %444

444:                                              ; preds = %443, %395
  ret void
}

declare dso_local i32 @decompose2D2(i32**, i32*, i32**, i32, i32, i32, i32) #1

declare dso_local i32 @compose2D2(double*, double**, double**, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
