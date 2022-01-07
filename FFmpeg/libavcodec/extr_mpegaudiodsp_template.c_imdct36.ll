; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodsp_template.c_imdct36.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegaudiodsp_template.c_imdct36.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C2 = common dso_local global i32 0, align 4
@C8 = common dso_local global i32 0, align 4
@C4 = common dso_local global i32 0, align 4
@C3 = common dso_local global i32 0, align 4
@C1 = common dso_local global i32 0, align 4
@C7 = common dso_local global i32 0, align 4
@C5 = common dso_local global i32 0, align 4
@icos36h = common dso_local global i32* null, align 8
@icos36 = common dso_local global i32* null, align 8
@FRAC_BITS = common dso_local global i32 0, align 4
@SBLIMIT = common dso_local global i32 0, align 4
@MDCT_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*)* @imdct36 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imdct36(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [18 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 17, i32* %9, align 4
  br label %22

22:                                               ; preds = %38, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %22

41:                                               ; preds = %22
  store i32 17, i32* %9, align 4
  br label %42

42:                                               ; preds = %58, %41
  %43 = load i32, i32* %9, align 4
  %44 = icmp sge i32 %43, 3
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %9, align 4
  br label %42

61:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %232, %61
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %235

65:                                               ; preds = %62
  %66 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 0
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %20, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %21, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %21, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 16
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %76, %79
  %81 = load i32*, i32** %21, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %21, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %21, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 12
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @SHR(i32 %90, i32 1)
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %14, align 4
  %93 = load i32*, i32** %21, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %21, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 12
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @SHR(i32 %101, i32 1)
  %103 = sub nsw i32 %100, %102
  %104 = load i32*, i32** %20, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32*, i32** %20, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  store i32 %108, i32* %110, align 4
  %111 = load i32*, i32** %21, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %21, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 8
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load i32, i32* @C2, align 4
  %119 = call i32 @MULH3(i32 %117, i32 %118, i32 2)
  store i32 %119, i32* %11, align 4
  %120 = load i32*, i32** %21, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %21, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 16
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = load i32, i32* @C8, align 4
  %128 = mul nsw i32 -2, %127
  %129 = call i32 @MULH3(i32 %126, i32 %128, i32 1)
  store i32 %129, i32* %12, align 4
  %130 = load i32*, i32** %21, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %21, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 16
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = load i32, i32* @C4, align 4
  %138 = sub nsw i32 0, %137
  %139 = call i32 @MULH3(i32 %136, i32 %138, i32 2)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32*, i32** %20, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 10
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32*, i32** %20, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %12, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32*, i32** %20, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 14
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %21, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 10
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %21, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 14
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %163, %166
  %168 = load i32*, i32** %21, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %167, %170
  %172 = load i32, i32* @C3, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i32 @MULH3(i32 %171, i32 %173, i32 2)
  %175 = load i32*, i32** %20, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %21, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %21, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 10
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = load i32, i32* @C1, align 4
  %185 = call i32 @MULH3(i32 %183, i32 %184, i32 2)
  store i32 %185, i32* %13, align 4
  %186 = load i32*, i32** %21, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 10
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %21, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 14
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %188, %191
  %193 = load i32, i32* @C7, align 4
  %194 = mul nsw i32 -2, %193
  %195 = call i32 @MULH3(i32 %192, i32 %194, i32 1)
  store i32 %195, i32* %14, align 4
  %196 = load i32*, i32** %21, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 6
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @C3, align 4
  %200 = call i32 @MULH3(i32 %198, i32 %199, i32 2)
  store i32 %200, i32* %11, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %21, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 14
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = load i32, i32* @C5, align 4
  %209 = sub nsw i32 0, %208
  %210 = call i32 @MULH3(i32 %207, i32 %209, i32 2)
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32*, i32** %20, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %218, %219
  %221 = load i32, i32* %11, align 4
  %222 = sub nsw i32 %220, %221
  %223 = load i32*, i32** %20, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 12
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %12, align 4
  %227 = sub nsw i32 %225, %226
  %228 = load i32, i32* %11, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load i32*, i32** %20, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 8
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %65
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %62

235:                                              ; preds = %62
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %455, %235
  %237 = load i32, i32* %10, align 4
  %238 = icmp slt i32 %237, 4
  br i1 %238, label %239, label %458

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 2
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %12, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* %11, align 4
  %251 = add nsw i32 %249, %250
  store i32 %251, i32* %15, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* %11, align 4
  %254 = sub nsw i32 %252, %253
  store i32 %254, i32* %17, align 4
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 3
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %265, %266
  %268 = load i32*, i32** @icos36h, align 8
  %269 = load i32, i32* %10, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @MULH3(i32 %267, i32 %272, i32 2)
  store i32 %273, i32* %16, align 4
  %274 = load i32, i32* %14, align 4
  %275 = load i32, i32* %13, align 4
  %276 = sub nsw i32 %274, %275
  %277 = load i32*, i32** @icos36, align 8
  %278 = load i32, i32* %10, align 4
  %279 = sub nsw i32 8, %278
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @FRAC_BITS, align 4
  %284 = call i32 @MULLx(i32 %276, i32 %282, i32 %283)
  store i32 %284, i32* %18, align 4
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %285, %286
  store i32 %287, i32* %11, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %16, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %12, align 4
  %291 = load i32, i32* %12, align 4
  %292 = load i32*, i32** %8, align 8
  %293 = load i32, i32* %10, align 4
  %294 = add nsw i32 9, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @MULH3(i32 %291, i32 %297, i32 1)
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* %10, align 4
  %301 = add nsw i32 9, %300
  %302 = mul nsw i32 4, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %299, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %298, %305
  %307 = load i32*, i32** %5, align 8
  %308 = load i32, i32* %10, align 4
  %309 = add nsw i32 9, %308
  %310 = load i32, i32* @SBLIMIT, align 4
  %311 = mul nsw i32 %309, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %307, i64 %312
  store i32 %306, i32* %313, align 4
  %314 = load i32, i32* %12, align 4
  %315 = load i32*, i32** %8, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sub nsw i32 8, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @MULH3(i32 %314, i32 %320, i32 1)
  %322 = load i32*, i32** %6, align 8
  %323 = load i32, i32* %10, align 4
  %324 = sub nsw i32 8, %323
  %325 = mul nsw i32 4, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %321, %328
  %330 = load i32*, i32** %5, align 8
  %331 = load i32, i32* %10, align 4
  %332 = sub nsw i32 8, %331
  %333 = load i32, i32* @SBLIMIT, align 4
  %334 = mul nsw i32 %332, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %330, i64 %335
  store i32 %329, i32* %336, align 4
  %337 = load i32, i32* %11, align 4
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %340 = sdiv i32 %339, 2
  %341 = add nsw i32 %340, 9
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %338, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @MULH3(i32 %337, i32 %346, i32 1)
  %348 = load i32*, i32** %6, align 8
  %349 = load i32, i32* %10, align 4
  %350 = add nsw i32 9, %349
  %351 = mul nsw i32 4, %350
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %348, i64 %352
  store i32 %347, i32* %353, align 4
  %354 = load i32, i32* %11, align 4
  %355 = load i32*, i32** %8, align 8
  %356 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %357 = sdiv i32 %356, 2
  %358 = add nsw i32 %357, 8
  %359 = load i32, i32* %10, align 4
  %360 = sub nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %355, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @MULH3(i32 %354, i32 %363, i32 1)
  %365 = load i32*, i32** %6, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sub nsw i32 8, %366
  %368 = mul nsw i32 4, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %365, i64 %369
  store i32 %364, i32* %370, align 4
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* %18, align 4
  %373 = add nsw i32 %371, %372
  store i32 %373, i32* %11, align 4
  %374 = load i32, i32* %17, align 4
  %375 = load i32, i32* %18, align 4
  %376 = sub nsw i32 %374, %375
  store i32 %376, i32* %12, align 4
  %377 = load i32, i32* %12, align 4
  %378 = load i32*, i32** %8, align 8
  %379 = load i32, i32* %10, align 4
  %380 = sub nsw i32 17, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %378, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @MULH3(i32 %377, i32 %383, i32 1)
  %385 = load i32*, i32** %6, align 8
  %386 = load i32, i32* %10, align 4
  %387 = sub nsw i32 17, %386
  %388 = mul nsw i32 4, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %384, %391
  %393 = load i32*, i32** %5, align 8
  %394 = load i32, i32* %10, align 4
  %395 = sub nsw i32 17, %394
  %396 = load i32, i32* @SBLIMIT, align 4
  %397 = mul nsw i32 %395, %396
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %393, i64 %398
  store i32 %392, i32* %399, align 4
  %400 = load i32, i32* %12, align 4
  %401 = load i32*, i32** %8, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @MULH3(i32 %400, i32 %405, i32 1)
  %407 = load i32*, i32** %6, align 8
  %408 = load i32, i32* %10, align 4
  %409 = mul nsw i32 4, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = add nsw i32 %406, %412
  %414 = load i32*, i32** %5, align 8
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* @SBLIMIT, align 4
  %417 = mul nsw i32 %415, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %414, i64 %418
  store i32 %413, i32* %419, align 4
  %420 = load i32, i32* %11, align 4
  %421 = load i32*, i32** %8, align 8
  %422 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %423 = sdiv i32 %422, 2
  %424 = add nsw i32 %423, 9
  %425 = add nsw i32 %424, 8
  %426 = load i32, i32* %10, align 4
  %427 = sub nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %421, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @MULH3(i32 %420, i32 %430, i32 1)
  %432 = load i32*, i32** %6, align 8
  %433 = load i32, i32* %10, align 4
  %434 = sub nsw i32 17, %433
  %435 = mul nsw i32 4, %434
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %432, i64 %436
  store i32 %431, i32* %437, align 4
  %438 = load i32, i32* %11, align 4
  %439 = load i32*, i32** %8, align 8
  %440 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %441 = sdiv i32 %440, 2
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %441, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %439, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @MULH3(i32 %438, i32 %446, i32 1)
  %448 = load i32*, i32** %6, align 8
  %449 = load i32, i32* %10, align 4
  %450 = mul nsw i32 4, %449
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  store i32 %447, i32* %452, align 4
  %453 = load i32, i32* %9, align 4
  %454 = add nsw i32 %453, 4
  store i32 %454, i32* %9, align 4
  br label %455

455:                                              ; preds = %239
  %456 = load i32, i32* %10, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %10, align 4
  br label %236

458:                                              ; preds = %236
  %459 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 16
  %460 = load i32, i32* %459, align 16
  store i32 %460, i32* %15, align 4
  %461 = getelementptr inbounds [18 x i32], [18 x i32]* %19, i64 0, i64 17
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** @icos36h, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 4
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @MULH3(i32 %462, i32 %465, i32 2)
  store i32 %466, i32* %16, align 4
  %467 = load i32, i32* %15, align 4
  %468 = load i32, i32* %16, align 4
  %469 = add nsw i32 %467, %468
  store i32 %469, i32* %11, align 4
  %470 = load i32, i32* %15, align 4
  %471 = load i32, i32* %16, align 4
  %472 = sub nsw i32 %470, %471
  store i32 %472, i32* %12, align 4
  %473 = load i32, i32* %12, align 4
  %474 = load i32*, i32** %8, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 13
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @MULH3(i32 %473, i32 %476, i32 1)
  %478 = load i32*, i32** %6, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 52
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %477, %480
  %482 = load i32*, i32** %5, align 8
  %483 = load i32, i32* @SBLIMIT, align 4
  %484 = mul nsw i32 13, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  store i32 %481, i32* %486, align 4
  %487 = load i32, i32* %12, align 4
  %488 = load i32*, i32** %8, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 4
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @MULH3(i32 %487, i32 %490, i32 1)
  %492 = load i32*, i32** %6, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 16
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %491, %494
  %496 = load i32*, i32** %5, align 8
  %497 = load i32, i32* @SBLIMIT, align 4
  %498 = mul nsw i32 4, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %496, i64 %499
  store i32 %495, i32* %500, align 4
  %501 = load i32, i32* %11, align 4
  %502 = load i32*, i32** %8, align 8
  %503 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %504 = sdiv i32 %503, 2
  %505 = add nsw i32 %504, 9
  %506 = add nsw i32 %505, 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i32, i32* %502, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @MULH3(i32 %501, i32 %509, i32 1)
  %511 = load i32*, i32** %6, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 52
  store i32 %510, i32* %512, align 4
  %513 = load i32, i32* %11, align 4
  %514 = load i32*, i32** %8, align 8
  %515 = load i32, i32* @MDCT_BUF_SIZE, align 4
  %516 = sdiv i32 %515, 2
  %517 = add nsw i32 %516, 8
  %518 = sub nsw i32 %517, 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %514, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = call i32 @MULH3(i32 %513, i32 %521, i32 1)
  %523 = load i32*, i32** %6, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 16
  store i32 %522, i32* %524, align 4
  ret void
}

declare dso_local i32 @SHR(i32, i32) #1

declare dso_local i32 @MULH3(i32, i32, i32) #1

declare dso_local i32 @MULLx(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
