; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_idct32.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudioenc_template.c_idct32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@costab32 = common dso_local global i32* null, align 8
@M_SQRT2 = common dso_local global double 0.000000e+00, align 8
@bitinv32 = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @idct32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idct32(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** @costab32, align 8
  store i32* %15, i32** %10, align 8
  store i32 31, i32* %6, align 4
  br label %16

16:                                               ; preds = %32, %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %25
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 2
  store i32 %34, i32* %6, align 4
  br label %16

35:                                               ; preds = %16
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 30
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32* %39, i32** %8, align 8
  br label %40

40:                                               ; preds = %57, %35
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -4
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 -3
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -4
  store i32* %56, i32** %7, align 8
  br label %57

57:                                               ; preds = %40
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %58, %59
  br i1 %60, label %40, label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 28
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  store i32* %65, i32** %8, align 8
  br label %66

66:                                               ; preds = %97, %61
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 -8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 -7
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 -6
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 -5
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 -8
  store i32* %96, i32** %7, align 8
  br label %97

97:                                               ; preds = %66
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = icmp ne i32* %98, %99
  br i1 %100, label %66, label %101

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  store i32* %102, i32** %7, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 32
  store i32* %104, i32** %8, align 8
  br label %105

105:                                              ; preds = %144, %101
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 0, %108
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %109, i32* %111, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 6
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 0, %114
  %116 = load i32*, i32** %7, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 6
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 11
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 0, %120
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 11
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 12
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 0, %126
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 12
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %7, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 13
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 0, %132
  %134 = load i32*, i32** %7, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 13
  store i32 %133, i32* %135, align 4
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 15
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 0, %138
  %140 = load i32*, i32** %7, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 15
  store i32 %139, i32* %141, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 16
  store i32* %143, i32** %7, align 8
  br label %144

144:                                              ; preds = %105
  %145 = load i32*, i32** %7, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = icmp ne i32* %145, %146
  br i1 %147, label %105, label %148

148:                                              ; preds = %144
  %149 = load i32*, i32** %4, align 8
  store i32* %149, i32** %7, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 8
  store i32* %151, i32** %8, align 8
  br label %152

152:                                              ; preds = %222, %148
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 16
  %155 = load i32, i32* %154, align 4
  %156 = load double, double* @M_SQRT2, align 8
  %157 = fmul double %156, 5.000000e-01
  %158 = call i32 @FIX(double %157)
  %159 = call i32 @MUL(i32 %155, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %162, %163
  store i32 %164, i32* %14, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %13, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 24
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 8
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %172, %175
  %177 = sub nsw i32 0, %176
  %178 = load double, double* @M_SQRT2, align 8
  %179 = fmul double %178, 5.000000e-01
  %180 = call i32 @FIX(double %179)
  %181 = call i32 @MUL(i32 %177, i32 %180)
  store i32 %181, i32* %12, align 4
  %182 = load i32*, i32** %7, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 8
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %184, %185
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @MUL(i32 %186, i32 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %193, %194
  %196 = load i32*, i32** %10, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @MUL(i32 %195, i32 %198)
  store i32 %199, i32* %12, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32*, i32** %7, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %12, align 4
  %207 = sub nsw i32 %205, %206
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 8
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32*, i32** %7, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 16
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %11, align 4
  %217 = sub nsw i32 %215, %216
  %218 = load i32*, i32** %7, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 24
  store i32 %217, i32* %219, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %7, align 8
  br label %222

222:                                              ; preds = %152
  %223 = load i32*, i32** %7, align 8
  %224 = load i32*, i32** %8, align 8
  %225 = icmp ne i32* %223, %224
  br i1 %225, label %152, label %226

226:                                              ; preds = %222
  %227 = load i32*, i32** %10, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  store i32* %228, i32** %10, align 8
  %229 = load i32*, i32** %4, align 8
  store i32* %229, i32** %7, align 8
  %230 = load i32*, i32** %4, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 4
  store i32* %231, i32** %8, align 8
  br label %232

232:                                              ; preds = %319, %226
  %233 = load i32*, i32** %7, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 28
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @MUL(i32 %235, i32 %238)
  store i32 %239, i32* %9, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %9, align 4
  %244 = sub nsw i32 %242, %243
  %245 = load i32*, i32** %7, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 28
  store i32 %244, i32* %246, align 4
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %9, align 4
  %251 = add nsw i32 %249, %250
  %252 = load i32*, i32** %7, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  store i32 %251, i32* %253, align 4
  %254 = load i32*, i32** %7, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  %256 = load i32, i32* %255, align 4
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 1
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @MUL(i32 %256, i32 %259)
  store i32 %260, i32* %9, align 4
  %261 = load i32*, i32** %7, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 24
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %9, align 4
  %265 = sub nsw i32 %263, %264
  %266 = load i32*, i32** %7, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 4
  store i32 %265, i32* %267, align 4
  %268 = load i32*, i32** %7, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 24
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %9, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32*, i32** %7, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 24
  store i32 %272, i32* %274, align 4
  %275 = load i32*, i32** %7, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 20
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %10, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @MUL(i32 %277, i32 %280)
  store i32 %281, i32* %9, align 4
  %282 = load i32*, i32** %7, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 8
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %9, align 4
  %286 = sub nsw i32 %284, %285
  %287 = load i32*, i32** %7, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 20
  store i32 %286, i32* %288, align 4
  %289 = load i32*, i32** %7, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 8
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %291, %292
  %294 = load i32*, i32** %7, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 8
  store i32 %293, i32* %295, align 4
  %296 = load i32*, i32** %7, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 12
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %10, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 3
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @MUL(i32 %298, i32 %301)
  store i32 %302, i32* %9, align 4
  %303 = load i32*, i32** %7, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 16
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %9, align 4
  %307 = sub nsw i32 %305, %306
  %308 = load i32*, i32** %7, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 12
  store i32 %307, i32* %309, align 4
  %310 = load i32*, i32** %7, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 16
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %9, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32*, i32** %7, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 16
  store i32 %314, i32* %316, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = getelementptr inbounds i32, i32* %317, i32 1
  store i32* %318, i32** %7, align 8
  br label %319

319:                                              ; preds = %232
  %320 = load i32*, i32** %7, align 8
  %321 = load i32*, i32** %8, align 8
  %322 = icmp ne i32* %320, %321
  br i1 %322, label %232, label %323

323:                                              ; preds = %319
  %324 = load i32*, i32** %10, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 4
  store i32* %325, i32** %10, align 8
  store i32 0, i32* %5, align 4
  br label %326

326:                                              ; preds = %493, %323
  %327 = load i32, i32* %5, align 4
  %328 = icmp slt i32 %327, 4
  br i1 %328, label %329, label %496

329:                                              ; preds = %326
  %330 = load i32*, i32** %4, align 8
  %331 = load i32, i32* %5, align 4
  %332 = mul nsw i32 %331, 4
  %333 = sub nsw i32 30, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %330, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = load i32*, i32** %10, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 0
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @MUL(i32 %336, i32 %339)
  store i32 %340, i32* %9, align 4
  %341 = load i32*, i32** %4, align 8
  %342 = load i32, i32* %5, align 4
  %343 = mul nsw i32 %342, 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* %9, align 4
  %348 = sub nsw i32 %346, %347
  %349 = load i32*, i32** %4, align 8
  %350 = load i32, i32* %5, align 4
  %351 = mul nsw i32 %350, 4
  %352 = sub nsw i32 30, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  store i32 %348, i32* %354, align 4
  %355 = load i32*, i32** %4, align 8
  %356 = load i32, i32* %5, align 4
  %357 = mul nsw i32 %356, 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %9, align 4
  %362 = add nsw i32 %360, %361
  %363 = load i32*, i32** %4, align 8
  %364 = load i32, i32* %5, align 4
  %365 = mul nsw i32 %364, 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  store i32 %362, i32* %367, align 4
  %368 = load i32*, i32** %4, align 8
  %369 = load i32, i32* %5, align 4
  %370 = mul nsw i32 %369, 4
  %371 = add nsw i32 2, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %368, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %10, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @MUL(i32 %374, i32 %377)
  store i32 %378, i32* %9, align 4
  %379 = load i32*, i32** %4, align 8
  %380 = load i32, i32* %5, align 4
  %381 = mul nsw i32 %380, 4
  %382 = sub nsw i32 28, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %379, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* %9, align 4
  %387 = sub nsw i32 %385, %386
  %388 = load i32*, i32** %4, align 8
  %389 = load i32, i32* %5, align 4
  %390 = mul nsw i32 %389, 4
  %391 = add nsw i32 2, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %388, i64 %392
  store i32 %387, i32* %393, align 4
  %394 = load i32*, i32** %4, align 8
  %395 = load i32, i32* %5, align 4
  %396 = mul nsw i32 %395, 4
  %397 = sub nsw i32 28, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %394, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %9, align 4
  %402 = add nsw i32 %400, %401
  %403 = load i32*, i32** %4, align 8
  %404 = load i32, i32* %5, align 4
  %405 = mul nsw i32 %404, 4
  %406 = sub nsw i32 28, %405
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i32, i32* %403, i64 %407
  store i32 %402, i32* %408, align 4
  %409 = load i32*, i32** %4, align 8
  %410 = load i32, i32* %5, align 4
  %411 = mul nsw i32 %410, 4
  %412 = sub nsw i32 31, %411
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %409, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** %10, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 0
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @MUL(i32 %415, i32 %418)
  store i32 %419, i32* %9, align 4
  %420 = load i32*, i32** %4, align 8
  %421 = load i32, i32* %5, align 4
  %422 = mul nsw i32 %421, 4
  %423 = add nsw i32 1, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %420, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %9, align 4
  %428 = sub nsw i32 %426, %427
  %429 = load i32*, i32** %4, align 8
  %430 = load i32, i32* %5, align 4
  %431 = mul nsw i32 %430, 4
  %432 = sub nsw i32 31, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %429, i64 %433
  store i32 %428, i32* %434, align 4
  %435 = load i32*, i32** %4, align 8
  %436 = load i32, i32* %5, align 4
  %437 = mul nsw i32 %436, 4
  %438 = add nsw i32 1, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %435, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* %9, align 4
  %443 = add nsw i32 %441, %442
  %444 = load i32*, i32** %4, align 8
  %445 = load i32, i32* %5, align 4
  %446 = mul nsw i32 %445, 4
  %447 = add nsw i32 1, %446
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %444, i64 %448
  store i32 %443, i32* %449, align 4
  %450 = load i32*, i32** %4, align 8
  %451 = load i32, i32* %5, align 4
  %452 = mul nsw i32 %451, 4
  %453 = add nsw i32 3, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %450, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %10, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @MUL(i32 %456, i32 %459)
  store i32 %460, i32* %9, align 4
  %461 = load i32*, i32** %4, align 8
  %462 = load i32, i32* %5, align 4
  %463 = mul nsw i32 %462, 4
  %464 = sub nsw i32 29, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %461, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %9, align 4
  %469 = sub nsw i32 %467, %468
  %470 = load i32*, i32** %4, align 8
  %471 = load i32, i32* %5, align 4
  %472 = mul nsw i32 %471, 4
  %473 = add nsw i32 3, %472
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %470, i64 %474
  store i32 %469, i32* %475, align 4
  %476 = load i32*, i32** %4, align 8
  %477 = load i32, i32* %5, align 4
  %478 = mul nsw i32 %477, 4
  %479 = sub nsw i32 29, %478
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %476, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %9, align 4
  %484 = add nsw i32 %482, %483
  %485 = load i32*, i32** %4, align 8
  %486 = load i32, i32* %5, align 4
  %487 = mul nsw i32 %486, 4
  %488 = sub nsw i32 29, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %485, i64 %489
  store i32 %484, i32* %490, align 4
  %491 = load i32*, i32** %10, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 2
  store i32* %492, i32** %10, align 8
  br label %493

493:                                              ; preds = %329
  %494 = load i32, i32* %5, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %5, align 4
  br label %326

496:                                              ; preds = %326
  %497 = load i32*, i32** %4, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 30
  store i32* %498, i32** %7, align 8
  %499 = load i32*, i32** %4, align 8
  %500 = getelementptr inbounds i32, i32* %499, i64 1
  store i32* %500, i32** %8, align 8
  br label %501

501:                                              ; preds = %528, %496
  %502 = load i32*, i32** %8, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 0
  %504 = load i32, i32* %503, align 4
  %505 = load i32*, i32** %10, align 8
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @MUL(i32 %504, i32 %506)
  store i32 %507, i32* %9, align 4
  %508 = load i32*, i32** %7, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 0
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* %9, align 4
  %512 = sub nsw i32 %510, %511
  %513 = load i32*, i32** %8, align 8
  %514 = getelementptr inbounds i32, i32* %513, i64 0
  store i32 %512, i32* %514, align 4
  %515 = load i32*, i32** %7, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %9, align 4
  %519 = add nsw i32 %517, %518
  %520 = load i32*, i32** %7, align 8
  %521 = getelementptr inbounds i32, i32* %520, i64 0
  store i32 %519, i32* %521, align 4
  %522 = load i32*, i32** %7, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 -2
  store i32* %523, i32** %7, align 8
  %524 = load i32*, i32** %8, align 8
  %525 = getelementptr inbounds i32, i32* %524, i64 2
  store i32* %525, i32** %8, align 8
  %526 = load i32*, i32** %10, align 8
  %527 = getelementptr inbounds i32, i32* %526, i32 1
  store i32* %527, i32** %10, align 8
  br label %528

528:                                              ; preds = %501
  %529 = load i32*, i32** %7, align 8
  %530 = load i32*, i32** %4, align 8
  %531 = icmp uge i32* %529, %530
  br i1 %531, label %501, label %532

532:                                              ; preds = %528
  store i32 0, i32* %5, align 4
  br label %533

533:                                              ; preds = %549, %532
  %534 = load i32, i32* %5, align 4
  %535 = icmp slt i32 %534, 32
  br i1 %535, label %536, label %552

536:                                              ; preds = %533
  %537 = load i32*, i32** %4, align 8
  %538 = load i64*, i64** @bitinv32, align 8
  %539 = load i32, i32* %5, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i64, i64* %538, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = getelementptr inbounds i32, i32* %537, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = load i32*, i32** %3, align 8
  %546 = load i32, i32* %5, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, i32* %545, i64 %547
  store i32 %544, i32* %548, align 4
  br label %549

549:                                              ; preds = %536
  %550 = load i32, i32* %5, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %5, align 4
  br label %533

552:                                              ; preds = %533
  ret void
}

declare dso_local i32 @MUL(i32, i32) #1

declare dso_local i32 @FIX(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
