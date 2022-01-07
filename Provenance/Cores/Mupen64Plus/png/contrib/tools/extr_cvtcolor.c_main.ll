; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_cvtcolor.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_cvtcolor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_TONEAREST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sRGB\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s: too few channels (%d) for -gray\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"%s: too many channels (%d) for -color\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x double], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  %23 = load i8*, i8** %21, align 8
  store i8* %23, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* @FE_TONEAREST, align 4
  %25 = call i32 @fesetround(i32 %24)
  %26 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  store double 0.000000e+00, double* %26, align 16
  %27 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 1
  store double 0.000000e+00, double* %27, align 8
  %28 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 2
  store double 0.000000e+00, double* %28, align 16
  %29 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  store double 0.000000e+00, double* %29, align 8
  br label %30

30:                                               ; preds = %72, %2
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br label %40

40:                                               ; preds = %34, %30
  %41 = phi i1 [ false, %30 ], [ %39, %34 ]
  br i1 %41, label %42, label %73

42:                                               ; preds = %40
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %5, align 8
  %45 = load i8*, i8** %43, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %72

51:                                               ; preds = %42
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %71

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @usage(i8* %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %50
  br label %30

73:                                               ; preds = %40
  %74 = load i32, i32* %4, align 4
  switch i32 %74, label %75 [
    i32 4, label %78
    i32 3, label %88
    i32 2, label %98
    i32 1, label %108
  ]

75:                                               ; preds = %73
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @usage(i8* %76)
  br label %118

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 3
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call double @component(i8* %79, i8* %82, i32 %83)
  %85 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  store double %84, double* %85, align 8
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %73, %78
  %89 = load i8*, i8** %6, align 8
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call double @component(i8* %89, i8* %92, i32 %93)
  %95 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 2
  store double %94, double* %95, align 16
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %73, %88
  %99 = load i8*, i8** %6, align 8
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 1
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call double @component(i8* %99, i8* %102, i32 %103)
  %105 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 1
  store double %104, double* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %73, %98
  %109 = load i8*, i8** %6, align 8
  %110 = load i8**, i8*** %5, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call double @component(i8* %109, i8* %112, i32 %113)
  %115 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  store double %114, double* %115, align 16
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %108, %75
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %126, %121
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %144, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %136
  %138 = load double, double* %137, align 8
  %139 = fdiv double %138, 2.550000e+02
  %140 = call double @linear_from_sRGB(double %139)
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %142
  store double %140, double* %143, align 8
  br label %144

144:                                              ; preds = %134
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %130

147:                                              ; preds = %130
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fdiv double %155, 2.550000e+02
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %158
  store double %156, double* %159, align 8
  br label %160

160:                                              ; preds = %151, %147
  br label %219

161:                                              ; preds = %118
  store i32 0, i32* %15, align 4
  br label %162

162:                                              ; preds = %171, %161
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %163, 4
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %167
  %169 = load double, double* %168, align 8
  %170 = fdiv double %169, 6.553500e+04
  store double %170, double* %168, align 8
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %162

174:                                              ; preds = %162
  %175 = load i32, i32* %10, align 4
  %176 = and i32 %175, 1
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %218

178:                                              ; preds = %174
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %16, align 8
  %184 = load double, double* %16, align 8
  %185 = fcmp ogt double %184, 0.000000e+00
  br i1 %185, label %186, label %203

186:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  br label %187

187:                                              ; preds = %199, %186
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %189, 1
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = load double, double* %16, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %195
  %197 = load double, double* %196, align 8
  %198 = fdiv double %197, %193
  store double %198, double* %196, align 8
  br label %199

199:                                              ; preds = %192
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %15, align 4
  br label %187

202:                                              ; preds = %187
  br label %217

203:                                              ; preds = %178
  store i32 0, i32* %15, align 4
  br label %204

204:                                              ; preds = %213, %203
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %10, align 4
  %207 = sub nsw i32 %206, 1
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %204
  %210 = load i32, i32* %15, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %211
  store double 1.000000e+00, double* %212, align 8
  br label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %15, align 4
  br label %204

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216, %202
  br label %218

218:                                              ; preds = %217, %174
  br label %219

219:                                              ; preds = %218, %160
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %232

225:                                              ; preds = %222
  %226 = load i32, i32* @stderr, align 4
  %227 = load i8*, i8** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @fprintf(i32 %226, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %227, i32 %228)
  %230 = load i8*, i8** %6, align 8
  %231 = call i32 @usage(i8* %230)
  br label %232

232:                                              ; preds = %225, %222
  %233 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  %234 = load double, double* %233, align 16
  %235 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 1
  %236 = load double, double* %235, align 8
  %237 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 2
  %238 = load double, double* %237, align 16
  %239 = call double @YfromRGB(double %234, double %236, double %238)
  %240 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  store double %239, double* %240, align 16
  %241 = load i32, i32* %10, align 4
  %242 = sub nsw i32 %241, 2
  store i32 %242, i32* %10, align 4
  br label %243

243:                                              ; preds = %232, %219
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %264

246:                                              ; preds = %243
  %247 = load i32, i32* %10, align 4
  %248 = icmp sgt i32 %247, 2
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load i32, i32* @stderr, align 4
  %251 = load i8*, i8** %6, align 8
  %252 = load i32, i32* %10, align 4
  %253 = call i32 @fprintf(i32 %250, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %251, i32 %252)
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 @usage(i8* %254)
  br label %256

256:                                              ; preds = %249, %246
  %257 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 1
  %258 = load double, double* %257, align 8
  %259 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 3
  store double %258, double* %259, align 8
  %260 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  %261 = load double, double* %260, align 16
  %262 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 1
  store double %261, double* %262, align 8
  %263 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 2
  store double %261, double* %263, align 16
  br label %264

264:                                              ; preds = %256, %243
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %312

267:                                              ; preds = %264
  %268 = load i32, i32* %10, align 4
  %269 = and i32 %268, 1
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %293

271:                                              ; preds = %267
  %272 = load i32, i32* %10, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %274
  %276 = load double, double* %275, align 8
  store double %276, double* %18, align 8
  store i32 0, i32* %17, align 4
  br label %277

277:                                              ; preds = %289, %271
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %10, align 4
  %280 = sub nsw i32 %279, 1
  %281 = icmp slt i32 %278, %280
  br i1 %281, label %282, label %292

282:                                              ; preds = %277
  %283 = load double, double* %18, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %285
  %287 = load double, double* %286, align 8
  %288 = fmul double %287, %283
  store double %288, double* %286, align 8
  br label %289

289:                                              ; preds = %282
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %17, align 4
  br label %277

292:                                              ; preds = %277
  br label %293

293:                                              ; preds = %292, %267
  store i32 0, i32* %17, align 4
  br label %294

294:                                              ; preds = %308, %293
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %10, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %311

298:                                              ; preds = %294
  %299 = load i32, i32* %17, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %300
  %302 = load double, double* %301, align 8
  %303 = fmul double %302, 6.553500e+04
  %304 = call double @llvm.nearbyint.f64(double %303)
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %306
  store double %304, double* %307, align 8
  br label %308

308:                                              ; preds = %298
  %309 = load i32, i32* %17, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %17, align 4
  br label %294

311:                                              ; preds = %294
  br label %348

312:                                              ; preds = %264
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  %315 = and i32 %314, -2
  store i32 %315, i32* %19, align 4
  br label %316

316:                                              ; preds = %320, %312
  %317 = load i32, i32* %19, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %19, align 4
  %319 = icmp sge i32 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %316
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %322
  %324 = load double, double* %323, align 8
  %325 = call double @sRGB_from_linear(double %324)
  %326 = load i32, i32* %19, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %327
  store double %325, double* %328, align 8
  br label %316

329:                                              ; preds = %316
  store i32 0, i32* %19, align 4
  br label %330

330:                                              ; preds = %344, %329
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %330
  %335 = load i32, i32* %19, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %336
  %338 = load double, double* %337, align 8
  %339 = fmul double %338, 2.550000e+02
  %340 = call double @llvm.nearbyint.f64(double %339)
  %341 = load i32, i32* %19, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %342
  store double %340, double* %343, align 8
  br label %344

344:                                              ; preds = %334
  %345 = load i32, i32* %19, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %19, align 4
  br label %330

347:                                              ; preds = %330
  br label %348

348:                                              ; preds = %347, %311
  store i32 0, i32* %20, align 4
  br label %349

349:                                              ; preds = %359, %348
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %10, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %362

353:                                              ; preds = %349
  %354 = load i32, i32* %20, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 %355
  %357 = load double, double* %356, align 8
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %357)
  br label %359

359:                                              ; preds = %353
  %360 = load i32, i32* %20, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %20, align 4
  br label %349

362:                                              ; preds = %349
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @fesetround(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local double @component(i8*, i8*, i32) #1

declare dso_local double @linear_from_sRGB(double) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local double @YfromRGB(double, double, double) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.nearbyint.f64(double) #2

declare dso_local double @sRGB_from_linear(double) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
