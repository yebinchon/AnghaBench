; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_column_fidct_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fspp.c_column_fidct_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCTSIZE = common dso_local global i64 0, align 8
@FIX_0_707106781 = common dso_local global i32 0, align 4
@FIX_1_414213562_A = common dso_local global i32 0, align 4
@FIX_0_382683433 = common dso_local global i32 0, align 4
@FIX_0_541196100 = common dso_local global i32 0, align 4
@FIX_1_306562965 = common dso_local global i32 0, align 4
@FIX_1_414213562 = common dso_local global i32 0, align 4
@FIX_1_847759065 = common dso_local global i32 0, align 4
@FIX_1_082392200 = common dso_local global i32 0, align 4
@FIX_2_613125930 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @column_fidct_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @column_fidct_c(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
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
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %38, align 8
  %43 = load i32*, i32** %7, align 8
  store i32* %43, i32** %39, align 8
  br label %44

44:                                               ; preds = %433, %4
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %436

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  store i32* %48, i32** %40, align 8
  %49 = load i64, i64* @DCTSIZE, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %41, align 4
  br label %51

51:                                               ; preds = %425, %47
  %52 = load i32, i32* %41, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %428

54:                                               ; preds = %51
  %55 = load i32*, i32** %38, align 8
  %56 = load i64, i64* @DCTSIZE, align 8
  %57 = mul i64 %56, 0
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %38, align 8
  %61 = load i64, i64* @DCTSIZE, align 8
  %62 = mul i64 %61, 7
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %59, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32*, i32** %38, align 8
  %67 = load i64, i64* @DCTSIZE, align 8
  %68 = mul i64 %67, 0
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %38, align 8
  %72 = load i64, i64* @DCTSIZE, align 8
  %73 = mul i64 %72, 7
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %70, %75
  store i32 %76, i32* %16, align 4
  %77 = load i32*, i32** %38, align 8
  %78 = load i64, i64* @DCTSIZE, align 8
  %79 = mul i64 %78, 1
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %38, align 8
  %83 = load i64, i64* @DCTSIZE, align 8
  %84 = mul i64 %83, 6
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %81, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %38, align 8
  %89 = load i64, i64* @DCTSIZE, align 8
  %90 = mul i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %38, align 8
  %94 = load i64, i64* @DCTSIZE, align 8
  %95 = mul i64 %94, 6
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %92, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32*, i32** %38, align 8
  %100 = load i64, i64* @DCTSIZE, align 8
  %101 = mul i64 %100, 2
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %38, align 8
  %105 = load i64, i64* @DCTSIZE, align 8
  %106 = mul i64 %105, 5
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %103, %108
  store i32 %109, i32* %11, align 4
  %110 = load i32*, i32** %38, align 8
  %111 = load i64, i64* @DCTSIZE, align 8
  %112 = mul i64 %111, 2
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %38, align 8
  %116 = load i64, i64* @DCTSIZE, align 8
  %117 = mul i64 %116, 5
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %114, %119
  store i32 %120, i32* %14, align 4
  %121 = load i32*, i32** %38, align 8
  %122 = load i64, i64* @DCTSIZE, align 8
  %123 = mul i64 %122, 3
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %38, align 8
  %127 = load i64, i64* @DCTSIZE, align 8
  %128 = mul i64 %127, 4
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %125, %130
  store i32 %131, i32* %12, align 4
  %132 = load i32*, i32** %38, align 8
  %133 = load i64, i64* @DCTSIZE, align 8
  %134 = mul i64 %133, 3
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** %38, align 8
  %138 = load i64, i64* @DCTSIZE, align 8
  %139 = mul i64 %138, 4
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %136, %141
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %12, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %18, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %18, align 4
  %157 = add nsw i32 %155, %156
  store i32 %157, i32* %30, align 4
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %34, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = add nsw i32 %161, %162
  %164 = shl i32 %163, 2
  %165 = load i32, i32* @FIX_0_707106781, align 4
  %166 = call i32 @MULTIPLY16H(i32 %164, i32 %165)
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %167, %168
  store i32 %169, i32* %32, align 4
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %21, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %36, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %30, align 4
  %175 = load i32*, i32** %40, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @THRESHOLD(i32 %173, i32 %174, i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %32, align 4
  %181 = load i32*, i32** %40, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 16
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @THRESHOLD(i32 %179, i32 %180, i32 %183)
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %34, align 4
  %187 = load i32*, i32** %40, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 32
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @THRESHOLD(i32 %185, i32 %186, i32 %189)
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %36, align 4
  %193 = load i32*, i32** %40, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 48
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @THRESHOLD(i32 %191, i32 %192, i32 %195)
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 2
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %199, %200
  %202 = ashr i32 %201, 2
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %11, align 4
  %205 = sub nsw i32 %203, %204
  %206 = ashr i32 %205, 2
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %207, %208
  %210 = ashr i32 %209, 2
  store i32 %210, i32* %20, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32, i32* @FIX_1_414213562_A, align 4
  %215 = call i32 @MULTIPLY16H(i32 %213, i32 %214)
  %216 = load i32, i32* %20, align 4
  %217 = sub nsw i32 %215, %216
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %20, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %20, align 4
  %223 = sub nsw i32 %221, %222
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %18, align 4
  %225 = load i32, i32* %19, align 4
  %226 = add nsw i32 %224, %225
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %19, align 4
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %230, %231
  store i32 %232, i32* %17, align 4
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %15, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %15, align 4
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %236, %237
  store i32 %238, i32* %19, align 4
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 %239, %240
  %242 = shl i32 %241, 2
  %243 = load i32, i32* @FIX_0_382683433, align 4
  %244 = call i32 @MULTIPLY16H(i32 %242, i32 %243)
  store i32 %244, i32* %25, align 4
  %245 = load i32, i32* %17, align 4
  %246 = shl i32 %245, 2
  %247 = load i32, i32* @FIX_0_541196100, align 4
  %248 = call i32 @MULTIPLY16H(i32 %246, i32 %247)
  %249 = load i32, i32* %25, align 4
  %250 = add nsw i32 %248, %249
  store i32 %250, i32* %22, align 4
  %251 = load i32, i32* %19, align 4
  %252 = shl i32 %251, 2
  %253 = load i32, i32* @FIX_1_306562965, align 4
  %254 = call i32 @MULTIPLY16H(i32 %252, i32 %253)
  %255 = load i32, i32* %25, align 4
  %256 = add nsw i32 %254, %255
  store i32 %256, i32* %24, align 4
  %257 = load i32, i32* %18, align 4
  %258 = shl i32 %257, 2
  %259 = load i32, i32* @FIX_0_707106781, align 4
  %260 = call i32 @MULTIPLY16H(i32 %258, i32 %259)
  store i32 %260, i32* %23, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %23, align 4
  %263 = add nsw i32 %261, %262
  store i32 %263, i32* %27, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %23, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %29, align 4
  %268 = load i32, i32* %22, align 4
  %269 = add nsw i32 %267, %268
  store i32 %269, i32* %35, align 4
  %270 = load i32, i32* %29, align 4
  %271 = load i32, i32* %22, align 4
  %272 = sub nsw i32 %270, %271
  store i32 %272, i32* %33, align 4
  %273 = load i32, i32* %27, align 4
  %274 = load i32, i32* %24, align 4
  %275 = add nsw i32 %273, %274
  store i32 %275, i32* %31, align 4
  %276 = load i32, i32* %27, align 4
  %277 = load i32, i32* %24, align 4
  %278 = sub nsw i32 %276, %277
  store i32 %278, i32* %37, align 4
  %279 = load i32, i32* %13, align 4
  %280 = load i32, i32* %31, align 4
  %281 = load i32*, i32** %40, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 8
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @THRESHOLD(i32 %279, i32 %280, i32 %283)
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %33, align 4
  %287 = load i32*, i32** %40, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 24
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @THRESHOLD(i32 %285, i32 %286, i32 %289)
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %35, align 4
  %293 = load i32*, i32** %40, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 40
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @THRESHOLD(i32 %291, i32 %292, i32 %295)
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %37, align 4
  %299 = load i32*, i32** %40, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 56
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @THRESHOLD(i32 %297, i32 %298, i32 %301)
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %303, %304
  store i32 %305, i32* %29, align 4
  %306 = load i32, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  %308 = sub nsw i32 %306, %307
  %309 = shl i32 %308, 1
  store i32 %309, i32* %26, align 4
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %310, %311
  store i32 %312, i32* %27, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* %16, align 4
  %315 = sub nsw i32 %313, %314
  %316 = shl i32 %315, 1
  store i32 %316, i32* %28, align 4
  %317 = load i32, i32* %27, align 4
  %318 = load i32, i32* %29, align 4
  %319 = add nsw i32 %317, %318
  %320 = ashr i32 %319, 2
  store i32 %320, i32* %16, align 4
  %321 = load i32, i32* %27, align 4
  %322 = load i32, i32* %29, align 4
  %323 = sub nsw i32 %321, %322
  %324 = shl i32 %323, 1
  %325 = load i32, i32* @FIX_1_414213562, align 4
  %326 = call i32 @MULTIPLY16H(i32 %324, i32 %325)
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %26, align 4
  %328 = load i32, i32* %28, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* @FIX_1_847759065, align 4
  %331 = call i32 @MULTIPLY16H(i32 %329, i32 %330)
  store i32 %331, i32* %25, align 4
  %332 = load i32, i32* %28, align 4
  %333 = load i32, i32* @FIX_1_082392200, align 4
  %334 = call i32 @MULTIPLY16H(i32 %332, i32 %333)
  %335 = load i32, i32* %25, align 4
  %336 = sub nsw i32 %334, %335
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %26, align 4
  %338 = load i32, i32* @FIX_2_613125930, align 4
  %339 = call i32 @MULTIPLY16H(i32 %337, i32 %338)
  %340 = load i32, i32* %25, align 4
  %341 = add nsw i32 %339, %340
  store i32 %341, i32* %19, align 4
  %342 = load i32, i32* %19, align 4
  %343 = load i32, i32* %16, align 4
  %344 = sub nsw i32 %342, %343
  store i32 %344, i32* %15, align 4
  %345 = load i32, i32* %18, align 4
  %346 = load i32, i32* %15, align 4
  %347 = sub nsw i32 %345, %346
  store i32 %347, i32* %14, align 4
  %348 = load i32, i32* %17, align 4
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %348, %349
  store i32 %350, i32* %13, align 4
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* %16, align 4
  %353 = add nsw i32 %351, %352
  %354 = load i32*, i32** %39, align 8
  %355 = load i64, i64* @DCTSIZE, align 8
  %356 = mul i64 %355, 0
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %358, %353
  store i32 %359, i32* %357, align 4
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %15, align 4
  %362 = add nsw i32 %360, %361
  %363 = load i32*, i32** %39, align 8
  %364 = load i64, i64* @DCTSIZE, align 8
  %365 = mul i64 %364, 1
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, %362
  store i32 %368, i32* %366, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load i32, i32* %14, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32*, i32** %39, align 8
  %373 = load i64, i64* @DCTSIZE, align 8
  %374 = mul i64 %373, 2
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %376, %371
  store i32 %377, i32* %375, align 4
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* %13, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load i32*, i32** %39, align 8
  %382 = load i64, i64* @DCTSIZE, align 8
  %383 = mul i64 %382, 3
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, %380
  store i32 %386, i32* %384, align 4
  %387 = load i32, i32* %12, align 4
  %388 = load i32, i32* %13, align 4
  %389 = add nsw i32 %387, %388
  %390 = load i32*, i32** %39, align 8
  %391 = load i64, i64* @DCTSIZE, align 8
  %392 = mul i64 %391, 4
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = add nsw i32 %394, %389
  store i32 %395, i32* %393, align 4
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %14, align 4
  %398 = sub nsw i32 %396, %397
  %399 = load i32*, i32** %39, align 8
  %400 = load i64, i64* @DCTSIZE, align 8
  %401 = mul i64 %400, 5
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, %398
  store i32 %404, i32* %402, align 4
  %405 = load i32, i32* %10, align 4
  %406 = load i32, i32* %15, align 4
  %407 = sub nsw i32 %405, %406
  %408 = load i32*, i32** %39, align 8
  %409 = load i64, i64* @DCTSIZE, align 8
  %410 = mul i64 %409, 6
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  store i32 %407, i32* %411, align 4
  %412 = load i32, i32* %9, align 4
  %413 = load i32, i32* %16, align 4
  %414 = sub nsw i32 %412, %413
  %415 = load i32*, i32** %39, align 8
  %416 = load i64, i64* @DCTSIZE, align 8
  %417 = mul i64 %416, 7
  %418 = getelementptr inbounds i32, i32* %415, i64 %417
  store i32 %414, i32* %418, align 4
  %419 = load i32*, i32** %38, align 8
  %420 = getelementptr inbounds i32, i32* %419, i32 1
  store i32* %420, i32** %38, align 8
  %421 = load i32*, i32** %39, align 8
  %422 = getelementptr inbounds i32, i32* %421, i32 1
  store i32* %422, i32** %39, align 8
  %423 = load i32*, i32** %40, align 8
  %424 = getelementptr inbounds i32, i32* %423, i32 1
  store i32* %424, i32** %40, align 8
  br label %425

425:                                              ; preds = %54
  %426 = load i32, i32* %41, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %41, align 4
  br label %51

428:                                              ; preds = %51
  %429 = load i32*, i32** %38, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 8
  store i32* %430, i32** %38, align 8
  %431 = load i32*, i32** %39, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 8
  store i32* %432, i32** %39, align 8
  br label %433

433:                                              ; preds = %428
  %434 = load i32, i32* %8, align 4
  %435 = sub nsw i32 %434, 2
  store i32 %435, i32* %8, align 4
  br label %44

436:                                              ; preds = %44
  ret void
}

declare dso_local i32 @MULTIPLY16H(i32, i32) #1

declare dso_local i32 @THRESHOLD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
