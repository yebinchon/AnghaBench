; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %78 = load i64, i64* @ff_hevc_mask_arr, align 8
  %79 = add nsw i64 %78, 16
  %80 = call i64 @LD_SB(i64 %79)
  store i64 %80, i64* %77, align 8
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 3, %81
  %83 = add nsw i32 %82, 3
  %84 = load i32*, i32** %8, align 8
  %85 = sext i32 %83 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @LD_SH(i32* %88)
  store i32 %89, i32* %38, align 4
  %90 = load i32, i32* %38, align 4
  %91 = load i32, i32* %27, align 4
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %29, align 4
  %94 = load i32, i32* %30, align 4
  %95 = call i32 @SPLATI_H4_SH(i32 %90, i32 0, i32 1, i32 2, i32 3, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @LD_SH(i32* %96)
  store i32 %97, i32* %38, align 4
  %98 = load i32, i32* %38, align 4
  %99 = load i32, i32* %38, align 4
  %100 = call i32 @UNPCK_R_SB_SH(i32 %98, i32 %99)
  %101 = load i32, i32* %38, align 4
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %32, align 4
  %104 = load i32, i32* %33, align 4
  %105 = load i32, i32* %34, align 4
  %106 = call i32 @SPLATI_W4_SH(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %77, align 8
  %108 = add nsw i64 %107, 2
  store i64 %108, i64* %35, align 8
  %109 = load i64, i64* %77, align 8
  %110 = add nsw i64 %109, 4
  store i64 %110, i64* %36, align 8
  %111 = load i64, i64* %77, align 8
  %112 = add nsw i64 %111, 6
  store i64 %112, i64* %37, align 8
  %113 = call i32 @__msa_ldi_h(i32 128)
  store i32 %113, i32* %39, align 4
  %114 = load i32, i32* %39, align 4
  %115 = shl i32 %114, 6
  store i32 %115, i32* %39, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %22, align 8
  %125 = call i32 @LD_SB7(i32* %116, i32 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 7, %126
  %128 = load i32*, i32** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %8, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %19, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* %21, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call i32 @XORI_B7_128_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* %77, align 8
  %142 = load i64, i64* %35, align 8
  %143 = load i64, i64* %36, align 8
  %144 = load i64, i64* %37, align 8
  %145 = load i64, i64* %40, align 8
  %146 = load i64, i64* %41, align 8
  %147 = load i64, i64* %42, align 8
  %148 = load i64, i64* %43, align 8
  %149 = call i32 @VSHF_B4_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %20, align 8
  %152 = load i64, i64* %77, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %37, align 8
  %156 = load i64, i64* %44, align 8
  %157 = load i64, i64* %45, align 8
  %158 = load i64, i64* %46, align 8
  %159 = load i64, i64* %47, align 8
  %160 = call i32 @VSHF_B4_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %18, align 8
  %162 = load i64, i64* %21, align 8
  %163 = load i64, i64* %77, align 8
  %164 = load i64, i64* %35, align 8
  %165 = load i64, i64* %36, align 8
  %166 = load i64, i64* %37, align 8
  %167 = load i64, i64* %48, align 8
  %168 = load i64, i64* %49, align 8
  %169 = load i64, i64* %50, align 8
  %170 = load i64, i64* %51, align 8
  %171 = call i32 @VSHF_B4_SB(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %22, align 8
  %174 = load i64, i64* %77, align 8
  %175 = load i64, i64* %35, align 8
  %176 = load i64, i64* %36, align 8
  %177 = load i64, i64* %37, align 8
  %178 = load i64, i64* %52, align 8
  %179 = load i64, i64* %53, align 8
  %180 = load i64, i64* %54, align 8
  %181 = load i64, i64* %55, align 8
  %182 = call i32 @VSHF_B4_SB(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i32, i32* %39, align 4
  store i32 %183, i32* %56, align 4
  %184 = load i64, i64* %40, align 8
  %185 = load i64, i64* %41, align 8
  %186 = load i64, i64* %42, align 8
  %187 = load i64, i64* %43, align 8
  %188 = load i32, i32* %27, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %29, align 4
  %191 = load i32, i32* %30, align 4
  %192 = load i32, i32* %56, align 4
  %193 = load i32, i32* %56, align 4
  %194 = load i32, i32* %56, align 4
  %195 = load i32, i32* %56, align 4
  %196 = call i32 @DPADD_SB4_SH(i64 %184, i64 %185, i64 %186, i64 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i32, i32* %39, align 4
  store i32 %197, i32* %57, align 4
  %198 = load i64, i64* %44, align 8
  %199 = load i64, i64* %45, align 8
  %200 = load i64, i64* %46, align 8
  %201 = load i64, i64* %47, align 8
  %202 = load i32, i32* %27, align 4
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %29, align 4
  %205 = load i32, i32* %30, align 4
  %206 = load i32, i32* %57, align 4
  %207 = load i32, i32* %57, align 4
  %208 = load i32, i32* %57, align 4
  %209 = load i32, i32* %57, align 4
  %210 = call i32 @DPADD_SB4_SH(i64 %198, i64 %199, i64 %200, i64 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %39, align 4
  store i32 %211, i32* %58, align 4
  %212 = load i64, i64* %48, align 8
  %213 = load i64, i64* %49, align 8
  %214 = load i64, i64* %50, align 8
  %215 = load i64, i64* %51, align 8
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* %28, align 4
  %218 = load i32, i32* %29, align 4
  %219 = load i32, i32* %30, align 4
  %220 = load i32, i32* %58, align 4
  %221 = load i32, i32* %58, align 4
  %222 = load i32, i32* %58, align 4
  %223 = load i32, i32* %58, align 4
  %224 = call i32 @DPADD_SB4_SH(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223)
  %225 = load i32, i32* %39, align 4
  store i32 %225, i32* %59, align 4
  %226 = load i64, i64* %52, align 8
  %227 = load i64, i64* %53, align 8
  %228 = load i64, i64* %54, align 8
  %229 = load i64, i64* %55, align 8
  %230 = load i32, i32* %27, align 4
  %231 = load i32, i32* %28, align 4
  %232 = load i32, i32* %29, align 4
  %233 = load i32, i32* %30, align 4
  %234 = load i32, i32* %59, align 4
  %235 = load i32, i32* %59, align 4
  %236 = load i32, i32* %59, align 4
  %237 = load i32, i32* %59, align 4
  %238 = call i32 @DPADD_SB4_SH(i64 %226, i64 %227, i64 %228, i64 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %57, align 4
  %240 = load i32, i32* %56, align 4
  %241 = load i32, i32* %67, align 4
  %242 = load i32, i32* %73, align 4
  %243 = call i32 @ILVRL_H2_SH(i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %58, align 4
  %245 = load i32, i32* %57, align 4
  %246 = load i32, i32* %72, align 4
  %247 = load i32, i32* %69, align 4
  %248 = call i32 @ILVRL_H2_SH(i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %59, align 4
  %250 = load i32, i32* %58, align 4
  %251 = load i32, i32* %68, align 4
  %252 = load i32, i32* %74, align 4
  %253 = call i32 @ILVRL_H2_SH(i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %59, align 4
  %255 = call i64 @__msa_splati_d(i32 %254, i32 1)
  %256 = trunc i64 %255 to i32
  store i32 %256, i32* %60, align 4
  %257 = load i32, i32* %14, align 4
  %258 = ashr i32 %257, 2
  store i32 %258, i32* %15, align 4
  br label %259

259:                                              ; preds = %263, %7
  %260 = load i32, i32* %15, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %15, align 4
  %262 = icmp ne i32 %260, 0
  br i1 %262, label %263, label %412

263:                                              ; preds = %259
  %264 = load i32*, i32** %8, align 8
  %265 = load i32, i32* %9, align 4
  %266 = load i64, i64* %23, align 8
  %267 = load i64, i64* %24, align 8
  %268 = load i64, i64* %25, align 8
  %269 = load i64, i64* %26, align 8
  %270 = call i32 @LD_SB4(i32* %264, i32 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  %271 = load i32, i32* %9, align 4
  %272 = mul nsw i32 4, %271
  %273 = load i32*, i32** %8, align 8
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %8, align 8
  %276 = load i64, i64* %23, align 8
  %277 = load i64, i64* %24, align 8
  %278 = load i64, i64* %25, align 8
  %279 = load i64, i64* %26, align 8
  %280 = call i32 @XORI_B4_128_SB(i64 %276, i64 %277, i64 %278, i64 %279)
  %281 = load i64, i64* %23, align 8
  %282 = load i64, i64* %25, align 8
  %283 = load i64, i64* %77, align 8
  %284 = load i64, i64* %35, align 8
  %285 = load i64, i64* %36, align 8
  %286 = load i64, i64* %37, align 8
  %287 = load i64, i64* %40, align 8
  %288 = load i64, i64* %41, align 8
  %289 = load i64, i64* %42, align 8
  %290 = load i64, i64* %43, align 8
  %291 = call i32 @VSHF_B4_SB(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290)
  %292 = load i64, i64* %24, align 8
  %293 = load i64, i64* %26, align 8
  %294 = load i64, i64* %77, align 8
  %295 = load i64, i64* %35, align 8
  %296 = load i64, i64* %36, align 8
  %297 = load i64, i64* %37, align 8
  %298 = load i64, i64* %44, align 8
  %299 = load i64, i64* %45, align 8
  %300 = load i64, i64* %46, align 8
  %301 = load i64, i64* %47, align 8
  %302 = call i32 @VSHF_B4_SB(i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301)
  %303 = load i32, i32* %39, align 4
  store i32 %303, i32* %61, align 4
  %304 = load i32, i32* %39, align 4
  store i32 %304, i32* %62, align 4
  %305 = load i64, i64* %40, align 8
  %306 = load i64, i64* %41, align 8
  %307 = load i64, i64* %42, align 8
  %308 = load i64, i64* %43, align 8
  %309 = load i32, i32* %27, align 4
  %310 = load i32, i32* %28, align 4
  %311 = load i32, i32* %29, align 4
  %312 = load i32, i32* %30, align 4
  %313 = load i32, i32* %61, align 4
  %314 = load i32, i32* %61, align 4
  %315 = load i32, i32* %61, align 4
  %316 = load i32, i32* %61, align 4
  %317 = call i32 @DPADD_SB4_SH(i64 %305, i64 %306, i64 %307, i64 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = load i64, i64* %44, align 8
  %319 = load i64, i64* %45, align 8
  %320 = load i64, i64* %46, align 8
  %321 = load i64, i64* %47, align 8
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* %28, align 4
  %324 = load i32, i32* %29, align 4
  %325 = load i32, i32* %30, align 4
  %326 = load i32, i32* %62, align 4
  %327 = load i32, i32* %62, align 4
  %328 = load i32, i32* %62, align 4
  %329 = load i32, i32* %62, align 4
  %330 = call i32 @DPADD_SB4_SH(i64 %318, i64 %319, i64 %320, i64 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329)
  %331 = load i32, i32* %61, align 4
  %332 = load i32, i32* %60, align 4
  %333 = call i32 @__msa_ilvr_h(i32 %331, i32 %332)
  store i32 %333, i32* %70, align 4
  %334 = load i32, i32* %62, align 4
  %335 = load i32, i32* %61, align 4
  %336 = load i32, i32* %75, align 4
  %337 = load i32, i32* %76, align 4
  %338 = call i32 @ILVRL_H2_SH(i32 %334, i32 %335, i32 %336, i32 %337)
  %339 = load i32, i32* %61, align 4
  %340 = call i64 @__msa_splati_d(i32 %339, i32 1)
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %60, align 4
  %342 = load i32, i32* %60, align 4
  %343 = load i32, i32* %62, align 4
  %344 = call i32 @__msa_ilvr_h(i32 %342, i32 %343)
  store i32 %344, i32* %71, align 4
  %345 = load i32, i32* %67, align 4
  %346 = load i32, i32* %68, align 4
  %347 = load i32, i32* %69, align 4
  %348 = load i32, i32* %70, align 4
  %349 = load i32, i32* %31, align 4
  %350 = load i32, i32* %32, align 4
  %351 = load i32, i32* %33, align 4
  %352 = load i32, i32* %34, align 4
  %353 = call i32 @HEVC_FILT_8TAP(i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352)
  store i32 %353, i32* %63, align 4
  %354 = load i32, i32* %72, align 4
  %355 = load i32, i32* %73, align 4
  %356 = load i32, i32* %74, align 4
  %357 = load i32, i32* %75, align 4
  %358 = load i32, i32* %31, align 4
  %359 = load i32, i32* %32, align 4
  %360 = load i32, i32* %33, align 4
  %361 = load i32, i32* %34, align 4
  %362 = call i32 @HEVC_FILT_8TAP(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %64, align 4
  %363 = load i32, i32* %68, align 4
  %364 = load i32, i32* %69, align 4
  %365 = load i32, i32* %70, align 4
  %366 = load i32, i32* %71, align 4
  %367 = load i32, i32* %31, align 4
  %368 = load i32, i32* %32, align 4
  %369 = load i32, i32* %33, align 4
  %370 = load i32, i32* %34, align 4
  %371 = call i32 @HEVC_FILT_8TAP(i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370)
  store i32 %371, i32* %65, align 4
  %372 = load i32, i32* %73, align 4
  %373 = load i32, i32* %74, align 4
  %374 = load i32, i32* %75, align 4
  %375 = load i32, i32* %76, align 4
  %376 = load i32, i32* %31, align 4
  %377 = load i32, i32* %32, align 4
  %378 = load i32, i32* %33, align 4
  %379 = load i32, i32* %34, align 4
  %380 = call i32 @HEVC_FILT_8TAP(i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379)
  store i32 %380, i32* %66, align 4
  %381 = load i32, i32* %63, align 4
  %382 = load i32, i32* %64, align 4
  %383 = load i32, i32* %65, align 4
  %384 = load i32, i32* %66, align 4
  %385 = call i32 @SRA_4V(i32 %381, i32 %382, i32 %383, i32 %384, i32 6)
  %386 = load i32, i32* %64, align 4
  %387 = load i32, i32* %63, align 4
  %388 = load i32, i32* %66, align 4
  %389 = load i32, i32* %65, align 4
  %390 = load i32, i32* %63, align 4
  %391 = load i32, i32* %65, align 4
  %392 = call i32 @PCKEV_H2_SW(i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391)
  %393 = load i32, i32* %63, align 4
  %394 = load i32, i32* %65, align 4
  %395 = load i32*, i32** %10, align 8
  %396 = load i32, i32* %11, align 4
  %397 = call i32 @ST_D4(i32 %393, i32 %394, i32 0, i32 1, i32 0, i32 1, i32* %395, i32 %396)
  %398 = load i32, i32* %11, align 4
  %399 = mul nsw i32 4, %398
  %400 = load i32*, i32** %10, align 8
  %401 = sext i32 %399 to i64
  %402 = getelementptr inbounds i32, i32* %400, i64 %401
  store i32* %402, i32** %10, align 8
  %403 = load i32, i32* %69, align 4
  store i32 %403, i32* %67, align 4
  %404 = load i32, i32* %70, align 4
  store i32 %404, i32* %68, align 4
  %405 = load i32, i32* %71, align 4
  store i32 %405, i32* %69, align 4
  %406 = load i32, i32* %74, align 4
  store i32 %406, i32* %72, align 4
  %407 = load i32, i32* %75, align 4
  store i32 %407, i32* %73, align 4
  %408 = load i32, i32* %76, align 4
  store i32 %408, i32* %74, align 4
  %409 = load i32, i32* %62, align 4
  %410 = call i64 @__msa_splati_d(i32 %409, i32 1)
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %60, align 4
  br label %259

412:                                              ; preds = %259
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @__msa_ilvr_h(i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
