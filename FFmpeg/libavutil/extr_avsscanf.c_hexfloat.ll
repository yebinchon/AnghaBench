; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_hexfloat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_hexfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MANT_DIG = common dso_local global i32 0, align 4
@LLONG_MIN = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@DBL_MAX = common dso_local global i32 0, align 4
@DBL_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32, i32, i32)* @hexfloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @hexfloat(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  store double 1.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @shgetc(i32* %24)
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %30, %5
  %27 = load i32, i32* %23, align 4
  %28 = icmp eq i32 %27, 48
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  store i32 1, i32* %18, align 4
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @shgetc(i32* %31)
  store i32 %32, i32* %23, align 4
  br label %26

33:                                               ; preds = %26
  %34 = load i32, i32* %23, align 4
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  store i32 1, i32* %17, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @shgetc(i32* %37)
  store i32 %38, i32* %23, align 4
  store i64 0, i64* %19, align 8
  br label %39

39:                                               ; preds = %43, %36
  %40 = load i32, i32* %23, align 4
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  store i32 1, i32* %18, align 4
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @shgetc(i32* %44)
  store i32 %45, i32* %23, align 4
  %46 = load i64, i64* %19, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %19, align 8
  br label %39

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %33
  br label %50

50:                                               ; preds = %124, %49
  %51 = load i32, i32* %23, align 4
  %52 = sub nsw i32 %51, 48
  %53 = icmp ult i32 %52, 10
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %23, align 4
  %56 = or i32 %55, 32
  %57 = sub nsw i32 %56, 97
  %58 = icmp ult i32 %57, 6
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %23, align 4
  %61 = icmp eq i32 %60, 46
  br label %62

62:                                               ; preds = %59, %54, %50
  %63 = phi i1 [ true, %54 ], [ true, %50 ], [ %61, %59 ]
  br i1 %63, label %64, label %127

64:                                               ; preds = %62
  %65 = load i32, i32* %23, align 4
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %127

71:                                               ; preds = %67
  %72 = load i64, i64* %20, align 8
  store i64 %72, i64* %19, align 8
  store i32 1, i32* %17, align 4
  br label %123

73:                                               ; preds = %64
  store i32 1, i32* %18, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp sgt i32 %74, 57
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %23, align 4
  %78 = or i32 %77, 32
  %79 = add nsw i32 %78, 10
  %80 = sub nsw i32 %79, 97
  store i32 %80, i32* %22, align 4
  br label %84

81:                                               ; preds = %73
  %82 = load i32, i32* %23, align 4
  %83 = sub nsw i32 %82, 48
  store i32 %83, i32* %22, align 4
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i64, i64* %20, align 8
  %86 = icmp slt i64 %85, 8
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = mul nsw i32 %88, 16
  %90 = load i32, i32* %22, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %12, align 4
  br label %120

92:                                               ; preds = %84
  %93 = load i64, i64* %20, align 8
  %94 = load i32, i32* @DBL_MANT_DIG, align 4
  %95 = sdiv i32 %94, 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %92
  %100 = load i32, i32* %22, align 4
  %101 = sitofp i32 %100 to double
  %102 = load double, double* %14, align 8
  %103 = fdiv double %102, 1.600000e+01
  store double %103, double* %14, align 8
  %104 = fmul double %101, %103
  %105 = load double, double* %13, align 8
  %106 = fadd double %105, %104
  store double %106, double* %13, align 8
  br label %119

107:                                              ; preds = %92
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load double, double* %14, align 8
  %115 = fmul double 5.000000e-01, %114
  %116 = load double, double* %13, align 8
  %117 = fadd double %116, %115
  store double %117, double* %13, align 8
  store i32 1, i32* %16, align 4
  br label %118

118:                                              ; preds = %113, %110, %107
  br label %119

119:                                              ; preds = %118, %99
  br label %120

120:                                              ; preds = %119, %87
  %121 = load i64, i64* %20, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %20, align 8
  br label %123

123:                                              ; preds = %120, %71
  br label %124

124:                                              ; preds = %123
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @shgetc(i32* %125)
  store i32 %126, i32* %23, align 4
  br label %50

127:                                              ; preds = %70, %62
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %151, label %130

130:                                              ; preds = %127
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @shunget(i32* %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @shunget(i32* %136)
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @shunget(i32* %141)
  br label %143

143:                                              ; preds = %140, %135
  br label %147

144:                                              ; preds = %130
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @shlim(i32* %145, i32 0)
  br label %147

147:                                              ; preds = %144, %143
  %148 = load i32, i32* %10, align 4
  %149 = sitofp i32 %148 to double
  %150 = fmul double %149, 0.000000e+00
  store double %150, double* %6, align 8
  br label %329

151:                                              ; preds = %127
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = load i64, i64* %20, align 8
  store i64 %155, i64* %19, align 8
  br label %156

156:                                              ; preds = %154, %151
  br label %157

157:                                              ; preds = %160, %156
  %158 = load i64, i64* %20, align 8
  %159 = icmp slt i64 %158, 8
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32, i32* %12, align 4
  %162 = mul nsw i32 %161, 16
  store i32 %162, i32* %12, align 4
  %163 = load i64, i64* %20, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %20, align 8
  br label %157

165:                                              ; preds = %157
  %166 = load i32, i32* %23, align 4
  %167 = or i32 %166, 32
  %168 = icmp eq i32 %167, 112
  br i1 %168, label %169, label %187

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i64 @scanexp(i32* %170, i32 %171)
  store i64 %172, i64* %21, align 8
  %173 = load i64, i64* %21, align 8
  %174 = load i64, i64* @LLONG_MIN, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load i32, i32* %11, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32*, i32** %7, align 8
  %181 = call i32 @shunget(i32* %180)
  br label %185

182:                                              ; preds = %176
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 @shlim(i32* %183, i32 0)
  store double 0.000000e+00, double* %6, align 8
  br label %329

185:                                              ; preds = %179
  store i64 0, i64* %21, align 8
  br label %186

186:                                              ; preds = %185, %169
  br label %190

187:                                              ; preds = %165
  %188 = load i32*, i32** %7, align 8
  %189 = call i32 @shunget(i32* %188)
  br label %190

190:                                              ; preds = %187, %186
  %191 = load i64, i64* %19, align 8
  %192 = mul nsw i64 4, %191
  %193 = sub nsw i64 %192, 32
  %194 = load i64, i64* %21, align 8
  %195 = add nsw i64 %194, %193
  store i64 %195, i64* %21, align 8
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %190
  %199 = load i32, i32* %10, align 4
  %200 = sitofp i32 %199 to double
  %201 = fmul double %200, 0.000000e+00
  store double %201, double* %6, align 8
  br label %329

202:                                              ; preds = %190
  %203 = load i64, i64* %21, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 0, %204
  %206 = sext i32 %205 to i64
  %207 = icmp sgt i64 %203, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %202
  %209 = load i32, i32* @ERANGE, align 4
  store i32 %209, i32* @errno, align 4
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @DBL_MAX, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* @DBL_MAX, align 4
  %214 = mul nsw i32 %212, %213
  %215 = sitofp i32 %214 to double
  store double %215, double* %6, align 8
  br label %329

216:                                              ; preds = %202
  %217 = load i64, i64* %21, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @DBL_MANT_DIG, align 4
  %220 = mul nsw i32 2, %219
  %221 = sub nsw i32 %218, %220
  %222 = sext i32 %221 to i64
  %223 = icmp slt i64 %217, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %216
  %225 = load i32, i32* @ERANGE, align 4
  store i32 %225, i32* @errno, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @DBL_MIN, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i32, i32* @DBL_MIN, align 4
  %230 = mul nsw i32 %228, %229
  %231 = sitofp i32 %230 to double
  store double %231, double* %6, align 8
  br label %329

232:                                              ; preds = %216
  br label %233

233:                                              ; preds = %255, %232
  %234 = load i32, i32* %12, align 4
  %235 = icmp ult i32 %234, -2147483648
  br i1 %235, label %236, label %258

236:                                              ; preds = %233
  %237 = load double, double* %13, align 8
  %238 = fcmp oge double %237, 5.000000e-01
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %12, align 4
  %244 = load double, double* %13, align 8
  %245 = fsub double %244, 1.000000e+00
  %246 = load double, double* %13, align 8
  %247 = fadd double %246, %245
  store double %247, double* %13, align 8
  br label %255

248:                                              ; preds = %236
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %12, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %12, align 4
  %252 = load double, double* %13, align 8
  %253 = load double, double* %13, align 8
  %254 = fadd double %253, %252
  store double %254, double* %13, align 8
  br label %255

255:                                              ; preds = %248, %239
  %256 = load i64, i64* %21, align 8
  %257 = add nsw i64 %256, -1
  store i64 %257, i64* %21, align 8
  br label %233

258:                                              ; preds = %233
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* %21, align 8
  %262 = add nsw i64 32, %261
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = sub nsw i64 %262, %264
  %266 = icmp sgt i64 %260, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %258
  %268 = load i64, i64* %21, align 8
  %269 = add nsw i64 32, %268
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = sub nsw i64 %269, %271
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  store i32 0, i32* %8, align 4
  br label %277

277:                                              ; preds = %276, %267
  br label %278

278:                                              ; preds = %277, %258
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @DBL_MANT_DIG, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %278
  %283 = load i32, i32* @DBL_MANT_DIG, align 4
  %284 = add nsw i32 32, %283
  %285 = load i32, i32* %8, align 4
  %286 = sub nsw i32 %284, %285
  %287 = sub nsw i32 %286, 1
  %288 = sext i32 %287 to i64
  %289 = call double @scalbn(double 1.000000e+00, i64 %288)
  %290 = load i32, i32* %10, align 4
  %291 = call double @copysign(double %289, i32 %290)
  store double %291, double* %15, align 8
  br label %292

292:                                              ; preds = %282, %278
  %293 = load i32, i32* %8, align 4
  %294 = icmp slt i32 %293, 32
  br i1 %294, label %295, label %305

295:                                              ; preds = %292
  %296 = load double, double* %13, align 8
  %297 = fcmp une double %296, 0.000000e+00
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = load i32, i32* %12, align 4
  %300 = and i32 %299, 1
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  br label %305

305:                                              ; preds = %302, %298, %295, %292
  %306 = load double, double* %15, align 8
  %307 = load i32, i32* %10, align 4
  %308 = sitofp i32 %307 to double
  %309 = load i32, i32* %12, align 4
  %310 = sitofp i32 %309 to double
  %311 = fmul double %308, %310
  %312 = fadd double %306, %311
  %313 = load i32, i32* %10, align 4
  %314 = sitofp i32 %313 to double
  %315 = load double, double* %13, align 8
  %316 = fmul double %314, %315
  %317 = fadd double %312, %316
  store double %317, double* %13, align 8
  %318 = load double, double* %15, align 8
  %319 = load double, double* %13, align 8
  %320 = fsub double %319, %318
  store double %320, double* %13, align 8
  %321 = load double, double* %13, align 8
  %322 = fcmp une double %321, 0.000000e+00
  br i1 %322, label %325, label %323

323:                                              ; preds = %305
  %324 = load i32, i32* @ERANGE, align 4
  store i32 %324, i32* @errno, align 4
  br label %325

325:                                              ; preds = %323, %305
  %326 = load double, double* %13, align 8
  %327 = load i64, i64* %21, align 8
  %328 = call double @scalbn(double %326, i64 %327)
  store double %328, double* %6, align 8
  br label %329

329:                                              ; preds = %325, %224, %208, %198, %182, %147
  %330 = load double, double* %6, align 8
  ret double %330
}

declare dso_local i32 @shgetc(i32*) #1

declare dso_local i32 @shunget(i32*) #1

declare dso_local i32 @shlim(i32*, i32) #1

declare dso_local i64 @scanexp(i32*, i32) #1

declare dso_local double @copysign(double, i32) #1

declare dso_local double @scalbn(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
