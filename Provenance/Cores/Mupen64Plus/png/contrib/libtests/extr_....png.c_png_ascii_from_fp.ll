; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_ascii_from_fp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_ascii_from_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_DIG = common dso_local global i32 0, align 4
@DBL_MIN = common dso_local global double 0.000000e+00, align 8
@DBL_MAX = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [34 x i8] c"ASCII conversion buffer too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_ascii_from_fp(i32 %0, i32* %1, i32 %2, double %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x i8], align 1
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @DBL_DIG, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DBL_DIG, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @DBL_DIG, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add i32 %36, 5
  %38 = icmp uge i32 %35, %37
  br i1 %38, label %39, label %367

39:                                               ; preds = %34
  %40 = load double, double* %9, align 8
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load double, double* %9, align 8
  %44 = fneg double %43
  store double %44, double* %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 45, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load double, double* %9, align 8
  %51 = load double, double* @DBL_MIN, align 8
  %52 = fcmp oge double %50, %51
  br i1 %52, label %53, label %350

53:                                               ; preds = %49
  %54 = load double, double* %9, align 8
  %55 = load double, double* @DBL_MAX, align 8
  %56 = fcmp ole double %54, %55
  br i1 %56, label %57, label %350

57:                                               ; preds = %53
  %58 = load double, double* %9, align 8
  %59 = call i32 @frexp(double %58, i32* %11)
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %60, 77
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call double @png_pow10(i32 %63)
  store double %64, double* %12, align 8
  br label %65

65:                                               ; preds = %87, %57
  %66 = load double, double* %12, align 8
  %67 = load double, double* @DBL_MIN, align 8
  %68 = fcmp olt double %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load double, double* %12, align 8
  %71 = load double, double* %9, align 8
  %72 = fcmp olt double %70, %71
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ true, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %88

75:                                               ; preds = %73
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  %78 = call double @png_pow10(i32 %77)
  store double %78, double* %13, align 8
  %79 = load double, double* %13, align 8
  %80 = load double, double* @DBL_MAX, align 8
  %81 = fcmp ole double %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  %85 = load double, double* %13, align 8
  store double %85, double* %12, align 8
  br label %87

86:                                               ; preds = %75
  br label %88

87:                                               ; preds = %82
  br label %65

88:                                               ; preds = %86, %73
  %89 = load double, double* %12, align 8
  %90 = load double, double* %9, align 8
  %91 = fdiv double %90, %89
  store double %91, double* %9, align 8
  br label %92

92:                                               ; preds = %95, %88
  %93 = load double, double* %9, align 8
  %94 = fcmp oge double %93, 1.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load double, double* %9, align 8
  %97 = fdiv double %96, 1.000000e+01
  store double %97, double* %9, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %92

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp sgt i32 %104, -3
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %110

109:                                              ; preds = %103, %100
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %278, %110
  %113 = load double, double* %9, align 8
  %114 = fmul double %113, 1.000000e+01
  store double %114, double* %9, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add i32 %115, %116
  %118 = add i32 %117, 1
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %119, %120
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load double, double* %9, align 8
  %125 = call double @modf(double %124, double* %18) #4
  store double %125, double* %9, align 8
  br label %201

126:                                              ; preds = %112
  %127 = load double, double* %9, align 8
  %128 = fadd double %127, 5.000000e-01
  %129 = call double @llvm.floor.f64(double %128)
  store double %129, double* %18, align 8
  %130 = load double, double* %18, align 8
  %131 = fcmp ogt double %130, 9.000000e+00
  br i1 %131, label %132, label %200

132:                                              ; preds = %126
  %133 = load i32, i32* %14, align 4
  %134 = icmp ugt i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %14, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %14, align 4
  store double 1.000000e+00, double* %18, align 8
  %138 = load i32, i32* %16, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %15, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %140, %135
  br label %199

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %172, %144
  %146 = load i32, i32* %16, align 4
  %147 = icmp ugt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load double, double* %18, align 8
  %150 = fcmp ogt double %149, 9.000000e+00
  br label %151

151:                                              ; preds = %148, %145
  %152 = phi i1 [ false, %145 ], [ %150, %148 ]
  br i1 %152, label %153, label %178

153:                                              ; preds = %151
  %154 = load i32*, i32** %7, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 -1
  store i32* %155, i32** %7, align 8
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %19, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ne i32 %157, -1
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %172

162:                                              ; preds = %153
  %163 = load i32, i32* %19, align 4
  %164 = icmp eq i32 %163, 46
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 -1
  store i32* %167, i32** %7, align 8
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %19, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %171

171:                                              ; preds = %165, %162
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i32, i32* %16, align 4
  %174 = add i32 %173, -1
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %19, align 4
  %176 = sub nsw i32 %175, 47
  %177 = sitofp i32 %176 to double
  store double %177, double* %18, align 8
  br label %145

178:                                              ; preds = %151
  %179 = load double, double* %18, align 8
  %180 = fcmp ogt double %179, 9.000000e+00
  br i1 %180, label %181, label %198

181:                                              ; preds = %178
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i32*, i32** %7, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 -1
  store i32* %186, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %20, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp eq i32 %188, 46
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  store i32 1, i32* %11, align 4
  br label %193

193:                                              ; preds = %190, %184
  br label %197

194:                                              ; preds = %181
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %194, %193
  store double 1.000000e+00, double* %18, align 8
  br label %198

198:                                              ; preds = %197, %178
  br label %199

199:                                              ; preds = %198, %143
  br label %200

200:                                              ; preds = %199, %126
  store double 0.000000e+00, double* %9, align 8
  br label %201

201:                                              ; preds = %200, %123
  %202 = load double, double* %18, align 8
  %203 = fcmp oeq double %202, 0.000000e+00
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %14, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = add i32 %210, 1
  store i32 %211, i32* %15, align 4
  br label %212

212:                                              ; preds = %209, %204
  br label %265

213:                                              ; preds = %201
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = sub i32 %214, %215
  %217 = load i32, i32* %16, align 4
  %218 = add i32 %217, %216
  store i32 %218, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %236, %213
  %220 = load i32, i32* %14, align 4
  %221 = icmp ugt i32 %220, 0
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  %223 = load i32, i32* %11, align 4
  %224 = icmp ne i32 %223, -1
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load i32, i32* %11, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load i32*, i32** %7, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %7, align 8
  store i32 46, i32* %229, align 4
  %231 = load i32, i32* %8, align 4
  %232 = add i32 %231, -1
  store i32 %232, i32* %8, align 4
  br label %233

233:                                              ; preds = %228, %225
  %234 = load i32, i32* %11, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %11, align 4
  br label %236

236:                                              ; preds = %233, %222
  %237 = load i32*, i32** %7, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %7, align 8
  store i32 48, i32* %237, align 4
  %239 = load i32, i32* %14, align 4
  %240 = add i32 %239, -1
  store i32 %240, i32* %14, align 4
  br label %219

241:                                              ; preds = %219
  %242 = load i32, i32* %11, align 4
  %243 = icmp ne i32 %242, -1
  br i1 %243, label %244, label %255

244:                                              ; preds = %241
  %245 = load i32, i32* %11, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = load i32*, i32** %7, align 8
  %249 = getelementptr inbounds i32, i32* %248, i32 1
  store i32* %249, i32** %7, align 8
  store i32 46, i32* %248, align 4
  %250 = load i32, i32* %8, align 4
  %251 = add i32 %250, -1
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %247, %244
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, -1
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %252, %241
  %256 = load double, double* %18, align 8
  %257 = fptosi double %256 to i32
  %258 = add nsw i32 48, %257
  %259 = trunc i32 %258 to i8
  %260 = sext i8 %259 to i32
  %261 = load i32*, i32** %7, align 8
  %262 = getelementptr inbounds i32, i32* %261, i32 1
  store i32* %262, i32** %7, align 8
  store i32 %260, i32* %261, align 4
  %263 = load i32, i32* %16, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %16, align 4
  br label %265

265:                                              ; preds = %255, %212
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %14, align 4
  %269 = add i32 %267, %268
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %15, align 4
  %272 = add i32 %270, %271
  %273 = icmp ult i32 %269, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %266
  %275 = load double, double* %9, align 8
  %276 = load double, double* @DBL_MIN, align 8
  %277 = fcmp ogt double %275, %276
  br label %278

278:                                              ; preds = %274, %266
  %279 = phi i1 [ false, %266 ], [ %277, %274 ]
  br i1 %279, label %112, label %280

280:                                              ; preds = %278
  %281 = load i32, i32* %11, align 4
  %282 = icmp sge i32 %281, -1
  br i1 %282, label %283, label %296

283:                                              ; preds = %280
  %284 = load i32, i32* %11, align 4
  %285 = icmp sle i32 %284, 2
  br i1 %285, label %286, label %296

286:                                              ; preds = %283
  br label %287

287:                                              ; preds = %291, %286
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 %288, -1
  store i32 %289, i32* %11, align 4
  %290 = icmp sge i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load i32*, i32** %7, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %7, align 8
  store i32 48, i32* %292, align 4
  br label %287

294:                                              ; preds = %287
  %295 = load i32*, i32** %7, align 8
  store i32 0, i32* %295, align 4
  br label %370

296:                                              ; preds = %283, %280
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %8, align 4
  %299 = sub i32 %298, %297
  store i32 %299, i32* %8, align 4
  %300 = load i32*, i32** %7, align 8
  %301 = getelementptr inbounds i32, i32* %300, i32 1
  store i32* %301, i32** %7, align 8
  store i32 69, i32* %300, align 4
  %302 = load i32, i32* %8, align 4
  %303 = add i32 %302, -1
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %11, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %296
  %307 = load i32*, i32** %7, align 8
  %308 = getelementptr inbounds i32, i32* %307, i32 1
  store i32* %308, i32** %7, align 8
  store i32 45, i32* %307, align 4
  %309 = load i32, i32* %8, align 4
  %310 = add i32 %309, -1
  store i32 %310, i32* %8, align 4
  %311 = load i32, i32* %11, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %21, align 4
  br label %315

313:                                              ; preds = %296
  %314 = load i32, i32* %11, align 4
  store i32 %314, i32* %21, align 4
  br label %315

315:                                              ; preds = %313, %306
  store i32 0, i32* %16, align 4
  br label %316

316:                                              ; preds = %319, %315
  %317 = load i32, i32* %21, align 4
  %318 = icmp ugt i32 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %316
  %320 = load i32, i32* %21, align 4
  %321 = urem i32 %320, 10
  %322 = add i32 48, %321
  %323 = trunc i32 %322 to i8
  %324 = load i32, i32* %16, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %16, align 4
  %326 = zext i32 %324 to i64
  %327 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 %326
  store i8 %323, i8* %327, align 1
  %328 = load i32, i32* %21, align 4
  %329 = udiv i32 %328, 10
  store i32 %329, i32* %21, align 4
  br label %316

330:                                              ; preds = %316
  %331 = load i32, i32* %8, align 4
  %332 = load i32, i32* %16, align 4
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %349

334:                                              ; preds = %330
  br label %335

335:                                              ; preds = %338, %334
  %336 = load i32, i32* %16, align 4
  %337 = icmp ugt i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = load i32, i32* %16, align 4
  %340 = add i32 %339, -1
  store i32 %340, i32* %16, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [10 x i8], [10 x i8]* %17, i64 0, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = load i32*, i32** %7, align 8
  %346 = getelementptr inbounds i32, i32* %345, i32 1
  store i32* %346, i32** %7, align 8
  store i32 %344, i32* %345, align 4
  br label %335

347:                                              ; preds = %335
  %348 = load i32*, i32** %7, align 8
  store i32 0, i32* %348, align 4
  br label %370

349:                                              ; preds = %330
  br label %366

350:                                              ; preds = %53, %49
  %351 = load double, double* %9, align 8
  %352 = load double, double* @DBL_MIN, align 8
  %353 = fcmp oge double %351, %352
  br i1 %353, label %358, label %354

354:                                              ; preds = %350
  %355 = load i32*, i32** %7, align 8
  %356 = getelementptr inbounds i32, i32* %355, i32 1
  store i32* %356, i32** %7, align 8
  store i32 48, i32* %355, align 4
  %357 = load i32*, i32** %7, align 8
  store i32 0, i32* %357, align 4
  br label %370

358:                                              ; preds = %350
  %359 = load i32*, i32** %7, align 8
  %360 = getelementptr inbounds i32, i32* %359, i32 1
  store i32* %360, i32** %7, align 8
  store i32 105, i32* %359, align 4
  %361 = load i32*, i32** %7, align 8
  %362 = getelementptr inbounds i32, i32* %361, i32 1
  store i32* %362, i32** %7, align 8
  store i32 110, i32* %361, align 4
  %363 = load i32*, i32** %7, align 8
  %364 = getelementptr inbounds i32, i32* %363, i32 1
  store i32* %364, i32** %7, align 8
  store i32 102, i32* %363, align 4
  %365 = load i32*, i32** %7, align 8
  store i32 0, i32* %365, align 4
  br label %370

366:                                              ; preds = %349
  br label %367

367:                                              ; preds = %366, %34
  %368 = load i32, i32* %6, align 4
  %369 = call i32 @png_error(i32 %368, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %370

370:                                              ; preds = %367, %358, %354, %347, %294
  ret void
}

declare dso_local i32 @frexp(double, i32*) #1

declare dso_local double @png_pow10(i32) #1

; Function Attrs: nounwind
declare dso_local double @modf(double, double*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local i32 @png_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
