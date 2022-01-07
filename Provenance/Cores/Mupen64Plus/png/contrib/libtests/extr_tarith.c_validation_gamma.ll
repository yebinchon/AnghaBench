; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_validation_gamma.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_tarith.c_validation_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.validation_gamma.gamma = private unnamed_addr constant [9 x double] [double 2.200000e+00, double 1.800000e+00, double 1.520000e+00, double 1.450000e+00, double 1.000000e+00, double 0x3FE611A7B9611A7C, double 0x3FE50D79435E50D8, double 0x3FE1C71C71C71C72, double 0x3FDD1745D1745D17], align 16
@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unknown argument %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"8-bit log error: %d: got %u, expected %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"maximum 8-bit log error = %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"16-bit log error: %d: got %u, expected %f error: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"maximum 16-bit log error = %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"32-bit exp error: %d: got %u, expected %f error: %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"maximum 32-bit exp error = %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"8-bit exp error: %d: got %u, expected %f error: %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"maximum 8-bit exp error = %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"16-bit exp error: %d: got %u, expected %f error: %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"maximum 16-bit exp error = %f\0A\00", align 1
@PNG_FP_1 = common dso_local global double 0.000000e+00, align 8
@.str.13 = private unnamed_addr constant [15 x i8] c"Test gamma %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"8bit %d ^ %f: got %d expected %f error %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"gamma %f: maximum 8-bit error %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"16bit %d ^ %f: got %d expected %f error %f\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"gamma %f: maximum 16-bit error %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validation_gamma(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [9 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %30 = bitcast [9 x double]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([9 x double]* @__const.validation_gamma.gamma to i8*), i64 72, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %54, %2
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %9, align 4
  br label %54

42:                                               ; preds = %35
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32 1, i32* %3, align 4
  br label %468

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %41
  br label %31

55:                                               ; preds = %31
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %344, label %58

58:                                               ; preds = %55
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %114, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %117

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %64, 2.550000e+02
  %66 = fptosi double %65 to i32
  %67 = call i32 @log(i32 %66)
  %68 = sub nsw i32 0, %67
  %69 = call i32 @log(i32 2)
  %70 = sdiv i32 %68, %69
  %71 = mul nsw i32 %70, 65536
  %72 = sitofp i32 %71 to double
  store double %72, double* %11, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @png_log8bit(i32 %73)
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %11, align 8
  %77 = fsub double %75, %76
  store double %77, double* %12, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %62
  %81 = load double, double* %12, align 8
  %82 = call double @llvm.fabs.f64(double %81)
  %83 = load double, double* %7, align 8
  %84 = fcmp ogt double %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load double, double* %12, align 8
  %87 = call double @llvm.fabs.f64(double %86)
  store double %87, double* %7, align 8
  br label %88

88:                                               ; preds = %85, %80, %62
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @png_log8bit(i32 %92)
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %106, label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @png_log8bit(i32 %99)
  %101 = sitofp i32 %100 to double
  %102 = load double, double* %11, align 8
  %103 = fadd double %102, 5.000000e-01
  %104 = call double @llvm.floor.f64(double %103)
  %105 = fcmp une double %101, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %98, %91
  %107 = load i32, i32* @stderr, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @png_log8bit(i32 %109)
  %111 = load double, double* %11, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %110, double %111)
  br label %113

113:                                              ; preds = %106, %98, %95
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %59

117:                                              ; preds = %59
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load double, double* %7, align 8
  %122 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), double %121)
  br label %123

123:                                              ; preds = %120, %117
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %184, %123
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 65536
  br i1 %126, label %127, label %187

127:                                              ; preds = %124
  %128 = load i32, i32* %8, align 4
  %129 = sitofp i32 %128 to double
  %130 = fdiv double %129, 6.553500e+04
  %131 = fptosi double %130 to i32
  %132 = call i32 @log(i32 %131)
  %133 = sub nsw i32 0, %132
  %134 = call i32 @log(i32 2)
  %135 = sdiv i32 %133, %134
  %136 = mul nsw i32 %135, 65536
  %137 = sitofp i32 %136 to double
  store double %137, double* %13, align 8
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @png_log16bit(i32 %138)
  %140 = sitofp i32 %139 to double
  %141 = load double, double* %13, align 8
  %142 = fsub double %140, %141
  store double %142, double* %14, align 8
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %127
  %146 = load double, double* %14, align 8
  %147 = call double @llvm.fabs.f64(double %146)
  %148 = load double, double* %7, align 8
  %149 = fcmp ogt double %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load double, double* %14, align 8
  %152 = call double @llvm.fabs.f64(double %151)
  store double %152, double* %7, align 8
  br label %153

153:                                              ; preds = %150, %145, %127
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @png_log16bit(i32 %157)
  %159 = icmp ne i32 %158, -1
  br i1 %159, label %171, label %160

160:                                              ; preds = %156, %153
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %183

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @png_log16bit(i32 %164)
  %166 = sitofp i32 %165 to double
  %167 = load double, double* %13, align 8
  %168 = fadd double %167, 5.000000e-01
  %169 = call double @llvm.floor.f64(double %168)
  %170 = fcmp une double %166, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %163, %156
  %172 = load double, double* %14, align 8
  %173 = fcmp ogt double %172, 6.800000e-01
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i32, i32* @stderr, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @png_log16bit(i32 %177)
  %179 = load double, double* %13, align 8
  %180 = load double, double* %14, align 8
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %178, double %179, double %180)
  br label %182

182:                                              ; preds = %174, %171
  br label %183

183:                                              ; preds = %182, %163, %160
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %124

187:                                              ; preds = %124
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load double, double* %7, align 8
  %192 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double %191)
  br label %193

193:                                              ; preds = %190, %187
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %194

194:                                              ; preds = %234, %193
  %195 = load i32, i32* %8, align 4
  %196 = icmp sle i32 %195, 1048575
  br i1 %196, label %197, label %237

197:                                              ; preds = %194
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 0, %198
  %200 = sitofp i32 %199 to double
  %201 = fdiv double %200, 6.553600e+04
  %202 = call i32 @log(i32 2)
  %203 = sitofp i32 %202 to double
  %204 = fmul double %201, %203
  %205 = fptosi double %204 to i32
  %206 = call i32 @exp(i32 %205)
  %207 = sitofp i32 %206 to double
  %208 = fmul double %207, 0x41F0000000000000
  store double %208, double* %15, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @png_exp(i32 %209)
  %211 = sitofp i32 %210 to double
  %212 = load double, double* %15, align 8
  %213 = fsub double %211, %212
  store double %213, double* %16, align 8
  %214 = load double, double* %16, align 8
  %215 = call double @llvm.fabs.f64(double %214)
  %216 = load double, double* %7, align 8
  %217 = fcmp ogt double %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %197
  %219 = load double, double* %16, align 8
  %220 = call double @llvm.fabs.f64(double %219)
  store double %220, double* %7, align 8
  br label %221

221:                                              ; preds = %218, %197
  %222 = load double, double* %16, align 8
  %223 = call double @llvm.fabs.f64(double %222)
  %224 = fcmp ogt double %223, 1.883000e+03
  br i1 %224, label %225, label %233

225:                                              ; preds = %221
  %226 = load i32, i32* @stderr, align 4
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @png_exp(i32 %228)
  %230 = load double, double* %15, align 8
  %231 = load double, double* %16, align 8
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %226, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %227, i32 %229, double %230, double %231)
  br label %233

233:                                              ; preds = %225, %221
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %8, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  br label %194

237:                                              ; preds = %194
  %238 = load i32, i32* %9, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  %241 = load double, double* %7, align 8
  %242 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), double %241)
  br label %243

243:                                              ; preds = %240, %237
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %244

244:                                              ; preds = %284, %243
  %245 = load i32, i32* %8, align 4
  %246 = icmp sle i32 %245, 1048575
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load i32, i32* %8, align 4
  %249 = sub nsw i32 0, %248
  %250 = sitofp i32 %249 to double
  %251 = fdiv double %250, 6.553600e+04
  %252 = call i32 @log(i32 2)
  %253 = sitofp i32 %252 to double
  %254 = fmul double %251, %253
  %255 = fptosi double %254 to i32
  %256 = call i32 @exp(i32 %255)
  %257 = mul nsw i32 %256, 255
  %258 = sitofp i32 %257 to double
  store double %258, double* %17, align 8
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @png_exp8bit(i32 %259)
  %261 = sitofp i32 %260 to double
  %262 = load double, double* %17, align 8
  %263 = fsub double %261, %262
  store double %263, double* %18, align 8
  %264 = load double, double* %18, align 8
  %265 = call double @llvm.fabs.f64(double %264)
  %266 = load double, double* %7, align 8
  %267 = fcmp ogt double %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %247
  %269 = load double, double* %18, align 8
  %270 = call double @llvm.fabs.f64(double %269)
  store double %270, double* %7, align 8
  br label %271

271:                                              ; preds = %268, %247
  %272 = load double, double* %18, align 8
  %273 = call double @llvm.fabs.f64(double %272)
  %274 = fcmp ogt double %273, 5.000200e-01
  br i1 %274, label %275, label %283

275:                                              ; preds = %271
  %276 = load i32, i32* @stderr, align 4
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %8, align 4
  %279 = call i32 @png_exp8bit(i32 %278)
  %280 = load double, double* %17, align 8
  %281 = load double, double* %18, align 8
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %277, i32 %279, double %280, double %281)
  br label %283

283:                                              ; preds = %275, %271
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %8, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %8, align 4
  br label %244

287:                                              ; preds = %244
  %288 = load i32, i32* %9, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load double, double* %7, align 8
  %292 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), double %291)
  br label %293

293:                                              ; preds = %290, %287
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %294

294:                                              ; preds = %334, %293
  %295 = load i32, i32* %8, align 4
  %296 = icmp sle i32 %295, 1048575
  br i1 %296, label %297, label %337

297:                                              ; preds = %294
  %298 = load i32, i32* %8, align 4
  %299 = sub nsw i32 0, %298
  %300 = sitofp i32 %299 to double
  %301 = fdiv double %300, 6.553600e+04
  %302 = call i32 @log(i32 2)
  %303 = sitofp i32 %302 to double
  %304 = fmul double %301, %303
  %305 = fptosi double %304 to i32
  %306 = call i32 @exp(i32 %305)
  %307 = mul nsw i32 %306, 65535
  %308 = sitofp i32 %307 to double
  store double %308, double* %19, align 8
  %309 = load i32, i32* %8, align 4
  %310 = call i32 @png_exp16bit(i32 %309)
  %311 = sitofp i32 %310 to double
  %312 = load double, double* %19, align 8
  %313 = fsub double %311, %312
  store double %313, double* %20, align 8
  %314 = load double, double* %20, align 8
  %315 = call double @llvm.fabs.f64(double %314)
  %316 = load double, double* %7, align 8
  %317 = fcmp ogt double %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %297
  %319 = load double, double* %20, align 8
  %320 = call double @llvm.fabs.f64(double %319)
  store double %320, double* %7, align 8
  br label %321

321:                                              ; preds = %318, %297
  %322 = load double, double* %20, align 8
  %323 = call double @llvm.fabs.f64(double %322)
  %324 = fcmp ogt double %323, 5.240000e-01
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load i32, i32* @stderr, align 4
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = call i32 @png_exp16bit(i32 %328)
  %330 = load double, double* %19, align 8
  %331 = load double, double* %20, align 8
  %332 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0), i32 %327, i32 %329, double %330, double %331)
  br label %333

333:                                              ; preds = %325, %321
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %8, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %8, align 4
  br label %294

337:                                              ; preds = %294
  %338 = load i32, i32* %9, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %337
  %341 = load double, double* %7, align 8
  %342 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), double %341)
  br label %343

343:                                              ; preds = %340, %337
  br label %344

344:                                              ; preds = %343, %55
  store i32 0, i32* %8, align 4
  br label %345

345:                                              ; preds = %464, %344
  %346 = load i32, i32* %8, align 4
  %347 = icmp slt i32 %346, 9
  br i1 %347, label %348, label %467

348:                                              ; preds = %345
  %349 = load i32, i32* %8, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [9 x double], [9 x double]* %6, i64 0, i64 %350
  %352 = load double, double* %351, align 8
  store double %352, double* %22, align 8
  %353 = load double, double* %22, align 8
  %354 = load double, double* @PNG_FP_1, align 8
  %355 = fmul double %353, %354
  %356 = fadd double %355, 5.000000e-01
  %357 = call double @llvm.floor.f64(double %356)
  store double %357, double* %23, align 8
  %358 = load i32, i32* %9, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %348
  %361 = load double, double* %22, align 8
  %362 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), double %361)
  br label %363

363:                                              ; preds = %360, %348
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %21, align 4
  br label %364

364:                                              ; preds = %404, %363
  %365 = load i32, i32* %21, align 4
  %366 = icmp ult i32 %365, 256
  br i1 %366, label %367, label %407

367:                                              ; preds = %364
  %368 = load i32, i32* %21, align 4
  %369 = uitofp i32 %368 to double
  %370 = fdiv double %369, 2.550000e+02
  %371 = fptoui double %370 to i32
  %372 = load double, double* %22, align 8
  %373 = call i32 @pow(i32 %371, double %372)
  %374 = mul nsw i32 %373, 255
  %375 = sitofp i32 %374 to double
  store double %375, double* %24, align 8
  %376 = load i32, i32* %21, align 4
  %377 = load double, double* %23, align 8
  %378 = call double @png_gamma_8bit_correct(i32 %376, double %377)
  store double %378, double* %25, align 8
  %379 = load double, double* %25, align 8
  %380 = load double, double* %24, align 8
  %381 = fsub double %379, %380
  store double %381, double* %26, align 8
  %382 = load double, double* %26, align 8
  %383 = call double @llvm.fabs.f64(double %382)
  %384 = load double, double* %7, align 8
  %385 = fcmp ogt double %383, %384
  br i1 %385, label %386, label %389

386:                                              ; preds = %367
  %387 = load double, double* %26, align 8
  %388 = call double @llvm.fabs.f64(double %387)
  store double %388, double* %7, align 8
  br label %389

389:                                              ; preds = %386, %367
  %390 = load double, double* %25, align 8
  %391 = load double, double* %24, align 8
  %392 = fadd double %391, 5.000000e-01
  %393 = call double @llvm.floor.f64(double %392)
  %394 = fcmp une double %390, %393
  br i1 %394, label %395, label %403

395:                                              ; preds = %389
  %396 = load i32, i32* @stderr, align 4
  %397 = load i32, i32* %21, align 4
  %398 = load double, double* %22, align 8
  %399 = load double, double* %25, align 8
  %400 = load double, double* %24, align 8
  %401 = load double, double* %26, align 8
  %402 = call i32 (i32, i8*, ...) @fprintf(i32 %396, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %397, double %398, double %399, double %400, double %401)
  br label %403

403:                                              ; preds = %395, %389
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %21, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %21, align 4
  br label %364

407:                                              ; preds = %364
  %408 = load i32, i32* %9, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %407
  %411 = load double, double* %22, align 8
  %412 = load double, double* %7, align 8
  %413 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), double %411, double %412)
  br label %414

414:                                              ; preds = %410, %407
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %21, align 4
  br label %415

415:                                              ; preds = %453, %414
  %416 = load i32, i32* %21, align 4
  %417 = icmp ult i32 %416, 65536
  br i1 %417, label %418, label %456

418:                                              ; preds = %415
  %419 = load i32, i32* %21, align 4
  %420 = uitofp i32 %419 to double
  %421 = fdiv double %420, 6.553500e+04
  %422 = fptoui double %421 to i32
  %423 = load double, double* %22, align 8
  %424 = call i32 @pow(i32 %422, double %423)
  %425 = mul nsw i32 %424, 65535
  %426 = sitofp i32 %425 to double
  store double %426, double* %27, align 8
  %427 = load i32, i32* %21, align 4
  %428 = load double, double* %23, align 8
  %429 = call double @png_gamma_16bit_correct(i32 %427, double %428)
  store double %429, double* %28, align 8
  %430 = load double, double* %28, align 8
  %431 = load double, double* %27, align 8
  %432 = fsub double %430, %431
  store double %432, double* %29, align 8
  %433 = load double, double* %29, align 8
  %434 = call double @llvm.fabs.f64(double %433)
  %435 = load double, double* %7, align 8
  %436 = fcmp ogt double %434, %435
  br i1 %436, label %437, label %440

437:                                              ; preds = %418
  %438 = load double, double* %29, align 8
  %439 = call double @llvm.fabs.f64(double %438)
  store double %439, double* %7, align 8
  br label %440

440:                                              ; preds = %437, %418
  %441 = load double, double* %29, align 8
  %442 = call double @llvm.fabs.f64(double %441)
  %443 = fcmp ogt double %442, 1.620000e+00
  br i1 %443, label %444, label %452

444:                                              ; preds = %440
  %445 = load i32, i32* @stderr, align 4
  %446 = load i32, i32* %21, align 4
  %447 = load double, double* %22, align 8
  %448 = load double, double* %28, align 8
  %449 = load double, double* %27, align 8
  %450 = load double, double* %29, align 8
  %451 = call i32 (i32, i8*, ...) @fprintf(i32 %445, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i32 %446, double %447, double %448, double %449, double %450)
  br label %452

452:                                              ; preds = %444, %440
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %21, align 4
  %455 = add i32 %454, 1
  store i32 %455, i32* %21, align 4
  br label %415

456:                                              ; preds = %415
  %457 = load i32, i32* %9, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %463, label %459

459:                                              ; preds = %456
  %460 = load double, double* %22, align 8
  %461 = load double, double* %7, align 8
  %462 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), double %460, double %461)
  br label %463

463:                                              ; preds = %459, %456
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %8, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %8, align 4
  br label %345

467:                                              ; preds = %345
  store i32 0, i32* %3, align 4
  br label %468

468:                                              ; preds = %467, %48
  %469 = load i32, i32* %3, align 4
  ret i32 %469
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @log(i32) #2

declare dso_local i32 @png_log8bit(i32) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local i32 @printf(i8*, double, ...) #2

declare dso_local i32 @png_log16bit(i32) #2

declare dso_local i32 @exp(i32) #2

declare dso_local i32 @png_exp(i32) #2

declare dso_local i32 @png_exp8bit(i32) #2

declare dso_local i32 @png_exp16bit(i32) #2

declare dso_local i32 @pow(i32, double) #2

declare dso_local double @png_gamma_8bit_correct(i32, double) #2

declare dso_local double @png_gamma_16bit_correct(i32, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
