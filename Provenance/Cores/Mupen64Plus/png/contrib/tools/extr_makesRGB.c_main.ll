; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_makesRGB.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_makesRGB.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@png_sRGB_table = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"not reached: %u .. %u .. %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"table[%d][0]: overflow %08x (%d)\0A\00", align 1
@png_sRGB_base = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"table[%d][1]: overflow %08x (%d)\0A\00", align 1
@png_sRGB_delta = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"/* initial error counts: %u .. %u .. %u */\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"/* adjust (mid ): %f: %u -> %u */\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"/* adjust (low ): %f: %u -> %u */\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"/* adjust (high): %f: %u -> %u */\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"/* adjust: %f: %u */\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"makesRGB: impossible\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"/* table[%u]={%u,%u} -> {%u,%u} %u -> %u errors */\0A\00", align 1
@max_input = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [62 x i8] c"/* 0x%08x: exact: %3d, got: %3d [tables: %08x, %08x] (%f) */\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"/* 0x%04x: exact: %3d, got: %3d [tables: %08x, %08x] (%f) */\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"8-bit rounding error: %d -> %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"/* 8-bit roundtrip error: %d -> %f -> %d(%f) */\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"/* error: %g - %g, %u (%g%%) of readings inexact */\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"/* 16-bit error: %g - %g, %u (%g%%) of readings inexact */\0A\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"PNG_CONST png_uint_16 png_sRGB_table[256] =\0A{\0A   \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"%d\0A};\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"PNG_CONST png_uint_16 png_sRGB_base[512] =\0A{\0A   \00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"PNG_CONST png_byte png_sRGB_delta[512] =\0A{\0A   \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca double, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca double, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 4.000000e-01, double* %14, align 8
  store double 6.000000e-01, double* %15, align 8
  store double 5.000000e-01, double* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %2
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %22, align 4
  br label %60

60:                                               ; preds = %53, %2
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %71, %60
  %62 = load i32, i32* %6, align 4
  %63 = icmp ult i32 %62, 256
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @invsRGB(i32 %65)
  %67 = load i32*, i32** @png_sRGB_table, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %61

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %273, %74
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load double, double* %14, align 8
  store double %79, double* %13, align 8
  br label %119

80:                                               ; preds = %75
  %81 = load i32, i32* %18, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load double, double* %15, align 8
  store double %84, double* %13, align 8
  br label %118

85:                                               ; preds = %80
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load double, double* %16, align 8
  store double %89, double* %13, align 8
  br label %117

90:                                               ; preds = %85
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load double, double* %16, align 8
  %96 = load double, double* %15, align 8
  %97 = fadd double %95, %96
  %98 = fdiv double %97, 2.000000e+00
  store double %98, double* %13, align 8
  br label %116

99:                                               ; preds = %90
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load double, double* %16, align 8
  %105 = load double, double* %14, align 8
  %106 = fadd double %104, %105
  %107 = fdiv double %106, 2.000000e+00
  store double %107, double* %13, align 8
  br label %115

108:                                              ; preds = %99
  %109 = load i32, i32* @stderr, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111, i32 %112)
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %94
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %117, %83
  br label %119

119:                                              ; preds = %118, %78
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %177, %119
  %121 = load i32, i32* %6, align 4
  %122 = icmp ule i32 %121, 511
  br i1 %122, label %123, label %180

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = shl i32 %124, 15
  %126 = call i32 @sRGB(i32 %125)
  %127 = mul nsw i32 255, %126
  %128 = sitofp i32 %127 to double
  store double %128, double* %23, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add i32 %129, 1
  %131 = shl i32 %130, 15
  %132 = call i32 @sRGB(i32 %131)
  %133 = mul nsw i32 255, %132
  %134 = sitofp i32 %133 to double
  store double %134, double* %24, align 8
  %135 = load double, double* %23, align 8
  %136 = load double, double* %13, align 8
  %137 = fadd double %135, %136
  %138 = fmul double %137, 2.560000e+02
  %139 = fptosi double %138 to i32
  %140 = call i32 @nearbyint(i32 %139)
  store i32 %140, i32* %25, align 4
  %141 = load i32, i32* %25, align 4
  %142 = icmp ugt i32 %141, 65535
  br i1 %142, label %143, label %150

143:                                              ; preds = %123
  %144 = load i32, i32* @stderr, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %144, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  %149 = call i32 @exit(i32 1) #3
  unreachable

150:                                              ; preds = %123
  %151 = load i32, i32* %25, align 4
  %152 = load i32*, i32** @png_sRGB_base, align 8
  %153 = load i32, i32* %6, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %151, i32* %155, align 4
  %156 = load double, double* %24, align 8
  %157 = load double, double* %23, align 8
  %158 = fsub double %156, %157
  %159 = fmul double %158, 3.200000e+01
  %160 = fptosi double %159 to i32
  %161 = call i32 @nearbyint(i32 %160)
  store i32 %161, i32* %25, align 4
  %162 = load i32, i32* %25, align 4
  %163 = icmp ugt i32 %162, 255
  br i1 %163, label %164, label %171

164:                                              ; preds = %150
  %165 = load i32, i32* @stderr, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %25, align 4
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %167, i32 %168)
  %170 = call i32 @exit(i32 1) #3
  unreachable

171:                                              ; preds = %150
  %172 = load i32, i32* %25, align 4
  %173 = load i32*, i32** @png_sRGB_delta, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %6, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %120

180:                                              ; preds = %120
  store i32 0, i32* %21, align 4
  store i32 0, i32* %7, align 4
  br label %181

181:                                              ; preds = %200, %180
  %182 = load i32, i32* %7, align 4
  %183 = icmp ule i32 %182, 65535
  br i1 %183, label %184, label %203

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = mul i32 255, %185
  store i32 %186, i32* %26, align 4
  %187 = load i32, i32* %26, align 4
  %188 = call i32 @sRGB(i32 %187)
  %189 = mul nsw i32 255, %188
  %190 = call i32 @nearbyint(i32 %189)
  store i32 %190, i32* %27, align 4
  %191 = load i32, i32* %26, align 4
  %192 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %191)
  store i32 %192, i32* %28, align 4
  %193 = load i32, i32* %28, align 4
  %194 = load i32, i32* %27, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %184
  %197 = load i32, i32* %21, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %196, %184
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %181

203:                                              ; preds = %181
  %204 = load i32, i32* %17, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %203
  %207 = load i32, i32* %21, align 4
  store i32 %207, i32* %17, align 4
  br label %273

208:                                              ; preds = %203
  %209 = load i32, i32* %18, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i32, i32* %21, align 4
  store i32 %212, i32* %18, align 4
  br label %272

213:                                              ; preds = %208
  %214 = load i32, i32* %19, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i32, i32* %21, align 4
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %18, align 4
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %219, i32 %220)
  br label %271

222:                                              ; preds = %213
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %19, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load double, double* %13, align 8
  %228 = load i32, i32* %19, align 4
  %229 = load i32, i32* %21, align 4
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), double %227, i32 %228, i32 %229)
  %231 = load i32, i32* %21, align 4
  store i32 %231, i32* %19, align 4
  %232 = load double, double* %13, align 8
  store double %232, double* %16, align 8
  br label %270

233:                                              ; preds = %222
  %234 = load double, double* %13, align 8
  %235 = load double, double* %16, align 8
  %236 = fcmp olt double %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %17, align 4
  %240 = icmp ult i32 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load double, double* %13, align 8
  %243 = load i32, i32* %17, align 4
  %244 = load i32, i32* %21, align 4
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), double %242, i32 %243, i32 %244)
  %246 = load i32, i32* %21, align 4
  store i32 %246, i32* %17, align 4
  %247 = load double, double* %13, align 8
  store double %247, double* %14, align 8
  br label %269

248:                                              ; preds = %237, %233
  %249 = load double, double* %13, align 8
  %250 = load double, double* %16, align 8
  %251 = fcmp ogt double %249, %250
  br i1 %251, label %252, label %263

252:                                              ; preds = %248
  %253 = load i32, i32* %21, align 4
  %254 = load i32, i32* %18, align 4
  %255 = icmp ult i32 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %252
  %257 = load double, double* %13, align 8
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %21, align 4
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), double %257, i32 %258, i32 %259)
  %261 = load i32, i32* %21, align 4
  store i32 %261, i32* %18, align 4
  %262 = load double, double* %13, align 8
  store double %262, double* %15, align 8
  br label %268

263:                                              ; preds = %252, %248
  %264 = load double, double* %16, align 8
  store double %264, double* %13, align 8
  %265 = load double, double* %13, align 8
  %266 = load i32, i32* %19, align 4
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), double %265, i32 %266)
  br label %274

268:                                              ; preds = %256
  br label %269

269:                                              ; preds = %268, %241
  br label %270

270:                                              ; preds = %269, %226
  br label %271

271:                                              ; preds = %270, %216
  br label %272

272:                                              ; preds = %271, %211
  br label %273

273:                                              ; preds = %272, %206
  br label %75

274:                                              ; preds = %263
  store i32 0, i32* %8, align 4
  br label %275

275:                                              ; preds = %454, %274
  %276 = load i32, i32* %8, align 4
  %277 = icmp ult i32 %276, 65536
  br i1 %277, label %278, label %457

278:                                              ; preds = %275
  %279 = load i32*, i32** @png_sRGB_base, align 8
  %280 = load i32, i32* %8, align 4
  %281 = lshr i32 %280, 7
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %29, align 4
  %285 = load i32, i32* %29, align 4
  store i32 %285, i32* %30, align 4
  %286 = load i32, i32* %29, align 4
  store i32 %286, i32* %31, align 4
  %287 = load i32*, i32** @png_sRGB_delta, align 8
  %288 = load i32, i32* %8, align 4
  %289 = lshr i32 %288, 7
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %32, align 4
  %293 = load i32, i32* %32, align 4
  store i32 %293, i32* %33, align 4
  %294 = load i32, i32* %32, align 4
  store i32 %294, i32* %34, align 4
  store i32 0, i32* %35, align 4
  br label %295

295:                                              ; preds = %421, %278
  %296 = load i32, i32* %30, align 4
  %297 = load i32*, i32** @png_sRGB_base, align 8
  %298 = load i32, i32* %8, align 4
  %299 = lshr i32 %298, 7
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32 %296, i32* %301, align 4
  %302 = load i32, i32* %33, align 4
  %303 = load i32*, i32** @png_sRGB_delta, align 8
  %304 = load i32, i32* %8, align 4
  %305 = lshr i32 %304, 7
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  store i32 %302, i32* %307, align 4
  store i32 0, i32* %21, align 4
  %308 = load i32, i32* %8, align 4
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %330, %295
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* %8, align 4
  %312 = add i32 %311, 128
  %313 = icmp ult i32 %310, %312
  br i1 %313, label %314, label %333

314:                                              ; preds = %309
  %315 = load i32, i32* %7, align 4
  %316 = mul i32 255, %315
  store i32 %316, i32* %37, align 4
  %317 = load i32, i32* %37, align 4
  %318 = call i32 @sRGB(i32 %317)
  %319 = mul nsw i32 255, %318
  %320 = call i32 @nearbyint(i32 %319)
  store i32 %320, i32* %38, align 4
  %321 = load i32, i32* %37, align 4
  %322 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %321)
  store i32 %322, i32* %39, align 4
  %323 = load i32, i32* %39, align 4
  %324 = load i32, i32* %38, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %314
  %327 = load i32, i32* %21, align 4
  %328 = add i32 %327, 1
  store i32 %328, i32* %21, align 4
  br label %329

329:                                              ; preds = %326, %314
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %7, align 4
  %332 = add i32 %331, 1
  store i32 %332, i32* %7, align 4
  br label %309

333:                                              ; preds = %309
  %334 = load i32, i32* %21, align 4
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %422

337:                                              ; preds = %333
  %338 = load i32, i32* %35, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = load i32, i32* %21, align 4
  store i32 %341, i32* %35, align 4
  store i32 %341, i32* %36, align 4
  %342 = load i32, i32* %30, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %30, align 4
  br label %421

344:                                              ; preds = %337
  %345 = load i32, i32* %21, align 4
  %346 = load i32, i32* %35, align 4
  %347 = icmp ult i32 %345, %346
  br i1 %347, label %348, label %389

348:                                              ; preds = %344
  %349 = load i32, i32* %30, align 4
  %350 = load i32, i32* %29, align 4
  %351 = icmp sgt i32 %349, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %348
  %353 = load i32, i32* %30, align 4
  store i32 %353, i32* %29, align 4
  %354 = load i32, i32* %30, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %30, align 4
  br label %387

356:                                              ; preds = %348
  %357 = load i32, i32* %30, align 4
  %358 = load i32, i32* %29, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %356
  %361 = load i32, i32* %30, align 4
  store i32 %361, i32* %29, align 4
  %362 = load i32, i32* %30, align 4
  %363 = add nsw i32 %362, -1
  store i32 %363, i32* %30, align 4
  br label %386

364:                                              ; preds = %356
  %365 = load i32, i32* %33, align 4
  %366 = load i32, i32* %32, align 4
  %367 = icmp sgt i32 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i32, i32* %33, align 4
  store i32 %369, i32* %32, align 4
  %370 = load i32, i32* %33, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %33, align 4
  br label %385

372:                                              ; preds = %364
  %373 = load i32, i32* %33, align 4
  %374 = load i32, i32* %32, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = load i32, i32* %33, align 4
  store i32 %377, i32* %32, align 4
  %378 = load i32, i32* %33, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* %33, align 4
  br label %384

380:                                              ; preds = %372
  %381 = load i32, i32* @stderr, align 4
  %382 = call i32 (i32, i8*, ...) @fprintf(i32 %381, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %383 = call i32 @exit(i32 1) #3
  unreachable

384:                                              ; preds = %376
  br label %385

385:                                              ; preds = %384, %368
  br label %386

386:                                              ; preds = %385, %360
  br label %387

387:                                              ; preds = %386, %352
  %388 = load i32, i32* %21, align 4
  store i32 %388, i32* %35, align 4
  br label %420

389:                                              ; preds = %344
  %390 = load i32, i32* %30, align 4
  %391 = load i32, i32* %29, align 4
  %392 = icmp sgt i32 %390, %391
  br i1 %392, label %393, label %396

393:                                              ; preds = %389
  %394 = load i32, i32* %29, align 4
  %395 = sub nsw i32 %394, 1
  store i32 %395, i32* %30, align 4
  br label %419

396:                                              ; preds = %389
  %397 = load i32, i32* %30, align 4
  %398 = load i32, i32* %29, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = load i32, i32* %29, align 4
  store i32 %401, i32* %30, align 4
  %402 = load i32, i32* %33, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %33, align 4
  br label %418

404:                                              ; preds = %396
  %405 = load i32, i32* %33, align 4
  %406 = load i32, i32* %32, align 4
  %407 = icmp sgt i32 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = load i32, i32* %32, align 4
  %410 = sub nsw i32 %409, 1
  store i32 %410, i32* %33, align 4
  br label %417

411:                                              ; preds = %404
  %412 = load i32, i32* %33, align 4
  %413 = load i32, i32* %32, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %411
  br label %422

416:                                              ; preds = %411
  br label %417

417:                                              ; preds = %416, %408
  br label %418

418:                                              ; preds = %417, %400
  br label %419

419:                                              ; preds = %418, %393
  br label %420

420:                                              ; preds = %419, %387
  br label %421

421:                                              ; preds = %420, %340
  br label %295

422:                                              ; preds = %415, %336
  %423 = load i32, i32* %29, align 4
  %424 = load i32*, i32** @png_sRGB_base, align 8
  %425 = load i32, i32* %8, align 4
  %426 = lshr i32 %425, 7
  %427 = zext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  store i32 %423, i32* %428, align 4
  %429 = load i32, i32* %32, align 4
  %430 = load i32*, i32** @png_sRGB_delta, align 8
  %431 = load i32, i32* %8, align 4
  %432 = lshr i32 %431, 7
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %429, i32* %434, align 4
  %435 = load i32, i32* %29, align 4
  %436 = load i32, i32* %31, align 4
  %437 = icmp ne i32 %435, %436
  br i1 %437, label %442, label %438

438:                                              ; preds = %422
  %439 = load i32, i32* %32, align 4
  %440 = load i32, i32* %34, align 4
  %441 = icmp ne i32 %439, %440
  br i1 %441, label %442, label %452

442:                                              ; preds = %438, %422
  %443 = load i32, i32* %8, align 4
  %444 = lshr i32 %443, 7
  %445 = load i32, i32* %31, align 4
  %446 = load i32, i32* %34, align 4
  %447 = load i32, i32* %29, align 4
  %448 = load i32, i32* %32, align 4
  %449 = load i32, i32* %36, align 4
  %450 = load i32, i32* %35, align 4
  %451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %444, i32 %445, i32 %446, i32 %447, i32 %448, i32 %449, i32 %450)
  br label %453

452:                                              ; preds = %438
  br label %453

453:                                              ; preds = %452, %442
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %8, align 4
  %456 = add i32 %455, 128
  store i32 %456, i32* %8, align 4
  br label %275

457:                                              ; preds = %275
  store double -4.999000e-01, double* %9, align 8
  store double 4.999000e-01, double* %10, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %6, align 4
  br label %458

458:                                              ; preds = %523, %457
  %459 = load i32, i32* %6, align 4
  %460 = load i32, i32* @max_input, align 4
  %461 = icmp ule i32 %459, %460
  br i1 %461, label %462, label %526

462:                                              ; preds = %458
  %463 = load i32, i32* %6, align 4
  %464 = call i32 @sRGB(i32 %463)
  %465 = mul nsw i32 255, %464
  %466 = call i32 @nearbyint(i32 %465)
  store i32 %466, i32* %40, align 4
  %467 = load i32, i32* %6, align 4
  %468 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %467)
  store i32 %468, i32* %41, align 4
  %469 = load i32, i32* %41, align 4
  %470 = load i32, i32* %40, align 4
  %471 = icmp ne i32 %469, %470
  br i1 %471, label %472, label %522

472:                                              ; preds = %462
  %473 = load i32, i32* %6, align 4
  %474 = call i32 @sRGB(i32 %473)
  %475 = mul nsw i32 255, %474
  %476 = load i32, i32* %41, align 4
  %477 = sub i32 %475, %476
  %478 = uitofp i32 %477 to double
  store double %478, double* %42, align 8
  %479 = load double, double* %42, align 8
  %480 = load double, double* %10, align 8
  %481 = fadd double %480, 1.000000e-03
  %482 = fcmp ogt double %479, %481
  br i1 %482, label %488, label %483

483:                                              ; preds = %472
  %484 = load double, double* %42, align 8
  %485 = load double, double* %9, align 8
  %486 = fsub double %485, 1.000000e-03
  %487 = fcmp olt double %484, %486
  br i1 %487, label %488, label %506

488:                                              ; preds = %483, %472
  %489 = load i32, i32* %6, align 4
  %490 = load i32, i32* %40, align 4
  %491 = load i32, i32* %41, align 4
  %492 = load i32*, i32** @png_sRGB_base, align 8
  %493 = load i32, i32* %6, align 4
  %494 = lshr i32 %493, 15
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %492, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = load i32*, i32** @png_sRGB_delta, align 8
  %499 = load i32, i32* %6, align 4
  %500 = lshr i32 %499, 15
  %501 = zext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = load double, double* %42, align 8
  %505 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %489, i32 %490, i32 %491, i32 %497, i32 %503, double %504)
  br label %506

506:                                              ; preds = %488, %483
  %507 = load i32, i32* %20, align 4
  %508 = add i32 %507, 1
  store i32 %508, i32* %20, align 4
  %509 = load double, double* %42, align 8
  %510 = load double, double* %10, align 8
  %511 = fcmp ogt double %509, %510
  br i1 %511, label %512, label %514

512:                                              ; preds = %506
  %513 = load double, double* %42, align 8
  store double %513, double* %10, align 8
  br label %521

514:                                              ; preds = %506
  %515 = load double, double* %42, align 8
  %516 = load double, double* %9, align 8
  %517 = fcmp olt double %515, %516
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = load double, double* %42, align 8
  store double %519, double* %9, align 8
  br label %520

520:                                              ; preds = %518, %514
  br label %521

521:                                              ; preds = %520, %512
  br label %522

522:                                              ; preds = %521, %462
  br label %523

523:                                              ; preds = %522
  %524 = load i32, i32* %6, align 4
  %525 = add i32 %524, 1
  store i32 %525, i32* %6, align 4
  br label %458

526:                                              ; preds = %458
  store i32 0, i32* %21, align 4
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %7, align 4
  br label %527

527:                                              ; preds = %589, %526
  %528 = load i32, i32* %7, align 4
  %529 = icmp ule i32 %528, 65535
  br i1 %529, label %530, label %592

530:                                              ; preds = %527
  %531 = load i32, i32* %7, align 4
  %532 = mul i32 255, %531
  store i32 %532, i32* %43, align 4
  %533 = load i32, i32* %43, align 4
  %534 = call i32 @sRGB(i32 %533)
  %535 = mul nsw i32 255, %534
  %536 = call i32 @nearbyint(i32 %535)
  store i32 %536, i32* %44, align 4
  %537 = load i32, i32* %43, align 4
  %538 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %537)
  store i32 %538, i32* %45, align 4
  %539 = load i32, i32* %45, align 4
  %540 = load i32, i32* %44, align 4
  %541 = icmp ne i32 %539, %540
  br i1 %541, label %542, label %588

542:                                              ; preds = %530
  %543 = load i32, i32* %43, align 4
  %544 = call i32 @sRGB(i32 %543)
  %545 = mul nsw i32 255, %544
  %546 = load i32, i32* %45, align 4
  %547 = sub i32 %545, %546
  %548 = uitofp i32 %547 to double
  store double %548, double* %46, align 8
  %549 = load i32, i32* %21, align 4
  %550 = add i32 %549, 1
  store i32 %550, i32* %21, align 4
  %551 = load double, double* %46, align 8
  %552 = load double, double* %12, align 8
  %553 = fcmp ogt double %551, %552
  br i1 %553, label %554, label %556

554:                                              ; preds = %542
  %555 = load double, double* %46, align 8
  store double %555, double* %12, align 8
  br label %563

556:                                              ; preds = %542
  %557 = load double, double* %46, align 8
  %558 = load double, double* %11, align 8
  %559 = fcmp olt double %557, %558
  br i1 %559, label %560, label %562

560:                                              ; preds = %556
  %561 = load double, double* %46, align 8
  store double %561, double* %11, align 8
  br label %562

562:                                              ; preds = %560, %556
  br label %563

563:                                              ; preds = %562, %554
  %564 = load i32, i32* %45, align 4
  %565 = load i32, i32* %44, align 4
  %566 = sub i32 %564, %565
  %567 = call i32 @abs(i32 %566)
  %568 = icmp sgt i32 %567, 1
  br i1 %568, label %569, label %587

569:                                              ; preds = %563
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* %44, align 4
  %572 = load i32, i32* %45, align 4
  %573 = load i32*, i32** @png_sRGB_base, align 8
  %574 = load i32, i32* %43, align 4
  %575 = lshr i32 %574, 15
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %573, i64 %576
  %578 = load i32, i32* %577, align 4
  %579 = load i32*, i32** @png_sRGB_delta, align 8
  %580 = load i32, i32* %43, align 4
  %581 = lshr i32 %580, 15
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %579, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = load double, double* %46, align 8
  %586 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i32 %570, i32 %571, i32 %572, i32 %578, i32 %584, double %585)
  br label %587

587:                                              ; preds = %569, %563
  br label %588

588:                                              ; preds = %587, %530
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %7, align 4
  %591 = add i32 %590, 1
  store i32 %591, i32* %7, align 4
  br label %527

592:                                              ; preds = %527
  store i32 0, i32* %7, align 4
  br label %593

593:                                              ; preds = %634, %592
  %594 = load i32, i32* %7, align 4
  %595 = icmp ule i32 %594, 255
  br i1 %595, label %596, label %637

596:                                              ; preds = %593
  %597 = load i32*, i32** @png_sRGB_table, align 8
  %598 = load i32, i32* %7, align 4
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %597, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = mul nsw i32 255, %601
  store i32 %602, i32* %47, align 4
  %603 = load i32, i32* %47, align 4
  %604 = call i32 @sRGB(i32 %603)
  %605 = mul nsw i32 255, %604
  %606 = call i32 @nearbyint(i32 %605)
  store i32 %606, i32* %48, align 4
  %607 = load i32, i32* %47, align 4
  %608 = call i32 @PNG_sRGB_FROM_LINEAR(i32 %607)
  store i32 %608, i32* %49, align 4
  %609 = load i32, i32* %7, align 4
  %610 = load i32, i32* %48, align 4
  %611 = icmp ne i32 %609, %610
  br i1 %611, label %612, label %618

612:                                              ; preds = %596
  %613 = load i32, i32* @stderr, align 4
  %614 = load i32, i32* %7, align 4
  %615 = load i32, i32* %48, align 4
  %616 = call i32 (i32, i8*, ...) @fprintf(i32 %613, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0), i32 %614, i32 %615)
  %617 = call i32 @exit(i32 1) #3
  unreachable

618:                                              ; preds = %596
  %619 = load i32, i32* %49, align 4
  %620 = load i32, i32* %7, align 4
  %621 = icmp ne i32 %619, %620
  br i1 %621, label %622, label %633

622:                                              ; preds = %618
  %623 = load i32, i32* %7, align 4
  %624 = call double @finvsRGB(i32 %623)
  store double %624, double* %50, align 8
  %625 = load i32, i32* %7, align 4
  %626 = load double, double* %50, align 8
  %627 = load i32, i32* %49, align 4
  %628 = load double, double* %50, align 8
  %629 = fmul double 2.550000e+02, %628
  %630 = fptosi double %629 to i32
  %631 = call double @fsRGB(i32 %630)
  %632 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %625, double %626, i32 %627, double %631)
  br label %633

633:                                              ; preds = %622, %618
  br label %634

634:                                              ; preds = %633
  %635 = load i32, i32* %7, align 4
  %636 = add i32 %635, 1
  store i32 %636, i32* %7, align 4
  br label %593

637:                                              ; preds = %593
  %638 = load double, double* %9, align 8
  %639 = load double, double* %10, align 8
  %640 = load i32, i32* %20, align 4
  %641 = load i32, i32* %20, align 4
  %642 = uitofp i32 %641 to double
  %643 = fmul double 1.000000e+02, %642
  %644 = load i32, i32* @max_input, align 4
  %645 = uitofp i32 %644 to double
  %646 = fdiv double %643, %645
  %647 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), double %638, double %639, i32 %640, double %646)
  %648 = load double, double* %11, align 8
  %649 = load double, double* %12, align 8
  %650 = load i32, i32* %21, align 4
  %651 = load i32, i32* %21, align 4
  %652 = uitofp i32 %651 to double
  %653 = fmul double 1.000000e+02, %652
  %654 = fdiv double %653, 6.553500e+04
  %655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0), double %648, double %649, i32 %650, double %654)
  %656 = load i32, i32* %22, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %764, label %658

658:                                              ; preds = %637
  %659 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %660

660:                                              ; preds = %686, %658
  %661 = load i32, i32* %6, align 4
  %662 = icmp ult i32 %661, 255
  br i1 %662, label %663, label %687

663:                                              ; preds = %660
  br label %664

664:                                              ; preds = %679, %663
  %665 = load i32*, i32** @png_sRGB_table, align 8
  %666 = load i32, i32* %6, align 4
  %667 = add i32 %666, 1
  store i32 %667, i32* %6, align 4
  %668 = zext i32 %666 to i64
  %669 = getelementptr inbounds i32, i32* %665, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %670)
  br label %672

672:                                              ; preds = %664
  %673 = load i32, i32* %6, align 4
  %674 = and i32 %673, 7
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %679

676:                                              ; preds = %672
  %677 = load i32, i32* %6, align 4
  %678 = icmp ult i32 %677, 255
  br label %679

679:                                              ; preds = %676, %672
  %680 = phi i1 [ false, %672 ], [ %678, %676 ]
  br i1 %680, label %664, label %681

681:                                              ; preds = %679
  %682 = load i32, i32* %6, align 4
  %683 = icmp ult i32 %682, 255
  br i1 %683, label %684, label %686

684:                                              ; preds = %681
  %685 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %686

686:                                              ; preds = %684, %681
  br label %660

687:                                              ; preds = %660
  %688 = load i32*, i32** @png_sRGB_table, align 8
  %689 = load i32, i32* %6, align 4
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %688, i64 %690
  %692 = load i32, i32* %691, align 4
  %693 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %692)
  %694 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %695

695:                                              ; preds = %721, %687
  %696 = load i32, i32* %6, align 4
  %697 = icmp ult i32 %696, 511
  br i1 %697, label %698, label %722

698:                                              ; preds = %695
  br label %699

699:                                              ; preds = %714, %698
  %700 = load i32*, i32** @png_sRGB_base, align 8
  %701 = load i32, i32* %6, align 4
  %702 = add i32 %701, 1
  store i32 %702, i32* %6, align 4
  %703 = zext i32 %701 to i64
  %704 = getelementptr inbounds i32, i32* %700, i64 %703
  %705 = load i32, i32* %704, align 4
  %706 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %705)
  br label %707

707:                                              ; preds = %699
  %708 = load i32, i32* %6, align 4
  %709 = and i32 %708, 7
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %714

711:                                              ; preds = %707
  %712 = load i32, i32* %6, align 4
  %713 = icmp ult i32 %712, 511
  br label %714

714:                                              ; preds = %711, %707
  %715 = phi i1 [ false, %707 ], [ %713, %711 ]
  br i1 %715, label %699, label %716

716:                                              ; preds = %714
  %717 = load i32, i32* %6, align 4
  %718 = icmp ult i32 %717, 511
  br i1 %718, label %719, label %721

719:                                              ; preds = %716
  %720 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %721

721:                                              ; preds = %719, %716
  br label %695

722:                                              ; preds = %695
  %723 = load i32*, i32** @png_sRGB_base, align 8
  %724 = load i32, i32* %6, align 4
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %723, i64 %725
  %727 = load i32, i32* %726, align 4
  %728 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %727)
  %729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %730

730:                                              ; preds = %756, %722
  %731 = load i32, i32* %6, align 4
  %732 = icmp ult i32 %731, 511
  br i1 %732, label %733, label %757

733:                                              ; preds = %730
  br label %734

734:                                              ; preds = %749, %733
  %735 = load i32*, i32** @png_sRGB_delta, align 8
  %736 = load i32, i32* %6, align 4
  %737 = add i32 %736, 1
  store i32 %737, i32* %6, align 4
  %738 = zext i32 %736 to i64
  %739 = getelementptr inbounds i32, i32* %735, i64 %738
  %740 = load i32, i32* %739, align 4
  %741 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %740)
  br label %742

742:                                              ; preds = %734
  %743 = load i32, i32* %6, align 4
  %744 = and i32 %743, 15
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %749

746:                                              ; preds = %742
  %747 = load i32, i32* %6, align 4
  %748 = icmp ult i32 %747, 511
  br label %749

749:                                              ; preds = %746, %742
  %750 = phi i1 [ false, %742 ], [ %748, %746 ]
  br i1 %750, label %734, label %751

751:                                              ; preds = %749
  %752 = load i32, i32* %6, align 4
  %753 = icmp ult i32 %752, 511
  br i1 %753, label %754, label %756

754:                                              ; preds = %751
  %755 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  br label %756

756:                                              ; preds = %754, %751
  br label %730

757:                                              ; preds = %730
  %758 = load i32*, i32** @png_sRGB_delta, align 8
  %759 = load i32, i32* %6, align 4
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds i32, i32* %758, i64 %760
  %762 = load i32, i32* %761, align 4
  %763 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %762)
  br label %764

764:                                              ; preds = %757, %637
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @invsRGB(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sRGB(i32) #1

declare dso_local i32 @nearbyint(i32) #1

declare dso_local i32 @PNG_sRGB_FROM_LINEAR(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @abs(i32) #1

declare dso_local double @finvsRGB(i32) #1

declare dso_local double @fsRGB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
