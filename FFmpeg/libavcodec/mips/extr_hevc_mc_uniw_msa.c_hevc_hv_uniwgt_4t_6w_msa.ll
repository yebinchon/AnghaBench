; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32)* @hevc_hv_uniwgt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
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
  %56 = alloca i64, align 8
  %57 = alloca i64, align 8
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i64, align 8
  %75 = alloca i64, align 8
  %76 = alloca i64, align 8
  %77 = alloca i64, align 8
  %78 = alloca i64, align 8
  %79 = alloca i64, align 8
  %80 = alloca i64, align 8
  %81 = alloca i64, align 8
  %82 = alloca i64, align 8
  %83 = alloca i64, align 8
  %84 = alloca i64, align 8
  %85 = alloca i64, align 8
  %86 = alloca i64, align 8
  %87 = alloca i64, align 8
  %88 = alloca i64, align 8
  %89 = alloca i64, align 8
  %90 = alloca i64, align 8
  %91 = alloca i64, align 8
  %92 = alloca i64, align 8
  %93 = alloca i64, align 8
  %94 = alloca i64, align 8
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %109 = load i32, i32* @ff_hevc_mask_arr, align 4
  %110 = call i64 @LD_SB(i32 %109)
  store i64 %110, i64* %37, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32*, i32** %11, align 8
  %114 = sext i32 %112 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32* %116, i32** %11, align 8
  %117 = load i32*, i32** %15, align 8
  %118 = call i64 @LD_SH(i32* %117)
  store i64 %118, i64* %41, align 8
  %119 = load i64, i64* %41, align 8
  %120 = load i64, i64* %35, align 8
  %121 = load i64, i64* %36, align 8
  %122 = call i32 @SPLATI_H2_SH(i64 %119, i32 0, i32 1, i64 %120, i64 %121)
  %123 = load i32*, i32** %16, align 8
  %124 = call i64 @LD_SH(i32* %123)
  store i64 %124, i64* %41, align 8
  %125 = load i64, i64* %41, align 8
  %126 = load i64, i64* %41, align 8
  %127 = call i32 @UNPCK_R_SB_SH(i64 %125, i64 %126)
  %128 = load i64, i64* %41, align 8
  %129 = load i64, i64* %39, align 8
  %130 = load i64, i64* %40, align 8
  %131 = call i32 @SPLATI_W2_SH(i64 %128, i32 0, i64 %129, i64 %130)
  %132 = load i64, i64* %37, align 8
  %133 = add nsw i64 %132, 2
  store i64 %133, i64* %38, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @__msa_fill_w(i32 %134)
  store i32 %135, i32* %107, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @__msa_fill_w(i32 %136)
  store i32 %137, i32* %108, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i64 @__msa_fill_h(i32 %138)
  store i64 %139, i64* %92, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sub nsw i32 %140, 6
  %142 = call i64 @__msa_fill_h(i32 %141)
  store i64 %142, i64* %94, align 8
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 128, %143
  %145 = call i64 @__msa_fill_h(i32 %144)
  store i64 %145, i64* %93, align 8
  %146 = load i64, i64* %93, align 8
  %147 = load i64, i64* %94, align 8
  %148 = call i64 @__msa_srar_h(i64 %146, i64 %147)
  %149 = load i64, i64* %92, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %92, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i64, i64* %24, align 8
  %154 = load i64, i64* %25, align 8
  %155 = load i64, i64* %26, align 8
  %156 = call i32 @LD_SB3(i32* %151, i32 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i32, i32* %12, align 4
  %158 = mul nsw i32 3, %157
  %159 = load i32*, i32** %11, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %11, align 8
  %162 = load i64, i64* %24, align 8
  %163 = load i64, i64* %25, align 8
  %164 = load i64, i64* %26, align 8
  %165 = call i32 @XORI_B3_128_SB(i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %24, align 8
  %167 = load i64, i64* %24, align 8
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %24, align 8
  %170 = load i64, i64* %37, align 8
  %171 = load i64, i64* %38, align 8
  %172 = load i64, i64* %42, align 8
  %173 = load i64, i64* %43, align 8
  %174 = call i32 @VSHF_B2_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %25, align 8
  %176 = load i64, i64* %25, align 8
  %177 = load i64, i64* %25, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %38, align 8
  %181 = load i64, i64* %44, align 8
  %182 = load i64, i64* %45, align 8
  %183 = call i32 @VSHF_B2_SB(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %26, align 8
  %185 = load i64, i64* %26, align 8
  %186 = load i64, i64* %26, align 8
  %187 = load i64, i64* %26, align 8
  %188 = load i64, i64* %37, align 8
  %189 = load i64, i64* %38, align 8
  %190 = load i64, i64* %46, align 8
  %191 = load i64, i64* %47, align 8
  %192 = call i32 @VSHF_B2_SB(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64, i64* %42, align 8
  %194 = load i64, i64* %43, align 8
  %195 = load i64, i64* %35, align 8
  %196 = load i64, i64* %36, align 8
  %197 = call i64 @HEVC_FILT_4TAP_SH(i64 %193, i64 %194, i64 %195, i64 %196)
  store i64 %197, i64* %50, align 8
  %198 = load i64, i64* %44, align 8
  %199 = load i64, i64* %45, align 8
  %200 = load i64, i64* %35, align 8
  %201 = load i64, i64* %36, align 8
  %202 = call i64 @HEVC_FILT_4TAP_SH(i64 %198, i64 %199, i64 %200, i64 %201)
  store i64 %202, i64* %51, align 8
  %203 = load i64, i64* %46, align 8
  %204 = load i64, i64* %47, align 8
  %205 = load i64, i64* %35, align 8
  %206 = load i64, i64* %36, align 8
  %207 = call i64 @HEVC_FILT_4TAP_SH(i64 %203, i64 %204, i64 %205, i64 %206)
  store i64 %207, i64* %52, align 8
  %208 = load i64, i64* %51, align 8
  %209 = load i64, i64* %50, align 8
  %210 = load i64, i64* %67, align 8
  %211 = load i64, i64* %77, align 8
  %212 = call i32 @ILVRL_H2_SH(i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %52, align 8
  %214 = load i64, i64* %51, align 8
  %215 = load i64, i64* %72, align 8
  %216 = load i64, i64* %82, align 8
  %217 = call i32 @ILVRL_H2_SH(i64 %213, i64 %214, i64 %215, i64 %216)
  %218 = load i32*, i32** %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i64, i64* %27, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %30, align 8
  %224 = load i64, i64* %31, align 8
  %225 = load i64, i64* %32, align 8
  %226 = load i64, i64* %33, align 8
  %227 = load i64, i64* %34, align 8
  %228 = call i32 @LD_SB8(i32* %218, i32 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227)
  %229 = load i64, i64* %27, align 8
  %230 = load i64, i64* %28, align 8
  %231 = load i64, i64* %29, align 8
  %232 = load i64, i64* %30, align 8
  %233 = load i64, i64* %31, align 8
  %234 = load i64, i64* %32, align 8
  %235 = load i64, i64* %33, align 8
  %236 = load i64, i64* %34, align 8
  %237 = call i32 @XORI_B8_128_SB(i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i64, i64* %27, align 8
  %239 = load i64, i64* %27, align 8
  %240 = load i64, i64* %27, align 8
  %241 = load i64, i64* %27, align 8
  %242 = load i64, i64* %37, align 8
  %243 = load i64, i64* %38, align 8
  %244 = load i64, i64* %42, align 8
  %245 = load i64, i64* %43, align 8
  %246 = call i32 @VSHF_B2_SB(i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245)
  %247 = load i64, i64* %28, align 8
  %248 = load i64, i64* %28, align 8
  %249 = load i64, i64* %28, align 8
  %250 = load i64, i64* %28, align 8
  %251 = load i64, i64* %37, align 8
  %252 = load i64, i64* %38, align 8
  %253 = load i64, i64* %44, align 8
  %254 = load i64, i64* %45, align 8
  %255 = call i32 @VSHF_B2_SB(i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254)
  %256 = load i64, i64* %29, align 8
  %257 = load i64, i64* %29, align 8
  %258 = load i64, i64* %29, align 8
  %259 = load i64, i64* %29, align 8
  %260 = load i64, i64* %37, align 8
  %261 = load i64, i64* %38, align 8
  %262 = load i64, i64* %46, align 8
  %263 = load i64, i64* %47, align 8
  %264 = call i32 @VSHF_B2_SB(i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263)
  %265 = load i64, i64* %30, align 8
  %266 = load i64, i64* %30, align 8
  %267 = load i64, i64* %30, align 8
  %268 = load i64, i64* %30, align 8
  %269 = load i64, i64* %37, align 8
  %270 = load i64, i64* %38, align 8
  %271 = load i64, i64* %48, align 8
  %272 = load i64, i64* %49, align 8
  %273 = call i32 @VSHF_B2_SB(i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272)
  %274 = load i64, i64* %42, align 8
  %275 = load i64, i64* %43, align 8
  %276 = load i64, i64* %35, align 8
  %277 = load i64, i64* %36, align 8
  %278 = call i64 @HEVC_FILT_4TAP_SH(i64 %274, i64 %275, i64 %276, i64 %277)
  store i64 %278, i64* %53, align 8
  %279 = load i64, i64* %44, align 8
  %280 = load i64, i64* %45, align 8
  %281 = load i64, i64* %35, align 8
  %282 = load i64, i64* %36, align 8
  %283 = call i64 @HEVC_FILT_4TAP_SH(i64 %279, i64 %280, i64 %281, i64 %282)
  store i64 %283, i64* %54, align 8
  %284 = load i64, i64* %46, align 8
  %285 = load i64, i64* %47, align 8
  %286 = load i64, i64* %35, align 8
  %287 = load i64, i64* %36, align 8
  %288 = call i64 @HEVC_FILT_4TAP_SH(i64 %284, i64 %285, i64 %286, i64 %287)
  store i64 %288, i64* %55, align 8
  %289 = load i64, i64* %48, align 8
  %290 = load i64, i64* %49, align 8
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %36, align 8
  %293 = call i64 @HEVC_FILT_4TAP_SH(i64 %289, i64 %290, i64 %291, i64 %292)
  store i64 %293, i64* %56, align 8
  %294 = load i64, i64* %31, align 8
  %295 = load i64, i64* %31, align 8
  %296 = load i64, i64* %31, align 8
  %297 = load i64, i64* %31, align 8
  %298 = load i64, i64* %37, align 8
  %299 = load i64, i64* %38, align 8
  %300 = load i64, i64* %42, align 8
  %301 = load i64, i64* %43, align 8
  %302 = call i32 @VSHF_B2_SB(i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301)
  %303 = load i64, i64* %32, align 8
  %304 = load i64, i64* %32, align 8
  %305 = load i64, i64* %32, align 8
  %306 = load i64, i64* %32, align 8
  %307 = load i64, i64* %37, align 8
  %308 = load i64, i64* %38, align 8
  %309 = load i64, i64* %44, align 8
  %310 = load i64, i64* %45, align 8
  %311 = call i32 @VSHF_B2_SB(i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309, i64 %310)
  %312 = load i64, i64* %33, align 8
  %313 = load i64, i64* %33, align 8
  %314 = load i64, i64* %33, align 8
  %315 = load i64, i64* %33, align 8
  %316 = load i64, i64* %37, align 8
  %317 = load i64, i64* %38, align 8
  %318 = load i64, i64* %46, align 8
  %319 = load i64, i64* %47, align 8
  %320 = call i32 @VSHF_B2_SB(i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318, i64 %319)
  %321 = load i64, i64* %34, align 8
  %322 = load i64, i64* %34, align 8
  %323 = load i64, i64* %34, align 8
  %324 = load i64, i64* %34, align 8
  %325 = load i64, i64* %37, align 8
  %326 = load i64, i64* %38, align 8
  %327 = load i64, i64* %48, align 8
  %328 = load i64, i64* %49, align 8
  %329 = call i32 @VSHF_B2_SB(i64 %321, i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %328)
  %330 = load i64, i64* %42, align 8
  %331 = load i64, i64* %43, align 8
  %332 = load i64, i64* %35, align 8
  %333 = load i64, i64* %36, align 8
  %334 = call i64 @HEVC_FILT_4TAP_SH(i64 %330, i64 %331, i64 %332, i64 %333)
  store i64 %334, i64* %57, align 8
  %335 = load i64, i64* %44, align 8
  %336 = load i64, i64* %45, align 8
  %337 = load i64, i64* %35, align 8
  %338 = load i64, i64* %36, align 8
  %339 = call i64 @HEVC_FILT_4TAP_SH(i64 %335, i64 %336, i64 %337, i64 %338)
  store i64 %339, i64* %58, align 8
  %340 = load i64, i64* %46, align 8
  %341 = load i64, i64* %47, align 8
  %342 = load i64, i64* %35, align 8
  %343 = load i64, i64* %36, align 8
  %344 = call i64 @HEVC_FILT_4TAP_SH(i64 %340, i64 %341, i64 %342, i64 %343)
  store i64 %344, i64* %59, align 8
  %345 = load i64, i64* %48, align 8
  %346 = load i64, i64* %49, align 8
  %347 = load i64, i64* %35, align 8
  %348 = load i64, i64* %36, align 8
  %349 = call i64 @HEVC_FILT_4TAP_SH(i64 %345, i64 %346, i64 %347, i64 %348)
  store i64 %349, i64* %60, align 8
  %350 = load i64, i64* %53, align 8
  %351 = load i64, i64* %52, align 8
  %352 = load i64, i64* %68, align 8
  %353 = load i64, i64* %78, align 8
  %354 = call i32 @ILVRL_H2_SH(i64 %350, i64 %351, i64 %352, i64 %353)
  %355 = load i64, i64* %54, align 8
  %356 = load i64, i64* %53, align 8
  %357 = load i64, i64* %73, align 8
  %358 = load i64, i64* %83, align 8
  %359 = call i32 @ILVRL_H2_SH(i64 %355, i64 %356, i64 %357, i64 %358)
  %360 = load i64, i64* %55, align 8
  %361 = load i64, i64* %54, align 8
  %362 = load i64, i64* %69, align 8
  %363 = load i64, i64* %79, align 8
  %364 = call i32 @ILVRL_H2_SH(i64 %360, i64 %361, i64 %362, i64 %363)
  %365 = load i64, i64* %56, align 8
  %366 = load i64, i64* %55, align 8
  %367 = load i64, i64* %74, align 8
  %368 = load i64, i64* %84, align 8
  %369 = call i32 @ILVRL_H2_SH(i64 %365, i64 %366, i64 %367, i64 %368)
  %370 = load i64, i64* %57, align 8
  %371 = load i64, i64* %56, align 8
  %372 = load i64, i64* %70, align 8
  %373 = load i64, i64* %80, align 8
  %374 = call i32 @ILVRL_H2_SH(i64 %370, i64 %371, i64 %372, i64 %373)
  %375 = load i64, i64* %58, align 8
  %376 = load i64, i64* %57, align 8
  %377 = load i64, i64* %75, align 8
  %378 = load i64, i64* %85, align 8
  %379 = call i32 @ILVRL_H2_SH(i64 %375, i64 %376, i64 %377, i64 %378)
  %380 = load i64, i64* %59, align 8
  %381 = load i64, i64* %58, align 8
  %382 = load i64, i64* %71, align 8
  %383 = load i64, i64* %81, align 8
  %384 = call i32 @ILVRL_H2_SH(i64 %380, i64 %381, i64 %382, i64 %383)
  %385 = load i64, i64* %60, align 8
  %386 = load i64, i64* %59, align 8
  %387 = load i64, i64* %76, align 8
  %388 = load i64, i64* %86, align 8
  %389 = call i32 @ILVRL_H2_SH(i64 %385, i64 %386, i64 %387, i64 %388)
  %390 = load i64, i64* %82, align 8
  %391 = load i64, i64* %77, align 8
  %392 = load i64, i64* %83, align 8
  %393 = load i64, i64* %78, align 8
  %394 = load i64, i64* %87, align 8
  %395 = load i64, i64* %88, align 8
  %396 = call i32 @PCKEV_D2_SH(i64 %390, i64 %391, i64 %392, i64 %393, i64 %394, i64 %395)
  %397 = load i64, i64* %84, align 8
  %398 = load i64, i64* %79, align 8
  %399 = load i64, i64* %85, align 8
  %400 = load i64, i64* %80, align 8
  %401 = load i64, i64* %89, align 8
  %402 = load i64, i64* %90, align 8
  %403 = call i32 @PCKEV_D2_SH(i64 %397, i64 %398, i64 %399, i64 %400, i64 %401, i64 %402)
  %404 = load i64, i64* %86, align 8
  %405 = trunc i64 %404 to i32
  %406 = load i64, i64* %81, align 8
  %407 = trunc i64 %406 to i32
  %408 = call i64 @__msa_pckev_d(i32 %405, i32 %407)
  store i64 %408, i64* %91, align 8
  %409 = load i64, i64* %67, align 8
  %410 = load i64, i64* %68, align 8
  %411 = load i64, i64* %39, align 8
  %412 = load i64, i64* %40, align 8
  %413 = call i32 @HEVC_FILT_4TAP(i64 %409, i64 %410, i64 %411, i64 %412)
  store i32 %413, i32* %95, align 4
  %414 = load i64, i64* %72, align 8
  %415 = load i64, i64* %73, align 8
  %416 = load i64, i64* %39, align 8
  %417 = load i64, i64* %40, align 8
  %418 = call i32 @HEVC_FILT_4TAP(i64 %414, i64 %415, i64 %416, i64 %417)
  store i32 %418, i32* %96, align 4
  %419 = load i64, i64* %68, align 8
  %420 = load i64, i64* %69, align 8
  %421 = load i64, i64* %39, align 8
  %422 = load i64, i64* %40, align 8
  %423 = call i32 @HEVC_FILT_4TAP(i64 %419, i64 %420, i64 %421, i64 %422)
  store i32 %423, i32* %97, align 4
  %424 = load i64, i64* %73, align 8
  %425 = load i64, i64* %74, align 8
  %426 = load i64, i64* %39, align 8
  %427 = load i64, i64* %40, align 8
  %428 = call i32 @HEVC_FILT_4TAP(i64 %424, i64 %425, i64 %426, i64 %427)
  store i32 %428, i32* %98, align 4
  %429 = load i64, i64* %69, align 8
  %430 = load i64, i64* %70, align 8
  %431 = load i64, i64* %39, align 8
  %432 = load i64, i64* %40, align 8
  %433 = call i32 @HEVC_FILT_4TAP(i64 %429, i64 %430, i64 %431, i64 %432)
  store i32 %433, i32* %99, align 4
  %434 = load i64, i64* %74, align 8
  %435 = load i64, i64* %75, align 8
  %436 = load i64, i64* %39, align 8
  %437 = load i64, i64* %40, align 8
  %438 = call i32 @HEVC_FILT_4TAP(i64 %434, i64 %435, i64 %436, i64 %437)
  store i32 %438, i32* %100, align 4
  %439 = load i64, i64* %70, align 8
  %440 = load i64, i64* %71, align 8
  %441 = load i64, i64* %39, align 8
  %442 = load i64, i64* %40, align 8
  %443 = call i32 @HEVC_FILT_4TAP(i64 %439, i64 %440, i64 %441, i64 %442)
  store i32 %443, i32* %101, align 4
  %444 = load i64, i64* %75, align 8
  %445 = load i64, i64* %76, align 8
  %446 = load i64, i64* %39, align 8
  %447 = load i64, i64* %40, align 8
  %448 = call i32 @HEVC_FILT_4TAP(i64 %444, i64 %445, i64 %446, i64 %447)
  store i32 %448, i32* %102, align 4
  %449 = load i64, i64* %87, align 8
  %450 = load i64, i64* %88, align 8
  %451 = load i64, i64* %39, align 8
  %452 = load i64, i64* %40, align 8
  %453 = call i32 @HEVC_FILT_4TAP(i64 %449, i64 %450, i64 %451, i64 %452)
  store i32 %453, i32* %103, align 4
  %454 = load i64, i64* %88, align 8
  %455 = load i64, i64* %89, align 8
  %456 = load i64, i64* %39, align 8
  %457 = load i64, i64* %40, align 8
  %458 = call i32 @HEVC_FILT_4TAP(i64 %454, i64 %455, i64 %456, i64 %457)
  store i32 %458, i32* %104, align 4
  %459 = load i64, i64* %89, align 8
  %460 = load i64, i64* %90, align 8
  %461 = load i64, i64* %39, align 8
  %462 = load i64, i64* %40, align 8
  %463 = call i32 @HEVC_FILT_4TAP(i64 %459, i64 %460, i64 %461, i64 %462)
  store i32 %463, i32* %105, align 4
  %464 = load i64, i64* %90, align 8
  %465 = load i64, i64* %91, align 8
  %466 = load i64, i64* %39, align 8
  %467 = load i64, i64* %40, align 8
  %468 = call i32 @HEVC_FILT_4TAP(i64 %464, i64 %465, i64 %466, i64 %467)
  store i32 %468, i32* %106, align 4
  %469 = load i32, i32* %95, align 4
  %470 = load i32, i32* %96, align 4
  %471 = load i32, i32* %97, align 4
  %472 = load i32, i32* %98, align 4
  %473 = call i32 @SRA_4V(i32 %469, i32 %470, i32 %471, i32 %472, i32 6)
  %474 = load i32, i32* %99, align 4
  %475 = load i32, i32* %100, align 4
  %476 = load i32, i32* %101, align 4
  %477 = load i32, i32* %102, align 4
  %478 = call i32 @SRA_4V(i32 %474, i32 %475, i32 %476, i32 %477, i32 6)
  %479 = load i32, i32* %103, align 4
  %480 = load i32, i32* %104, align 4
  %481 = load i32, i32* %105, align 4
  %482 = load i32, i32* %106, align 4
  %483 = call i32 @SRA_4V(i32 %479, i32 %480, i32 %481, i32 %482, i32 6)
  %484 = load i32, i32* %95, align 4
  %485 = load i32, i32* %107, align 4
  %486 = load i32, i32* %96, align 4
  %487 = load i32, i32* %107, align 4
  %488 = load i32, i32* %95, align 4
  %489 = load i32, i32* %96, align 4
  %490 = call i32 @MUL2(i32 %484, i32 %485, i32 %486, i32 %487, i32 %488, i32 %489)
  %491 = load i32, i32* %97, align 4
  %492 = load i32, i32* %107, align 4
  %493 = load i32, i32* %98, align 4
  %494 = load i32, i32* %107, align 4
  %495 = load i32, i32* %97, align 4
  %496 = load i32, i32* %98, align 4
  %497 = call i32 @MUL2(i32 %491, i32 %492, i32 %493, i32 %494, i32 %495, i32 %496)
  %498 = load i32, i32* %99, align 4
  %499 = load i32, i32* %107, align 4
  %500 = load i32, i32* %100, align 4
  %501 = load i32, i32* %107, align 4
  %502 = load i32, i32* %99, align 4
  %503 = load i32, i32* %100, align 4
  %504 = call i32 @MUL2(i32 %498, i32 %499, i32 %500, i32 %501, i32 %502, i32 %503)
  %505 = load i32, i32* %101, align 4
  %506 = load i32, i32* %107, align 4
  %507 = load i32, i32* %102, align 4
  %508 = load i32, i32* %107, align 4
  %509 = load i32, i32* %101, align 4
  %510 = load i32, i32* %102, align 4
  %511 = call i32 @MUL2(i32 %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510)
  %512 = load i32, i32* %103, align 4
  %513 = load i32, i32* %107, align 4
  %514 = load i32, i32* %104, align 4
  %515 = load i32, i32* %107, align 4
  %516 = load i32, i32* %103, align 4
  %517 = load i32, i32* %104, align 4
  %518 = call i32 @MUL2(i32 %512, i32 %513, i32 %514, i32 %515, i32 %516, i32 %517)
  %519 = load i32, i32* %105, align 4
  %520 = load i32, i32* %107, align 4
  %521 = load i32, i32* %106, align 4
  %522 = load i32, i32* %107, align 4
  %523 = load i32, i32* %105, align 4
  %524 = load i32, i32* %106, align 4
  %525 = call i32 @MUL2(i32 %519, i32 %520, i32 %521, i32 %522, i32 %523, i32 %524)
  %526 = load i32, i32* %95, align 4
  %527 = load i32, i32* %96, align 4
  %528 = load i32, i32* %97, align 4
  %529 = load i32, i32* %98, align 4
  %530 = load i32, i32* %108, align 4
  %531 = call i32 @SRAR_W4_SW(i32 %526, i32 %527, i32 %528, i32 %529, i32 %530)
  %532 = load i32, i32* %99, align 4
  %533 = load i32, i32* %100, align 4
  %534 = load i32, i32* %101, align 4
  %535 = load i32, i32* %102, align 4
  %536 = load i32, i32* %108, align 4
  %537 = call i32 @SRAR_W4_SW(i32 %532, i32 %533, i32 %534, i32 %535, i32 %536)
  %538 = load i32, i32* %103, align 4
  %539 = load i32, i32* %104, align 4
  %540 = load i32, i32* %105, align 4
  %541 = load i32, i32* %106, align 4
  %542 = load i32, i32* %108, align 4
  %543 = call i32 @SRAR_W4_SW(i32 %538, i32 %539, i32 %540, i32 %541, i32 %542)
  %544 = load i32, i32* %96, align 4
  %545 = load i32, i32* %95, align 4
  %546 = load i32, i32* %98, align 4
  %547 = load i32, i32* %97, align 4
  %548 = load i64, i64* %61, align 8
  %549 = load i64, i64* %62, align 8
  %550 = call i32 @PCKEV_H2_SH(i32 %544, i32 %545, i32 %546, i32 %547, i64 %548, i64 %549)
  %551 = load i32, i32* %100, align 4
  %552 = load i32, i32* %99, align 4
  %553 = load i32, i32* %102, align 4
  %554 = load i32, i32* %101, align 4
  %555 = load i64, i64* %63, align 8
  %556 = load i64, i64* %64, align 8
  %557 = call i32 @PCKEV_H2_SH(i32 %551, i32 %552, i32 %553, i32 %554, i64 %555, i64 %556)
  %558 = load i32, i32* %104, align 4
  %559 = load i32, i32* %103, align 4
  %560 = load i32, i32* %106, align 4
  %561 = load i32, i32* %105, align 4
  %562 = load i64, i64* %65, align 8
  %563 = load i64, i64* %66, align 8
  %564 = call i32 @PCKEV_H2_SH(i32 %558, i32 %559, i32 %560, i32 %561, i64 %562, i64 %563)
  %565 = load i64, i64* %61, align 8
  %566 = load i64, i64* %92, align 8
  %567 = load i64, i64* %62, align 8
  %568 = load i64, i64* %92, align 8
  %569 = load i64, i64* %61, align 8
  %570 = load i64, i64* %62, align 8
  %571 = call i32 @ADD2(i64 %565, i64 %566, i64 %567, i64 %568, i64 %569, i64 %570)
  %572 = load i64, i64* %63, align 8
  %573 = load i64, i64* %92, align 8
  %574 = load i64, i64* %64, align 8
  %575 = load i64, i64* %92, align 8
  %576 = load i64, i64* %63, align 8
  %577 = load i64, i64* %64, align 8
  %578 = call i32 @ADD2(i64 %572, i64 %573, i64 %574, i64 %575, i64 %576, i64 %577)
  %579 = load i64, i64* %65, align 8
  %580 = load i64, i64* %92, align 8
  %581 = load i64, i64* %66, align 8
  %582 = load i64, i64* %92, align 8
  %583 = load i64, i64* %65, align 8
  %584 = load i64, i64* %66, align 8
  %585 = call i32 @ADD2(i64 %579, i64 %580, i64 %581, i64 %582, i64 %583, i64 %584)
  %586 = load i64, i64* %61, align 8
  %587 = load i64, i64* %62, align 8
  %588 = load i64, i64* %63, align 8
  %589 = load i64, i64* %64, align 8
  %590 = call i32 @CLIP_SH4_0_255(i64 %586, i64 %587, i64 %588, i64 %589)
  %591 = load i64, i64* %65, align 8
  %592 = load i64, i64* %66, align 8
  %593 = call i32 @CLIP_SH2_0_255(i64 %591, i64 %592)
  %594 = load i64, i64* %62, align 8
  %595 = load i64, i64* %61, align 8
  %596 = load i64, i64* %64, align 8
  %597 = load i64, i64* %63, align 8
  %598 = load i64, i64* %66, align 8
  %599 = load i64, i64* %65, align 8
  %600 = load i32, i32* %21, align 4
  %601 = load i32, i32* %22, align 4
  %602 = load i32, i32* %23, align 4
  %603 = call i32 @PCKEV_B3_UB(i64 %594, i64 %595, i64 %596, i64 %597, i64 %598, i64 %599, i32 %600, i32 %601, i32 %602)
  %604 = load i32, i32* %21, align 4
  %605 = load i32, i32* %22, align 4
  %606 = load i32*, i32** %13, align 8
  %607 = load i32, i32* %14, align 4
  %608 = call i32 @ST_W8(i32 %604, i32 %605, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %606, i32 %607)
  %609 = load i32, i32* %23, align 4
  %610 = load i32*, i32** %13, align 8
  %611 = getelementptr inbounds i32, i32* %610, i64 4
  %612 = load i32, i32* %14, align 4
  %613 = call i32 @ST_H8(i32 %609, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32* %611, i32 %612)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_d(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH4_0_255(i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH2_0_255(i64, i64) #1

declare dso_local i32 @PCKEV_B3_UB(i64, i64, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
