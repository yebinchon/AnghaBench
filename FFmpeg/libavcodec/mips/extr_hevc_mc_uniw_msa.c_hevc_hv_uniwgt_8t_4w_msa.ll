; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32)* @hevc_hv_uniwgt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %89 = load i64, i64* @ff_hevc_mask_arr, align 8
  %90 = add nsw i64 %89, 16
  %91 = call i64 @LD_SB(i64 %90)
  store i64 %91, i64* %88, align 8
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 3, %92
  %94 = add nsw i32 %93, 3
  %95 = load i32*, i32** %11, align 8
  %96 = sext i32 %94 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %11, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i64 @LD_SH(i32* %99)
  store i64 %100, i64* %45, align 8
  %101 = load i64, i64* %45, align 8
  %102 = load i64, i64* %34, align 8
  %103 = load i64, i64* %35, align 8
  %104 = load i64, i64* %36, align 8
  %105 = load i64, i64* %37, align 8
  %106 = call i32 @SPLATI_H4_SH(i64 %101, i32 0, i32 1, i32 2, i32 3, i64 %102, i64 %103, i64 %104, i64 %105)
  %107 = load i32*, i32** %16, align 8
  %108 = call i64 @LD_SH(i32* %107)
  store i64 %108, i64* %45, align 8
  %109 = load i64, i64* %45, align 8
  %110 = load i64, i64* %45, align 8
  %111 = call i32 @UNPCK_R_SB_SH(i64 %109, i64 %110)
  %112 = load i64, i64* %45, align 8
  %113 = load i64, i64* %38, align 8
  %114 = load i64, i64* %39, align 8
  %115 = load i64, i64* %40, align 8
  %116 = load i64, i64* %41, align 8
  %117 = call i32 @SPLATI_W4_SH(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = load i64, i64* %88, align 8
  %119 = add nsw i64 %118, 2
  store i64 %119, i64* %42, align 8
  %120 = load i64, i64* %88, align 8
  %121 = add nsw i64 %120, 4
  store i64 %121, i64* %43, align 8
  %122 = load i64, i64* %88, align 8
  %123 = add nsw i64 %122, 6
  store i64 %123, i64* %44, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i64 @__msa_fill_w(i32 %124)
  store i64 %125, i64* %83, align 8
  %126 = load i32, i32* %19, align 4
  %127 = call i64 @__msa_fill_w(i32 %126)
  store i64 %127, i64* %84, align 8
  %128 = load i32, i32* %20, align 4
  %129 = call i64 @__msa_fill_w(i32 %128)
  store i64 %129, i64* %85, align 8
  %130 = load i64, i64* %85, align 8
  %131 = sub nsw i64 %130, 6
  store i64 %131, i64* %87, align 8
  %132 = call i64 @__msa_ldi_w(i32 128)
  store i64 %132, i64* %86, align 8
  %133 = load i64, i64* %83, align 8
  %134 = load i64, i64* %86, align 8
  %135 = mul nsw i64 %134, %133
  store i64 %135, i64* %86, align 8
  %136 = load i64, i64* %86, align 8
  %137 = load i64, i64* %87, align 8
  %138 = call i64 @__msa_srar_w(i64 %136, i64 %137)
  %139 = load i64, i64* %84, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %84, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* %24, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %26, align 8
  %147 = load i64, i64* %27, align 8
  %148 = load i64, i64* %28, align 8
  %149 = load i64, i64* %29, align 8
  %150 = call i32 @LD_SB7(i32* %141, i32 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i32, i32* %12, align 4
  %152 = mul nsw i32 7, %151
  %153 = load i32*, i32** %11, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %11, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %24, align 8
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %26, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %28, align 8
  %162 = load i64, i64* %29, align 8
  %163 = call i32 @XORI_B7_128_SB(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %23, align 8
  %165 = load i64, i64* %26, align 8
  %166 = load i64, i64* %88, align 8
  %167 = load i64, i64* %42, align 8
  %168 = load i64, i64* %43, align 8
  %169 = load i64, i64* %44, align 8
  %170 = load i64, i64* %46, align 8
  %171 = load i64, i64* %47, align 8
  %172 = load i64, i64* %48, align 8
  %173 = load i64, i64* %49, align 8
  %174 = call i32 @VSHF_B4_SB(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %24, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %88, align 8
  %178 = load i64, i64* %42, align 8
  %179 = load i64, i64* %43, align 8
  %180 = load i64, i64* %44, align 8
  %181 = load i64, i64* %50, align 8
  %182 = load i64, i64* %51, align 8
  %183 = load i64, i64* %52, align 8
  %184 = load i64, i64* %53, align 8
  %185 = call i32 @VSHF_B4_SB(i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %25, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load i64, i64* %88, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = load i64, i64* %54, align 8
  %193 = load i64, i64* %55, align 8
  %194 = load i64, i64* %56, align 8
  %195 = load i64, i64* %57, align 8
  %196 = call i32 @VSHF_B4_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i64, i64* %26, align 8
  %198 = load i64, i64* %29, align 8
  %199 = load i64, i64* %88, align 8
  %200 = load i64, i64* %42, align 8
  %201 = load i64, i64* %43, align 8
  %202 = load i64, i64* %44, align 8
  %203 = load i64, i64* %58, align 8
  %204 = load i64, i64* %59, align 8
  %205 = load i64, i64* %60, align 8
  %206 = load i64, i64* %61, align 8
  %207 = call i32 @VSHF_B4_SB(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %46, align 8
  %209 = load i64, i64* %47, align 8
  %210 = load i64, i64* %48, align 8
  %211 = load i64, i64* %49, align 8
  %212 = load i64, i64* %34, align 8
  %213 = load i64, i64* %35, align 8
  %214 = load i64, i64* %36, align 8
  %215 = load i64, i64* %37, align 8
  %216 = call i64 @HEVC_FILT_8TAP_SH(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  store i64 %216, i64* %62, align 8
  %217 = load i64, i64* %50, align 8
  %218 = load i64, i64* %51, align 8
  %219 = load i64, i64* %52, align 8
  %220 = load i64, i64* %53, align 8
  %221 = load i64, i64* %34, align 8
  %222 = load i64, i64* %35, align 8
  %223 = load i64, i64* %36, align 8
  %224 = load i64, i64* %37, align 8
  %225 = call i64 @HEVC_FILT_8TAP_SH(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224)
  store i64 %225, i64* %63, align 8
  %226 = load i64, i64* %54, align 8
  %227 = load i64, i64* %55, align 8
  %228 = load i64, i64* %56, align 8
  %229 = load i64, i64* %57, align 8
  %230 = load i64, i64* %34, align 8
  %231 = load i64, i64* %35, align 8
  %232 = load i64, i64* %36, align 8
  %233 = load i64, i64* %37, align 8
  %234 = call i64 @HEVC_FILT_8TAP_SH(i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233)
  store i64 %234, i64* %64, align 8
  %235 = load i64, i64* %58, align 8
  %236 = load i64, i64* %59, align 8
  %237 = load i64, i64* %60, align 8
  %238 = load i64, i64* %61, align 8
  %239 = load i64, i64* %34, align 8
  %240 = load i64, i64* %35, align 8
  %241 = load i64, i64* %36, align 8
  %242 = load i64, i64* %37, align 8
  %243 = call i64 @HEVC_FILT_8TAP_SH(i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242)
  store i64 %243, i64* %65, align 8
  %244 = load i64, i64* %63, align 8
  %245 = load i64, i64* %62, align 8
  %246 = load i64, i64* %69, align 8
  %247 = load i64, i64* %75, align 8
  %248 = call i32 @ILVRL_H2_SH(i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %64, align 8
  %250 = load i64, i64* %63, align 8
  %251 = load i64, i64* %74, align 8
  %252 = load i64, i64* %71, align 8
  %253 = call i32 @ILVRL_H2_SH(i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i64, i64* %65, align 8
  %255 = load i64, i64* %64, align 8
  %256 = load i64, i64* %70, align 8
  %257 = load i64, i64* %76, align 8
  %258 = call i32 @ILVRL_H2_SH(i64 %254, i64 %255, i64 %256, i64 %257)
  %259 = load i64, i64* %65, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i64 @__msa_splati_d(i32 %260, i32 1)
  store i64 %261, i64* %66, align 8
  %262 = load i32, i32* %17, align 4
  %263 = ashr i32 %262, 2
  store i32 %263, i32* %21, align 4
  br label %264

264:                                              ; preds = %268, %10
  %265 = load i32, i32* %21, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %21, align 4
  %267 = icmp ne i32 %265, 0
  br i1 %267, label %268, label %448

268:                                              ; preds = %264
  %269 = load i32*, i32** %11, align 8
  %270 = load i32, i32* %12, align 4
  %271 = load i64, i64* %30, align 8
  %272 = load i64, i64* %31, align 8
  %273 = load i64, i64* %32, align 8
  %274 = load i64, i64* %33, align 8
  %275 = call i32 @LD_SB4(i32* %269, i32 %270, i64 %271, i64 %272, i64 %273, i64 %274)
  %276 = load i32, i32* %12, align 4
  %277 = mul nsw i32 4, %276
  %278 = load i32*, i32** %11, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %11, align 8
  %281 = load i64, i64* %30, align 8
  %282 = load i64, i64* %31, align 8
  %283 = load i64, i64* %32, align 8
  %284 = load i64, i64* %33, align 8
  %285 = call i32 @XORI_B4_128_SB(i64 %281, i64 %282, i64 %283, i64 %284)
  %286 = load i64, i64* %30, align 8
  %287 = load i64, i64* %32, align 8
  %288 = load i64, i64* %88, align 8
  %289 = load i64, i64* %42, align 8
  %290 = load i64, i64* %43, align 8
  %291 = load i64, i64* %44, align 8
  %292 = load i64, i64* %46, align 8
  %293 = load i64, i64* %47, align 8
  %294 = load i64, i64* %48, align 8
  %295 = load i64, i64* %49, align 8
  %296 = call i32 @VSHF_B4_SB(i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295)
  %297 = load i64, i64* %31, align 8
  %298 = load i64, i64* %33, align 8
  %299 = load i64, i64* %88, align 8
  %300 = load i64, i64* %42, align 8
  %301 = load i64, i64* %43, align 8
  %302 = load i64, i64* %44, align 8
  %303 = load i64, i64* %50, align 8
  %304 = load i64, i64* %51, align 8
  %305 = load i64, i64* %52, align 8
  %306 = load i64, i64* %53, align 8
  %307 = call i32 @VSHF_B4_SB(i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306)
  %308 = load i64, i64* %46, align 8
  %309 = load i64, i64* %47, align 8
  %310 = load i64, i64* %48, align 8
  %311 = load i64, i64* %49, align 8
  %312 = load i64, i64* %34, align 8
  %313 = load i64, i64* %35, align 8
  %314 = load i64, i64* %36, align 8
  %315 = load i64, i64* %37, align 8
  %316 = call i64 @HEVC_FILT_8TAP_SH(i64 %308, i64 %309, i64 %310, i64 %311, i64 %312, i64 %313, i64 %314, i64 %315)
  store i64 %316, i64* %67, align 8
  %317 = load i64, i64* %50, align 8
  %318 = load i64, i64* %51, align 8
  %319 = load i64, i64* %52, align 8
  %320 = load i64, i64* %53, align 8
  %321 = load i64, i64* %34, align 8
  %322 = load i64, i64* %35, align 8
  %323 = load i64, i64* %36, align 8
  %324 = load i64, i64* %37, align 8
  %325 = call i64 @HEVC_FILT_8TAP_SH(i64 %317, i64 %318, i64 %319, i64 %320, i64 %321, i64 %322, i64 %323, i64 %324)
  store i64 %325, i64* %68, align 8
  %326 = load i64, i64* %67, align 8
  %327 = load i64, i64* %66, align 8
  %328 = call i64 @__msa_ilvr_h(i64 %326, i64 %327)
  store i64 %328, i64* %72, align 8
  %329 = load i64, i64* %68, align 8
  %330 = load i64, i64* %67, align 8
  %331 = load i64, i64* %77, align 8
  %332 = load i64, i64* %78, align 8
  %333 = call i32 @ILVRL_H2_SH(i64 %329, i64 %330, i64 %331, i64 %332)
  %334 = load i64, i64* %67, align 8
  %335 = trunc i64 %334 to i32
  %336 = call i64 @__msa_splati_d(i32 %335, i32 1)
  store i64 %336, i64* %66, align 8
  %337 = load i64, i64* %66, align 8
  %338 = load i64, i64* %68, align 8
  %339 = call i64 @__msa_ilvr_h(i64 %337, i64 %338)
  store i64 %339, i64* %73, align 8
  %340 = load i64, i64* %69, align 8
  %341 = load i64, i64* %70, align 8
  %342 = load i64, i64* %71, align 8
  %343 = load i64, i64* %72, align 8
  %344 = load i64, i64* %38, align 8
  %345 = load i64, i64* %39, align 8
  %346 = load i64, i64* %40, align 8
  %347 = load i64, i64* %41, align 8
  %348 = call i64 @HEVC_FILT_8TAP(i64 %340, i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346, i64 %347)
  store i64 %348, i64* %79, align 8
  %349 = load i64, i64* %74, align 8
  %350 = load i64, i64* %75, align 8
  %351 = load i64, i64* %76, align 8
  %352 = load i64, i64* %77, align 8
  %353 = load i64, i64* %38, align 8
  %354 = load i64, i64* %39, align 8
  %355 = load i64, i64* %40, align 8
  %356 = load i64, i64* %41, align 8
  %357 = call i64 @HEVC_FILT_8TAP(i64 %349, i64 %350, i64 %351, i64 %352, i64 %353, i64 %354, i64 %355, i64 %356)
  store i64 %357, i64* %80, align 8
  %358 = load i64, i64* %70, align 8
  %359 = load i64, i64* %71, align 8
  %360 = load i64, i64* %72, align 8
  %361 = load i64, i64* %73, align 8
  %362 = load i64, i64* %38, align 8
  %363 = load i64, i64* %39, align 8
  %364 = load i64, i64* %40, align 8
  %365 = load i64, i64* %41, align 8
  %366 = call i64 @HEVC_FILT_8TAP(i64 %358, i64 %359, i64 %360, i64 %361, i64 %362, i64 %363, i64 %364, i64 %365)
  store i64 %366, i64* %81, align 8
  %367 = load i64, i64* %75, align 8
  %368 = load i64, i64* %76, align 8
  %369 = load i64, i64* %77, align 8
  %370 = load i64, i64* %78, align 8
  %371 = load i64, i64* %38, align 8
  %372 = load i64, i64* %39, align 8
  %373 = load i64, i64* %40, align 8
  %374 = load i64, i64* %41, align 8
  %375 = call i64 @HEVC_FILT_8TAP(i64 %367, i64 %368, i64 %369, i64 %370, i64 %371, i64 %372, i64 %373, i64 %374)
  store i64 %375, i64* %82, align 8
  %376 = load i64, i64* %79, align 8
  %377 = load i64, i64* %80, align 8
  %378 = load i64, i64* %81, align 8
  %379 = load i64, i64* %82, align 8
  %380 = call i32 @SRA_4V(i64 %376, i64 %377, i64 %378, i64 %379, i32 6)
  %381 = load i64, i64* %79, align 8
  %382 = load i64, i64* %83, align 8
  %383 = load i64, i64* %80, align 8
  %384 = load i64, i64* %83, align 8
  %385 = load i64, i64* %79, align 8
  %386 = load i64, i64* %80, align 8
  %387 = call i32 @MUL2(i64 %381, i64 %382, i64 %383, i64 %384, i64 %385, i64 %386)
  %388 = load i64, i64* %81, align 8
  %389 = load i64, i64* %83, align 8
  %390 = load i64, i64* %82, align 8
  %391 = load i64, i64* %83, align 8
  %392 = load i64, i64* %81, align 8
  %393 = load i64, i64* %82, align 8
  %394 = call i32 @MUL2(i64 %388, i64 %389, i64 %390, i64 %391, i64 %392, i64 %393)
  %395 = load i64, i64* %79, align 8
  %396 = load i64, i64* %80, align 8
  %397 = load i64, i64* %81, align 8
  %398 = load i64, i64* %82, align 8
  %399 = load i64, i64* %85, align 8
  %400 = call i32 @SRAR_W4_SW(i64 %395, i64 %396, i64 %397, i64 %398, i64 %399)
  %401 = load i64, i64* %79, align 8
  %402 = load i64, i64* %84, align 8
  %403 = load i64, i64* %80, align 8
  %404 = load i64, i64* %84, align 8
  %405 = load i64, i64* %79, align 8
  %406 = load i64, i64* %80, align 8
  %407 = call i32 @ADD2(i64 %401, i64 %402, i64 %403, i64 %404, i64 %405, i64 %406)
  %408 = load i64, i64* %81, align 8
  %409 = load i64, i64* %84, align 8
  %410 = load i64, i64* %82, align 8
  %411 = load i64, i64* %84, align 8
  %412 = load i64, i64* %81, align 8
  %413 = load i64, i64* %82, align 8
  %414 = call i32 @ADD2(i64 %408, i64 %409, i64 %410, i64 %411, i64 %412, i64 %413)
  %415 = load i64, i64* %79, align 8
  %416 = load i64, i64* %80, align 8
  %417 = load i64, i64* %81, align 8
  %418 = load i64, i64* %82, align 8
  %419 = call i32 @CLIP_SW4_0_255(i64 %415, i64 %416, i64 %417, i64 %418)
  %420 = load i64, i64* %80, align 8
  %421 = load i64, i64* %79, align 8
  %422 = load i64, i64* %82, align 8
  %423 = load i64, i64* %81, align 8
  %424 = load i64, i64* %79, align 8
  %425 = load i64, i64* %80, align 8
  %426 = call i32 @PCKEV_H2_SW(i64 %420, i64 %421, i64 %422, i64 %423, i64 %424, i64 %425)
  %427 = load i64, i64* %80, align 8
  %428 = load i64, i64* %79, align 8
  %429 = call i64 @__msa_pckev_b(i64 %427, i64 %428)
  store i64 %429, i64* %22, align 8
  %430 = load i64, i64* %22, align 8
  %431 = load i32*, i32** %13, align 8
  %432 = load i32, i32* %14, align 4
  %433 = call i32 @ST_W4(i64 %430, i32 0, i32 1, i32 2, i32 3, i32* %431, i32 %432)
  %434 = load i32, i32* %14, align 4
  %435 = mul nsw i32 4, %434
  %436 = load i32*, i32** %13, align 8
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds i32, i32* %436, i64 %437
  store i32* %438, i32** %13, align 8
  %439 = load i64, i64* %71, align 8
  store i64 %439, i64* %69, align 8
  %440 = load i64, i64* %72, align 8
  store i64 %440, i64* %70, align 8
  %441 = load i64, i64* %73, align 8
  store i64 %441, i64* %71, align 8
  %442 = load i64, i64* %76, align 8
  store i64 %442, i64* %74, align 8
  %443 = load i64, i64* %77, align 8
  store i64 %443, i64* %75, align 8
  %444 = load i64, i64* %78, align 8
  store i64 %444, i64* %76, align 8
  %445 = load i64, i64* %68, align 8
  %446 = trunc i64 %445 to i32
  %447 = call i64 @__msa_splati_d(i32 %446, i32 1)
  store i64 %447, i64* %66, align 8
  br label %264

448:                                              ; preds = %264
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W4_SH(i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_ldi_w(i32) #1

declare dso_local i64 @__msa_srar_w(i64, i64) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_h(i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i64, i64, i64, i64, i32) #1

declare dso_local i32 @MUL2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRAR_W4_SW(i64, i64, i64, i64, i64) #1

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SW4_0_255(i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_H2_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
