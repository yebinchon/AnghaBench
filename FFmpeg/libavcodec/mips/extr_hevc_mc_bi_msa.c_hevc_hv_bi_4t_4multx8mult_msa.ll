; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4multx8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4multx8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_bi_4t_4multx8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_4multx8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
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
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %84 = load i64, i64* @ff_hevc_mask_arr, align 8
  %85 = add nsw i64 %84, 16
  %86 = call i64 @LD_SB(i64 %85)
  store i64 %86, i64* %39, align 8
  store i32 0, i32* %72, align 4
  store i32 0, i32* %73, align 4
  store i32 0, i32* %74, align 4
  store i32 0, i32* %75, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32*, i32** %10, align 8
  %90 = sext i32 %88 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %10, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @LD_SH(i32* %93)
  store i32 %94, i32* %41, align 4
  %95 = load i32, i32* %41, align 4
  %96 = load i32, i32* %35, align 4
  %97 = load i32, i32* %36, align 4
  %98 = call i32 @SPLATI_H2_SH(i32 %95, i32 0, i32 1, i32 %96, i32 %97)
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @LD_SH(i32* %99)
  store i32 %100, i32* %41, align 4
  %101 = load i32, i32* %41, align 4
  %102 = load i32, i32* %41, align 4
  %103 = call i32 @UNPCK_R_SB_SH(i32 %101, i32 %102)
  %104 = load i32, i32* %41, align 4
  %105 = load i32, i32* %37, align 4
  %106 = load i32, i32* %38, align 4
  %107 = call i32 @SPLATI_W2_SH(i32 %104, i32 0, i32 %105, i32 %106)
  %108 = load i64, i64* %39, align 8
  %109 = add nsw i64 %108, 2
  store i64 %109, i64* %40, align 8
  %110 = call i32 @__msa_ldi_h(i32 128)
  store i32 %110, i32* %42, align 4
  %111 = load i32, i32* %42, align 4
  %112 = shl i32 %111, 6
  store i32 %112, i32* %42, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i64, i64* %24, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load i64, i64* %26, align 8
  %118 = call i32 @LD_SB3(i32* %113, i32 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i32, i32* %11, align 4
  %120 = mul nsw i32 3, %119
  %121 = load i32*, i32** %10, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %10, align 8
  %124 = load i64, i64* %24, align 8
  %125 = load i64, i64* %25, align 8
  %126 = load i64, i64* %26, align 8
  %127 = call i32 @XORI_B3_128_SB(i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* %39, align 8
  %133 = load i64, i64* %40, align 8
  %134 = load i64, i64* %43, align 8
  %135 = load i64, i64* %44, align 8
  %136 = call i32 @VSHF_B2_SB(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i64, i64* %25, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %26, align 8
  %141 = load i64, i64* %39, align 8
  %142 = load i64, i64* %40, align 8
  %143 = load i64, i64* %45, align 8
  %144 = load i64, i64* %46, align 8
  %145 = call i32 @VSHF_B2_SB(i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %43, align 8
  %147 = load i64, i64* %44, align 8
  %148 = load i32, i32* %35, align 4
  %149 = load i32, i32* %36, align 4
  %150 = call i32 @HEVC_FILT_4TAP_SH(i64 %146, i64 %147, i32 %148, i32 %149)
  store i32 %150, i32* %55, align 4
  %151 = load i64, i64* %45, align 8
  %152 = load i64, i64* %46, align 8
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %36, align 4
  %155 = call i32 @HEVC_FILT_4TAP_SH(i64 %151, i64 %152, i32 %153, i32 %154)
  store i32 %155, i32* %56, align 4
  %156 = load i32, i32* %56, align 4
  %157 = load i32, i32* %55, align 4
  %158 = load i32, i32* %62, align 4
  %159 = load i32, i32* %66, align 4
  %160 = call i32 @ILVRL_H2_SH(i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %56, align 4
  %162 = call i64 @__msa_splati_d(i32 %161, i32 1)
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %57, align 4
  %164 = load i32, i32* %18, align 4
  %165 = ashr i32 %164, 3
  store i32 %165, i32* %19, align 4
  br label %166

166:                                              ; preds = %170, %9
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %19, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %453

170:                                              ; preds = %166
  %171 = load i32*, i32** %10, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %28, align 8
  %175 = load i64, i64* %29, align 8
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* %31, align 8
  %178 = load i64, i64* %32, align 8
  %179 = load i64, i64* %33, align 8
  %180 = load i64, i64* %34, align 8
  %181 = call i32 @LD_SB8(i32* %171, i32 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i32, i32* %11, align 4
  %183 = mul nsw i32 8, %182
  %184 = load i32*, i32** %10, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32* %186, i32** %10, align 8
  %187 = load i64, i64* %27, align 8
  %188 = load i64, i64* %28, align 8
  %189 = load i64, i64* %29, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* %31, align 8
  %192 = load i64, i64* %32, align 8
  %193 = load i64, i64* %33, align 8
  %194 = load i64, i64* %34, align 8
  %195 = call i32 @XORI_B8_128_SB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %27, align 8
  %197 = load i64, i64* %31, align 8
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* %31, align 8
  %200 = load i64, i64* %39, align 8
  %201 = load i64, i64* %40, align 8
  %202 = load i64, i64* %43, align 8
  %203 = load i64, i64* %44, align 8
  %204 = call i32 @VSHF_B2_SB(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  %205 = load i64, i64* %28, align 8
  %206 = load i64, i64* %32, align 8
  %207 = load i64, i64* %28, align 8
  %208 = load i64, i64* %32, align 8
  %209 = load i64, i64* %39, align 8
  %210 = load i64, i64* %40, align 8
  %211 = load i64, i64* %45, align 8
  %212 = load i64, i64* %46, align 8
  %213 = call i32 @VSHF_B2_SB(i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212)
  %214 = load i64, i64* %29, align 8
  %215 = load i64, i64* %33, align 8
  %216 = load i64, i64* %29, align 8
  %217 = load i64, i64* %33, align 8
  %218 = load i64, i64* %39, align 8
  %219 = load i64, i64* %40, align 8
  %220 = load i64, i64* %47, align 8
  %221 = load i64, i64* %48, align 8
  %222 = call i32 @VSHF_B2_SB(i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  %223 = load i64, i64* %30, align 8
  %224 = load i64, i64* %34, align 8
  %225 = load i64, i64* %30, align 8
  %226 = load i64, i64* %34, align 8
  %227 = load i64, i64* %39, align 8
  %228 = load i64, i64* %40, align 8
  %229 = load i64, i64* %49, align 8
  %230 = load i64, i64* %50, align 8
  %231 = call i32 @VSHF_B2_SB(i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230)
  %232 = load i64, i64* %43, align 8
  %233 = load i64, i64* %44, align 8
  %234 = load i32, i32* %35, align 4
  %235 = load i32, i32* %36, align 4
  %236 = call i32 @HEVC_FILT_4TAP_SH(i64 %232, i64 %233, i32 %234, i32 %235)
  store i32 %236, i32* %58, align 4
  %237 = load i64, i64* %45, align 8
  %238 = load i64, i64* %46, align 8
  %239 = load i32, i32* %35, align 4
  %240 = load i32, i32* %36, align 4
  %241 = call i32 @HEVC_FILT_4TAP_SH(i64 %237, i64 %238, i32 %239, i32 %240)
  store i32 %241, i32* %59, align 4
  %242 = load i64, i64* %47, align 8
  %243 = load i64, i64* %48, align 8
  %244 = load i32, i32* %35, align 4
  %245 = load i32, i32* %36, align 4
  %246 = call i32 @HEVC_FILT_4TAP_SH(i64 %242, i64 %243, i32 %244, i32 %245)
  store i32 %246, i32* %60, align 4
  %247 = load i64, i64* %49, align 8
  %248 = load i64, i64* %50, align 8
  %249 = load i32, i32* %35, align 4
  %250 = load i32, i32* %36, align 4
  %251 = call i32 @HEVC_FILT_4TAP_SH(i64 %247, i64 %248, i32 %249, i32 %250)
  store i32 %251, i32* %61, align 4
  %252 = load i32, i32* %58, align 4
  %253 = load i32, i32* %57, align 4
  %254 = call i32 @__msa_ilvr_h(i32 %252, i32 %253)
  store i32 %254, i32* %63, align 4
  %255 = load i32, i32* %59, align 4
  %256 = load i32, i32* %58, align 4
  %257 = load i32, i32* %67, align 4
  %258 = load i32, i32* %69, align 4
  %259 = call i32 @ILVRL_H2_SH(i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %60, align 4
  %261 = load i32, i32* %59, align 4
  %262 = load i32, i32* %64, align 4
  %263 = load i32, i32* %70, align 4
  %264 = call i32 @ILVRL_H2_SH(i32 %260, i32 %261, i32 %262, i32 %263)
  %265 = load i32, i32* %61, align 4
  %266 = load i32, i32* %60, align 4
  %267 = load i32, i32* %68, align 4
  %268 = load i32, i32* %71, align 4
  %269 = call i32 @ILVRL_H2_SH(i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %58, align 4
  %271 = call i64 @__msa_splati_d(i32 %270, i32 1)
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %57, align 4
  %273 = load i32, i32* %57, align 4
  %274 = load i32, i32* %61, align 4
  %275 = call i32 @__msa_ilvr_h(i32 %273, i32 %274)
  store i32 %275, i32* %65, align 4
  %276 = load i32*, i32** %12, align 8
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* %20, align 4
  %279 = load i32, i32* %21, align 4
  %280 = call i32 @LD2(i32* %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = mul nsw i32 2, %281
  %283 = load i32*, i32** %12, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  store i32* %285, i32** %12, align 8
  %286 = load i32, i32* %20, align 4
  %287 = load i32, i32* %21, align 4
  %288 = load i32, i32* %72, align 4
  %289 = call i32 @INSERT_D2_SH(i32 %286, i32 %287, i32 %288)
  %290 = load i32*, i32** %12, align 8
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %20, align 4
  %293 = load i32, i32* %21, align 4
  %294 = call i32 @LD2(i32* %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %13, align 4
  %296 = mul nsw i32 2, %295
  %297 = load i32*, i32** %12, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32* %299, i32** %12, align 8
  %300 = load i32, i32* %20, align 4
  %301 = load i32, i32* %21, align 4
  %302 = load i32, i32* %73, align 4
  %303 = call i32 @INSERT_D2_SH(i32 %300, i32 %301, i32 %302)
  %304 = load i32*, i32** %12, align 8
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %20, align 4
  %307 = load i32, i32* %21, align 4
  %308 = call i32 @LD2(i32* %304, i32 %305, i32 %306, i32 %307)
  %309 = load i32, i32* %13, align 4
  %310 = mul nsw i32 2, %309
  %311 = load i32*, i32** %12, align 8
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  store i32* %313, i32** %12, align 8
  %314 = load i32, i32* %20, align 4
  %315 = load i32, i32* %21, align 4
  %316 = load i32, i32* %74, align 4
  %317 = call i32 @INSERT_D2_SH(i32 %314, i32 %315, i32 %316)
  %318 = load i32*, i32** %12, align 8
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %20, align 4
  %321 = load i32, i32* %21, align 4
  %322 = call i32 @LD2(i32* %318, i32 %319, i32 %320, i32 %321)
  %323 = load i32, i32* %13, align 4
  %324 = mul nsw i32 2, %323
  %325 = load i32*, i32** %12, align 8
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  store i32* %327, i32** %12, align 8
  %328 = load i32, i32* %20, align 4
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* %75, align 4
  %331 = call i32 @INSERT_D2_SH(i32 %328, i32 %329, i32 %330)
  %332 = load i32, i32* %72, align 4
  %333 = load i32, i32* %42, align 4
  %334 = load i32, i32* %73, align 4
  %335 = load i32, i32* %42, align 4
  %336 = load i32, i32* %74, align 4
  %337 = load i32, i32* %42, align 4
  %338 = load i32, i32* %75, align 4
  %339 = load i32, i32* %42, align 4
  %340 = load i32, i32* %72, align 4
  %341 = load i32, i32* %73, align 4
  %342 = load i32, i32* %74, align 4
  %343 = load i32, i32* %75, align 4
  %344 = call i32 @ADDS_SH4_SH(i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  %345 = load i32, i32* %62, align 4
  %346 = load i32, i32* %63, align 4
  %347 = load i32, i32* %37, align 4
  %348 = load i32, i32* %38, align 4
  %349 = call i32 @HEVC_FILT_4TAP(i32 %345, i32 %346, i32 %347, i32 %348)
  store i32 %349, i32* %76, align 4
  %350 = load i32, i32* %66, align 4
  %351 = load i32, i32* %67, align 4
  %352 = load i32, i32* %37, align 4
  %353 = load i32, i32* %38, align 4
  %354 = call i32 @HEVC_FILT_4TAP(i32 %350, i32 %351, i32 %352, i32 %353)
  store i32 %354, i32* %77, align 4
  %355 = load i32, i32* %63, align 4
  %356 = load i32, i32* %64, align 4
  %357 = load i32, i32* %37, align 4
  %358 = load i32, i32* %38, align 4
  %359 = call i32 @HEVC_FILT_4TAP(i32 %355, i32 %356, i32 %357, i32 %358)
  store i32 %359, i32* %78, align 4
  %360 = load i32, i32* %67, align 4
  %361 = load i32, i32* %68, align 4
  %362 = load i32, i32* %37, align 4
  %363 = load i32, i32* %38, align 4
  %364 = call i32 @HEVC_FILT_4TAP(i32 %360, i32 %361, i32 %362, i32 %363)
  store i32 %364, i32* %79, align 4
  %365 = load i32, i32* %64, align 4
  %366 = load i32, i32* %65, align 4
  %367 = load i32, i32* %37, align 4
  %368 = load i32, i32* %38, align 4
  %369 = call i32 @HEVC_FILT_4TAP(i32 %365, i32 %366, i32 %367, i32 %368)
  store i32 %369, i32* %80, align 4
  %370 = load i32, i32* %68, align 4
  %371 = load i32, i32* %69, align 4
  %372 = load i32, i32* %37, align 4
  %373 = load i32, i32* %38, align 4
  %374 = call i32 @HEVC_FILT_4TAP(i32 %370, i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %81, align 4
  %375 = load i32, i32* %65, align 4
  %376 = load i32, i32* %70, align 4
  %377 = load i32, i32* %37, align 4
  %378 = load i32, i32* %38, align 4
  %379 = call i32 @HEVC_FILT_4TAP(i32 %375, i32 %376, i32 %377, i32 %378)
  store i32 %379, i32* %82, align 4
  %380 = load i32, i32* %69, align 4
  %381 = load i32, i32* %71, align 4
  %382 = load i32, i32* %37, align 4
  %383 = load i32, i32* %38, align 4
  %384 = call i32 @HEVC_FILT_4TAP(i32 %380, i32 %381, i32 %382, i32 %383)
  store i32 %384, i32* %83, align 4
  %385 = load i32, i32* %76, align 4
  %386 = load i32, i32* %77, align 4
  %387 = load i32, i32* %78, align 4
  %388 = load i32, i32* %79, align 4
  %389 = call i32 @SRA_4V(i32 %385, i32 %386, i32 %387, i32 %388, i32 6)
  %390 = load i32, i32* %80, align 4
  %391 = load i32, i32* %81, align 4
  %392 = load i32, i32* %82, align 4
  %393 = load i32, i32* %83, align 4
  %394 = call i32 @SRA_4V(i32 %390, i32 %391, i32 %392, i32 %393, i32 6)
  %395 = load i32, i32* %77, align 4
  %396 = load i32, i32* %76, align 4
  %397 = load i32, i32* %79, align 4
  %398 = load i32, i32* %78, align 4
  %399 = load i32, i32* %81, align 4
  %400 = load i32, i32* %80, align 4
  %401 = load i32, i32* %83, align 4
  %402 = load i32, i32* %82, align 4
  %403 = load i32, i32* %51, align 4
  %404 = load i32, i32* %52, align 4
  %405 = load i32, i32* %53, align 4
  %406 = load i32, i32* %54, align 4
  %407 = call i32 @PCKEV_H4_SH(i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %406)
  %408 = load i32, i32* %72, align 4
  %409 = load i32, i32* %51, align 4
  %410 = load i32, i32* %73, align 4
  %411 = load i32, i32* %52, align 4
  %412 = load i32, i32* %74, align 4
  %413 = load i32, i32* %53, align 4
  %414 = load i32, i32* %75, align 4
  %415 = load i32, i32* %54, align 4
  %416 = load i32, i32* %51, align 4
  %417 = load i32, i32* %52, align 4
  %418 = load i32, i32* %53, align 4
  %419 = load i32, i32* %54, align 4
  %420 = call i32 @ADDS_SH4_SH(i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 %417, i32 %418, i32 %419)
  %421 = load i32, i32* %51, align 4
  %422 = load i32, i32* %52, align 4
  %423 = load i32, i32* %53, align 4
  %424 = load i32, i32* %54, align 4
  %425 = call i32 @SRARI_H4_SH(i32 %421, i32 %422, i32 %423, i32 %424, i32 7)
  %426 = load i32, i32* %51, align 4
  %427 = load i32, i32* %52, align 4
  %428 = load i32, i32* %53, align 4
  %429 = load i32, i32* %54, align 4
  %430 = call i32 @CLIP_SH4_0_255(i32 %426, i32 %427, i32 %428, i32 %429)
  %431 = load i32, i32* %52, align 4
  %432 = load i32, i32* %51, align 4
  %433 = load i32, i32* %54, align 4
  %434 = load i32, i32* %53, align 4
  %435 = load i32, i32* %22, align 4
  %436 = load i32, i32* %23, align 4
  %437 = call i32 @PCKEV_B2_UB(i32 %431, i32 %432, i32 %433, i32 %434, i32 %435, i32 %436)
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* %23, align 4
  %440 = load i32*, i32** %14, align 8
  %441 = load i32, i32* %15, align 4
  %442 = call i32 @ST_W8(i32 %438, i32 %439, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %440, i32 %441)
  %443 = load i32, i32* %15, align 4
  %444 = mul nsw i32 8, %443
  %445 = load i32*, i32** %14, align 8
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds i32, i32* %445, i64 %446
  store i32* %447, i32** %14, align 8
  %448 = load i32, i32* %70, align 4
  store i32 %448, i32* %62, align 4
  %449 = load i32, i32* %71, align 4
  store i32 %449, i32* %66, align 4
  %450 = load i32, i32* %61, align 4
  %451 = call i64 @__msa_splati_d(i32 %450, i32 1)
  %452 = trunc i64 %451 to i32
  store i32 %452, i32* %57, align 4
  br label %166

453:                                              ; preds = %166
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_ilvr_h(i32, i32) #1

declare dso_local i32 @LD2(i32*, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_SH(i32, i32, i32) #1

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
