; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_8t_8multx2mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_8t_8multx2mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32)* @hevc_hv_uniwgt_8t_8multx2mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_8t_8multx2mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i32, align 4
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
  %98 = alloca i64, align 8
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %99 = load i32, i32* @ff_hevc_mask_arr, align 4
  %100 = call i64 @LD_SB(i32 %99)
  store i64 %100, i64* %98, align 8
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 3, %101
  %103 = add nsw i32 %102, 3
  %104 = load i32*, i32** %12, align 8
  %105 = sext i32 %103 to i64
  %106 = sub i64 0, %105
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32* %107, i32** %12, align 8
  %108 = load i32, i32* %19, align 4
  %109 = call i32 @__msa_fill_w(i32 %108)
  store i32 %109, i32* %93, align 4
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @__msa_fill_w(i32 %110)
  store i32 %111, i32* %94, align 4
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @__msa_fill_w(i32 %112)
  store i32 %113, i32* %95, align 4
  %114 = load i32, i32* %95, align 4
  %115 = sub nsw i32 %114, 6
  store i32 %115, i32* %97, align 4
  %116 = call i32 @__msa_ldi_w(i32 128)
  store i32 %116, i32* %96, align 4
  %117 = load i32, i32* %93, align 4
  %118 = load i32, i32* %96, align 4
  %119 = mul nsw i32 %118, %117
  store i32 %119, i32* %96, align 4
  %120 = load i32, i32* %96, align 4
  %121 = load i32, i32* %97, align 4
  %122 = call i64 @__msa_srar_w(i32 %120, i32 %121)
  %123 = load i32, i32* %94, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %94, align 4
  %127 = load i32*, i32** %16, align 8
  %128 = call i32 @LD_SH(i32* %127)
  store i32 %128, i32* %47, align 4
  %129 = load i32, i32* %47, align 4
  %130 = load i32, i32* %36, align 4
  %131 = load i32, i32* %37, align 4
  %132 = load i32, i32* %38, align 4
  %133 = load i32, i32* %39, align 4
  %134 = call i32 @SPLATI_H4_SH(i32 %129, i32 0, i32 1, i32 2, i32 3, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32*, i32** %17, align 8
  %136 = call i32 @LD_SH(i32* %135)
  store i32 %136, i32* %47, align 4
  %137 = load i32, i32* %47, align 4
  %138 = load i32, i32* %47, align 4
  %139 = call i32 @UNPCK_R_SB_SH(i32 %137, i32 %138)
  %140 = load i32, i32* %47, align 4
  %141 = load i32, i32* %40, align 4
  %142 = load i32, i32* %41, align 4
  %143 = load i32, i32* %42, align 4
  %144 = load i32, i32* %43, align 4
  %145 = call i32 @SPLATI_W4_SW(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i64, i64* %98, align 8
  %147 = add nsw i64 %146, 2
  store i64 %147, i64* %44, align 8
  %148 = load i64, i64* %98, align 8
  %149 = add nsw i64 %148, 4
  store i64 %149, i64* %45, align 8
  %150 = load i64, i64* %98, align 8
  %151 = add nsw i64 %150, 6
  store i64 %151, i64* %46, align 8
  %152 = load i32, i32* %22, align 4
  %153 = ashr i32 %152, 3
  store i32 %153, i32* %24, align 4
  br label %154

154:                                              ; preds = %552, %11
  %155 = load i32, i32* %24, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %24, align 4
  %157 = icmp ne i32 %155, 0
  br i1 %157, label %158, label %557

158:                                              ; preds = %154
  %159 = load i32*, i32** %12, align 8
  store i32* %159, i32** %25, align 8
  %160 = load i32*, i32** %14, align 8
  store i32* %160, i32** %26, align 8
  %161 = load i32*, i32** %25, align 8
  %162 = load i32, i32* %13, align 4
  %163 = load i64, i64* %27, align 8
  %164 = load i64, i64* %28, align 8
  %165 = load i64, i64* %29, align 8
  %166 = load i64, i64* %30, align 8
  %167 = load i64, i64* %31, align 8
  %168 = load i64, i64* %32, align 8
  %169 = load i64, i64* %33, align 8
  %170 = call i32 @LD_SB7(i32* %161, i32 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i32, i32* %13, align 4
  %172 = mul nsw i32 7, %171
  %173 = load i32*, i32** %25, align 8
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32* %175, i32** %25, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %28, align 8
  %178 = load i64, i64* %29, align 8
  %179 = load i64, i64* %30, align 8
  %180 = load i64, i64* %31, align 8
  %181 = load i64, i64* %32, align 8
  %182 = load i64, i64* %33, align 8
  %183 = call i32 @XORI_B7_128_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %27, align 8
  %185 = load i64, i64* %27, align 8
  %186 = load i64, i64* %98, align 8
  %187 = load i64, i64* %44, align 8
  %188 = load i64, i64* %45, align 8
  %189 = load i64, i64* %46, align 8
  %190 = load i64, i64* %48, align 8
  %191 = load i64, i64* %49, align 8
  %192 = load i64, i64* %50, align 8
  %193 = load i64, i64* %51, align 8
  %194 = call i32 @VSHF_B4_SB(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %28, align 8
  %196 = load i64, i64* %28, align 8
  %197 = load i64, i64* %98, align 8
  %198 = load i64, i64* %44, align 8
  %199 = load i64, i64* %45, align 8
  %200 = load i64, i64* %46, align 8
  %201 = load i64, i64* %52, align 8
  %202 = load i64, i64* %53, align 8
  %203 = load i64, i64* %54, align 8
  %204 = load i64, i64* %55, align 8
  %205 = call i32 @VSHF_B4_SB(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %29, align 8
  %207 = load i64, i64* %29, align 8
  %208 = load i64, i64* %98, align 8
  %209 = load i64, i64* %44, align 8
  %210 = load i64, i64* %45, align 8
  %211 = load i64, i64* %46, align 8
  %212 = load i64, i64* %56, align 8
  %213 = load i64, i64* %57, align 8
  %214 = load i64, i64* %58, align 8
  %215 = load i64, i64* %59, align 8
  %216 = call i32 @VSHF_B4_SB(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %30, align 8
  %218 = load i64, i64* %30, align 8
  %219 = load i64, i64* %98, align 8
  %220 = load i64, i64* %44, align 8
  %221 = load i64, i64* %45, align 8
  %222 = load i64, i64* %46, align 8
  %223 = load i64, i64* %60, align 8
  %224 = load i64, i64* %61, align 8
  %225 = load i64, i64* %62, align 8
  %226 = load i64, i64* %63, align 8
  %227 = call i32 @VSHF_B4_SB(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %48, align 8
  %229 = load i64, i64* %49, align 8
  %230 = load i64, i64* %50, align 8
  %231 = load i64, i64* %51, align 8
  %232 = load i32, i32* %36, align 4
  %233 = load i32, i32* %37, align 4
  %234 = load i32, i32* %38, align 4
  %235 = load i32, i32* %39, align 4
  %236 = call i32 @HEVC_FILT_8TAP_SH(i64 %228, i64 %229, i64 %230, i64 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %64, align 4
  %237 = load i64, i64* %52, align 8
  %238 = load i64, i64* %53, align 8
  %239 = load i64, i64* %54, align 8
  %240 = load i64, i64* %55, align 8
  %241 = load i32, i32* %36, align 4
  %242 = load i32, i32* %37, align 4
  %243 = load i32, i32* %38, align 4
  %244 = load i32, i32* %39, align 4
  %245 = call i32 @HEVC_FILT_8TAP_SH(i64 %237, i64 %238, i64 %239, i64 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %65, align 4
  %246 = load i64, i64* %56, align 8
  %247 = load i64, i64* %57, align 8
  %248 = load i64, i64* %58, align 8
  %249 = load i64, i64* %59, align 8
  %250 = load i32, i32* %36, align 4
  %251 = load i32, i32* %37, align 4
  %252 = load i32, i32* %38, align 4
  %253 = load i32, i32* %39, align 4
  %254 = call i32 @HEVC_FILT_8TAP_SH(i64 %246, i64 %247, i64 %248, i64 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  store i32 %254, i32* %66, align 4
  %255 = load i64, i64* %60, align 8
  %256 = load i64, i64* %61, align 8
  %257 = load i64, i64* %62, align 8
  %258 = load i64, i64* %63, align 8
  %259 = load i32, i32* %36, align 4
  %260 = load i32, i32* %37, align 4
  %261 = load i32, i32* %38, align 4
  %262 = load i32, i32* %39, align 4
  %263 = call i32 @HEVC_FILT_8TAP_SH(i64 %255, i64 %256, i64 %257, i64 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  store i32 %263, i32* %67, align 4
  %264 = load i64, i64* %31, align 8
  %265 = load i64, i64* %31, align 8
  %266 = load i64, i64* %98, align 8
  %267 = load i64, i64* %44, align 8
  %268 = load i64, i64* %45, align 8
  %269 = load i64, i64* %46, align 8
  %270 = load i64, i64* %48, align 8
  %271 = load i64, i64* %49, align 8
  %272 = load i64, i64* %50, align 8
  %273 = load i64, i64* %51, align 8
  %274 = call i32 @VSHF_B4_SB(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273)
  %275 = load i64, i64* %32, align 8
  %276 = load i64, i64* %32, align 8
  %277 = load i64, i64* %98, align 8
  %278 = load i64, i64* %44, align 8
  %279 = load i64, i64* %45, align 8
  %280 = load i64, i64* %46, align 8
  %281 = load i64, i64* %52, align 8
  %282 = load i64, i64* %53, align 8
  %283 = load i64, i64* %54, align 8
  %284 = load i64, i64* %55, align 8
  %285 = call i32 @VSHF_B4_SB(i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284)
  %286 = load i64, i64* %33, align 8
  %287 = load i64, i64* %33, align 8
  %288 = load i64, i64* %98, align 8
  %289 = load i64, i64* %44, align 8
  %290 = load i64, i64* %45, align 8
  %291 = load i64, i64* %46, align 8
  %292 = load i64, i64* %56, align 8
  %293 = load i64, i64* %57, align 8
  %294 = load i64, i64* %58, align 8
  %295 = load i64, i64* %59, align 8
  %296 = call i32 @VSHF_B4_SB(i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295)
  %297 = load i64, i64* %48, align 8
  %298 = load i64, i64* %49, align 8
  %299 = load i64, i64* %50, align 8
  %300 = load i64, i64* %51, align 8
  %301 = load i32, i32* %36, align 4
  %302 = load i32, i32* %37, align 4
  %303 = load i32, i32* %38, align 4
  %304 = load i32, i32* %39, align 4
  %305 = call i32 @HEVC_FILT_8TAP_SH(i64 %297, i64 %298, i64 %299, i64 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  store i32 %305, i32* %68, align 4
  %306 = load i64, i64* %52, align 8
  %307 = load i64, i64* %53, align 8
  %308 = load i64, i64* %54, align 8
  %309 = load i64, i64* %55, align 8
  %310 = load i32, i32* %36, align 4
  %311 = load i32, i32* %37, align 4
  %312 = load i32, i32* %38, align 4
  %313 = load i32, i32* %39, align 4
  %314 = call i32 @HEVC_FILT_8TAP_SH(i64 %306, i64 %307, i64 %308, i64 %309, i32 %310, i32 %311, i32 %312, i32 %313)
  store i32 %314, i32* %69, align 4
  %315 = load i64, i64* %56, align 8
  %316 = load i64, i64* %57, align 8
  %317 = load i64, i64* %58, align 8
  %318 = load i64, i64* %59, align 8
  %319 = load i32, i32* %36, align 4
  %320 = load i32, i32* %37, align 4
  %321 = load i32, i32* %38, align 4
  %322 = load i32, i32* %39, align 4
  %323 = call i32 @HEVC_FILT_8TAP_SH(i64 %315, i64 %316, i64 %317, i64 %318, i32 %319, i32 %320, i32 %321, i32 %322)
  store i32 %323, i32* %70, align 4
  %324 = load i32, i32* %65, align 4
  %325 = load i32, i32* %64, align 4
  %326 = load i32, i32* %67, align 4
  %327 = load i32, i32* %66, align 4
  %328 = load i32, i32* %69, align 4
  %329 = load i32, i32* %68, align 4
  %330 = load i32, i32* %66, align 4
  %331 = load i32, i32* %65, align 4
  %332 = load i32, i32* %77, align 4
  %333 = load i32, i32* %78, align 4
  %334 = load i32, i32* %79, align 4
  %335 = load i32, i32* %85, align 4
  %336 = call i32 @ILVR_H4_SH(i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %68, align 4
  %338 = load i32, i32* %67, align 4
  %339 = load i32, i32* %70, align 4
  %340 = load i32, i32* %69, align 4
  %341 = load i32, i32* %86, align 4
  %342 = load i32, i32* %87, align 4
  %343 = call i32 @ILVR_H2_SH(i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342)
  %344 = load i32, i32* %65, align 4
  %345 = load i32, i32* %64, align 4
  %346 = load i32, i32* %67, align 4
  %347 = load i32, i32* %66, align 4
  %348 = load i32, i32* %69, align 4
  %349 = load i32, i32* %68, align 4
  %350 = load i32, i32* %66, align 4
  %351 = load i32, i32* %65, align 4
  %352 = load i32, i32* %81, align 4
  %353 = load i32, i32* %82, align 4
  %354 = load i32, i32* %83, align 4
  %355 = load i32, i32* %89, align 4
  %356 = call i32 @ILVL_H4_SH(i32 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355)
  %357 = load i32, i32* %68, align 4
  %358 = load i32, i32* %67, align 4
  %359 = load i32, i32* %70, align 4
  %360 = load i32, i32* %69, align 4
  %361 = load i32, i32* %90, align 4
  %362 = load i32, i32* %91, align 4
  %363 = call i32 @ILVL_H2_SH(i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362)
  %364 = load i32, i32* %18, align 4
  %365 = ashr i32 %364, 1
  store i32 %365, i32* %23, align 4
  br label %366

366:                                              ; preds = %370, %158
  %367 = load i32, i32* %23, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* %23, align 4
  %369 = icmp ne i32 %367, 0
  br i1 %369, label %370, label %552

370:                                              ; preds = %366
  %371 = load i32*, i32** %25, align 8
  %372 = load i32, i32* %13, align 4
  %373 = load i64, i64* %34, align 8
  %374 = load i64, i64* %35, align 8
  %375 = call i32 @LD_SB2(i32* %371, i32 %372, i64 %373, i64 %374)
  %376 = load i32, i32* %13, align 4
  %377 = mul nsw i32 2, %376
  %378 = load i32*, i32** %25, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %25, align 8
  %381 = load i64, i64* %34, align 8
  %382 = load i64, i64* %35, align 8
  %383 = call i32 @XORI_B2_128_SB(i64 %381, i64 %382)
  %384 = load i64, i64* %34, align 8
  %385 = load i64, i64* %34, align 8
  %386 = load i64, i64* %98, align 8
  %387 = load i64, i64* %44, align 8
  %388 = load i64, i64* %45, align 8
  %389 = load i64, i64* %46, align 8
  %390 = load i64, i64* %48, align 8
  %391 = load i64, i64* %49, align 8
  %392 = load i64, i64* %50, align 8
  %393 = load i64, i64* %51, align 8
  %394 = call i32 @VSHF_B4_SB(i64 %384, i64 %385, i64 %386, i64 %387, i64 %388, i64 %389, i64 %390, i64 %391, i64 %392, i64 %393)
  %395 = load i64, i64* %48, align 8
  %396 = load i64, i64* %49, align 8
  %397 = load i64, i64* %50, align 8
  %398 = load i64, i64* %51, align 8
  %399 = load i32, i32* %36, align 4
  %400 = load i32, i32* %37, align 4
  %401 = load i32, i32* %38, align 4
  %402 = load i32, i32* %39, align 4
  %403 = call i32 @HEVC_FILT_8TAP_SH(i64 %395, i64 %396, i64 %397, i64 %398, i32 %399, i32 %400, i32 %401, i32 %402)
  store i32 %403, i32* %71, align 4
  %404 = load i32, i32* %71, align 4
  %405 = load i32, i32* %70, align 4
  %406 = load i32, i32* %80, align 4
  %407 = load i32, i32* %84, align 4
  %408 = call i32 @ILVRL_H2_SH(i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %77, align 4
  %410 = load i32, i32* %78, align 4
  %411 = load i32, i32* %79, align 4
  %412 = load i32, i32* %80, align 4
  %413 = load i32, i32* %40, align 4
  %414 = load i32, i32* %41, align 4
  %415 = load i32, i32* %42, align 4
  %416 = load i32, i32* %43, align 4
  %417 = call i32 @HEVC_FILT_8TAP(i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416)
  store i32 %417, i32* %73, align 4
  %418 = load i32, i32* %81, align 4
  %419 = load i32, i32* %82, align 4
  %420 = load i32, i32* %83, align 4
  %421 = load i32, i32* %84, align 4
  %422 = load i32, i32* %40, align 4
  %423 = load i32, i32* %41, align 4
  %424 = load i32, i32* %42, align 4
  %425 = load i32, i32* %43, align 4
  %426 = call i32 @HEVC_FILT_8TAP(i32 %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425)
  store i32 %426, i32* %74, align 4
  %427 = load i32, i32* %73, align 4
  %428 = ashr i32 %427, 6
  store i32 %428, i32* %73, align 4
  %429 = load i32, i32* %74, align 4
  %430 = ashr i32 %429, 6
  store i32 %430, i32* %74, align 4
  %431 = load i64, i64* %35, align 8
  %432 = load i64, i64* %35, align 8
  %433 = load i64, i64* %98, align 8
  %434 = load i64, i64* %44, align 8
  %435 = load i64, i64* %45, align 8
  %436 = load i64, i64* %46, align 8
  %437 = load i64, i64* %48, align 8
  %438 = load i64, i64* %49, align 8
  %439 = load i64, i64* %50, align 8
  %440 = load i64, i64* %51, align 8
  %441 = call i32 @VSHF_B4_SB(i64 %431, i64 %432, i64 %433, i64 %434, i64 %435, i64 %436, i64 %437, i64 %438, i64 %439, i64 %440)
  %442 = load i64, i64* %48, align 8
  %443 = load i64, i64* %49, align 8
  %444 = load i64, i64* %50, align 8
  %445 = load i64, i64* %51, align 8
  %446 = load i32, i32* %36, align 4
  %447 = load i32, i32* %37, align 4
  %448 = load i32, i32* %38, align 4
  %449 = load i32, i32* %39, align 4
  %450 = call i32 @HEVC_FILT_8TAP_SH(i64 %442, i64 %443, i64 %444, i64 %445, i32 %446, i32 %447, i32 %448, i32 %449)
  store i32 %450, i32* %72, align 4
  %451 = load i32, i32* %72, align 4
  %452 = load i32, i32* %71, align 4
  %453 = load i32, i32* %88, align 4
  %454 = load i32, i32* %92, align 4
  %455 = call i32 @ILVRL_H2_SH(i32 %451, i32 %452, i32 %453, i32 %454)
  %456 = load i32, i32* %85, align 4
  %457 = load i32, i32* %86, align 4
  %458 = load i32, i32* %87, align 4
  %459 = load i32, i32* %88, align 4
  %460 = load i32, i32* %40, align 4
  %461 = load i32, i32* %41, align 4
  %462 = load i32, i32* %42, align 4
  %463 = load i32, i32* %43, align 4
  %464 = call i32 @HEVC_FILT_8TAP(i32 %456, i32 %457, i32 %458, i32 %459, i32 %460, i32 %461, i32 %462, i32 %463)
  store i32 %464, i32* %75, align 4
  %465 = load i32, i32* %89, align 4
  %466 = load i32, i32* %90, align 4
  %467 = load i32, i32* %91, align 4
  %468 = load i32, i32* %92, align 4
  %469 = load i32, i32* %40, align 4
  %470 = load i32, i32* %41, align 4
  %471 = load i32, i32* %42, align 4
  %472 = load i32, i32* %43, align 4
  %473 = call i32 @HEVC_FILT_8TAP(i32 %465, i32 %466, i32 %467, i32 %468, i32 %469, i32 %470, i32 %471, i32 %472)
  store i32 %473, i32* %76, align 4
  %474 = load i32, i32* %75, align 4
  %475 = ashr i32 %474, 6
  store i32 %475, i32* %75, align 4
  %476 = load i32, i32* %76, align 4
  %477 = ashr i32 %476, 6
  store i32 %477, i32* %76, align 4
  %478 = load i32, i32* %73, align 4
  %479 = load i32, i32* %93, align 4
  %480 = load i32, i32* %74, align 4
  %481 = load i32, i32* %93, align 4
  %482 = load i32, i32* %73, align 4
  %483 = load i32, i32* %74, align 4
  %484 = call i32 @MUL2(i32 %478, i32 %479, i32 %480, i32 %481, i32 %482, i32 %483)
  %485 = load i32, i32* %75, align 4
  %486 = load i32, i32* %93, align 4
  %487 = load i32, i32* %76, align 4
  %488 = load i32, i32* %93, align 4
  %489 = load i32, i32* %75, align 4
  %490 = load i32, i32* %76, align 4
  %491 = call i32 @MUL2(i32 %485, i32 %486, i32 %487, i32 %488, i32 %489, i32 %490)
  %492 = load i32, i32* %73, align 4
  %493 = load i32, i32* %75, align 4
  %494 = load i32, i32* %74, align 4
  %495 = load i32, i32* %76, align 4
  %496 = load i32, i32* %95, align 4
  %497 = call i32 @SRAR_W4_SW(i32 %492, i32 %493, i32 %494, i32 %495, i32 %496)
  %498 = load i32, i32* %73, align 4
  %499 = load i32, i32* %94, align 4
  %500 = load i32, i32* %74, align 4
  %501 = load i32, i32* %94, align 4
  %502 = load i32, i32* %73, align 4
  %503 = load i32, i32* %74, align 4
  %504 = call i32 @ADD2(i32 %498, i32 %499, i32 %500, i32 %501, i32 %502, i32 %503)
  %505 = load i32, i32* %75, align 4
  %506 = load i32, i32* %94, align 4
  %507 = load i32, i32* %76, align 4
  %508 = load i32, i32* %94, align 4
  %509 = load i32, i32* %75, align 4
  %510 = load i32, i32* %76, align 4
  %511 = call i32 @ADD2(i32 %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510)
  %512 = load i32, i32* %73, align 4
  %513 = load i32, i32* %75, align 4
  %514 = load i32, i32* %74, align 4
  %515 = load i32, i32* %76, align 4
  %516 = call i32 @CLIP_SW4_0_255(i32 %512, i32 %513, i32 %514, i32 %515)
  %517 = load i32, i32* %74, align 4
  %518 = load i32, i32* %73, align 4
  %519 = load i32, i32* %76, align 4
  %520 = load i32, i32* %75, align 4
  %521 = load i32, i32* %73, align 4
  %522 = load i32, i32* %75, align 4
  %523 = call i32 @PCKEV_H2_SW(i32 %517, i32 %518, i32 %519, i32 %520, i32 %521, i32 %522)
  %524 = load i32, i32* %75, align 4
  %525 = sext i32 %524 to i64
  %526 = load i32, i32* %73, align 4
  %527 = sext i32 %526 to i64
  %528 = call i64 @__msa_pckev_b(i64 %525, i64 %527)
  %529 = trunc i64 %528 to i32
  store i32 %529, i32* %73, align 4
  %530 = load i32, i32* %73, align 4
  %531 = load i32*, i32** %26, align 8
  %532 = load i32, i32* %15, align 4
  %533 = call i32 @ST_D2(i32 %530, i32 0, i32 1, i32* %531, i32 %532)
  %534 = load i32, i32* %15, align 4
  %535 = mul nsw i32 2, %534
  %536 = load i32*, i32** %26, align 8
  %537 = sext i32 %535 to i64
  %538 = getelementptr inbounds i32, i32* %536, i64 %537
  store i32* %538, i32** %26, align 8
  %539 = load i32, i32* %78, align 4
  store i32 %539, i32* %77, align 4
  %540 = load i32, i32* %79, align 4
  store i32 %540, i32* %78, align 4
  %541 = load i32, i32* %80, align 4
  store i32 %541, i32* %79, align 4
  %542 = load i32, i32* %82, align 4
  store i32 %542, i32* %81, align 4
  %543 = load i32, i32* %83, align 4
  store i32 %543, i32* %82, align 4
  %544 = load i32, i32* %84, align 4
  store i32 %544, i32* %83, align 4
  %545 = load i32, i32* %86, align 4
  store i32 %545, i32* %85, align 4
  %546 = load i32, i32* %87, align 4
  store i32 %546, i32* %86, align 4
  %547 = load i32, i32* %88, align 4
  store i32 %547, i32* %87, align 4
  %548 = load i32, i32* %90, align 4
  store i32 %548, i32* %89, align 4
  %549 = load i32, i32* %91, align 4
  store i32 %549, i32* %90, align 4
  %550 = load i32, i32* %92, align 4
  store i32 %550, i32* %91, align 4
  %551 = load i32, i32* %72, align 4
  store i32 %551, i32* %70, align 4
  br label %366

552:                                              ; preds = %366
  %553 = load i32*, i32** %12, align 8
  %554 = getelementptr inbounds i32, i32* %553, i64 8
  store i32* %554, i32** %12, align 8
  %555 = load i32*, i32** %14, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 8
  store i32* %556, i32** %14, align 8
  br label %154

557:                                              ; preds = %154
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_ldi_w(i32) #1

declare dso_local i64 @__msa_srar_w(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADD2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SW4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
