; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_decfloat.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_decfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KMAX = common dso_local global i32 0, align 4
@decfloat.th = internal constant [1 x i32] [i32 128], align 4
@decfloat.p10s = internal constant [8 x i32] [i32 10, i32 100, i32 1000, i32 10000, i32 100000, i32 1000000, i32 10000000, i32 100000000], align 16
@LLONG_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@DBL_MAX = common dso_local global i32 0, align 4
@DBL_MANT_DIG = common dso_local global i32 0, align 4
@DBL_MIN = common dso_local global i32 0, align 4
@MASK = common dso_local global i32 0, align 4
@LD_B1B_DIG = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32, i32, i32, i32)* @decfloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @decfloat(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %46 = load i32, i32* @KMAX, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %14, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %15, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 0, %50
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 %51, %52
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store double 0.000000e+00, double* %32, align 8
  store double 0.000000e+00, double* %33, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %55

55:                                               ; preds = %59, %6
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 48
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  store i32 1, i32* %25, align 4
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @shgetc(i32* %60)
  store i32 %61, i32* %9, align 4
  br label %55

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 46
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  store i32 1, i32* %26, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @shgetc(i32* %66)
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %74, %65
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 48
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  store i32 1, i32* %25, align 4
  %72 = load i64, i64* %21, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %21, align 8
  br label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @shgetc(i32* %75)
  store i32 %76, i32* %9, align 4
  br label %68

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %62
  %79 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 0, i32* %79, align 16
  br label %80

80:                                               ; preds = %158, %78
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 48
  %83 = icmp ult i32 %82, 10
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 46
  br label %87

87:                                               ; preds = %84, %80
  %88 = phi i1 [ true, %80 ], [ %86, %84 ]
  br i1 %88, label %89, label %161

89:                                               ; preds = %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 46
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i32, i32* %26, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %161

96:                                               ; preds = %92
  store i32 1, i32* %26, align 4
  %97 = load i64, i64* %22, align 8
  store i64 %97, i64* %21, align 8
  br label %157

98:                                               ; preds = %89
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* @KMAX, align 4
  %101 = sub nsw i32 %100, 3
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %140

103:                                              ; preds = %98
  %104 = load i64, i64* %22, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %22, align 8
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 48
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i64, i64* %22, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %24, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %111
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %49, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 10
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %119, %120
  %122 = sub nsw i32 %121, 48
  %123 = load i32, i32* %18, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %49, i64 %124
  store i32 %122, i32* %125, align 4
  br label %132

126:                                              ; preds = %111
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %127, 48
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %49, i64 %130
  store i32 %128, i32* %131, align 4
  br label %132

132:                                              ; preds = %126, %114
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  %135 = icmp eq i32 %134, 9
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %18, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %139

139:                                              ; preds = %136, %132
  store i32 1, i32* %25, align 4
  br label %156

140:                                              ; preds = %98
  %141 = load i64, i64* %22, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %22, align 8
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 48
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i32, i32* @KMAX, align 4
  %147 = sub nsw i32 %146, 4
  %148 = mul nsw i32 %147, 9
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* @KMAX, align 4
  %150 = sub nsw i32 %149, 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %49, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %145, %140
  br label %156

156:                                              ; preds = %155, %139
  br label %157

157:                                              ; preds = %156, %96
  br label %158

158:                                              ; preds = %157
  %159 = load i32*, i32** %8, align 8
  %160 = call i32 @shgetc(i32* %159)
  store i32 %160, i32* %9, align 4
  br label %80

161:                                              ; preds = %95, %87
  %162 = load i32, i32* %26, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %22, align 8
  store i64 %165, i64* %21, align 8
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i32, i32* %25, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %194

169:                                              ; preds = %166
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, 32
  %172 = icmp eq i32 %171, 101
  br i1 %172, label %173, label %194

173:                                              ; preds = %169
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i64 @scanexp(i32* %174, i32 %175)
  store i64 %176, i64* %23, align 8
  %177 = load i64, i64* %23, align 8
  %178 = load i64, i64* @LLONG_MIN, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32*, i32** %8, align 8
  %185 = call i32 @shunget(i32* %184)
  br label %189

186:                                              ; preds = %180
  %187 = load i32*, i32** %8, align 8
  %188 = call i32 @shlim(i32* %187, i32 0)
  store double 0.000000e+00, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

189:                                              ; preds = %183
  store i64 0, i64* %23, align 8
  br label %190

190:                                              ; preds = %189, %173
  %191 = load i64, i64* %23, align 8
  %192 = load i64, i64* %21, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* %21, align 8
  br label %201

194:                                              ; preds = %169, %166
  %195 = load i32, i32* %9, align 4
  %196 = icmp sge i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32*, i32** %8, align 8
  %199 = call i32 @shunget(i32* %198)
  br label %200

200:                                              ; preds = %197, %194
  br label %201

201:                                              ; preds = %200, %190
  %202 = load i32, i32* %25, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %201
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* @errno, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @shlim(i32* %206, i32 0)
  store double 0.000000e+00, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

208:                                              ; preds = %201
  %209 = getelementptr inbounds i32, i32* %49, i64 0
  %210 = load i32, i32* %209, align 16
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %12, align 4
  %214 = sitofp i32 %213 to double
  %215 = fmul double %214, 0.000000e+00
  store double %215, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

216:                                              ; preds = %208
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %22, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %216
  %221 = load i64, i64* %22, align 8
  %222 = icmp slt i64 %221, 10
  br i1 %222, label %223, label %239

223:                                              ; preds = %220
  %224 = load i32, i32* %10, align 4
  %225 = icmp sgt i32 %224, 30
  br i1 %225, label %232, label %226

226:                                              ; preds = %223
  %227 = getelementptr inbounds i32, i32* %49, i64 0
  %228 = load i32, i32* %227, align 16
  %229 = load i32, i32* %10, align 4
  %230 = ashr i32 %228, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %226, %223
  %233 = load i32, i32* %12, align 4
  %234 = sitofp i32 %233 to double
  %235 = getelementptr inbounds i32, i32* %49, i64 0
  %236 = load i32, i32* %235, align 16
  %237 = sitofp i32 %236 to double
  %238 = fmul double %234, %237
  store double %238, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

239:                                              ; preds = %226, %220, %216
  %240 = load i64, i64* %21, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sub nsw i32 0, %241
  %243 = sdiv i32 %242, 2
  %244 = sext i32 %243 to i64
  %245 = icmp sgt i64 %240, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %239
  %247 = load i32, i32* @ERANGE, align 4
  store i32 %247, i32* @errno, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @DBL_MAX, align 4
  %250 = mul nsw i32 %248, %249
  %251 = load i32, i32* @DBL_MAX, align 4
  %252 = mul nsw i32 %250, %251
  %253 = sitofp i32 %252 to double
  store double %253, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

254:                                              ; preds = %239
  %255 = load i64, i64* %21, align 8
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @DBL_MANT_DIG, align 4
  %258 = mul nsw i32 2, %257
  %259 = sub nsw i32 %256, %258
  %260 = sext i32 %259 to i64
  %261 = icmp slt i64 %255, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %254
  %263 = load i32, i32* @ERANGE, align 4
  store i32 %263, i32* @errno, align 4
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @DBL_MIN, align 4
  %266 = mul nsw i32 %264, %265
  %267 = load i32, i32* @DBL_MIN, align 4
  %268 = mul nsw i32 %266, %267
  %269 = sitofp i32 %268 to double
  store double %269, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

270:                                              ; preds = %254
  %271 = load i32, i32* %17, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %289

273:                                              ; preds = %270
  br label %274

274:                                              ; preds = %283, %273
  %275 = load i32, i32* %17, align 4
  %276 = icmp slt i32 %275, 9
  br i1 %276, label %277, label %286

277:                                              ; preds = %274
  %278 = load i32, i32* %18, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %49, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = mul nsw i32 %281, 10
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %277
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %17, align 4
  br label %274

286:                                              ; preds = %274
  %287 = load i32, i32* %18, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %289

289:                                              ; preds = %286, %270
  store i32 0, i32* %19, align 4
  %290 = load i32, i32* %18, align 4
  store i32 %290, i32* %20, align 4
  store i32 0, i32* %28, align 4
  %291 = load i64, i64* %21, align 8
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %27, align 4
  %293 = load i32, i32* %24, align 4
  %294 = icmp slt i32 %293, 9
  br i1 %294, label %295, label %358

295:                                              ; preds = %289
  %296 = load i32, i32* %24, align 4
  %297 = load i32, i32* %27, align 4
  %298 = icmp sle i32 %296, %297
  br i1 %298, label %299, label %358

299:                                              ; preds = %295
  %300 = load i32, i32* %27, align 4
  %301 = icmp slt i32 %300, 18
  br i1 %301, label %302, label %358

302:                                              ; preds = %299
  %303 = load i32, i32* %27, align 4
  %304 = icmp eq i32 %303, 9
  br i1 %304, label %305, label %312

305:                                              ; preds = %302
  %306 = load i32, i32* %12, align 4
  %307 = sitofp i32 %306 to double
  %308 = getelementptr inbounds i32, i32* %49, i64 0
  %309 = load i32, i32* %308, align 16
  %310 = sitofp i32 %309 to double
  %311 = fmul double %307, %310
  store double %311, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

312:                                              ; preds = %302
  %313 = load i32, i32* %27, align 4
  %314 = icmp slt i32 %313, 9
  br i1 %314, label %315, label %329

315:                                              ; preds = %312
  %316 = load i32, i32* %12, align 4
  %317 = sitofp i32 %316 to double
  %318 = getelementptr inbounds i32, i32* %49, i64 0
  %319 = load i32, i32* %318, align 16
  %320 = sitofp i32 %319 to double
  %321 = fmul double %317, %320
  %322 = load i32, i32* %27, align 4
  %323 = sub nsw i32 8, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [8 x i32], [8 x i32]* @decfloat.p10s, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = sitofp i32 %326 to double
  %328 = fdiv double %321, %327
  store double %328, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

329:                                              ; preds = %312
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %27, align 4
  %332 = sub nsw i32 %331, 9
  %333 = mul nsw i32 3, %332
  %334 = sub nsw i32 %330, %333
  store i32 %334, i32* %35, align 4
  %335 = load i32, i32* %35, align 4
  %336 = icmp sgt i32 %335, 30
  br i1 %336, label %343, label %337

337:                                              ; preds = %329
  %338 = getelementptr inbounds i32, i32* %49, i64 0
  %339 = load i32, i32* %338, align 16
  %340 = load i32, i32* %35, align 4
  %341 = ashr i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %337, %329
  %344 = load i32, i32* %12, align 4
  %345 = sitofp i32 %344 to double
  %346 = getelementptr inbounds i32, i32* %49, i64 0
  %347 = load i32, i32* %346, align 16
  %348 = sitofp i32 %347 to double
  %349 = fmul double %345, %348
  %350 = load i32, i32* %27, align 4
  %351 = sub nsw i32 %350, 10
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* @decfloat.p10s, i64 0, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = sitofp i32 %354 to double
  %356 = fmul double %349, %355
  store double %356, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

357:                                              ; preds = %337
  br label %358

358:                                              ; preds = %357, %299, %295, %289
  br label %359

359:                                              ; preds = %368, %358
  %360 = load i32, i32* %20, align 4
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %49, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  %366 = xor i1 %365, true
  br i1 %366, label %367, label %371

367:                                              ; preds = %359
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %20, align 4
  %370 = add nsw i32 %369, -1
  store i32 %370, i32* %20, align 4
  br label %359

371:                                              ; preds = %359
  %372 = load i32, i32* %27, align 4
  %373 = srem i32 %372, 9
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %453

375:                                              ; preds = %371
  %376 = load i32, i32* %27, align 4
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i32, i32* %27, align 4
  %380 = srem i32 %379, 9
  br label %385

381:                                              ; preds = %375
  %382 = load i32, i32* %27, align 4
  %383 = srem i32 %382, 9
  %384 = add nsw i32 %383, 9
  br label %385

385:                                              ; preds = %381, %378
  %386 = phi i32 [ %380, %378 ], [ %384, %381 ]
  store i32 %386, i32* %36, align 4
  %387 = load i32, i32* %36, align 4
  %388 = sub nsw i32 8, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [8 x i32], [8 x i32]* @decfloat.p10s, i64 0, i64 %389
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %392 = load i32, i32* %19, align 4
  store i32 %392, i32* %18, align 4
  br label %393

393:                                              ; preds = %436, %385
  %394 = load i32, i32* %18, align 4
  %395 = load i32, i32* %20, align 4
  %396 = icmp ne i32 %394, %395
  br i1 %396, label %397, label %439

397:                                              ; preds = %393
  %398 = load i32, i32* %18, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %49, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %37, align 4
  %403 = srem i32 %401, %402
  store i32 %403, i32* %39, align 4
  %404 = load i32, i32* %18, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %49, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %37, align 4
  %409 = sdiv i32 %407, %408
  %410 = load i32, i32* %38, align 4
  %411 = add nsw i32 %409, %410
  %412 = load i32, i32* %18, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %49, i64 %413
  store i32 %411, i32* %414, align 4
  %415 = load i32, i32* %37, align 4
  %416 = sdiv i32 1000000000, %415
  %417 = load i32, i32* %39, align 4
  %418 = mul nsw i32 %416, %417
  store i32 %418, i32* %38, align 4
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* %19, align 4
  %421 = icmp eq i32 %419, %420
  br i1 %421, label %422, label %435

422:                                              ; preds = %397
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %49, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %422
  %429 = load i32, i32* %19, align 4
  %430 = add nsw i32 %429, 1
  %431 = load i32, i32* @MASK, align 4
  %432 = and i32 %430, %431
  store i32 %432, i32* %19, align 4
  %433 = load i32, i32* %27, align 4
  %434 = sub nsw i32 %433, 9
  store i32 %434, i32* %27, align 4
  br label %435

435:                                              ; preds = %428, %422, %397
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %18, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %18, align 4
  br label %393

439:                                              ; preds = %393
  %440 = load i32, i32* %38, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %439
  %443 = load i32, i32* %38, align 4
  %444 = load i32, i32* %20, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %20, align 4
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds i32, i32* %49, i64 %446
  store i32 %443, i32* %447, align 4
  br label %448

448:                                              ; preds = %442, %439
  %449 = load i32, i32* %36, align 4
  %450 = sub nsw i32 9, %449
  %451 = load i32, i32* %27, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %27, align 4
  br label %453

453:                                              ; preds = %448, %371
  br label %454

454:                                              ; preds = %570, %453
  %455 = load i32, i32* %27, align 4
  %456 = load i32, i32* @LD_B1B_DIG, align 4
  %457 = mul nsw i32 9, %456
  %458 = icmp slt i32 %455, %457
  br i1 %458, label %473, label %459

459:                                              ; preds = %454
  %460 = load i32, i32* %27, align 4
  %461 = load i32, i32* @LD_B1B_DIG, align 4
  %462 = mul nsw i32 9, %461
  %463 = icmp eq i32 %460, %462
  br i1 %463, label %464, label %471

464:                                              ; preds = %459
  %465 = load i32, i32* %19, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %49, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* getelementptr inbounds ([1 x i32], [1 x i32]* @decfloat.th, i64 0, i64 0), align 4
  %470 = icmp slt i32 %468, %469
  br label %471

471:                                              ; preds = %464, %459
  %472 = phi i1 [ false, %459 ], [ %470, %464 ]
  br label %473

473:                                              ; preds = %471, %454
  %474 = phi i1 [ true, %454 ], [ %472, %471 ]
  br i1 %474, label %475, label %571

475:                                              ; preds = %473
  store i32 0, i32* %40, align 4
  %476 = load i32, i32* %28, align 4
  %477 = sub nsw i32 %476, 29
  store i32 %477, i32* %28, align 4
  %478 = load i32, i32* %20, align 4
  %479 = sub nsw i32 %478, 1
  %480 = load i32, i32* @MASK, align 4
  %481 = and i32 %479, %480
  store i32 %481, i32* %18, align 4
  br label %482

482:                                              ; preds = %530, %475
  %483 = load i32, i32* %18, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %49, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = shl i32 %486, 29
  %488 = load i32, i32* %40, align 4
  %489 = add nsw i32 %487, %488
  store i32 %489, i32* %41, align 4
  %490 = load i32, i32* %41, align 4
  %491 = icmp sgt i32 %490, 1000000000
  br i1 %491, label %492, label %500

492:                                              ; preds = %482
  %493 = load i32, i32* %41, align 4
  %494 = sdiv i32 %493, 1000000000
  store i32 %494, i32* %40, align 4
  %495 = load i32, i32* %41, align 4
  %496 = srem i32 %495, 1000000000
  %497 = load i32, i32* %18, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds i32, i32* %49, i64 %498
  store i32 %496, i32* %499, align 4
  br label %505

500:                                              ; preds = %482
  store i32 0, i32* %40, align 4
  %501 = load i32, i32* %41, align 4
  %502 = load i32, i32* %18, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %49, i64 %503
  store i32 %501, i32* %504, align 4
  br label %505

505:                                              ; preds = %500, %492
  %506 = load i32, i32* %18, align 4
  %507 = load i32, i32* %20, align 4
  %508 = sub nsw i32 %507, 1
  %509 = load i32, i32* @MASK, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %506, %510
  br i1 %511, label %512, label %524

512:                                              ; preds = %505
  %513 = load i32, i32* %18, align 4
  %514 = load i32, i32* %19, align 4
  %515 = icmp ne i32 %513, %514
  br i1 %515, label %516, label %524

516:                                              ; preds = %512
  %517 = load i32, i32* %18, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %49, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %516
  %523 = load i32, i32* %18, align 4
  store i32 %523, i32* %20, align 4
  br label %524

524:                                              ; preds = %522, %516, %512, %505
  %525 = load i32, i32* %18, align 4
  %526 = load i32, i32* %19, align 4
  %527 = icmp eq i32 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %524
  br label %535

529:                                              ; preds = %524
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %18, align 4
  %532 = sub nsw i32 %531, 1
  %533 = load i32, i32* @MASK, align 4
  %534 = and i32 %532, %533
  store i32 %534, i32* %18, align 4
  br label %482

535:                                              ; preds = %528
  %536 = load i32, i32* %40, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %570

538:                                              ; preds = %535
  %539 = load i32, i32* %27, align 4
  %540 = add nsw i32 %539, 9
  store i32 %540, i32* %27, align 4
  %541 = load i32, i32* %19, align 4
  %542 = sub nsw i32 %541, 1
  %543 = load i32, i32* @MASK, align 4
  %544 = and i32 %542, %543
  store i32 %544, i32* %19, align 4
  %545 = load i32, i32* %19, align 4
  %546 = load i32, i32* %20, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %548, label %565

548:                                              ; preds = %538
  %549 = load i32, i32* %20, align 4
  %550 = sub nsw i32 %549, 1
  %551 = load i32, i32* @MASK, align 4
  %552 = and i32 %550, %551
  store i32 %552, i32* %20, align 4
  %553 = load i32, i32* %20, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %49, i64 %554
  %556 = load i32, i32* %555, align 4
  %557 = load i32, i32* %20, align 4
  %558 = sub nsw i32 %557, 1
  %559 = load i32, i32* @MASK, align 4
  %560 = and i32 %558, %559
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %49, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = or i32 %563, %556
  store i32 %564, i32* %562, align 4
  br label %565

565:                                              ; preds = %548, %538
  %566 = load i32, i32* %40, align 4
  %567 = load i32, i32* %19, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %49, i64 %568
  store i32 %566, i32* %569, align 4
  br label %570

570:                                              ; preds = %565, %535
  br label %454

571:                                              ; preds = %473
  br label %572

572:                                              ; preds = %720, %571
  store i32 0, i32* %42, align 4
  store i32 1, i32* %43, align 4
  store i32 0, i32* %16, align 4
  br label %573

573:                                              ; preds = %614, %572
  %574 = load i32, i32* %16, align 4
  %575 = load i32, i32* @LD_B1B_DIG, align 4
  %576 = icmp slt i32 %574, %575
  br i1 %576, label %577, label %617

577:                                              ; preds = %573
  %578 = load i32, i32* %19, align 4
  %579 = load i32, i32* %16, align 4
  %580 = add nsw i32 %578, %579
  %581 = load i32, i32* @MASK, align 4
  %582 = and i32 %580, %581
  store i32 %582, i32* %18, align 4
  %583 = load i32, i32* %18, align 4
  %584 = load i32, i32* %20, align 4
  %585 = icmp eq i32 %583, %584
  br i1 %585, label %596, label %586

586:                                              ; preds = %577
  %587 = load i32, i32* %18, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %49, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %16, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [1 x i32], [1 x i32]* @decfloat.th, i64 0, i64 %592
  %594 = load i32, i32* %593, align 4
  %595 = icmp slt i32 %590, %594
  br i1 %595, label %596, label %598

596:                                              ; preds = %586, %577
  %597 = load i32, i32* @LD_B1B_DIG, align 4
  store i32 %597, i32* %16, align 4
  br label %617

598:                                              ; preds = %586
  %599 = load i32, i32* %19, align 4
  %600 = load i32, i32* %16, align 4
  %601 = add nsw i32 %599, %600
  %602 = load i32, i32* @MASK, align 4
  %603 = and i32 %601, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %49, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* %16, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [1 x i32], [1 x i32]* @decfloat.th, i64 0, i64 %608
  %610 = load i32, i32* %609, align 4
  %611 = icmp sgt i32 %606, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %598
  br label %617

613:                                              ; preds = %598
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %16, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %16, align 4
  br label %573

617:                                              ; preds = %612, %596, %573
  %618 = load i32, i32* %16, align 4
  %619 = load i32, i32* @LD_B1B_DIG, align 4
  %620 = icmp eq i32 %618, %619
  br i1 %620, label %621, label %627

621:                                              ; preds = %617
  %622 = load i32, i32* %27, align 4
  %623 = load i32, i32* @LD_B1B_DIG, align 4
  %624 = mul nsw i32 9, %623
  %625 = icmp eq i32 %622, %624
  br i1 %625, label %626, label %627

626:                                              ; preds = %621
  br label %721

627:                                              ; preds = %621, %617
  %628 = load i32, i32* %27, align 4
  %629 = load i32, i32* @LD_B1B_DIG, align 4
  %630 = mul nsw i32 9, %629
  %631 = add nsw i32 9, %630
  %632 = icmp sgt i32 %628, %631
  br i1 %632, label %633, label %634

633:                                              ; preds = %627
  store i32 9, i32* %43, align 4
  br label %634

634:                                              ; preds = %633, %627
  %635 = load i32, i32* %43, align 4
  %636 = load i32, i32* %28, align 4
  %637 = add nsw i32 %636, %635
  store i32 %637, i32* %28, align 4
  %638 = load i32, i32* %19, align 4
  store i32 %638, i32* %18, align 4
  br label %639

639:                                              ; preds = %686, %634
  %640 = load i32, i32* %18, align 4
  %641 = load i32, i32* %20, align 4
  %642 = icmp ne i32 %640, %641
  br i1 %642, label %643, label %691

643:                                              ; preds = %639
  %644 = load i32, i32* %18, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds i32, i32* %49, i64 %645
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* %43, align 4
  %649 = shl i32 1, %648
  %650 = sub nsw i32 %649, 1
  %651 = and i32 %647, %650
  store i32 %651, i32* %44, align 4
  %652 = load i32, i32* %18, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32, i32* %49, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* %43, align 4
  %657 = ashr i32 %655, %656
  %658 = load i32, i32* %42, align 4
  %659 = add nsw i32 %657, %658
  %660 = load i32, i32* %18, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i32, i32* %49, i64 %661
  store i32 %659, i32* %662, align 4
  %663 = load i32, i32* %43, align 4
  %664 = ashr i32 1000000000, %663
  %665 = load i32, i32* %44, align 4
  %666 = mul nsw i32 %664, %665
  store i32 %666, i32* %42, align 4
  %667 = load i32, i32* %18, align 4
  %668 = load i32, i32* %19, align 4
  %669 = icmp eq i32 %667, %668
  br i1 %669, label %670, label %685

670:                                              ; preds = %643
  %671 = load i32, i32* %18, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds i32, i32* %49, i64 %672
  %674 = load i32, i32* %673, align 4
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %685, label %676

676:                                              ; preds = %670
  %677 = load i32, i32* %19, align 4
  %678 = add nsw i32 %677, 1
  %679 = load i32, i32* @MASK, align 4
  %680 = and i32 %678, %679
  store i32 %680, i32* %19, align 4
  %681 = load i32, i32* %16, align 4
  %682 = add nsw i32 %681, -1
  store i32 %682, i32* %16, align 4
  %683 = load i32, i32* %27, align 4
  %684 = sub nsw i32 %683, 9
  store i32 %684, i32* %27, align 4
  br label %685

685:                                              ; preds = %676, %670, %643
  br label %686

686:                                              ; preds = %685
  %687 = load i32, i32* %18, align 4
  %688 = add nsw i32 %687, 1
  %689 = load i32, i32* @MASK, align 4
  %690 = and i32 %688, %689
  store i32 %690, i32* %18, align 4
  br label %639

691:                                              ; preds = %639
  %692 = load i32, i32* %42, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %720

694:                                              ; preds = %691
  %695 = load i32, i32* %20, align 4
  %696 = add nsw i32 %695, 1
  %697 = load i32, i32* @MASK, align 4
  %698 = and i32 %696, %697
  %699 = load i32, i32* %19, align 4
  %700 = icmp ne i32 %698, %699
  br i1 %700, label %701, label %710

701:                                              ; preds = %694
  %702 = load i32, i32* %42, align 4
  %703 = load i32, i32* %20, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32, i32* %49, i64 %704
  store i32 %702, i32* %705, align 4
  %706 = load i32, i32* %20, align 4
  %707 = add nsw i32 %706, 1
  %708 = load i32, i32* @MASK, align 4
  %709 = and i32 %707, %708
  store i32 %709, i32* %20, align 4
  br label %719

710:                                              ; preds = %694
  %711 = load i32, i32* %20, align 4
  %712 = sub nsw i32 %711, 1
  %713 = load i32, i32* @MASK, align 4
  %714 = and i32 %712, %713
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %49, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = or i32 %717, 1
  store i32 %718, i32* %716, align 4
  br label %719

719:                                              ; preds = %710, %701
  br label %720

720:                                              ; preds = %719, %691
  br label %572

721:                                              ; preds = %626
  store i32 0, i32* %16, align 4
  store double 0.000000e+00, double* %31, align 8
  br label %722

722:                                              ; preds = %757, %721
  %723 = load i32, i32* %16, align 4
  %724 = load i32, i32* @LD_B1B_DIG, align 4
  %725 = icmp slt i32 %723, %724
  br i1 %725, label %726, label %760

726:                                              ; preds = %722
  %727 = load i32, i32* %19, align 4
  %728 = load i32, i32* %16, align 4
  %729 = add nsw i32 %727, %728
  %730 = load i32, i32* @MASK, align 4
  %731 = and i32 %729, %730
  %732 = load i32, i32* %20, align 4
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %734, label %742

734:                                              ; preds = %726
  %735 = load i32, i32* %20, align 4
  %736 = add nsw i32 %735, 1
  %737 = load i32, i32* @MASK, align 4
  %738 = and i32 %736, %737
  store i32 %738, i32* %20, align 4
  %739 = sub nsw i32 %738, 1
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, i32* %49, i64 %740
  store i32 0, i32* %741, align 4
  br label %742

742:                                              ; preds = %734, %726
  %743 = load double, double* %31, align 8
  %744 = fpext double %743 to x86_fp80
  %745 = fmul x86_fp80 0xK401CEE6B280000000000, %744
  %746 = load i32, i32* %19, align 4
  %747 = load i32, i32* %16, align 4
  %748 = add nsw i32 %746, %747
  %749 = load i32, i32* @MASK, align 4
  %750 = and i32 %748, %749
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i32, i32* %49, i64 %751
  %753 = load i32, i32* %752, align 4
  %754 = sitofp i32 %753 to x86_fp80
  %755 = fadd x86_fp80 %745, %754
  %756 = fptrunc x86_fp80 %755 to double
  store double %756, double* %31, align 8
  br label %757

757:                                              ; preds = %742
  %758 = load i32, i32* %16, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %16, align 4
  br label %722

760:                                              ; preds = %722
  %761 = load i32, i32* %12, align 4
  %762 = sitofp i32 %761 to double
  %763 = load double, double* %31, align 8
  %764 = fmul double %763, %762
  store double %764, double* %31, align 8
  %765 = load i32, i32* %10, align 4
  %766 = load i32, i32* @DBL_MANT_DIG, align 4
  %767 = load i32, i32* %28, align 4
  %768 = add nsw i32 %766, %767
  %769 = load i32, i32* %11, align 4
  %770 = sub nsw i32 %768, %769
  %771 = icmp sgt i32 %765, %770
  br i1 %771, label %772, label %782

772:                                              ; preds = %760
  %773 = load i32, i32* @DBL_MANT_DIG, align 4
  %774 = load i32, i32* %28, align 4
  %775 = add nsw i32 %773, %774
  %776 = load i32, i32* %11, align 4
  %777 = sub nsw i32 %775, %776
  store i32 %777, i32* %10, align 4
  %778 = load i32, i32* %10, align 4
  %779 = icmp slt i32 %778, 0
  br i1 %779, label %780, label %781

780:                                              ; preds = %772
  store i32 0, i32* %10, align 4
  br label %781

781:                                              ; preds = %780, %772
  store i32 1, i32* %30, align 4
  br label %782

782:                                              ; preds = %781, %760
  %783 = load i32, i32* %10, align 4
  %784 = load i32, i32* @DBL_MANT_DIG, align 4
  %785 = icmp slt i32 %783, %784
  br i1 %785, label %786, label %808

786:                                              ; preds = %782
  %787 = load i32, i32* @DBL_MANT_DIG, align 4
  %788 = mul nsw i32 2, %787
  %789 = load i32, i32* %10, align 4
  %790 = sub nsw i32 %788, %789
  %791 = sub nsw i32 %790, 1
  %792 = call double @scalbn(double 1.000000e+00, i32 %791) #1
  %793 = load double, double* %31, align 8
  %794 = call double @llvm.copysign.f64(double %792, double %793)
  store double %794, double* %33, align 8
  %795 = load double, double* %31, align 8
  %796 = load i32, i32* @DBL_MANT_DIG, align 4
  %797 = load i32, i32* %10, align 4
  %798 = sub nsw i32 %796, %797
  %799 = call double @scalbn(double 1.000000e+00, i32 %798) #1
  %800 = fptosi double %799 to i32
  %801 = call double @fmod(double %795, i32 %800)
  store double %801, double* %32, align 8
  %802 = load double, double* %32, align 8
  %803 = load double, double* %31, align 8
  %804 = fsub double %803, %802
  store double %804, double* %31, align 8
  %805 = load double, double* %33, align 8
  %806 = load double, double* %31, align 8
  %807 = fadd double %806, %805
  store double %807, double* %31, align 8
  br label %808

808:                                              ; preds = %786, %782
  %809 = load i32, i32* %19, align 4
  %810 = load i32, i32* %16, align 4
  %811 = add nsw i32 %809, %810
  %812 = load i32, i32* @MASK, align 4
  %813 = and i32 %811, %812
  %814 = load i32, i32* %20, align 4
  %815 = icmp ne i32 %813, %814
  br i1 %815, label %816, label %894

816:                                              ; preds = %808
  %817 = load i32, i32* %19, align 4
  %818 = load i32, i32* %16, align 4
  %819 = add nsw i32 %817, %818
  %820 = load i32, i32* @MASK, align 4
  %821 = and i32 %819, %820
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32, i32* %49, i64 %822
  %824 = load i32, i32* %823, align 4
  store i32 %824, i32* %45, align 4
  %825 = load i32, i32* %45, align 4
  %826 = icmp slt i32 %825, 500000000
  br i1 %826, label %827, label %845

827:                                              ; preds = %816
  %828 = load i32, i32* %45, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %839, label %830

830:                                              ; preds = %827
  %831 = load i32, i32* %19, align 4
  %832 = load i32, i32* %16, align 4
  %833 = add nsw i32 %831, %832
  %834 = add nsw i32 %833, 1
  %835 = load i32, i32* @MASK, align 4
  %836 = and i32 %834, %835
  %837 = load i32, i32* %20, align 4
  %838 = icmp ne i32 %836, %837
  br i1 %838, label %839, label %845

839:                                              ; preds = %830, %827
  %840 = load i32, i32* %12, align 4
  %841 = sitofp i32 %840 to double
  %842 = fmul double 2.500000e-01, %841
  %843 = load double, double* %32, align 8
  %844 = fadd double %843, %842
  store double %844, double* %32, align 8
  br label %881

845:                                              ; preds = %830, %816
  %846 = load i32, i32* %45, align 4
  %847 = icmp sgt i32 %846, 500000000
  br i1 %847, label %848, label %854

848:                                              ; preds = %845
  %849 = load i32, i32* %12, align 4
  %850 = sitofp i32 %849 to double
  %851 = fmul double 7.500000e-01, %850
  %852 = load double, double* %32, align 8
  %853 = fadd double %852, %851
  store double %853, double* %32, align 8
  br label %880

854:                                              ; preds = %845
  %855 = load i32, i32* %45, align 4
  %856 = icmp eq i32 %855, 500000000
  br i1 %856, label %857, label %879

857:                                              ; preds = %854
  %858 = load i32, i32* %19, align 4
  %859 = load i32, i32* %16, align 4
  %860 = add nsw i32 %858, %859
  %861 = add nsw i32 %860, 1
  %862 = load i32, i32* @MASK, align 4
  %863 = and i32 %861, %862
  %864 = load i32, i32* %20, align 4
  %865 = icmp eq i32 %863, %864
  br i1 %865, label %866, label %872

866:                                              ; preds = %857
  %867 = load i32, i32* %12, align 4
  %868 = sitofp i32 %867 to double
  %869 = fmul double 5.000000e-01, %868
  %870 = load double, double* %32, align 8
  %871 = fadd double %870, %869
  store double %871, double* %32, align 8
  br label %878

872:                                              ; preds = %857
  %873 = load i32, i32* %12, align 4
  %874 = sitofp i32 %873 to double
  %875 = fmul double 7.500000e-01, %874
  %876 = load double, double* %32, align 8
  %877 = fadd double %876, %875
  store double %877, double* %32, align 8
  br label %878

878:                                              ; preds = %872, %866
  br label %879

879:                                              ; preds = %878, %854
  br label %880

880:                                              ; preds = %879, %848
  br label %881

881:                                              ; preds = %880, %839
  %882 = load i32, i32* @DBL_MANT_DIG, align 4
  %883 = load i32, i32* %10, align 4
  %884 = sub nsw i32 %882, %883
  %885 = icmp sge i32 %884, 2
  br i1 %885, label %886, label %893

886:                                              ; preds = %881
  %887 = load double, double* %32, align 8
  %888 = call double @fmod(double %887, i32 1)
  %889 = fcmp une double %888, 0.000000e+00
  br i1 %889, label %893, label %890

890:                                              ; preds = %886
  %891 = load double, double* %32, align 8
  %892 = fadd double %891, 1.000000e+00
  store double %892, double* %32, align 8
  br label %893

893:                                              ; preds = %890, %886, %881
  br label %894

894:                                              ; preds = %893, %808
  %895 = load double, double* %32, align 8
  %896 = load double, double* %31, align 8
  %897 = fadd double %896, %895
  store double %897, double* %31, align 8
  %898 = load double, double* %33, align 8
  %899 = load double, double* %31, align 8
  %900 = fsub double %899, %898
  store double %900, double* %31, align 8
  %901 = load i32, i32* %28, align 4
  %902 = load i32, i32* @DBL_MANT_DIG, align 4
  %903 = add nsw i32 %901, %902
  %904 = load i32, i32* @INT_MAX, align 4
  %905 = and i32 %903, %904
  %906 = load i32, i32* %29, align 4
  %907 = sub nsw i32 %906, 5
  %908 = icmp sgt i32 %905, %907
  br i1 %908, label %909, label %947

909:                                              ; preds = %894
  %910 = load double, double* %31, align 8
  %911 = call i64 @fabs(double %910)
  %912 = load i32, i32* @DBL_MANT_DIG, align 4
  %913 = call i64 @pow(i32 2, i32 %912)
  %914 = icmp sge i64 %911, %913
  br i1 %914, label %915, label %932

915:                                              ; preds = %909
  %916 = load i32, i32* %30, align 4
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %927

918:                                              ; preds = %915
  %919 = load i32, i32* %10, align 4
  %920 = load i32, i32* @DBL_MANT_DIG, align 4
  %921 = load i32, i32* %28, align 4
  %922 = add nsw i32 %920, %921
  %923 = load i32, i32* %11, align 4
  %924 = sub nsw i32 %922, %923
  %925 = icmp eq i32 %919, %924
  br i1 %925, label %926, label %927

926:                                              ; preds = %918
  store i32 0, i32* %30, align 4
  br label %927

927:                                              ; preds = %926, %918, %915
  %928 = load double, double* %31, align 8
  %929 = fmul double %928, 5.000000e-01
  store double %929, double* %31, align 8
  %930 = load i32, i32* %28, align 4
  %931 = add nsw i32 %930, 1
  store i32 %931, i32* %28, align 4
  br label %932

932:                                              ; preds = %927, %909
  %933 = load i32, i32* %28, align 4
  %934 = load i32, i32* @DBL_MANT_DIG, align 4
  %935 = add nsw i32 %933, %934
  %936 = load i32, i32* %29, align 4
  %937 = icmp sgt i32 %935, %936
  br i1 %937, label %944, label %938

938:                                              ; preds = %932
  %939 = load i32, i32* %30, align 4
  %940 = icmp ne i32 %939, 0
  br i1 %940, label %941, label %946

941:                                              ; preds = %938
  %942 = load double, double* %32, align 8
  %943 = fcmp une double %942, 0.000000e+00
  br i1 %943, label %944, label %946

944:                                              ; preds = %941, %932
  %945 = load i32, i32* @ERANGE, align 4
  store i32 %945, i32* @errno, align 4
  br label %946

946:                                              ; preds = %944, %941, %938
  br label %947

947:                                              ; preds = %946, %894
  %948 = load double, double* %31, align 8
  %949 = load i32, i32* %28, align 4
  %950 = call double @scalbn(double %948, i32 %949) #1
  store double %950, double* %7, align 8
  store i32 1, i32* %34, align 4
  br label %951

951:                                              ; preds = %947, %343, %315, %305, %262, %246, %232, %212, %204, %186
  %952 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %952)
  %953 = load double, double* %7, align 8
  ret double %953
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @shgetc(i32*) #2

declare dso_local i64 @scanexp(i32*, i32) #2

declare dso_local i32 @shunget(i32*) #2

declare dso_local i32 @shlim(i32*, i32) #2

; Function Attrs: nounwind
declare dso_local double @scalbn(double, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.copysign.f64(double, double) #4

declare dso_local double @fmod(double, i32) #2

declare dso_local i64 @fabs(double) #2

declare dso_local i64 @pow(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
