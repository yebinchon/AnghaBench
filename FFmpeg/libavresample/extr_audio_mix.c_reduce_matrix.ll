; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_reduce_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavresample/extr_audio_mix.c_reduce_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, double*, i32)* @reduce_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduce_matrix(%struct.TYPE_3__* %0, double* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @memset(i32* %17, i32 0, i32 8)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @memset(i32* %25, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %112, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %115

33:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load double*, double** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %41, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fcmp une double %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %56

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %34

56:                                               ; preds = %51, %34
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %82, %62
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load double*, double** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %70, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fcmp une double %78, 0.000000e+00
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %85

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %63

85:                                               ; preds = %80, %63
  br label %86

86:                                               ; preds = %85, %56
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 1, i32* %95, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %89
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %105, %89
  br label %111

111:                                              ; preds = %110, %86
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %27

115:                                              ; preds = %27
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120, %115
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 5
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  br label %396

130:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %230, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @FFMIN(i32 %135, i32 %138)
  %140 = icmp slt i32 %132, %139
  br i1 %140, label %141, label %233

141:                                              ; preds = %131
  store i32 1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %212, %141
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %215

148:                                              ; preds = %142
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %148
  %153 = load double*, double** %5, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %6, align 4
  %156 = mul nsw i32 %154, %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %153, i64 %159
  %161 = load double, double* %160, align 8
  %162 = fcmp une double %161, 0.000000e+00
  br i1 %162, label %178, label %163

163:                                              ; preds = %152, %148
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load double*, double** %5, align 8
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %6, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds double, double* %168, i64 %174
  %176 = load double, double* %175, align 8
  %177 = fcmp une double %176, 1.000000e+00
  br i1 %177, label %178, label %179

178:                                              ; preds = %167, %152
  store i32 0, i32* %10, align 4
  br label %215

179:                                              ; preds = %167, %163
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %179
  store i32 0, i32* %11, align 4
  br label %184

184:                                              ; preds = %207, %183
  %185 = load i32, i32* %11, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %210

190:                                              ; preds = %184
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load double*, double** %5, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %6, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %195, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fcmp une double %203, 0.000000e+00
  br i1 %204, label %205, label %206

205:                                              ; preds = %194
  store i32 0, i32* %10, align 4
  br label %210

206:                                              ; preds = %194, %190
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %184

210:                                              ; preds = %205, %184
  br label %211

211:                                              ; preds = %210, %179
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %8, align 4
  br label %142

215:                                              ; preds = %178, %142
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %226, align 8
  br label %229

229:                                              ; preds = %218, %215
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %131

233:                                              ; preds = %131
  br label %234

234:                                              ; preds = %278, %233
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %281

240:                                              ; preds = %234
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %241

241:                                              ; preds = %260, %240
  %242 = load i32, i32* %8, align 4
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %263

247:                                              ; preds = %241
  %248 = load double*, double** %5, align 8
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* %6, align 4
  %251 = mul nsw i32 %249, %250
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %251, %252
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds double, double* %248, i64 %254
  %256 = load double, double* %255, align 8
  %257 = fcmp une double %256, 0.000000e+00
  br i1 %257, label %258, label %259

258:                                              ; preds = %247
  store i32 1, i32* %12, align 4
  br label %263

259:                                              ; preds = %247
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %8, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %8, align 4
  br label %241

263:                                              ; preds = %258, %241
  %264 = load i32, i32* %12, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %277, label %266

266:                                              ; preds = %263
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 1, i32* %272, align 4
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 6
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %275, -1
  store i64 %276, i64* %274, align 8
  br label %277

277:                                              ; preds = %266, %263
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %7, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %7, align 4
  br label %234

281:                                              ; preds = %234
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 6
  %284 = load i64, i64* %283, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 5
  store i64 0, i64* %288, align 8
  br label %396

289:                                              ; preds = %281
  store i32 0, i32* %8, align 4
  br label %290

290:                                              ; preds = %385, %289
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @FFMIN(i32 %294, i32 %297)
  %299 = icmp slt i32 %291, %298
  br i1 %299, label %300, label %388

300:                                              ; preds = %290
  store i32 1, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %301

301:                                              ; preds = %339, %300
  %302 = load i32, i32* %7, align 4
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %342

307:                                              ; preds = %301
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %322

311:                                              ; preds = %307
  %312 = load double*, double** %5, align 8
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %6, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds double, double* %312, i64 %318
  %320 = load double, double* %319, align 8
  %321 = fcmp une double %320, 0.000000e+00
  br i1 %321, label %337, label %322

322:                                              ; preds = %311, %307
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %7, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %338

326:                                              ; preds = %322
  %327 = load double*, double** %5, align 8
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %6, align 4
  %330 = mul nsw i32 %328, %329
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds double, double* %327, i64 %333
  %335 = load double, double* %334, align 8
  %336 = fcmp une double %335, 1.000000e+00
  br i1 %336, label %337, label %338

337:                                              ; preds = %326, %311
  store i32 0, i32* %13, align 4
  br label %342

338:                                              ; preds = %326, %322
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %7, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %7, align 4
  br label %301

342:                                              ; preds = %337, %301
  %343 = load i32, i32* %8, align 4
  store i32 %343, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %344

344:                                              ; preds = %367, %342
  %345 = load i32, i32* %14, align 4
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 8
  %349 = icmp slt i32 %345, %348
  br i1 %349, label %350, label %370

350:                                              ; preds = %344
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %7, align 4
  %353 = icmp ne i32 %351, %352
  br i1 %353, label %354, label %366

354:                                              ; preds = %350
  %355 = load double*, double** %5, align 8
  %356 = load i32, i32* %14, align 4
  %357 = load i32, i32* %6, align 4
  %358 = mul nsw i32 %356, %357
  %359 = load i32, i32* %7, align 4
  %360 = add nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds double, double* %355, i64 %361
  %363 = load double, double* %362, align 8
  %364 = fcmp une double %363, 0.000000e+00
  br i1 %364, label %365, label %366

365:                                              ; preds = %354
  store i32 0, i32* %13, align 4
  br label %370

366:                                              ; preds = %354, %350
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %14, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %14, align 4
  br label %344

370:                                              ; preds = %365, %344
  %371 = load i32, i32* %13, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %384

373:                                              ; preds = %370
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %8, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 1, i32* %379, align 4
  %380 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 5
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %382, -1
  store i64 %383, i64* %381, align 8
  br label %384

384:                                              ; preds = %373, %370
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %8, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %8, align 4
  br label %290

388:                                              ; preds = %290
  %389 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 6
  store i64 0, i64* %395, align 8
  br label %396

396:                                              ; preds = %125, %286, %393, %388
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
