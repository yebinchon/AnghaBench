; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*)* @hevc_hv_bi_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
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
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
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
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
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
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %104 = load i32, i32* @ff_hevc_mask_arr, align 4
  %105 = call i64 @LD_SB(i32 %104)
  store i64 %105, i64* %39, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32*, i32** %9, align 8
  %109 = sext i32 %107 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32* %111, i32** %9, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @LD_SH(i32* %112)
  store i32 %113, i32* %41, align 4
  %114 = load i32, i32* %41, align 4
  %115 = load i32, i32* %35, align 4
  %116 = load i32, i32* %36, align 4
  %117 = call i32 @SPLATI_H2_SH(i32 %114, i32 0, i32 1, i32 %115, i32 %116)
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @LD_SH(i32* %118)
  store i32 %119, i32* %41, align 4
  %120 = load i32, i32* %41, align 4
  %121 = load i32, i32* %41, align 4
  %122 = call i32 @UNPCK_R_SB_SH(i32 %120, i32 %121)
  %123 = load i32, i32* %41, align 4
  %124 = load i32, i32* %37, align 4
  %125 = load i32, i32* %38, align 4
  %126 = call i32 @SPLATI_W2_SH(i32 %123, i32 0, i32 %124, i32 %125)
  %127 = load i64, i64* %39, align 8
  %128 = add nsw i64 %127, 2
  store i64 %128, i64* %40, align 8
  %129 = call i32 @__msa_ldi_h(i32 128)
  store i32 %129, i32* %42, align 4
  %130 = load i32, i32* %42, align 4
  %131 = shl i32 %130, 6
  store i32 %131, i32* %42, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %23, align 8
  %138 = load i64, i64* %24, align 8
  %139 = call i32 @LD_SB5(i32* %132, i32 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 5, %140
  %142 = load i32*, i32** %9, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %9, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i64, i64* %25, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i64, i64* %27, align 8
  %150 = load i64, i64* %28, align 8
  %151 = call i32 @LD_SB4(i32* %145, i32 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %20, align 8
  %153 = load i64, i64* %21, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %23, align 8
  %156 = load i64, i64* %24, align 8
  %157 = call i32 @XORI_B5_128_SB(i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %28, align 8
  %162 = call i32 @XORI_B4_128_SB(i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %29, align 4
  %166 = load i32, i32* %30, align 4
  %167 = load i32, i32* %31, align 4
  %168 = load i32, i32* %32, align 4
  %169 = load i32, i32* %33, align 4
  %170 = load i32, i32* %34, align 4
  %171 = call i32 @LD_SH6(i32* %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %29, align 4
  %173 = load i32, i32* %42, align 4
  %174 = load i32, i32* %30, align 4
  %175 = load i32, i32* %42, align 4
  %176 = load i32, i32* %31, align 4
  %177 = load i32, i32* %42, align 4
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %42, align 4
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %30, align 4
  %182 = load i32, i32* %31, align 4
  %183 = load i32, i32* %32, align 4
  %184 = call i32 @ADDS_SH4_SH(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %33, align 4
  %186 = load i32, i32* %42, align 4
  %187 = load i32, i32* %34, align 4
  %188 = load i32, i32* %42, align 4
  %189 = load i32, i32* %33, align 4
  %190 = load i32, i32* %34, align 4
  %191 = call i32 @ADDS_SH2_SH(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i64, i64* %20, align 8
  %193 = load i64, i64* %20, align 8
  %194 = load i64, i64* %20, align 8
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* %39, align 8
  %197 = load i64, i64* %40, align 8
  %198 = load i64, i64* %43, align 8
  %199 = load i64, i64* %44, align 8
  %200 = call i32 @VSHF_B2_SB(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* %21, align 8
  %203 = load i64, i64* %21, align 8
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %39, align 8
  %206 = load i64, i64* %40, align 8
  %207 = load i64, i64* %45, align 8
  %208 = load i64, i64* %46, align 8
  %209 = call i32 @VSHF_B2_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %22, align 8
  %211 = load i64, i64* %22, align 8
  %212 = load i64, i64* %22, align 8
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* %39, align 8
  %215 = load i64, i64* %40, align 8
  %216 = load i64, i64* %47, align 8
  %217 = load i64, i64* %48, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %23, align 8
  %220 = load i64, i64* %23, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load i64, i64* %23, align 8
  %223 = load i64, i64* %39, align 8
  %224 = load i64, i64* %40, align 8
  %225 = load i64, i64* %49, align 8
  %226 = load i64, i64* %50, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %24, align 8
  %229 = load i64, i64* %24, align 8
  %230 = load i64, i64* %24, align 8
  %231 = load i64, i64* %24, align 8
  %232 = load i64, i64* %39, align 8
  %233 = load i64, i64* %40, align 8
  %234 = load i64, i64* %51, align 8
  %235 = load i64, i64* %52, align 8
  %236 = call i32 @VSHF_B2_SB(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %25, align 8
  %238 = load i64, i64* %25, align 8
  %239 = load i64, i64* %25, align 8
  %240 = load i64, i64* %25, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %40, align 8
  %243 = load i64, i64* %53, align 8
  %244 = load i64, i64* %54, align 8
  %245 = call i32 @VSHF_B2_SB(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %26, align 8
  %247 = load i64, i64* %26, align 8
  %248 = load i64, i64* %26, align 8
  %249 = load i64, i64* %26, align 8
  %250 = load i64, i64* %39, align 8
  %251 = load i64, i64* %40, align 8
  %252 = load i64, i64* %55, align 8
  %253 = load i64, i64* %56, align 8
  %254 = call i32 @VSHF_B2_SB(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  %255 = load i64, i64* %27, align 8
  %256 = load i64, i64* %27, align 8
  %257 = load i64, i64* %27, align 8
  %258 = load i64, i64* %27, align 8
  %259 = load i64, i64* %39, align 8
  %260 = load i64, i64* %40, align 8
  %261 = load i64, i64* %57, align 8
  %262 = load i64, i64* %58, align 8
  %263 = call i32 @VSHF_B2_SB(i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64, i64* %28, align 8
  %265 = load i64, i64* %28, align 8
  %266 = load i64, i64* %28, align 8
  %267 = load i64, i64* %28, align 8
  %268 = load i64, i64* %39, align 8
  %269 = load i64, i64* %40, align 8
  %270 = load i64, i64* %59, align 8
  %271 = load i64, i64* %60, align 8
  %272 = call i32 @VSHF_B2_SB(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271)
  %273 = load i64, i64* %43, align 8
  %274 = load i64, i64* %44, align 8
  %275 = load i32, i32* %35, align 4
  %276 = load i32, i32* %36, align 4
  %277 = call i32 @HEVC_FILT_4TAP_SH(i64 %273, i64 %274, i32 %275, i32 %276)
  store i32 %277, i32* %67, align 4
  %278 = load i64, i64* %45, align 8
  %279 = load i64, i64* %46, align 8
  %280 = load i32, i32* %35, align 4
  %281 = load i32, i32* %36, align 4
  %282 = call i32 @HEVC_FILT_4TAP_SH(i64 %278, i64 %279, i32 %280, i32 %281)
  store i32 %282, i32* %68, align 4
  %283 = load i64, i64* %47, align 8
  %284 = load i64, i64* %48, align 8
  %285 = load i32, i32* %35, align 4
  %286 = load i32, i32* %36, align 4
  %287 = call i32 @HEVC_FILT_4TAP_SH(i64 %283, i64 %284, i32 %285, i32 %286)
  store i32 %287, i32* %69, align 4
  %288 = load i64, i64* %49, align 8
  %289 = load i64, i64* %50, align 8
  %290 = load i32, i32* %35, align 4
  %291 = load i32, i32* %36, align 4
  %292 = call i32 @HEVC_FILT_4TAP_SH(i64 %288, i64 %289, i32 %290, i32 %291)
  store i32 %292, i32* %70, align 4
  %293 = load i64, i64* %51, align 8
  %294 = load i64, i64* %52, align 8
  %295 = load i32, i32* %35, align 4
  %296 = load i32, i32* %36, align 4
  %297 = call i32 @HEVC_FILT_4TAP_SH(i64 %293, i64 %294, i32 %295, i32 %296)
  store i32 %297, i32* %71, align 4
  %298 = load i64, i64* %53, align 8
  %299 = load i64, i64* %54, align 8
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %36, align 4
  %302 = call i32 @HEVC_FILT_4TAP_SH(i64 %298, i64 %299, i32 %300, i32 %301)
  store i32 %302, i32* %72, align 4
  %303 = load i64, i64* %55, align 8
  %304 = load i64, i64* %56, align 8
  %305 = load i32, i32* %35, align 4
  %306 = load i32, i32* %36, align 4
  %307 = call i32 @HEVC_FILT_4TAP_SH(i64 %303, i64 %304, i32 %305, i32 %306)
  store i32 %307, i32* %73, align 4
  %308 = load i64, i64* %57, align 8
  %309 = load i64, i64* %58, align 8
  %310 = load i32, i32* %35, align 4
  %311 = load i32, i32* %36, align 4
  %312 = call i32 @HEVC_FILT_4TAP_SH(i64 %308, i64 %309, i32 %310, i32 %311)
  store i32 %312, i32* %74, align 4
  %313 = load i64, i64* %59, align 8
  %314 = load i64, i64* %60, align 8
  %315 = load i32, i32* %35, align 4
  %316 = load i32, i32* %36, align 4
  %317 = call i32 @HEVC_FILT_4TAP_SH(i64 %313, i64 %314, i32 %315, i32 %316)
  store i32 %317, i32* %75, align 4
  %318 = load i32, i32* %68, align 4
  %319 = load i32, i32* %67, align 4
  %320 = load i32, i32* %88, align 4
  %321 = load i32, i32* %90, align 4
  %322 = call i32 @ILVRL_H2_SH(i32 %318, i32 %319, i32 %320, i32 %321)
  %323 = load i32, i32* %69, align 4
  %324 = load i32, i32* %68, align 4
  %325 = load i32, i32* %92, align 4
  %326 = load i32, i32* %94, align 4
  %327 = call i32 @ILVRL_H2_SH(i32 %323, i32 %324, i32 %325, i32 %326)
  %328 = load i32, i32* %70, align 4
  %329 = load i32, i32* %69, align 4
  %330 = load i32, i32* %89, align 4
  %331 = load i32, i32* %91, align 4
  %332 = call i32 @ILVRL_H2_SH(i32 %328, i32 %329, i32 %330, i32 %331)
  %333 = load i32, i32* %71, align 4
  %334 = load i32, i32* %70, align 4
  %335 = load i32, i32* %93, align 4
  %336 = load i32, i32* %95, align 4
  %337 = call i32 @ILVRL_H2_SH(i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %72, align 4
  %339 = load i32, i32* %71, align 4
  %340 = load i32, i32* %96, align 4
  %341 = load i32, i32* %97, align 4
  %342 = call i32 @ILVRL_H2_SH(i32 %338, i32 %339, i32 %340, i32 %341)
  %343 = load i32, i32* %73, align 4
  %344 = load i32, i32* %72, align 4
  %345 = load i32, i32* %98, align 4
  %346 = load i32, i32* %99, align 4
  %347 = call i32 @ILVRL_H2_SH(i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %74, align 4
  %349 = load i32, i32* %73, align 4
  %350 = load i32, i32* %100, align 4
  %351 = load i32, i32* %101, align 4
  %352 = call i32 @ILVRL_H2_SH(i32 %348, i32 %349, i32 %350, i32 %351)
  %353 = load i32, i32* %75, align 4
  %354 = load i32, i32* %74, align 4
  %355 = load i32, i32* %102, align 4
  %356 = load i32, i32* %103, align 4
  %357 = call i32 @ILVRL_H2_SH(i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load i32, i32* %88, align 4
  %359 = load i32, i32* %89, align 4
  %360 = load i32, i32* %37, align 4
  %361 = load i32, i32* %38, align 4
  %362 = call i32 @HEVC_FILT_4TAP(i32 %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %76, align 4
  %363 = load i32, i32* %90, align 4
  %364 = load i32, i32* %91, align 4
  %365 = load i32, i32* %37, align 4
  %366 = load i32, i32* %38, align 4
  %367 = call i32 @HEVC_FILT_4TAP(i32 %363, i32 %364, i32 %365, i32 %366)
  store i32 %367, i32* %77, align 4
  %368 = load i32, i32* %92, align 4
  %369 = load i32, i32* %93, align 4
  %370 = load i32, i32* %37, align 4
  %371 = load i32, i32* %38, align 4
  %372 = call i32 @HEVC_FILT_4TAP(i32 %368, i32 %369, i32 %370, i32 %371)
  store i32 %372, i32* %78, align 4
  %373 = load i32, i32* %94, align 4
  %374 = load i32, i32* %95, align 4
  %375 = load i32, i32* %37, align 4
  %376 = load i32, i32* %38, align 4
  %377 = call i32 @HEVC_FILT_4TAP(i32 %373, i32 %374, i32 %375, i32 %376)
  store i32 %377, i32* %79, align 4
  %378 = load i32, i32* %89, align 4
  %379 = load i32, i32* %96, align 4
  %380 = load i32, i32* %37, align 4
  %381 = load i32, i32* %38, align 4
  %382 = call i32 @HEVC_FILT_4TAP(i32 %378, i32 %379, i32 %380, i32 %381)
  store i32 %382, i32* %80, align 4
  %383 = load i32, i32* %91, align 4
  %384 = load i32, i32* %97, align 4
  %385 = load i32, i32* %37, align 4
  %386 = load i32, i32* %38, align 4
  %387 = call i32 @HEVC_FILT_4TAP(i32 %383, i32 %384, i32 %385, i32 %386)
  store i32 %387, i32* %81, align 4
  %388 = load i32, i32* %93, align 4
  %389 = load i32, i32* %98, align 4
  %390 = load i32, i32* %37, align 4
  %391 = load i32, i32* %38, align 4
  %392 = call i32 @HEVC_FILT_4TAP(i32 %388, i32 %389, i32 %390, i32 %391)
  store i32 %392, i32* %82, align 4
  %393 = load i32, i32* %95, align 4
  %394 = load i32, i32* %99, align 4
  %395 = load i32, i32* %37, align 4
  %396 = load i32, i32* %38, align 4
  %397 = call i32 @HEVC_FILT_4TAP(i32 %393, i32 %394, i32 %395, i32 %396)
  store i32 %397, i32* %83, align 4
  %398 = load i32, i32* %96, align 4
  %399 = load i32, i32* %100, align 4
  %400 = load i32, i32* %37, align 4
  %401 = load i32, i32* %38, align 4
  %402 = call i32 @HEVC_FILT_4TAP(i32 %398, i32 %399, i32 %400, i32 %401)
  store i32 %402, i32* %84, align 4
  %403 = load i32, i32* %97, align 4
  %404 = load i32, i32* %101, align 4
  %405 = load i32, i32* %37, align 4
  %406 = load i32, i32* %38, align 4
  %407 = call i32 @HEVC_FILT_4TAP(i32 %403, i32 %404, i32 %405, i32 %406)
  store i32 %407, i32* %85, align 4
  %408 = load i32, i32* %98, align 4
  %409 = load i32, i32* %102, align 4
  %410 = load i32, i32* %37, align 4
  %411 = load i32, i32* %38, align 4
  %412 = call i32 @HEVC_FILT_4TAP(i32 %408, i32 %409, i32 %410, i32 %411)
  store i32 %412, i32* %86, align 4
  %413 = load i32, i32* %99, align 4
  %414 = load i32, i32* %103, align 4
  %415 = load i32, i32* %37, align 4
  %416 = load i32, i32* %38, align 4
  %417 = call i32 @HEVC_FILT_4TAP(i32 %413, i32 %414, i32 %415, i32 %416)
  store i32 %417, i32* %87, align 4
  %418 = load i32, i32* %76, align 4
  %419 = load i32, i32* %77, align 4
  %420 = load i32, i32* %78, align 4
  %421 = load i32, i32* %79, align 4
  %422 = call i32 @SRA_4V(i32 %418, i32 %419, i32 %420, i32 %421, i32 6)
  %423 = load i32, i32* %80, align 4
  %424 = load i32, i32* %81, align 4
  %425 = load i32, i32* %82, align 4
  %426 = load i32, i32* %83, align 4
  %427 = call i32 @SRA_4V(i32 %423, i32 %424, i32 %425, i32 %426, i32 6)
  %428 = load i32, i32* %84, align 4
  %429 = load i32, i32* %85, align 4
  %430 = load i32, i32* %86, align 4
  %431 = load i32, i32* %87, align 4
  %432 = call i32 @SRA_4V(i32 %428, i32 %429, i32 %430, i32 %431, i32 6)
  %433 = load i32, i32* %77, align 4
  %434 = load i32, i32* %76, align 4
  %435 = load i32, i32* %79, align 4
  %436 = load i32, i32* %78, align 4
  %437 = load i32, i32* %81, align 4
  %438 = load i32, i32* %80, align 4
  %439 = load i32, i32* %83, align 4
  %440 = load i32, i32* %82, align 4
  %441 = load i32, i32* %61, align 4
  %442 = load i32, i32* %62, align 4
  %443 = load i32, i32* %63, align 4
  %444 = load i32, i32* %64, align 4
  %445 = call i32 @PCKEV_H4_SH(i32 %433, i32 %434, i32 %435, i32 %436, i32 %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443, i32 %444)
  %446 = load i32, i32* %85, align 4
  %447 = load i32, i32* %84, align 4
  %448 = load i32, i32* %87, align 4
  %449 = load i32, i32* %86, align 4
  %450 = load i32, i32* %65, align 4
  %451 = load i32, i32* %66, align 4
  %452 = call i32 @PCKEV_H2_SH(i32 %446, i32 %447, i32 %448, i32 %449, i32 %450, i32 %451)
  %453 = load i32, i32* %29, align 4
  %454 = load i32, i32* %61, align 4
  %455 = load i32, i32* %30, align 4
  %456 = load i32, i32* %62, align 4
  %457 = load i32, i32* %31, align 4
  %458 = load i32, i32* %63, align 4
  %459 = load i32, i32* %32, align 4
  %460 = load i32, i32* %64, align 4
  %461 = load i32, i32* %61, align 4
  %462 = load i32, i32* %62, align 4
  %463 = load i32, i32* %63, align 4
  %464 = load i32, i32* %64, align 4
  %465 = call i32 @ADDS_SH4_SH(i32 %453, i32 %454, i32 %455, i32 %456, i32 %457, i32 %458, i32 %459, i32 %460, i32 %461, i32 %462, i32 %463, i32 %464)
  %466 = load i32, i32* %33, align 4
  %467 = load i32, i32* %65, align 4
  %468 = load i32, i32* %34, align 4
  %469 = load i32, i32* %66, align 4
  %470 = load i32, i32* %65, align 4
  %471 = load i32, i32* %66, align 4
  %472 = call i32 @ADDS_SH2_SH(i32 %466, i32 %467, i32 %468, i32 %469, i32 %470, i32 %471)
  %473 = load i32, i32* %61, align 4
  %474 = load i32, i32* %62, align 4
  %475 = load i32, i32* %63, align 4
  %476 = load i32, i32* %64, align 4
  %477 = call i32 @SRARI_H4_SH(i32 %473, i32 %474, i32 %475, i32 %476, i32 7)
  %478 = load i32, i32* %65, align 4
  %479 = load i32, i32* %66, align 4
  %480 = call i32 @SRARI_H2_SH(i32 %478, i32 %479, i32 7)
  %481 = load i32, i32* %61, align 4
  %482 = load i32, i32* %62, align 4
  %483 = load i32, i32* %63, align 4
  %484 = load i32, i32* %64, align 4
  %485 = call i32 @CLIP_SH4_0_255(i32 %481, i32 %482, i32 %483, i32 %484)
  %486 = load i32, i32* %65, align 4
  %487 = load i32, i32* %66, align 4
  %488 = call i32 @CLIP_SH2_0_255(i32 %486, i32 %487)
  %489 = load i32, i32* %62, align 4
  %490 = load i32, i32* %61, align 4
  %491 = load i32, i32* %64, align 4
  %492 = load i32, i32* %63, align 4
  %493 = load i64, i64* %17, align 8
  %494 = load i64, i64* %18, align 8
  %495 = call i32 @PCKEV_B2_UB(i32 %489, i32 %490, i32 %491, i32 %492, i64 %493, i64 %494)
  %496 = load i32, i32* %66, align 4
  %497 = sext i32 %496 to i64
  %498 = load i32, i32* %65, align 4
  %499 = sext i32 %498 to i64
  %500 = call i64 @__msa_pckev_b(i64 %497, i64 %499)
  store i64 %500, i64* %19, align 8
  %501 = load i64, i64* %17, align 8
  %502 = load i64, i64* %18, align 8
  %503 = load i32*, i32** %13, align 8
  %504 = load i32, i32* %14, align 4
  %505 = call i32 @ST_D4(i64 %501, i64 %502, i32 0, i32 1, i32 0, i32 1, i32* %503, i32 %504)
  %506 = load i64, i64* %19, align 8
  %507 = load i32*, i32** %13, align 8
  %508 = load i32, i32* %14, align 4
  %509 = mul nsw i32 4, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %507, i64 %510
  %512 = load i32, i32* %14, align 4
  %513 = call i32 @ST_D2(i64 %506, i32 0, i32 1, i32* %511, i32 %512)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH6(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADDS_SH2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
