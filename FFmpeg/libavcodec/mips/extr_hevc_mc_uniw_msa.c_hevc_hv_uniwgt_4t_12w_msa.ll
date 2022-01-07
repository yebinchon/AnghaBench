; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32)* @hevc_hv_uniwgt_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
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
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32*, i32** %11, align 8
  %112 = sext i32 %110 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32* %114, i32** %11, align 8
  %115 = load i32*, i32** %15, align 8
  %116 = call i64 @LD_SH(i32* %115)
  store i64 %116, i64* %53, align 8
  %117 = load i64, i64* %53, align 8
  %118 = load i64, i64* %49, align 8
  %119 = load i64, i64* %50, align 8
  %120 = call i32 @SPLATI_H2_SH(i64 %117, i32 0, i32 1, i64 %118, i64 %119)
  %121 = load i32*, i32** %16, align 8
  %122 = call i64 @LD_SH(i32* %121)
  store i64 %122, i64* %53, align 8
  %123 = load i64, i64* %53, align 8
  %124 = load i64, i64* %53, align 8
  %125 = call i32 @UNPCK_R_SB_SH(i64 %123, i64 %124)
  %126 = load i64, i64* %53, align 8
  %127 = load i64, i64* %51, align 8
  %128 = load i64, i64* %52, align 8
  %129 = call i32 @SPLATI_W2_SH(i64 %126, i32 0, i64 %127, i64 %128)
  %130 = load i64, i64* @ff_hevc_mask_arr, align 8
  %131 = call i64 @LD_SB(i64 %130)
  store i64 %131, i64* %45, align 8
  %132 = load i64, i64* %45, align 8
  %133 = add nsw i64 %132, 2
  store i64 %133, i64* %46, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @__msa_fill_w(i32 %134)
  store i32 %135, i32* %107, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @__msa_fill_w(i32 %136)
  store i32 %137, i32* %108, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i64 @__msa_fill_h(i32 %138)
  store i64 %139, i64* %88, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sub nsw i32 %140, 6
  %142 = call i64 @__msa_fill_h(i32 %141)
  store i64 %142, i64* %90, align 8
  %143 = load i32, i32* %18, align 4
  %144 = mul nsw i32 128, %143
  %145 = call i64 @__msa_fill_h(i32 %144)
  store i64 %145, i64* %89, align 8
  %146 = load i64, i64* %89, align 8
  %147 = load i64, i64* %90, align 8
  %148 = call i64 @__msa_srar_h(i64 %146, i64 %147)
  %149 = load i64, i64* %88, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %88, align 8
  %151 = load i32*, i32** %11, align 8
  store i32* %151, i32** %22, align 8
  %152 = load i32*, i32** %13, align 8
  store i32* %152, i32** %23, align 8
  %153 = load i32*, i32** %22, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i64, i64* %26, align 8
  %156 = load i64, i64* %27, align 8
  %157 = load i64, i64* %28, align 8
  %158 = call i32 @LD_SB3(i32* %153, i32 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i32, i32* %12, align 4
  %160 = mul nsw i32 3, %159
  %161 = load i32*, i32** %22, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %22, align 8
  %164 = load i64, i64* %26, align 8
  %165 = load i64, i64* %27, align 8
  %166 = load i64, i64* %28, align 8
  %167 = call i32 @XORI_B3_128_SB(i64 %164, i64 %165, i64 %166)
  %168 = load i64, i64* %26, align 8
  %169 = load i64, i64* %26, align 8
  %170 = load i64, i64* %26, align 8
  %171 = load i64, i64* %26, align 8
  %172 = load i64, i64* %45, align 8
  %173 = load i64, i64* %46, align 8
  %174 = load i64, i64* %37, align 8
  %175 = load i64, i64* %38, align 8
  %176 = call i32 @VSHF_B2_SB(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %27, align 8
  %178 = load i64, i64* %27, align 8
  %179 = load i64, i64* %27, align 8
  %180 = load i64, i64* %27, align 8
  %181 = load i64, i64* %45, align 8
  %182 = load i64, i64* %46, align 8
  %183 = load i64, i64* %39, align 8
  %184 = load i64, i64* %40, align 8
  %185 = call i32 @VSHF_B2_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %28, align 8
  %187 = load i64, i64* %28, align 8
  %188 = load i64, i64* %28, align 8
  %189 = load i64, i64* %28, align 8
  %190 = load i64, i64* %45, align 8
  %191 = load i64, i64* %46, align 8
  %192 = load i64, i64* %41, align 8
  %193 = load i64, i64* %42, align 8
  %194 = call i32 @VSHF_B2_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %37, align 8
  %196 = load i64, i64* %38, align 8
  %197 = load i64, i64* %49, align 8
  %198 = load i64, i64* %50, align 8
  %199 = call i64 @HEVC_FILT_4TAP_SH(i64 %195, i64 %196, i64 %197, i64 %198)
  store i64 %199, i64* %58, align 8
  %200 = load i64, i64* %39, align 8
  %201 = load i64, i64* %40, align 8
  %202 = load i64, i64* %49, align 8
  %203 = load i64, i64* %50, align 8
  %204 = call i64 @HEVC_FILT_4TAP_SH(i64 %200, i64 %201, i64 %202, i64 %203)
  store i64 %204, i64* %59, align 8
  %205 = load i64, i64* %41, align 8
  %206 = load i64, i64* %42, align 8
  %207 = load i64, i64* %49, align 8
  %208 = load i64, i64* %50, align 8
  %209 = call i64 @HEVC_FILT_4TAP_SH(i64 %205, i64 %206, i64 %207, i64 %208)
  store i64 %209, i64* %60, align 8
  %210 = load i64, i64* %59, align 8
  %211 = load i64, i64* %58, align 8
  %212 = load i64, i64* %76, align 8
  %213 = load i64, i64* %82, align 8
  %214 = call i32 @ILVRL_H2_SH(i64 %210, i64 %211, i64 %212, i64 %213)
  %215 = load i64, i64* %60, align 8
  %216 = load i64, i64* %59, align 8
  %217 = load i64, i64* %79, align 8
  %218 = load i64, i64* %85, align 8
  %219 = call i32 @ILVRL_H2_SH(i64 %215, i64 %216, i64 %217, i64 %218)
  store i32 4, i32* %21, align 4
  br label %220

220:                                              ; preds = %224, %10
  %221 = load i32, i32* %21, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %21, align 4
  %223 = icmp ne i32 %221, 0
  br i1 %223, label %224, label %462

224:                                              ; preds = %220
  %225 = load i32*, i32** %22, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i64, i64* %29, align 8
  %228 = load i64, i64* %30, align 8
  %229 = load i64, i64* %31, align 8
  %230 = load i64, i64* %32, align 8
  %231 = call i32 @LD_SB4(i32* %225, i32 %226, i64 %227, i64 %228, i64 %229, i64 %230)
  %232 = load i32, i32* %12, align 4
  %233 = mul nsw i32 4, %232
  %234 = load i32*, i32** %22, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %22, align 8
  %237 = load i64, i64* %29, align 8
  %238 = load i64, i64* %30, align 8
  %239 = load i64, i64* %31, align 8
  %240 = load i64, i64* %32, align 8
  %241 = call i32 @XORI_B4_128_SB(i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i64, i64* %29, align 8
  %243 = load i64, i64* %29, align 8
  %244 = load i64, i64* %29, align 8
  %245 = load i64, i64* %29, align 8
  %246 = load i64, i64* %45, align 8
  %247 = load i64, i64* %46, align 8
  %248 = load i64, i64* %37, align 8
  %249 = load i64, i64* %38, align 8
  %250 = call i32 @VSHF_B2_SB(i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249)
  %251 = load i64, i64* %30, align 8
  %252 = load i64, i64* %30, align 8
  %253 = load i64, i64* %30, align 8
  %254 = load i64, i64* %30, align 8
  %255 = load i64, i64* %45, align 8
  %256 = load i64, i64* %46, align 8
  %257 = load i64, i64* %39, align 8
  %258 = load i64, i64* %40, align 8
  %259 = call i32 @VSHF_B2_SB(i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258)
  %260 = load i64, i64* %31, align 8
  %261 = load i64, i64* %31, align 8
  %262 = load i64, i64* %31, align 8
  %263 = load i64, i64* %31, align 8
  %264 = load i64, i64* %45, align 8
  %265 = load i64, i64* %46, align 8
  %266 = load i64, i64* %41, align 8
  %267 = load i64, i64* %42, align 8
  %268 = call i32 @VSHF_B2_SB(i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267)
  %269 = load i64, i64* %32, align 8
  %270 = load i64, i64* %32, align 8
  %271 = load i64, i64* %32, align 8
  %272 = load i64, i64* %32, align 8
  %273 = load i64, i64* %45, align 8
  %274 = load i64, i64* %46, align 8
  %275 = load i64, i64* %43, align 8
  %276 = load i64, i64* %44, align 8
  %277 = call i32 @VSHF_B2_SB(i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276)
  %278 = load i64, i64* %37, align 8
  %279 = load i64, i64* %38, align 8
  %280 = load i64, i64* %49, align 8
  %281 = load i64, i64* %50, align 8
  %282 = call i64 @HEVC_FILT_4TAP_SH(i64 %278, i64 %279, i64 %280, i64 %281)
  store i64 %282, i64* %61, align 8
  %283 = load i64, i64* %39, align 8
  %284 = load i64, i64* %40, align 8
  %285 = load i64, i64* %49, align 8
  %286 = load i64, i64* %50, align 8
  %287 = call i64 @HEVC_FILT_4TAP_SH(i64 %283, i64 %284, i64 %285, i64 %286)
  store i64 %287, i64* %62, align 8
  %288 = load i64, i64* %41, align 8
  %289 = load i64, i64* %42, align 8
  %290 = load i64, i64* %49, align 8
  %291 = load i64, i64* %50, align 8
  %292 = call i64 @HEVC_FILT_4TAP_SH(i64 %288, i64 %289, i64 %290, i64 %291)
  store i64 %292, i64* %63, align 8
  %293 = load i64, i64* %43, align 8
  %294 = load i64, i64* %44, align 8
  %295 = load i64, i64* %49, align 8
  %296 = load i64, i64* %50, align 8
  %297 = call i64 @HEVC_FILT_4TAP_SH(i64 %293, i64 %294, i64 %295, i64 %296)
  store i64 %297, i64* %64, align 8
  %298 = load i64, i64* %61, align 8
  %299 = load i64, i64* %60, align 8
  %300 = load i64, i64* %77, align 8
  %301 = load i64, i64* %83, align 8
  %302 = call i32 @ILVRL_H2_SH(i64 %298, i64 %299, i64 %300, i64 %301)
  %303 = load i64, i64* %62, align 8
  %304 = load i64, i64* %61, align 8
  %305 = load i64, i64* %80, align 8
  %306 = load i64, i64* %86, align 8
  %307 = call i32 @ILVRL_H2_SH(i64 %303, i64 %304, i64 %305, i64 %306)
  %308 = load i64, i64* %63, align 8
  %309 = load i64, i64* %62, align 8
  %310 = load i64, i64* %78, align 8
  %311 = load i64, i64* %84, align 8
  %312 = call i32 @ILVRL_H2_SH(i64 %308, i64 %309, i64 %310, i64 %311)
  %313 = load i64, i64* %64, align 8
  %314 = load i64, i64* %63, align 8
  %315 = load i64, i64* %81, align 8
  %316 = load i64, i64* %87, align 8
  %317 = call i32 @ILVRL_H2_SH(i64 %313, i64 %314, i64 %315, i64 %316)
  %318 = load i64, i64* %76, align 8
  %319 = load i64, i64* %77, align 8
  %320 = load i64, i64* %51, align 8
  %321 = load i64, i64* %52, align 8
  %322 = call i32 @HEVC_FILT_4TAP(i64 %318, i64 %319, i64 %320, i64 %321)
  store i32 %322, i32* %91, align 4
  %323 = load i64, i64* %82, align 8
  %324 = load i64, i64* %83, align 8
  %325 = load i64, i64* %51, align 8
  %326 = load i64, i64* %52, align 8
  %327 = call i32 @HEVC_FILT_4TAP(i64 %323, i64 %324, i64 %325, i64 %326)
  store i32 %327, i32* %92, align 4
  %328 = load i64, i64* %79, align 8
  %329 = load i64, i64* %80, align 8
  %330 = load i64, i64* %51, align 8
  %331 = load i64, i64* %52, align 8
  %332 = call i32 @HEVC_FILT_4TAP(i64 %328, i64 %329, i64 %330, i64 %331)
  store i32 %332, i32* %93, align 4
  %333 = load i64, i64* %85, align 8
  %334 = load i64, i64* %86, align 8
  %335 = load i64, i64* %51, align 8
  %336 = load i64, i64* %52, align 8
  %337 = call i32 @HEVC_FILT_4TAP(i64 %333, i64 %334, i64 %335, i64 %336)
  store i32 %337, i32* %94, align 4
  %338 = load i64, i64* %77, align 8
  %339 = load i64, i64* %78, align 8
  %340 = load i64, i64* %51, align 8
  %341 = load i64, i64* %52, align 8
  %342 = call i32 @HEVC_FILT_4TAP(i64 %338, i64 %339, i64 %340, i64 %341)
  store i32 %342, i32* %95, align 4
  %343 = load i64, i64* %83, align 8
  %344 = load i64, i64* %84, align 8
  %345 = load i64, i64* %51, align 8
  %346 = load i64, i64* %52, align 8
  %347 = call i32 @HEVC_FILT_4TAP(i64 %343, i64 %344, i64 %345, i64 %346)
  store i32 %347, i32* %96, align 4
  %348 = load i64, i64* %80, align 8
  %349 = load i64, i64* %81, align 8
  %350 = load i64, i64* %51, align 8
  %351 = load i64, i64* %52, align 8
  %352 = call i32 @HEVC_FILT_4TAP(i64 %348, i64 %349, i64 %350, i64 %351)
  store i32 %352, i32* %97, align 4
  %353 = load i64, i64* %86, align 8
  %354 = load i64, i64* %87, align 8
  %355 = load i64, i64* %51, align 8
  %356 = load i64, i64* %52, align 8
  %357 = call i32 @HEVC_FILT_4TAP(i64 %353, i64 %354, i64 %355, i64 %356)
  store i32 %357, i32* %98, align 4
  %358 = load i32, i32* %91, align 4
  %359 = load i32, i32* %92, align 4
  %360 = load i32, i32* %93, align 4
  %361 = load i32, i32* %94, align 4
  %362 = call i32 @SRA_4V(i32 %358, i32 %359, i32 %360, i32 %361, i32 6)
  %363 = load i32, i32* %95, align 4
  %364 = load i32, i32* %96, align 4
  %365 = load i32, i32* %97, align 4
  %366 = load i32, i32* %98, align 4
  %367 = call i32 @SRA_4V(i32 %363, i32 %364, i32 %365, i32 %366, i32 6)
  %368 = load i32, i32* %91, align 4
  %369 = load i32, i32* %107, align 4
  %370 = load i32, i32* %93, align 4
  %371 = load i32, i32* %107, align 4
  %372 = load i32, i32* %91, align 4
  %373 = load i32, i32* %93, align 4
  %374 = call i32 @MUL2(i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373)
  %375 = load i32, i32* %95, align 4
  %376 = load i32, i32* %107, align 4
  %377 = load i32, i32* %97, align 4
  %378 = load i32, i32* %107, align 4
  %379 = load i32, i32* %95, align 4
  %380 = load i32, i32* %97, align 4
  %381 = call i32 @MUL2(i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380)
  %382 = load i32, i32* %92, align 4
  %383 = load i32, i32* %107, align 4
  %384 = load i32, i32* %94, align 4
  %385 = load i32, i32* %107, align 4
  %386 = load i32, i32* %92, align 4
  %387 = load i32, i32* %94, align 4
  %388 = call i32 @MUL2(i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387)
  %389 = load i32, i32* %96, align 4
  %390 = load i32, i32* %107, align 4
  %391 = load i32, i32* %98, align 4
  %392 = load i32, i32* %107, align 4
  %393 = load i32, i32* %96, align 4
  %394 = load i32, i32* %98, align 4
  %395 = call i32 @MUL2(i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394)
  %396 = load i32, i32* %91, align 4
  %397 = load i32, i32* %92, align 4
  %398 = load i32, i32* %93, align 4
  %399 = load i32, i32* %94, align 4
  %400 = load i32, i32* %108, align 4
  %401 = call i32 @SRAR_W4_SW(i32 %396, i32 %397, i32 %398, i32 %399, i32 %400)
  %402 = load i32, i32* %95, align 4
  %403 = load i32, i32* %96, align 4
  %404 = load i32, i32* %97, align 4
  %405 = load i32, i32* %98, align 4
  %406 = load i32, i32* %108, align 4
  %407 = call i32 @SRAR_W4_SW(i32 %402, i32 %403, i32 %404, i32 %405, i32 %406)
  %408 = load i32, i32* %92, align 4
  %409 = load i32, i32* %91, align 4
  %410 = load i32, i32* %94, align 4
  %411 = load i32, i32* %93, align 4
  %412 = load i32, i32* %96, align 4
  %413 = load i32, i32* %95, align 4
  %414 = load i32, i32* %98, align 4
  %415 = load i32, i32* %97, align 4
  %416 = load i64, i64* %54, align 8
  %417 = load i64, i64* %55, align 8
  %418 = load i64, i64* %56, align 8
  %419 = load i64, i64* %57, align 8
  %420 = call i32 @PCKEV_H4_SH(i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i64 %416, i64 %417, i64 %418, i64 %419)
  %421 = load i64, i64* %54, align 8
  %422 = load i64, i64* %88, align 8
  %423 = load i64, i64* %55, align 8
  %424 = load i64, i64* %88, align 8
  %425 = load i64, i64* %54, align 8
  %426 = load i64, i64* %55, align 8
  %427 = call i32 @ADD2(i64 %421, i64 %422, i64 %423, i64 %424, i64 %425, i64 %426)
  %428 = load i64, i64* %56, align 8
  %429 = load i64, i64* %88, align 8
  %430 = load i64, i64* %57, align 8
  %431 = load i64, i64* %88, align 8
  %432 = load i64, i64* %56, align 8
  %433 = load i64, i64* %57, align 8
  %434 = call i32 @ADD2(i64 %428, i64 %429, i64 %430, i64 %431, i64 %432, i64 %433)
  %435 = load i64, i64* %54, align 8
  %436 = load i64, i64* %55, align 8
  %437 = load i64, i64* %56, align 8
  %438 = load i64, i64* %57, align 8
  %439 = call i32 @CLIP_SH4_0_255(i64 %435, i64 %436, i64 %437, i64 %438)
  %440 = load i64, i64* %55, align 8
  %441 = load i64, i64* %54, align 8
  %442 = load i64, i64* %57, align 8
  %443 = load i64, i64* %56, align 8
  %444 = load i32, i32* %24, align 4
  %445 = load i32, i32* %25, align 4
  %446 = call i32 @PCKEV_B2_UB(i64 %440, i64 %441, i64 %442, i64 %443, i32 %444, i32 %445)
  %447 = load i32, i32* %24, align 4
  %448 = load i32, i32* %25, align 4
  %449 = load i32*, i32** %23, align 8
  %450 = load i32, i32* %14, align 4
  %451 = call i32 @ST_D4(i32 %447, i32 %448, i32 0, i32 1, i32 0, i32 1, i32* %449, i32 %450)
  %452 = load i32, i32* %14, align 4
  %453 = mul nsw i32 4, %452
  %454 = load i32*, i32** %23, align 8
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i32, i32* %454, i64 %455
  store i32* %456, i32** %23, align 8
  %457 = load i64, i64* %78, align 8
  store i64 %457, i64* %76, align 8
  %458 = load i64, i64* %84, align 8
  store i64 %458, i64* %82, align 8
  %459 = load i64, i64* %81, align 8
  store i64 %459, i64* %79, align 8
  %460 = load i64, i64* %87, align 8
  store i64 %460, i64* %85, align 8
  %461 = load i64, i64* %64, align 8
  store i64 %461, i64* %60, align 8
  br label %220

462:                                              ; preds = %220
  %463 = load i32*, i32** %11, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 8
  store i32* %464, i32** %11, align 8
  %465 = load i32*, i32** %13, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 8
  store i32* %466, i32** %13, align 8
  %467 = load i64, i64* @ff_hevc_mask_arr, align 8
  %468 = add nsw i64 %467, 16
  %469 = call i64 @LD_SB(i64 %468)
  store i64 %469, i64* %47, align 8
  %470 = load i64, i64* %47, align 8
  %471 = add nsw i64 %470, 2
  store i64 %471, i64* %48, align 8
  %472 = load i32*, i32** %11, align 8
  %473 = load i32, i32* %12, align 4
  %474 = load i64, i64* %26, align 8
  %475 = load i64, i64* %27, align 8
  %476 = load i64, i64* %28, align 8
  %477 = call i32 @LD_SB3(i32* %472, i32 %473, i64 %474, i64 %475, i64 %476)
  %478 = load i32, i32* %12, align 4
  %479 = mul nsw i32 3, %478
  %480 = load i32*, i32** %11, align 8
  %481 = sext i32 %479 to i64
  %482 = getelementptr inbounds i32, i32* %480, i64 %481
  store i32* %482, i32** %11, align 8
  %483 = load i64, i64* %26, align 8
  %484 = load i64, i64* %27, align 8
  %485 = load i64, i64* %28, align 8
  %486 = call i32 @XORI_B3_128_SB(i64 %483, i64 %484, i64 %485)
  %487 = load i64, i64* %26, align 8
  %488 = load i64, i64* %27, align 8
  %489 = load i64, i64* %26, align 8
  %490 = load i64, i64* %27, align 8
  %491 = load i64, i64* %47, align 8
  %492 = load i64, i64* %48, align 8
  %493 = load i64, i64* %37, align 8
  %494 = load i64, i64* %38, align 8
  %495 = call i32 @VSHF_B2_SB(i64 %487, i64 %488, i64 %489, i64 %490, i64 %491, i64 %492, i64 %493, i64 %494)
  %496 = load i64, i64* %27, align 8
  %497 = load i64, i64* %28, align 8
  %498 = load i64, i64* %27, align 8
  %499 = load i64, i64* %28, align 8
  %500 = load i64, i64* %47, align 8
  %501 = load i64, i64* %48, align 8
  %502 = load i64, i64* %39, align 8
  %503 = load i64, i64* %40, align 8
  %504 = call i32 @VSHF_B2_SB(i64 %496, i64 %497, i64 %498, i64 %499, i64 %500, i64 %501, i64 %502, i64 %503)
  %505 = load i64, i64* %37, align 8
  %506 = load i64, i64* %38, align 8
  %507 = load i64, i64* %49, align 8
  %508 = load i64, i64* %50, align 8
  %509 = call i64 @HEVC_FILT_4TAP_SH(i64 %505, i64 %506, i64 %507, i64 %508)
  store i64 %509, i64* %65, align 8
  %510 = load i64, i64* %39, align 8
  %511 = load i64, i64* %40, align 8
  %512 = load i64, i64* %49, align 8
  %513 = load i64, i64* %50, align 8
  %514 = call i64 @HEVC_FILT_4TAP_SH(i64 %510, i64 %511, i64 %512, i64 %513)
  store i64 %514, i64* %66, align 8
  %515 = load i64, i64* %66, align 8
  %516 = load i64, i64* %65, align 8
  %517 = load i64, i64* %76, align 8
  %518 = load i64, i64* %79, align 8
  %519 = call i32 @ILVRL_H2_SH(i64 %515, i64 %516, i64 %517, i64 %518)
  %520 = load i64, i64* %66, align 8
  %521 = trunc i64 %520 to i32
  %522 = call i64 @__msa_splati_d(i32 %521, i32 1)
  store i64 %522, i64* %67, align 8
  store i32 2, i32* %21, align 4
  br label %523

523:                                              ; preds = %527, %462
  %524 = load i32, i32* %21, align 4
  %525 = add nsw i32 %524, -1
  store i32 %525, i32* %21, align 4
  %526 = icmp ne i32 %524, 0
  br i1 %526, label %527, label %777

527:                                              ; preds = %523
  %528 = load i32*, i32** %11, align 8
  %529 = load i32, i32* %12, align 4
  %530 = load i64, i64* %29, align 8
  %531 = load i64, i64* %30, align 8
  %532 = load i64, i64* %31, align 8
  %533 = load i64, i64* %32, align 8
  %534 = load i64, i64* %33, align 8
  %535 = load i64, i64* %34, align 8
  %536 = load i64, i64* %35, align 8
  %537 = load i64, i64* %36, align 8
  %538 = call i32 @LD_SB8(i32* %528, i32 %529, i64 %530, i64 %531, i64 %532, i64 %533, i64 %534, i64 %535, i64 %536, i64 %537)
  %539 = load i32, i32* %12, align 4
  %540 = mul nsw i32 8, %539
  %541 = load i32*, i32** %11, align 8
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds i32, i32* %541, i64 %542
  store i32* %543, i32** %11, align 8
  %544 = load i64, i64* %29, align 8
  %545 = load i64, i64* %30, align 8
  %546 = load i64, i64* %31, align 8
  %547 = load i64, i64* %32, align 8
  %548 = load i64, i64* %33, align 8
  %549 = load i64, i64* %34, align 8
  %550 = load i64, i64* %35, align 8
  %551 = load i64, i64* %36, align 8
  %552 = call i32 @XORI_B8_128_SB(i64 %544, i64 %545, i64 %546, i64 %547, i64 %548, i64 %549, i64 %550, i64 %551)
  %553 = load i64, i64* %29, align 8
  %554 = load i64, i64* %33, align 8
  %555 = load i64, i64* %29, align 8
  %556 = load i64, i64* %33, align 8
  %557 = load i64, i64* %47, align 8
  %558 = load i64, i64* %48, align 8
  %559 = load i64, i64* %37, align 8
  %560 = load i64, i64* %38, align 8
  %561 = call i32 @VSHF_B2_SB(i64 %553, i64 %554, i64 %555, i64 %556, i64 %557, i64 %558, i64 %559, i64 %560)
  %562 = load i64, i64* %30, align 8
  %563 = load i64, i64* %34, align 8
  %564 = load i64, i64* %30, align 8
  %565 = load i64, i64* %34, align 8
  %566 = load i64, i64* %47, align 8
  %567 = load i64, i64* %48, align 8
  %568 = load i64, i64* %39, align 8
  %569 = load i64, i64* %40, align 8
  %570 = call i32 @VSHF_B2_SB(i64 %562, i64 %563, i64 %564, i64 %565, i64 %566, i64 %567, i64 %568, i64 %569)
  %571 = load i64, i64* %31, align 8
  %572 = load i64, i64* %35, align 8
  %573 = load i64, i64* %31, align 8
  %574 = load i64, i64* %35, align 8
  %575 = load i64, i64* %47, align 8
  %576 = load i64, i64* %48, align 8
  %577 = load i64, i64* %41, align 8
  %578 = load i64, i64* %42, align 8
  %579 = call i32 @VSHF_B2_SB(i64 %571, i64 %572, i64 %573, i64 %574, i64 %575, i64 %576, i64 %577, i64 %578)
  %580 = load i64, i64* %32, align 8
  %581 = load i64, i64* %36, align 8
  %582 = load i64, i64* %32, align 8
  %583 = load i64, i64* %36, align 8
  %584 = load i64, i64* %47, align 8
  %585 = load i64, i64* %48, align 8
  %586 = load i64, i64* %43, align 8
  %587 = load i64, i64* %44, align 8
  %588 = call i32 @VSHF_B2_SB(i64 %580, i64 %581, i64 %582, i64 %583, i64 %584, i64 %585, i64 %586, i64 %587)
  %589 = load i64, i64* %37, align 8
  %590 = load i64, i64* %38, align 8
  %591 = load i64, i64* %49, align 8
  %592 = load i64, i64* %50, align 8
  %593 = call i64 @HEVC_FILT_4TAP_SH(i64 %589, i64 %590, i64 %591, i64 %592)
  store i64 %593, i64* %68, align 8
  %594 = load i64, i64* %39, align 8
  %595 = load i64, i64* %40, align 8
  %596 = load i64, i64* %49, align 8
  %597 = load i64, i64* %50, align 8
  %598 = call i64 @HEVC_FILT_4TAP_SH(i64 %594, i64 %595, i64 %596, i64 %597)
  store i64 %598, i64* %69, align 8
  %599 = load i64, i64* %41, align 8
  %600 = load i64, i64* %42, align 8
  %601 = load i64, i64* %49, align 8
  %602 = load i64, i64* %50, align 8
  %603 = call i64 @HEVC_FILT_4TAP_SH(i64 %599, i64 %600, i64 %601, i64 %602)
  store i64 %603, i64* %70, align 8
  %604 = load i64, i64* %43, align 8
  %605 = load i64, i64* %44, align 8
  %606 = load i64, i64* %49, align 8
  %607 = load i64, i64* %50, align 8
  %608 = call i64 @HEVC_FILT_4TAP_SH(i64 %604, i64 %605, i64 %606, i64 %607)
  store i64 %608, i64* %71, align 8
  %609 = load i64, i64* %68, align 8
  %610 = load i64, i64* %67, align 8
  %611 = call i64 @__msa_ilvr_h(i64 %609, i64 %610)
  store i64 %611, i64* %77, align 8
  %612 = load i64, i64* %69, align 8
  %613 = load i64, i64* %68, align 8
  %614 = load i64, i64* %80, align 8
  %615 = load i64, i64* %74, align 8
  %616 = call i32 @ILVRL_H2_SH(i64 %612, i64 %613, i64 %614, i64 %615)
  %617 = load i64, i64* %70, align 8
  %618 = load i64, i64* %69, align 8
  %619 = load i64, i64* %78, align 8
  %620 = load i64, i64* %73, align 8
  %621 = call i32 @ILVRL_H2_SH(i64 %617, i64 %618, i64 %619, i64 %620)
  %622 = load i64, i64* %71, align 8
  %623 = load i64, i64* %70, align 8
  %624 = load i64, i64* %81, align 8
  %625 = load i64, i64* %75, align 8
  %626 = call i32 @ILVRL_H2_SH(i64 %622, i64 %623, i64 %624, i64 %625)
  %627 = load i64, i64* %68, align 8
  %628 = trunc i64 %627 to i32
  %629 = call i64 @__msa_splati_d(i32 %628, i32 1)
  store i64 %629, i64* %67, align 8
  %630 = load i64, i64* %67, align 8
  %631 = load i64, i64* %71, align 8
  %632 = call i64 @__msa_ilvr_h(i64 %630, i64 %631)
  store i64 %632, i64* %72, align 8
  %633 = load i64, i64* %76, align 8
  %634 = load i64, i64* %77, align 8
  %635 = load i64, i64* %51, align 8
  %636 = load i64, i64* %52, align 8
  %637 = call i32 @HEVC_FILT_4TAP(i64 %633, i64 %634, i64 %635, i64 %636)
  store i32 %637, i32* %99, align 4
  %638 = load i64, i64* %79, align 8
  %639 = load i64, i64* %80, align 8
  %640 = load i64, i64* %51, align 8
  %641 = load i64, i64* %52, align 8
  %642 = call i32 @HEVC_FILT_4TAP(i64 %638, i64 %639, i64 %640, i64 %641)
  store i32 %642, i32* %100, align 4
  %643 = load i64, i64* %77, align 8
  %644 = load i64, i64* %78, align 8
  %645 = load i64, i64* %51, align 8
  %646 = load i64, i64* %52, align 8
  %647 = call i32 @HEVC_FILT_4TAP(i64 %643, i64 %644, i64 %645, i64 %646)
  store i32 %647, i32* %101, align 4
  %648 = load i64, i64* %80, align 8
  %649 = load i64, i64* %81, align 8
  %650 = load i64, i64* %51, align 8
  %651 = load i64, i64* %52, align 8
  %652 = call i32 @HEVC_FILT_4TAP(i64 %648, i64 %649, i64 %650, i64 %651)
  store i32 %652, i32* %102, align 4
  %653 = load i64, i64* %78, align 8
  %654 = load i64, i64* %72, align 8
  %655 = load i64, i64* %51, align 8
  %656 = load i64, i64* %52, align 8
  %657 = call i32 @HEVC_FILT_4TAP(i64 %653, i64 %654, i64 %655, i64 %656)
  store i32 %657, i32* %103, align 4
  %658 = load i64, i64* %81, align 8
  %659 = load i64, i64* %74, align 8
  %660 = load i64, i64* %51, align 8
  %661 = load i64, i64* %52, align 8
  %662 = call i32 @HEVC_FILT_4TAP(i64 %658, i64 %659, i64 %660, i64 %661)
  store i32 %662, i32* %104, align 4
  %663 = load i64, i64* %72, align 8
  %664 = load i64, i64* %73, align 8
  %665 = load i64, i64* %51, align 8
  %666 = load i64, i64* %52, align 8
  %667 = call i32 @HEVC_FILT_4TAP(i64 %663, i64 %664, i64 %665, i64 %666)
  store i32 %667, i32* %105, align 4
  %668 = load i64, i64* %74, align 8
  %669 = load i64, i64* %75, align 8
  %670 = load i64, i64* %51, align 8
  %671 = load i64, i64* %52, align 8
  %672 = call i32 @HEVC_FILT_4TAP(i64 %668, i64 %669, i64 %670, i64 %671)
  store i32 %672, i32* %106, align 4
  %673 = load i32, i32* %99, align 4
  %674 = load i32, i32* %100, align 4
  %675 = load i32, i32* %101, align 4
  %676 = load i32, i32* %102, align 4
  %677 = call i32 @SRA_4V(i32 %673, i32 %674, i32 %675, i32 %676, i32 6)
  %678 = load i32, i32* %103, align 4
  %679 = load i32, i32* %104, align 4
  %680 = load i32, i32* %105, align 4
  %681 = load i32, i32* %106, align 4
  %682 = call i32 @SRA_4V(i32 %678, i32 %679, i32 %680, i32 %681, i32 6)
  %683 = load i32, i32* %99, align 4
  %684 = load i32, i32* %107, align 4
  %685 = load i32, i32* %100, align 4
  %686 = load i32, i32* %107, align 4
  %687 = load i32, i32* %99, align 4
  %688 = load i32, i32* %100, align 4
  %689 = call i32 @MUL2(i32 %683, i32 %684, i32 %685, i32 %686, i32 %687, i32 %688)
  %690 = load i32, i32* %101, align 4
  %691 = load i32, i32* %107, align 4
  %692 = load i32, i32* %102, align 4
  %693 = load i32, i32* %107, align 4
  %694 = load i32, i32* %101, align 4
  %695 = load i32, i32* %102, align 4
  %696 = call i32 @MUL2(i32 %690, i32 %691, i32 %692, i32 %693, i32 %694, i32 %695)
  %697 = load i32, i32* %103, align 4
  %698 = load i32, i32* %107, align 4
  %699 = load i32, i32* %104, align 4
  %700 = load i32, i32* %107, align 4
  %701 = load i32, i32* %103, align 4
  %702 = load i32, i32* %104, align 4
  %703 = call i32 @MUL2(i32 %697, i32 %698, i32 %699, i32 %700, i32 %701, i32 %702)
  %704 = load i32, i32* %105, align 4
  %705 = load i32, i32* %107, align 4
  %706 = load i32, i32* %106, align 4
  %707 = load i32, i32* %107, align 4
  %708 = load i32, i32* %105, align 4
  %709 = load i32, i32* %106, align 4
  %710 = call i32 @MUL2(i32 %704, i32 %705, i32 %706, i32 %707, i32 %708, i32 %709)
  %711 = load i32, i32* %99, align 4
  %712 = load i32, i32* %100, align 4
  %713 = load i32, i32* %101, align 4
  %714 = load i32, i32* %102, align 4
  %715 = load i32, i32* %108, align 4
  %716 = call i32 @SRAR_W4_SW(i32 %711, i32 %712, i32 %713, i32 %714, i32 %715)
  %717 = load i32, i32* %103, align 4
  %718 = load i32, i32* %104, align 4
  %719 = load i32, i32* %105, align 4
  %720 = load i32, i32* %106, align 4
  %721 = load i32, i32* %108, align 4
  %722 = call i32 @SRAR_W4_SW(i32 %717, i32 %718, i32 %719, i32 %720, i32 %721)
  %723 = load i32, i32* %100, align 4
  %724 = load i32, i32* %99, align 4
  %725 = load i32, i32* %102, align 4
  %726 = load i32, i32* %101, align 4
  %727 = load i32, i32* %104, align 4
  %728 = load i32, i32* %103, align 4
  %729 = load i32, i32* %106, align 4
  %730 = load i32, i32* %105, align 4
  %731 = load i64, i64* %54, align 8
  %732 = load i64, i64* %55, align 8
  %733 = load i64, i64* %56, align 8
  %734 = load i64, i64* %57, align 8
  %735 = call i32 @PCKEV_H4_SH(i32 %723, i32 %724, i32 %725, i32 %726, i32 %727, i32 %728, i32 %729, i32 %730, i64 %731, i64 %732, i64 %733, i64 %734)
  %736 = load i64, i64* %54, align 8
  %737 = load i64, i64* %88, align 8
  %738 = load i64, i64* %55, align 8
  %739 = load i64, i64* %88, align 8
  %740 = load i64, i64* %54, align 8
  %741 = load i64, i64* %55, align 8
  %742 = call i32 @ADD2(i64 %736, i64 %737, i64 %738, i64 %739, i64 %740, i64 %741)
  %743 = load i64, i64* %56, align 8
  %744 = load i64, i64* %88, align 8
  %745 = load i64, i64* %57, align 8
  %746 = load i64, i64* %88, align 8
  %747 = load i64, i64* %56, align 8
  %748 = load i64, i64* %57, align 8
  %749 = call i32 @ADD2(i64 %743, i64 %744, i64 %745, i64 %746, i64 %747, i64 %748)
  %750 = load i64, i64* %54, align 8
  %751 = load i64, i64* %55, align 8
  %752 = load i64, i64* %56, align 8
  %753 = load i64, i64* %57, align 8
  %754 = call i32 @CLIP_SH4_0_255(i64 %750, i64 %751, i64 %752, i64 %753)
  %755 = load i64, i64* %55, align 8
  %756 = load i64, i64* %54, align 8
  %757 = load i64, i64* %57, align 8
  %758 = load i64, i64* %56, align 8
  %759 = load i32, i32* %24, align 4
  %760 = load i32, i32* %25, align 4
  %761 = call i32 @PCKEV_B2_UB(i64 %755, i64 %756, i64 %757, i64 %758, i32 %759, i32 %760)
  %762 = load i32, i32* %24, align 4
  %763 = load i32, i32* %25, align 4
  %764 = load i32*, i32** %13, align 8
  %765 = load i32, i32* %14, align 4
  %766 = call i32 @ST_W8(i32 %762, i32 %763, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %764, i32 %765)
  %767 = load i32, i32* %14, align 4
  %768 = mul nsw i32 8, %767
  %769 = load i32*, i32** %13, align 8
  %770 = sext i32 %768 to i64
  %771 = getelementptr inbounds i32, i32* %769, i64 %770
  store i32* %771, i32** %13, align 8
  %772 = load i64, i64* %73, align 8
  store i64 %772, i64* %76, align 8
  %773 = load i64, i64* %75, align 8
  store i64 %773, i64* %79, align 8
  %774 = load i64, i64* %71, align 8
  %775 = trunc i64 %774 to i32
  %776 = call i64 @__msa_splati_d(i32 %775, i32 1)
  store i64 %776, i64* %67, align 8
  br label %523

777:                                              ; preds = %523
  ret void
}

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH4_0_255(i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B2_UB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_h(i64, i64) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
