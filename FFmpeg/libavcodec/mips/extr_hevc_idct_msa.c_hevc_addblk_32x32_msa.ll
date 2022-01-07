; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_addblk_32x32_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_idct_msa.c_hevc_addblk_32x32_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @hevc_addblk_32x32_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_addblk_32x32_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %33 = load i32*, i32** %5, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @LD_UB2(i32* %34, i32 16, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @LD_UB2(i32* %42, i32 16, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %8, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %25, align 8
  %52 = load i64, i64* %27, align 8
  %53 = load i64, i64* %29, align 8
  %54 = load i64, i64* %31, align 8
  %55 = call i32 @LD_SH4(i32* %50, i32 16, i64 %51, i64 %52, i64 %53, i64 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i64, i64* %26, align 8
  %59 = load i64, i64* %28, align 8
  %60 = load i64, i64* %30, align 8
  %61 = load i64, i64* %32, align 8
  %62 = call i32 @LD_SH4(i32* %57, i32 16, i64 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 64
  store i32* %64, i32** %4, align 8
  store i32 14, i32* %7, align 4
  br label %65

65:                                               ; preds = %69, %3
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %7, align 4
  %68 = icmp ne i32 %66, 0
  br i1 %68, label %69, label %179

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %18, align 8
  %73 = call i32 @UNPCK_UB_SH(i32 %70, i64 %71, i64 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %20, align 8
  %77 = call i32 @UNPCK_UB_SH(i32 %74, i64 %75, i64 %76)
  %78 = load i32, i32* %15, align 4
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* %22, align 8
  %81 = call i32 @UNPCK_UB_SH(i32 %78, i64 %79, i64 %80)
  %82 = load i32, i32* %16, align 4
  %83 = load i64, i64* %23, align 8
  %84 = load i64, i64* %24, align 8
  %85 = call i32 @UNPCK_UB_SH(i32 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %25, align 8
  %87 = load i64, i64* %17, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %17, align 8
  %89 = load i64, i64* %26, align 8
  %90 = load i64, i64* %18, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %27, align 8
  %93 = load i64, i64* %19, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %28, align 8
  %96 = load i64, i64* %20, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %20, align 8
  %98 = load i64, i64* %29, align 8
  %99 = load i64, i64* %21, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %21, align 8
  %101 = load i64, i64* %30, align 8
  %102 = load i64, i64* %22, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %31, align 8
  %105 = load i64, i64* %23, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %23, align 8
  %107 = load i64, i64* %32, align 8
  %108 = load i64, i64* %24, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* %24, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @LD_UB2(i32* %110, i32 16, i32 %111, i32 %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %8, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @LD_UB2(i32* %118, i32 16, i32 %119, i32 %120)
  %122 = load i32, i32* %6, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %8, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* %29, align 8
  %130 = load i64, i64* %31, align 8
  %131 = call i32 @LD_SH4(i32* %126, i32 16, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = load i64, i64* %26, align 8
  %135 = load i64, i64* %28, align 8
  %136 = load i64, i64* %30, align 8
  %137 = load i64, i64* %32, align 8
  %138 = call i32 @LD_SH4(i32* %133, i32 16, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i32*, i32** %4, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 64
  store i32* %140, i32** %4, align 8
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %18, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* %22, align 8
  %147 = load i64, i64* %23, align 8
  %148 = load i64, i64* %24, align 8
  %149 = call i32 @CLIP_SH8_0_255(i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i64, i64* %20, align 8
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %21, align 8
  %156 = load i64, i64* %24, align 8
  %157 = load i64, i64* %23, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @PCKEV_B4_UB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @ST_UB2(i32 %163, i32 %164, i32* %165, i32 16)
  %167 = load i32, i32* %6, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %5, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @ST_UB2(i32 %171, i32 %172, i32* %173, i32 16)
  %175 = load i32, i32* %6, align 4
  %176 = load i32*, i32** %5, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %5, align 8
  br label %65

179:                                              ; preds = %65
  %180 = load i32, i32* %13, align 4
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %18, align 8
  %183 = call i32 @UNPCK_UB_SH(i32 %180, i64 %181, i64 %182)
  %184 = load i32, i32* %14, align 4
  %185 = load i64, i64* %19, align 8
  %186 = load i64, i64* %20, align 8
  %187 = call i32 @UNPCK_UB_SH(i32 %184, i64 %185, i64 %186)
  %188 = load i32, i32* %15, align 4
  %189 = load i64, i64* %21, align 8
  %190 = load i64, i64* %22, align 8
  %191 = call i32 @UNPCK_UB_SH(i32 %188, i64 %189, i64 %190)
  %192 = load i32, i32* %16, align 4
  %193 = load i64, i64* %23, align 8
  %194 = load i64, i64* %24, align 8
  %195 = call i32 @UNPCK_UB_SH(i32 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %25, align 8
  %197 = load i64, i64* %17, align 8
  %198 = add nsw i64 %197, %196
  store i64 %198, i64* %17, align 8
  %199 = load i64, i64* %26, align 8
  %200 = load i64, i64* %18, align 8
  %201 = add nsw i64 %200, %199
  store i64 %201, i64* %18, align 8
  %202 = load i64, i64* %27, align 8
  %203 = load i64, i64* %19, align 8
  %204 = add nsw i64 %203, %202
  store i64 %204, i64* %19, align 8
  %205 = load i64, i64* %28, align 8
  %206 = load i64, i64* %20, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %20, align 8
  %208 = load i64, i64* %29, align 8
  %209 = load i64, i64* %21, align 8
  %210 = add nsw i64 %209, %208
  store i64 %210, i64* %21, align 8
  %211 = load i64, i64* %30, align 8
  %212 = load i64, i64* %22, align 8
  %213 = add nsw i64 %212, %211
  store i64 %213, i64* %22, align 8
  %214 = load i64, i64* %31, align 8
  %215 = load i64, i64* %23, align 8
  %216 = add nsw i64 %215, %214
  store i64 %216, i64* %23, align 8
  %217 = load i64, i64* %32, align 8
  %218 = load i64, i64* %24, align 8
  %219 = add nsw i64 %218, %217
  store i64 %219, i64* %24, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @LD_UB2(i32* %220, i32 16, i32 %221, i32 %222)
  %224 = load i32, i32* %6, align 4
  %225 = load i32*, i32** %8, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32* %227, i32** %8, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %16, align 4
  %231 = call i32 @LD_UB2(i32* %228, i32 16, i32 %229, i32 %230)
  %232 = load i32, i32* %6, align 4
  %233 = load i32*, i32** %8, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32* %235, i32** %8, align 8
  %236 = load i32*, i32** %4, align 8
  %237 = load i64, i64* %25, align 8
  %238 = load i64, i64* %27, align 8
  %239 = load i64, i64* %29, align 8
  %240 = load i64, i64* %31, align 8
  %241 = call i32 @LD_SH4(i32* %236, i32 16, i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i32*, i32** %4, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 8
  %244 = load i64, i64* %26, align 8
  %245 = load i64, i64* %28, align 8
  %246 = load i64, i64* %30, align 8
  %247 = load i64, i64* %32, align 8
  %248 = call i32 @LD_SH4(i32* %243, i32 16, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %17, align 8
  %250 = load i64, i64* %18, align 8
  %251 = load i64, i64* %19, align 8
  %252 = load i64, i64* %20, align 8
  %253 = load i64, i64* %21, align 8
  %254 = load i64, i64* %22, align 8
  %255 = load i64, i64* %23, align 8
  %256 = load i64, i64* %24, align 8
  %257 = call i32 @CLIP_SH8_0_255(i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256)
  %258 = load i64, i64* %18, align 8
  %259 = load i64, i64* %17, align 8
  %260 = load i64, i64* %20, align 8
  %261 = load i64, i64* %19, align 8
  %262 = load i64, i64* %22, align 8
  %263 = load i64, i64* %21, align 8
  %264 = load i64, i64* %24, align 8
  %265 = load i64, i64* %23, align 8
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %10, align 4
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* %12, align 4
  %270 = call i32 @PCKEV_B4_UB(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %10, align 4
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @ST_UB2(i32 %271, i32 %272, i32* %273, i32 16)
  %275 = load i32, i32* %6, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %5, align 8
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load i32*, i32** %5, align 8
  %282 = call i32 @ST_UB2(i32 %279, i32 %280, i32* %281, i32 16)
  %283 = load i32, i32* %6, align 4
  %284 = load i32*, i32** %5, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %5, align 8
  %287 = load i32, i32* %13, align 4
  %288 = load i64, i64* %17, align 8
  %289 = load i64, i64* %18, align 8
  %290 = call i32 @UNPCK_UB_SH(i32 %287, i64 %288, i64 %289)
  %291 = load i32, i32* %14, align 4
  %292 = load i64, i64* %19, align 8
  %293 = load i64, i64* %20, align 8
  %294 = call i32 @UNPCK_UB_SH(i32 %291, i64 %292, i64 %293)
  %295 = load i32, i32* %15, align 4
  %296 = load i64, i64* %21, align 8
  %297 = load i64, i64* %22, align 8
  %298 = call i32 @UNPCK_UB_SH(i32 %295, i64 %296, i64 %297)
  %299 = load i32, i32* %16, align 4
  %300 = load i64, i64* %23, align 8
  %301 = load i64, i64* %24, align 8
  %302 = call i32 @UNPCK_UB_SH(i32 %299, i64 %300, i64 %301)
  %303 = load i64, i64* %25, align 8
  %304 = load i64, i64* %17, align 8
  %305 = add nsw i64 %304, %303
  store i64 %305, i64* %17, align 8
  %306 = load i64, i64* %26, align 8
  %307 = load i64, i64* %18, align 8
  %308 = add nsw i64 %307, %306
  store i64 %308, i64* %18, align 8
  %309 = load i64, i64* %27, align 8
  %310 = load i64, i64* %19, align 8
  %311 = add nsw i64 %310, %309
  store i64 %311, i64* %19, align 8
  %312 = load i64, i64* %28, align 8
  %313 = load i64, i64* %20, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %20, align 8
  %315 = load i64, i64* %29, align 8
  %316 = load i64, i64* %21, align 8
  %317 = add nsw i64 %316, %315
  store i64 %317, i64* %21, align 8
  %318 = load i64, i64* %30, align 8
  %319 = load i64, i64* %22, align 8
  %320 = add nsw i64 %319, %318
  store i64 %320, i64* %22, align 8
  %321 = load i64, i64* %31, align 8
  %322 = load i64, i64* %23, align 8
  %323 = add nsw i64 %322, %321
  store i64 %323, i64* %23, align 8
  %324 = load i64, i64* %32, align 8
  %325 = load i64, i64* %24, align 8
  %326 = add nsw i64 %325, %324
  store i64 %326, i64* %24, align 8
  %327 = load i64, i64* %17, align 8
  %328 = load i64, i64* %18, align 8
  %329 = load i64, i64* %19, align 8
  %330 = load i64, i64* %20, align 8
  %331 = load i64, i64* %21, align 8
  %332 = load i64, i64* %22, align 8
  %333 = load i64, i64* %23, align 8
  %334 = load i64, i64* %24, align 8
  %335 = call i32 @CLIP_SH8_0_255(i64 %327, i64 %328, i64 %329, i64 %330, i64 %331, i64 %332, i64 %333, i64 %334)
  %336 = load i64, i64* %18, align 8
  %337 = load i64, i64* %17, align 8
  %338 = load i64, i64* %20, align 8
  %339 = load i64, i64* %19, align 8
  %340 = load i64, i64* %22, align 8
  %341 = load i64, i64* %21, align 8
  %342 = load i64, i64* %24, align 8
  %343 = load i64, i64* %23, align 8
  %344 = load i32, i32* %9, align 4
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* %11, align 4
  %347 = load i32, i32* %12, align 4
  %348 = call i32 @PCKEV_B4_UB(i64 %336, i64 %337, i64 %338, i64 %339, i64 %340, i64 %341, i64 %342, i64 %343, i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load i32, i32* %9, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load i32*, i32** %5, align 8
  %352 = call i32 @ST_UB2(i32 %349, i32 %350, i32* %351, i32 16)
  %353 = load i32, i32* %6, align 4
  %354 = load i32*, i32** %5, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32* %356, i32** %5, align 8
  %357 = load i32, i32* %11, align 4
  %358 = load i32, i32* %12, align 4
  %359 = load i32*, i32** %5, align 8
  %360 = call i32 @ST_UB2(i32 %357, i32 %358, i32* %359, i32 16)
  ret void
}

declare dso_local i32 @LD_UB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @UNPCK_UB_SH(i32, i64, i64) #1

declare dso_local i32 @CLIP_SH8_0_255(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B4_UB(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
