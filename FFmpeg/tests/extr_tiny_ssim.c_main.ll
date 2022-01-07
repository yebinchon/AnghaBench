; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/extr_tiny_ssim.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"tiny_ssim <file1.yuv> <file2.yuv> <width>x<height> [<seek>]\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Dimensions are too large, or invalid\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Frame %d | \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"                \0D\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Total %d frames | \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32*], align 16
  %7 = alloca [2 x i32*], align 16
  %8 = alloca [2 x [3 x i32*]], align 16
  %9 = alloca i32*, align 8
  %10 = alloca [3 x i64], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i64], align 16
  %19 = alloca [3 x double], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast [3 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 24, i1 false)
  %21 = bitcast [3 x double]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 24, i1 false)
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 3
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14)
  %29 = icmp ne i32 2, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %2
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %304

32:                                               ; preds = %24
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  store i32* %36, i32** %37, align 16
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  store i32* %41, i32** %42, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @sscanf(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14)
  %47 = load i32, i32* %13, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %14, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %68, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* @INT_MAX, align 4
  %57 = sdiv i32 %56, 3
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 2, %61
  %63 = add nsw i64 %62, 12
  %64 = load i32, i32* @INT_MAX, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = icmp uge i64 %63, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59, %52, %49, %32
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 -2, i32* %3, align 4
  br label %304

71:                                               ; preds = %59
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %75, 3
  %77 = sdiv i64 %76, 2
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %79

79:                                               ; preds = %126, %71
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %129

82:                                               ; preds = %79
  %83 = load i32, i32* %12, align 4
  %84 = call i8* @malloc(i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %87
  store i32* %85, i32** %88, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 %94
  %96 = getelementptr inbounds [3 x i32*], [3 x i32*]* %95, i64 0, i64 0
  store i32* %92, i32** %96, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 %98
  %100 = getelementptr inbounds [3 x i32*], [3 x i32*]* %99, i64 0, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = mul nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 %108
  %110 = getelementptr inbounds [3 x i32*], [3 x i32*]* %109, i64 0, i64 1
  store i32* %106, i32** %110, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 %112
  %114 = getelementptr inbounds [3 x i32*], [3 x i32*]* %113, i64 0, i64 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul nsw i32 %116, %117
  %119 = sdiv i32 %118, 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x i32*], [3 x i32*]* %124, i64 0, i64 2
  store i32* %121, i32** %125, align 8
  br label %126

126:                                              ; preds = %82
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %17, align 4
  br label %79

129:                                              ; preds = %79
  %130 = load i32, i32* %13, align 4
  %131 = mul nsw i32 2, %130
  %132 = add nsw i32 %131, 12
  %133 = sext i32 %132 to i64
  %134 = mul i64 %133, 4
  %135 = trunc i64 %134 to i32
  %136 = call i8* @malloc(i32 %135)
  %137 = bitcast i8* %136 to i32*
  store i32* %137, i32** %9, align 8
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 5
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  br label %146

141:                                              ; preds = %129
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 4
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @atoi(i8* %144)
  br label %146

146:                                              ; preds = %141, %140
  %147 = phi i32 [ 0, %140 ], [ %145, %141 ]
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %16, align 4
  %158 = sub nsw i32 0, %157
  br label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %16, align 4
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi i32 [ %158, %156 ], [ %160, %159 ]
  %163 = load i32, i32* @SEEK_SET, align 4
  %164 = call i32 @fseek(i32* %153, i32 %162, i32 %163)
  store i32 0, i32* %15, align 4
  br label %165

165:                                              ; preds = %287, %161
  %166 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %167 = load i32*, i32** %166, align 16
  %168 = load i32, i32* %12, align 4
  %169 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 0
  %170 = load i32*, i32** %169, align 16
  %171 = call i32 @fread(i32* %167, i32 %168, i32 1, i32* %170)
  %172 = icmp ne i32 %171, 1
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %290

174:                                              ; preds = %165
  %175 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = getelementptr inbounds [2 x i32*], [2 x i32*]* %6, i64 0, i64 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @fread(i32* %176, i32 %177, i32 1, i32* %179)
  %181 = icmp ne i32 %180, 1
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %290

183:                                              ; preds = %174
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %273, %183
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %185, 3
  br i1 %186, label %187, label %276

187:                                              ; preds = %184
  %188 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 0
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [3 x i32*], [3 x i32*]* %188, i64 0, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 1
  %194 = load i32, i32* %17, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [3 x i32*], [3 x i32*]* %193, i64 0, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 0
  %203 = xor i1 %202, true
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = mul nsw i32 2, %205
  %207 = ashr i32 %200, %206
  %208 = call i64 @ssd_plane(i32* %192, i32* %197, i32 %207)
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 %210
  store i64 %208, i64* %211, align 8
  %212 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 0
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x i32*], [3 x i32*]* %212, i64 0, i64 %214
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = ashr i32 %217, %222
  %224 = getelementptr inbounds [2 x [3 x i32*]], [2 x [3 x i32*]]* %8, i64 0, i64 1
  %225 = load i32, i32* %17, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [3 x i32*], [3 x i32*]* %224, i64 0, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %17, align 4
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = ashr i32 %229, %234
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* %17, align 4
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = ashr i32 %236, %241
  %243 = load i32, i32* %14, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = ashr i32 %243, %248
  %250 = load i32*, i32** %9, align 8
  %251 = call double @ssim_plane(i32* %216, i32 %223, i32* %228, i32 %235, i32 %242, i32 %249, i32* %250, i32* null)
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 %253
  store double %251, double* %254, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %17, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, %258
  store i64 %263, i64* %261, align 8
  %264 = load i32, i32* %17, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 %265
  %267 = load double, double* %266, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 %269
  %271 = load double, double* %270, align 8
  %272 = fadd double %271, %267
  store double %272, double* %270, align 8
  br label %273

273:                                              ; preds = %187
  %274 = load i32, i32* %17, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %17, align 4
  br label %184

276:                                              ; preds = %184
  %277 = load i32, i32* %15, align 4
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %277)
  %279 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %280 = getelementptr inbounds [3 x double], [3 x double]* %19, i64 0, i64 0
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* %14, align 4
  %283 = call i32 @print_results(i64* %279, double* %280, i32 1, i32 %281, i32 %282)
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %285 = load i32, i32* @stdout, align 4
  %286 = call i32 @fflush(i32 %285)
  br label %287

287:                                              ; preds = %276
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %15, align 4
  br label %165

290:                                              ; preds = %182, %173
  %291 = load i32, i32* %15, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  store i32 0, i32* %3, align 4
  br label %304

294:                                              ; preds = %290
  %295 = load i32, i32* %15, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %295)
  %297 = getelementptr inbounds [3 x i64], [3 x i64]* %10, i64 0, i64 0
  %298 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 0, i64 0
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %13, align 4
  %301 = load i32, i32* %14, align 4
  %302 = call i32 @print_results(i64* %297, double* %298, i32 %299, i32 %300, i32 %301)
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %304

304:                                              ; preds = %294, %293, %68, %30
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

declare dso_local i32 @fread(i32*, i32, i32, i32*) #2

declare dso_local i64 @ssd_plane(i32*, i32*, i32) #2

declare dso_local double @ssim_plane(i32*, i32, i32*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @print_results(i64*, double*, i32, i32, i32) #2

declare dso_local i32 @fflush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
