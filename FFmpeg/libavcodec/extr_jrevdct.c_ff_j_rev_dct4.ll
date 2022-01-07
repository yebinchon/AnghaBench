; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jrevdct.c_ff_j_rev_dct4.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jrevdct.c_ff_j_rev_dct4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCTSIZE = common dso_local global i32 0, align 4
@PASS1_BITS = common dso_local global i32 0, align 4
@DCTSTRIDE = common dso_local global i64 0, align 8
@FIX_0_541196100 = common dso_local global i32 0, align 4
@FIX_1_847759065 = common dso_local global i32 0, align 4
@FIX_0_765366865 = common dso_local global i32 0, align 4
@CONST_BITS = common dso_local global i32 0, align 4
@FIX_1_306562965 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_j_rev_dct4(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %22, align 4
  %25 = load i32*, i32** %2, align 8
  store i32* %25, i32** %16, align 8
  %26 = load i32, i32* @DCTSIZE, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %232, %1
  %29 = load i32, i32* %17, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %235

31:                                               ; preds = %28
  %32 = load i32*, i32** %16, align 8
  store i32* %32, i32** %18, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %16, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %15, align 4
  %49 = or i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %31
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @PASS1_BITS, align 4
  %57 = shl i32 %55, %56
  store i32 %57, i32* %19, align 4
  %58 = load i32, i32* %19, align 4
  %59 = and i32 %58, 65535
  %60 = load i32, i32* %19, align 4
  %61 = shl i32 %60, 16
  %62 = and i32 %61, -65536
  %63 = or i32 %59, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %20, align 4
  %67 = call i32 @AV_WN32A(i32* %65, i32 %66)
  %68 = load i32*, i32** %18, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %20, align 4
  %71 = call i32 @AV_WN32A(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %54, %51
  %73 = load i64, i64* @DCTSTRIDE, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 %73
  store i32* %75, i32** %16, align 8
  br label %232

76:                                               ; preds = %31
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %152

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* @FIX_0_541196100, align 4
  %87 = call i32 @MULTIPLY(i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 0, %89
  %91 = load i32, i32* @FIX_1_847759065, align 4
  %92 = call i32 @MULTIPLY(i32 %90, i32 %91)
  %93 = add nsw i32 %88, %92
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @FIX_0_765366865, align 4
  %97 = call i32 @MULTIPLY(i32 %95, i32 %96)
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* @CONST_BITS, align 4
  %103 = shl i32 %101, %102
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* @CONST_BITS, align 4
  %108 = shl i32 %106, %107
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %118, %119
  store i32 %120, i32* %9, align 4
  br label %151

121:                                              ; preds = %79
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 0, %122
  %124 = load i32, i32* @FIX_1_306562965, align 4
  %125 = call i32 @MULTIPLY(i32 %123, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @FIX_0_541196100, align 4
  %128 = call i32 @MULTIPLY(i32 %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @CONST_BITS, align 4
  %133 = shl i32 %131, %132
  store i32 %133, i32* %3, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %14, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* @CONST_BITS, align 4
  %138 = shl i32 %136, %137
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %6, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = sub nsw i32 %148, %149
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %121, %82
  br label %196

152:                                              ; preds = %76
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %184

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @FIX_0_541196100, align 4
  %158 = call i32 @MULTIPLY(i32 %156, i32 %157)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @FIX_1_306562965, align 4
  %161 = call i32 @MULTIPLY(i32 %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* @CONST_BITS, align 4
  %166 = shl i32 %164, %165
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* @CONST_BITS, align 4
  %171 = shl i32 %169, %170
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %172, %173
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %3, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %175, %176
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %178, %179
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %9, align 4
  br label %195

184:                                              ; preds = %152
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* @CONST_BITS, align 4
  %189 = shl i32 %187, %188
  store i32 %189, i32* %10, align 4
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* @CONST_BITS, align 4
  %194 = shl i32 %192, %193
  store i32 %194, i32* %9, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %184, %155
  br label %196

196:                                              ; preds = %195, %151
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @CONST_BITS, align 4
  %199 = load i32, i32* @PASS1_BITS, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i64 @DESCALE(i32 %197, i32 %200)
  %202 = trunc i64 %201 to i32
  %203 = load i32*, i32** %16, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @CONST_BITS, align 4
  %207 = load i32, i32* @PASS1_BITS, align 4
  %208 = sub nsw i32 %206, %207
  %209 = call i64 @DESCALE(i32 %205, i32 %208)
  %210 = trunc i64 %209 to i32
  %211 = load i32*, i32** %16, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* @CONST_BITS, align 4
  %215 = load i32, i32* @PASS1_BITS, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i64 @DESCALE(i32 %213, i32 %216)
  %218 = trunc i64 %217 to i32
  %219 = load i32*, i32** %16, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @CONST_BITS, align 4
  %223 = load i32, i32* @PASS1_BITS, align 4
  %224 = sub nsw i32 %222, %223
  %225 = call i64 @DESCALE(i32 %221, i32 %224)
  %226 = trunc i64 %225 to i32
  %227 = load i32*, i32** %16, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 3
  store i32 %226, i32* %228, align 4
  %229 = load i64, i64* @DCTSTRIDE, align 8
  %230 = load i32*, i32** %16, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 %229
  store i32* %231, i32** %16, align 8
  br label %232

232:                                              ; preds = %196, %72
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %17, align 4
  br label %28

235:                                              ; preds = %28
  %236 = load i32*, i32** %2, align 8
  store i32* %236, i32** %16, align 8
  %237 = load i32, i32* @DCTSIZE, align 4
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %425, %235
  %240 = load i32, i32* %17, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %428

242:                                              ; preds = %239
  %243 = load i32*, i32** %16, align 8
  %244 = load i64, i64* @DCTSTRIDE, align 8
  %245 = mul i64 %244, 0
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %12, align 4
  %248 = load i32*, i32** %16, align 8
  %249 = load i64, i64* @DCTSTRIDE, align 8
  %250 = mul i64 %249, 1
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %13, align 4
  %253 = load i32*, i32** %16, align 8
  %254 = load i64, i64* @DCTSTRIDE, align 8
  %255 = mul i64 %254, 2
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %14, align 4
  %258 = load i32*, i32** %16, align 8
  %259 = load i64, i64* @DCTSTRIDE, align 8
  %260 = mul i64 %259, 3
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %15, align 4
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %338

265:                                              ; preds = %242
  %266 = load i32, i32* %13, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %307

268:                                              ; preds = %265
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %269, %270
  %272 = load i32, i32* @FIX_0_541196100, align 4
  %273 = call i32 @MULTIPLY(i32 %271, i32 %272)
  store i32 %273, i32* %11, align 4
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %15, align 4
  %276 = sub nsw i32 0, %275
  %277 = load i32, i32* @FIX_1_847759065, align 4
  %278 = call i32 @MULTIPLY(i32 %276, i32 %277)
  %279 = add nsw i32 %274, %278
  store i32 %279, i32* %5, align 4
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %13, align 4
  %282 = load i32, i32* @FIX_0_765366865, align 4
  %283 = call i32 @MULTIPLY(i32 %281, i32 %282)
  %284 = add nsw i32 %280, %283
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %14, align 4
  %287 = add nsw i32 %285, %286
  %288 = load i32, i32* @CONST_BITS, align 4
  %289 = shl i32 %287, %288
  store i32 %289, i32* %3, align 4
  %290 = load i32, i32* %12, align 4
  %291 = load i32, i32* %14, align 4
  %292 = sub nsw i32 %290, %291
  %293 = load i32, i32* @CONST_BITS, align 4
  %294 = shl i32 %292, %293
  store i32 %294, i32* %4, align 4
  %295 = load i32, i32* %3, align 4
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %295, %296
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* %6, align 4
  %300 = sub nsw i32 %298, %299
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* %5, align 4
  %303 = add nsw i32 %301, %302
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %4, align 4
  %305 = load i32, i32* %5, align 4
  %306 = sub nsw i32 %304, %305
  store i32 %306, i32* %9, align 4
  br label %337

307:                                              ; preds = %265
  %308 = load i32, i32* %15, align 4
  %309 = sub nsw i32 0, %308
  %310 = load i32, i32* @FIX_1_306562965, align 4
  %311 = call i32 @MULTIPLY(i32 %309, i32 %310)
  store i32 %311, i32* %5, align 4
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* @FIX_0_541196100, align 4
  %314 = call i32 @MULTIPLY(i32 %312, i32 %313)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %315, %316
  %318 = load i32, i32* @CONST_BITS, align 4
  %319 = shl i32 %317, %318
  store i32 %319, i32* %3, align 4
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %14, align 4
  %322 = sub nsw i32 %320, %321
  %323 = load i32, i32* @CONST_BITS, align 4
  %324 = shl i32 %322, %323
  store i32 %324, i32* %4, align 4
  %325 = load i32, i32* %3, align 4
  %326 = load i32, i32* %6, align 4
  %327 = add nsw i32 %325, %326
  store i32 %327, i32* %7, align 4
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* %6, align 4
  %330 = sub nsw i32 %328, %329
  store i32 %330, i32* %10, align 4
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* %5, align 4
  %333 = add nsw i32 %331, %332
  store i32 %333, i32* %8, align 4
  %334 = load i32, i32* %4, align 4
  %335 = load i32, i32* %5, align 4
  %336 = sub nsw i32 %334, %335
  store i32 %336, i32* %9, align 4
  br label %337

337:                                              ; preds = %307, %268
  br label %382

338:                                              ; preds = %242
  %339 = load i32, i32* %13, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %370

341:                                              ; preds = %338
  %342 = load i32, i32* %13, align 4
  %343 = load i32, i32* @FIX_0_541196100, align 4
  %344 = call i32 @MULTIPLY(i32 %342, i32 %343)
  store i32 %344, i32* %5, align 4
  %345 = load i32, i32* %13, align 4
  %346 = load i32, i32* @FIX_1_306562965, align 4
  %347 = call i32 @MULTIPLY(i32 %345, i32 %346)
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %12, align 4
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* @CONST_BITS, align 4
  %352 = shl i32 %350, %351
  store i32 %352, i32* %3, align 4
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* %14, align 4
  %355 = sub nsw i32 %353, %354
  %356 = load i32, i32* @CONST_BITS, align 4
  %357 = shl i32 %355, %356
  store i32 %357, i32* %4, align 4
  %358 = load i32, i32* %3, align 4
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %358, %359
  store i32 %360, i32* %7, align 4
  %361 = load i32, i32* %3, align 4
  %362 = load i32, i32* %6, align 4
  %363 = sub nsw i32 %361, %362
  store i32 %363, i32* %10, align 4
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* %5, align 4
  %366 = add nsw i32 %364, %365
  store i32 %366, i32* %8, align 4
  %367 = load i32, i32* %4, align 4
  %368 = load i32, i32* %5, align 4
  %369 = sub nsw i32 %367, %368
  store i32 %369, i32* %9, align 4
  br label %381

370:                                              ; preds = %338
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* %14, align 4
  %373 = add nsw i32 %371, %372
  %374 = load i32, i32* @CONST_BITS, align 4
  %375 = shl i32 %373, %374
  store i32 %375, i32* %10, align 4
  store i32 %375, i32* %7, align 4
  %376 = load i32, i32* %12, align 4
  %377 = load i32, i32* %14, align 4
  %378 = sub nsw i32 %376, %377
  %379 = load i32, i32* @CONST_BITS, align 4
  %380 = shl i32 %378, %379
  store i32 %380, i32* %9, align 4
  store i32 %380, i32* %8, align 4
  br label %381

381:                                              ; preds = %370, %341
  br label %382

382:                                              ; preds = %381, %337
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @CONST_BITS, align 4
  %385 = load i32, i32* @PASS1_BITS, align 4
  %386 = add nsw i32 %384, %385
  %387 = add nsw i32 %386, 3
  %388 = ashr i32 %383, %387
  %389 = load i32*, i32** %16, align 8
  %390 = load i64, i64* @DCTSTRIDE, align 8
  %391 = mul i64 %390, 0
  %392 = getelementptr inbounds i32, i32* %389, i64 %391
  store i32 %388, i32* %392, align 4
  %393 = load i32, i32* %8, align 4
  %394 = load i32, i32* @CONST_BITS, align 4
  %395 = load i32, i32* @PASS1_BITS, align 4
  %396 = add nsw i32 %394, %395
  %397 = add nsw i32 %396, 3
  %398 = ashr i32 %393, %397
  %399 = load i32*, i32** %16, align 8
  %400 = load i64, i64* @DCTSTRIDE, align 8
  %401 = mul i64 %400, 1
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  store i32 %398, i32* %402, align 4
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* @CONST_BITS, align 4
  %405 = load i32, i32* @PASS1_BITS, align 4
  %406 = add nsw i32 %404, %405
  %407 = add nsw i32 %406, 3
  %408 = ashr i32 %403, %407
  %409 = load i32*, i32** %16, align 8
  %410 = load i64, i64* @DCTSTRIDE, align 8
  %411 = mul i64 %410, 2
  %412 = getelementptr inbounds i32, i32* %409, i64 %411
  store i32 %408, i32* %412, align 4
  %413 = load i32, i32* %10, align 4
  %414 = load i32, i32* @CONST_BITS, align 4
  %415 = load i32, i32* @PASS1_BITS, align 4
  %416 = add nsw i32 %414, %415
  %417 = add nsw i32 %416, 3
  %418 = ashr i32 %413, %417
  %419 = load i32*, i32** %16, align 8
  %420 = load i64, i64* @DCTSTRIDE, align 8
  %421 = mul i64 %420, 3
  %422 = getelementptr inbounds i32, i32* %419, i64 %421
  store i32 %418, i32* %422, align 4
  %423 = load i32*, i32** %16, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %16, align 8
  br label %425

425:                                              ; preds = %382
  %426 = load i32, i32* %17, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %17, align 4
  br label %239

428:                                              ; preds = %239
  ret void
}

declare dso_local i32 @AV_WN32A(i32*, i32) #1

declare dso_local i32 @MULTIPLY(i32, i32) #1

declare dso_local i64 @DESCALE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
