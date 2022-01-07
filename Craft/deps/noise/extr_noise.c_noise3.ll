; ModuleID = '/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_noise3.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/noise/extr_noise.c_noise3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F3 = common dso_local global float 0.000000e+00, align 4
@G3 = common dso_local global float 0.000000e+00, align 4
@PERM = common dso_local global i32* null, align 8
@GRAD3 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @noise3(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x float], align 16
  %15 = alloca [4 x float], align 16
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca [4 x [3 x float]], align 16
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %22 = bitcast [4 x float]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 16, i1 false)
  %23 = load float, float* %4, align 4
  %24 = load float, float* %5, align 4
  %25 = fadd float %23, %24
  %26 = load float, float* %6, align 4
  %27 = fadd float %25, %26
  %28 = load float, float* @F3, align 4
  %29 = fmul float %27, %28
  store float %29, float* %16, align 4
  %30 = load float, float* %4, align 4
  %31 = load float, float* %16, align 4
  %32 = fadd float %30, %31
  %33 = call float @llvm.floor.f32(float %32)
  store float %33, float* %17, align 4
  %34 = load float, float* %5, align 4
  %35 = load float, float* %16, align 4
  %36 = fadd float %34, %35
  %37 = call float @llvm.floor.f32(float %36)
  store float %37, float* %18, align 4
  %38 = load float, float* %6, align 4
  %39 = load float, float* %16, align 4
  %40 = fadd float %38, %39
  %41 = call float @llvm.floor.f32(float %40)
  store float %41, float* %19, align 4
  %42 = load float, float* %17, align 4
  %43 = load float, float* %18, align 4
  %44 = fadd float %42, %43
  %45 = load float, float* %19, align 4
  %46 = fadd float %44, %45
  %47 = load float, float* @G3, align 4
  %48 = fmul float %46, %47
  store float %48, float* %20, align 4
  %49 = load float, float* %4, align 4
  %50 = load float, float* %17, align 4
  %51 = load float, float* %20, align 4
  %52 = fsub float %50, %51
  %53 = fsub float %49, %52
  %54 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %55 = getelementptr inbounds [3 x float], [3 x float]* %54, i64 0, i64 0
  store float %53, float* %55, align 16
  %56 = load float, float* %5, align 4
  %57 = load float, float* %18, align 4
  %58 = load float, float* %20, align 4
  %59 = fsub float %57, %58
  %60 = fsub float %56, %59
  %61 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %62 = getelementptr inbounds [3 x float], [3 x float]* %61, i64 0, i64 1
  store float %60, float* %62, align 4
  %63 = load float, float* %6, align 4
  %64 = load float, float* %19, align 4
  %65 = load float, float* %20, align 4
  %66 = fsub float %64, %65
  %67 = fsub float %63, %66
  %68 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %69 = getelementptr inbounds [3 x float], [3 x float]* %68, i64 0, i64 2
  store float %67, float* %69, align 8
  %70 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %71 = getelementptr inbounds [3 x float], [3 x float]* %70, i64 0, i64 0
  %72 = load float, float* %71, align 16
  %73 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %74 = getelementptr inbounds [3 x float], [3 x float]* %73, i64 0, i64 1
  %75 = load float, float* %74, align 4
  %76 = fcmp oge float %72, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %3
  %78 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %79 = getelementptr inbounds [3 x float], [3 x float]* %78, i64 0, i64 1
  %80 = load float, float* %79, align 4
  %81 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %82 = getelementptr inbounds [3 x float], [3 x float]* %81, i64 0, i64 2
  %83 = load float, float* %82, align 8
  %84 = fcmp oge float %80, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %87 = call i32 @ASSIGN(i32* %86, i32 1, i32 0, i32 0)
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %89 = call i32 @ASSIGN(i32* %88, i32 1, i32 1, i32 0)
  br label %109

90:                                               ; preds = %77
  %91 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %92 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 0, i64 0
  %93 = load float, float* %92, align 16
  %94 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %95 = getelementptr inbounds [3 x float], [3 x float]* %94, i64 0, i64 2
  %96 = load float, float* %95, align 8
  %97 = fcmp oge float %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %100 = call i32 @ASSIGN(i32* %99, i32 1, i32 0, i32 0)
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %102 = call i32 @ASSIGN(i32* %101, i32 1, i32 0, i32 1)
  br label %108

103:                                              ; preds = %90
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %105 = call i32 @ASSIGN(i32* %104, i32 0, i32 0, i32 1)
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %107 = call i32 @ASSIGN(i32* %106, i32 1, i32 0, i32 1)
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %108, %85
  br label %143

110:                                              ; preds = %3
  %111 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %112 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 0, i64 1
  %113 = load float, float* %112, align 4
  %114 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %115 = getelementptr inbounds [3 x float], [3 x float]* %114, i64 0, i64 2
  %116 = load float, float* %115, align 8
  %117 = fcmp olt float %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %120 = call i32 @ASSIGN(i32* %119, i32 0, i32 0, i32 1)
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %122 = call i32 @ASSIGN(i32* %121, i32 0, i32 1, i32 1)
  br label %142

123:                                              ; preds = %110
  %124 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %125 = getelementptr inbounds [3 x float], [3 x float]* %124, i64 0, i64 0
  %126 = load float, float* %125, align 16
  %127 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %128 = getelementptr inbounds [3 x float], [3 x float]* %127, i64 0, i64 2
  %129 = load float, float* %128, align 8
  %130 = fcmp olt float %126, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %123
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %133 = call i32 @ASSIGN(i32* %132, i32 0, i32 1, i32 0)
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %135 = call i32 @ASSIGN(i32* %134, i32 0, i32 1, i32 1)
  br label %141

136:                                              ; preds = %123
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %138 = call i32 @ASSIGN(i32* %137, i32 0, i32 1, i32 0)
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %140 = call i32 @ASSIGN(i32* %139, i32 1, i32 1, i32 0)
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %109
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %196, %143
  %145 = load i32, i32* %7, align 4
  %146 = icmp sle i32 %145, 2
  br i1 %146, label %147, label %199

147:                                              ; preds = %144
  %148 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [3 x float], [3 x float]* %148, i64 0, i64 %150
  %152 = load float, float* %151, align 4
  %153 = fsub float %152, 1.000000e+00
  %154 = load float, float* @G3, align 4
  %155 = fmul float 3.000000e+00, %154
  %156 = fadd float %153, %155
  %157 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 3
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [3 x float], [3 x float]* %157, i64 0, i64 %159
  store float %156, float* %160, align 4
  %161 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x float], [3 x float]* %161, i64 0, i64 %163
  %165 = load float, float* %164, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = sitofp i32 %169 to float
  %171 = fsub float %165, %170
  %172 = load float, float* @G3, align 4
  %173 = fmul float 2.000000e+00, %172
  %174 = fadd float %171, %173
  %175 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 2
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [3 x float], [3 x float]* %175, i64 0, i64 %177
  store float %174, float* %178, align 4
  %179 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 0
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [3 x float], [3 x float]* %179, i64 0, i64 %181
  %183 = load float, float* %182, align 4
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = sitofp i32 %187 to float
  %189 = fsub float %183, %188
  %190 = load float, float* @G3, align 4
  %191 = fadd float %189, %190
  %192 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 1
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [3 x float], [3 x float]* %192, i64 0, i64 %194
  store float %191, float* %195, align 4
  br label %196

196:                                              ; preds = %147
  %197 = load i32, i32* %7, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %7, align 4
  br label %144

199:                                              ; preds = %144
  %200 = load float, float* %17, align 4
  %201 = fptosi float %200 to i32
  %202 = and i32 %201, 255
  store i32 %202, i32* %11, align 4
  %203 = load float, float* %18, align 4
  %204 = fptosi float %203 to i32
  %205 = and i32 %204, 255
  store i32 %205, i32* %12, align 4
  %206 = load float, float* %19, align 4
  %207 = fptosi float %206 to i32
  %208 = and i32 %207, 255
  store i32 %208, i32* %13, align 4
  %209 = load i32*, i32** @PERM, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32*, i32** @PERM, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** @PERM, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %212, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %211, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %210, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %209, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = srem i32 %225, 12
  %227 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %226, i32* %227, align 16
  %228 = load i32*, i32** @PERM, align 8
  %229 = load i32, i32* %11, align 4
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %229, %231
  %233 = load i32*, i32** @PERM, align 8
  %234 = load i32, i32* %12, align 4
  %235 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %234, %236
  %238 = load i32*, i32** @PERM, align 8
  %239 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %240, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %238, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %237, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %233, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %232, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %228, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = srem i32 %253, 12
  %255 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %254, i32* %255, align 4
  %256 = load i32*, i32** @PERM, align 8
  %257 = load i32, i32* %11, align 4
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %257, %259
  %261 = load i32*, i32** @PERM, align 8
  %262 = load i32, i32* %12, align 4
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %262, %264
  %266 = load i32*, i32** @PERM, align 8
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %266, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %265, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %261, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %260, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %256, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = srem i32 %281, 12
  %283 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %282, i32* %283, align 8
  %284 = load i32*, i32** @PERM, align 8
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32*, i32** @PERM, align 8
  %288 = load i32, i32* %12, align 4
  %289 = add nsw i32 %288, 1
  %290 = load i32*, i32** @PERM, align 8
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %290, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %289, %295
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %287, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %286, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %284, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = srem i32 %303, 12
  %305 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %304, i32* %305, align 4
  store i32 0, i32* %7, align 4
  br label %306

306:                                              ; preds = %349, %199
  %307 = load i32, i32* %7, align 4
  %308 = icmp sle i32 %307, 3
  br i1 %308, label %309, label %352

309:                                              ; preds = %306
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %311
  %313 = getelementptr inbounds [3 x float], [3 x float]* %312, i64 0, i64 0
  %314 = load float, float* %313, align 4
  %315 = load i32, i32* %7, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %316
  %318 = getelementptr inbounds [3 x float], [3 x float]* %317, i64 0, i64 0
  %319 = load float, float* %318, align 4
  %320 = fmul float %314, %319
  %321 = fsub float 0x3FE3333340000000, %320
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %323
  %325 = getelementptr inbounds [3 x float], [3 x float]* %324, i64 0, i64 1
  %326 = load float, float* %325, align 4
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %328
  %330 = getelementptr inbounds [3 x float], [3 x float]* %329, i64 0, i64 1
  %331 = load float, float* %330, align 4
  %332 = fmul float %326, %331
  %333 = fsub float %321, %332
  %334 = load i32, i32* %7, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %335
  %337 = getelementptr inbounds [3 x float], [3 x float]* %336, i64 0, i64 2
  %338 = load float, float* %337, align 4
  %339 = load i32, i32* %7, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %340
  %342 = getelementptr inbounds [3 x float], [3 x float]* %341, i64 0, i64 2
  %343 = load float, float* %342, align 4
  %344 = fmul float %338, %343
  %345 = fsub float %333, %344
  %346 = load i32, i32* %7, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %347
  store float %345, float* %348, align 4
  br label %349

349:                                              ; preds = %309
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %7, align 4
  br label %306

352:                                              ; preds = %306
  store i32 0, i32* %7, align 4
  br label %353

353:                                              ; preds = %400, %352
  %354 = load i32, i32* %7, align 4
  %355 = icmp sle i32 %354, 3
  br i1 %355, label %356, label %403

356:                                              ; preds = %353
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %358
  %360 = load float, float* %359, align 4
  %361 = fcmp ogt float %360, 0.000000e+00
  br i1 %361, label %362, label %399

362:                                              ; preds = %356
  %363 = load i32, i32* %7, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %364
  %366 = load float, float* %365, align 4
  %367 = load i32, i32* %7, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fmul float %366, %370
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %373
  %375 = load float, float* %374, align 4
  %376 = fmul float %371, %375
  %377 = load i32, i32* %7, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 %378
  %380 = load float, float* %379, align 4
  %381 = fmul float %376, %380
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [4 x [3 x float]], [4 x [3 x float]]* %21, i64 0, i64 %383
  %385 = getelementptr inbounds [3 x float], [3 x float]* %384, i64 0, i64 0
  %386 = load i32*, i32** @GRAD3, align 8
  %387 = load i32, i32* %7, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %386, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = call float @DOT3(float* %385, i32 %393)
  %395 = fmul float %381, %394
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 %397
  store float %395, float* %398, align 4
  br label %399

399:                                              ; preds = %362, %356
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %353

403:                                              ; preds = %353
  %404 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 0
  %405 = load float, float* %404, align 16
  %406 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 1
  %407 = load float, float* %406, align 4
  %408 = fadd float %405, %407
  %409 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 2
  %410 = load float, float* %409, align 8
  %411 = fadd float %408, %410
  %412 = getelementptr inbounds [4 x float], [4 x float]* %15, i64 0, i64 3
  %413 = load float, float* %412, align 4
  %414 = fadd float %411, %413
  %415 = fmul float %414, 3.200000e+01
  ret float %415
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.floor.f32(float) #2

declare dso_local i32 @ASSIGN(i32*, i32, i32, i32) #3

declare dso_local float @DOT3(float*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
