; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4multx8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4multx8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32)* @hevc_hv_uniwgt_4t_4multx8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_4multx8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
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
  %84 = load i64, i64* @ff_hevc_mask_arr, align 8
  %85 = add nsw i64 %84, 16
  %86 = call i64 @LD_SB(i64 %85)
  store i64 %86, i64* %37, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32*, i32** %11, align 8
  %90 = sext i32 %88 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %11, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = call i64 @LD_SH(i32* %93)
  store i64 %94, i64* %41, align 8
  %95 = load i64, i64* %41, align 8
  %96 = load i64, i64* %35, align 8
  %97 = load i64, i64* %36, align 8
  %98 = call i32 @SPLATI_H2_SH(i64 %95, i32 0, i32 1, i64 %96, i64 %97)
  %99 = load i32*, i32** %16, align 8
  %100 = call i64 @LD_SH(i32* %99)
  store i64 %100, i64* %41, align 8
  %101 = load i64, i64* %41, align 8
  %102 = load i64, i64* %41, align 8
  %103 = call i32 @UNPCK_R_SB_SH(i64 %101, i64 %102)
  %104 = load i64, i64* %41, align 8
  %105 = load i64, i64* %39, align 8
  %106 = load i64, i64* %40, align 8
  %107 = call i32 @SPLATI_W2_SH(i64 %104, i32 0, i64 %105, i64 %106)
  %108 = load i64, i64* %37, align 8
  %109 = add nsw i64 %108, 2
  store i64 %109, i64* %38, align 8
  %110 = load i32, i32* %18, align 4
  %111 = call i32 @__msa_fill_w(i32 %110)
  store i32 %111, i32* %82, align 4
  %112 = load i32, i32* %20, align 4
  %113 = call i32 @__msa_fill_w(i32 %112)
  store i32 %113, i32* %83, align 4
  %114 = load i32, i32* %19, align 4
  %115 = call i64 @__msa_fill_h(i32 %114)
  store i64 %115, i64* %71, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sub nsw i32 %116, 6
  %118 = call i64 @__msa_fill_h(i32 %117)
  store i64 %118, i64* %73, align 8
  %119 = load i32, i32* %18, align 4
  %120 = mul nsw i32 128, %119
  %121 = call i64 @__msa_fill_h(i32 %120)
  store i64 %121, i64* %72, align 8
  %122 = load i64, i64* %72, align 8
  %123 = load i64, i64* %73, align 8
  %124 = call i64 @__msa_srar_h(i64 %122, i64 %123)
  %125 = load i64, i64* %71, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %71, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %26, align 8
  %132 = call i32 @LD_SB3(i32* %127, i32 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 3, %133
  %135 = load i32*, i32** %11, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %11, align 8
  %138 = load i64, i64* %24, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %26, align 8
  %141 = call i32 @XORI_B3_128_SB(i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %24, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %37, align 8
  %147 = load i64, i64* %38, align 8
  %148 = load i64, i64* %46, align 8
  %149 = load i64, i64* %47, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %25, align 8
  %152 = load i64, i64* %26, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %37, align 8
  %156 = load i64, i64* %38, align 8
  %157 = load i64, i64* %48, align 8
  %158 = load i64, i64* %49, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %46, align 8
  %161 = load i64, i64* %47, align 8
  %162 = load i64, i64* %35, align 8
  %163 = load i64, i64* %36, align 8
  %164 = call i64 @HEVC_FILT_4TAP_SH(i64 %160, i64 %161, i64 %162, i64 %163)
  store i64 %164, i64* %54, align 8
  %165 = load i64, i64* %48, align 8
  %166 = load i64, i64* %49, align 8
  %167 = load i64, i64* %35, align 8
  %168 = load i64, i64* %36, align 8
  %169 = call i64 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i64 %167, i64 %168)
  store i64 %169, i64* %55, align 8
  %170 = load i64, i64* %55, align 8
  %171 = load i64, i64* %54, align 8
  %172 = load i64, i64* %61, align 8
  %173 = load i64, i64* %65, align 8
  %174 = call i32 @ILVRL_H2_SH(i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %55, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i64 @__msa_splati_d(i32 %176, i32 1)
  store i64 %177, i64* %56, align 8
  %178 = load i32, i32* %17, align 4
  %179 = ashr i32 %178, 3
  store i32 %179, i32* %21, align 4
  br label %180

180:                                              ; preds = %184, %10
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %21, align 4
  %183 = icmp ne i32 %181, 0
  br i1 %183, label %184, label %434

184:                                              ; preds = %180
  %185 = load i32*, i32** %11, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load i64, i64* %27, align 8
  %188 = load i64, i64* %28, align 8
  %189 = load i64, i64* %29, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* %31, align 8
  %192 = load i64, i64* %32, align 8
  %193 = load i64, i64* %33, align 8
  %194 = load i64, i64* %34, align 8
  %195 = call i32 @LD_SB8(i32* %185, i32 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i32, i32* %12, align 4
  %197 = mul nsw i32 8, %196
  %198 = load i32*, i32** %11, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %11, align 8
  %201 = load i64, i64* %27, align 8
  %202 = load i64, i64* %28, align 8
  %203 = load i64, i64* %29, align 8
  %204 = load i64, i64* %30, align 8
  %205 = load i64, i64* %31, align 8
  %206 = load i64, i64* %32, align 8
  %207 = load i64, i64* %33, align 8
  %208 = load i64, i64* %34, align 8
  %209 = call i32 @XORI_B8_128_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %27, align 8
  %211 = load i64, i64* %31, align 8
  %212 = load i64, i64* %27, align 8
  %213 = load i64, i64* %31, align 8
  %214 = load i64, i64* %37, align 8
  %215 = load i64, i64* %38, align 8
  %216 = load i64, i64* %46, align 8
  %217 = load i64, i64* %47, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %28, align 8
  %220 = load i64, i64* %32, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %32, align 8
  %223 = load i64, i64* %37, align 8
  %224 = load i64, i64* %38, align 8
  %225 = load i64, i64* %48, align 8
  %226 = load i64, i64* %49, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %29, align 8
  %229 = load i64, i64* %33, align 8
  %230 = load i64, i64* %29, align 8
  %231 = load i64, i64* %33, align 8
  %232 = load i64, i64* %37, align 8
  %233 = load i64, i64* %38, align 8
  %234 = load i64, i64* %50, align 8
  %235 = load i64, i64* %51, align 8
  %236 = call i32 @VSHF_B2_SB(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %30, align 8
  %238 = load i64, i64* %34, align 8
  %239 = load i64, i64* %30, align 8
  %240 = load i64, i64* %34, align 8
  %241 = load i64, i64* %37, align 8
  %242 = load i64, i64* %38, align 8
  %243 = load i64, i64* %52, align 8
  %244 = load i64, i64* %53, align 8
  %245 = call i32 @VSHF_B2_SB(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %46, align 8
  %247 = load i64, i64* %47, align 8
  %248 = load i64, i64* %35, align 8
  %249 = load i64, i64* %36, align 8
  %250 = call i64 @HEVC_FILT_4TAP_SH(i64 %246, i64 %247, i64 %248, i64 %249)
  store i64 %250, i64* %57, align 8
  %251 = load i64, i64* %48, align 8
  %252 = load i64, i64* %49, align 8
  %253 = load i64, i64* %35, align 8
  %254 = load i64, i64* %36, align 8
  %255 = call i64 @HEVC_FILT_4TAP_SH(i64 %251, i64 %252, i64 %253, i64 %254)
  store i64 %255, i64* %58, align 8
  %256 = load i64, i64* %50, align 8
  %257 = load i64, i64* %51, align 8
  %258 = load i64, i64* %35, align 8
  %259 = load i64, i64* %36, align 8
  %260 = call i64 @HEVC_FILT_4TAP_SH(i64 %256, i64 %257, i64 %258, i64 %259)
  store i64 %260, i64* %59, align 8
  %261 = load i64, i64* %52, align 8
  %262 = load i64, i64* %53, align 8
  %263 = load i64, i64* %35, align 8
  %264 = load i64, i64* %36, align 8
  %265 = call i64 @HEVC_FILT_4TAP_SH(i64 %261, i64 %262, i64 %263, i64 %264)
  store i64 %265, i64* %60, align 8
  %266 = load i64, i64* %57, align 8
  %267 = load i64, i64* %56, align 8
  %268 = call i64 @__msa_ilvr_h(i64 %266, i64 %267)
  store i64 %268, i64* %62, align 8
  %269 = load i64, i64* %58, align 8
  %270 = load i64, i64* %57, align 8
  %271 = load i64, i64* %66, align 8
  %272 = load i64, i64* %68, align 8
  %273 = call i32 @ILVRL_H2_SH(i64 %269, i64 %270, i64 %271, i64 %272)
  %274 = load i64, i64* %59, align 8
  %275 = load i64, i64* %58, align 8
  %276 = load i64, i64* %63, align 8
  %277 = load i64, i64* %69, align 8
  %278 = call i32 @ILVRL_H2_SH(i64 %274, i64 %275, i64 %276, i64 %277)
  %279 = load i64, i64* %60, align 8
  %280 = load i64, i64* %59, align 8
  %281 = load i64, i64* %67, align 8
  %282 = load i64, i64* %70, align 8
  %283 = call i32 @ILVRL_H2_SH(i64 %279, i64 %280, i64 %281, i64 %282)
  %284 = load i64, i64* %57, align 8
  %285 = trunc i64 %284 to i32
  %286 = call i64 @__msa_splati_d(i32 %285, i32 1)
  store i64 %286, i64* %56, align 8
  %287 = load i64, i64* %56, align 8
  %288 = load i64, i64* %60, align 8
  %289 = call i64 @__msa_ilvr_h(i64 %287, i64 %288)
  store i64 %289, i64* %64, align 8
  %290 = load i64, i64* %61, align 8
  %291 = load i64, i64* %62, align 8
  %292 = load i64, i64* %39, align 8
  %293 = load i64, i64* %40, align 8
  %294 = call i32 @HEVC_FILT_4TAP(i64 %290, i64 %291, i64 %292, i64 %293)
  store i32 %294, i32* %74, align 4
  %295 = load i64, i64* %65, align 8
  %296 = load i64, i64* %66, align 8
  %297 = load i64, i64* %39, align 8
  %298 = load i64, i64* %40, align 8
  %299 = call i32 @HEVC_FILT_4TAP(i64 %295, i64 %296, i64 %297, i64 %298)
  store i32 %299, i32* %75, align 4
  %300 = load i64, i64* %62, align 8
  %301 = load i64, i64* %63, align 8
  %302 = load i64, i64* %39, align 8
  %303 = load i64, i64* %40, align 8
  %304 = call i32 @HEVC_FILT_4TAP(i64 %300, i64 %301, i64 %302, i64 %303)
  store i32 %304, i32* %76, align 4
  %305 = load i64, i64* %66, align 8
  %306 = load i64, i64* %67, align 8
  %307 = load i64, i64* %39, align 8
  %308 = load i64, i64* %40, align 8
  %309 = call i32 @HEVC_FILT_4TAP(i64 %305, i64 %306, i64 %307, i64 %308)
  store i32 %309, i32* %77, align 4
  %310 = load i64, i64* %63, align 8
  %311 = load i64, i64* %64, align 8
  %312 = load i64, i64* %39, align 8
  %313 = load i64, i64* %40, align 8
  %314 = call i32 @HEVC_FILT_4TAP(i64 %310, i64 %311, i64 %312, i64 %313)
  store i32 %314, i32* %78, align 4
  %315 = load i64, i64* %67, align 8
  %316 = load i64, i64* %68, align 8
  %317 = load i64, i64* %39, align 8
  %318 = load i64, i64* %40, align 8
  %319 = call i32 @HEVC_FILT_4TAP(i64 %315, i64 %316, i64 %317, i64 %318)
  store i32 %319, i32* %79, align 4
  %320 = load i64, i64* %64, align 8
  %321 = load i64, i64* %69, align 8
  %322 = load i64, i64* %39, align 8
  %323 = load i64, i64* %40, align 8
  %324 = call i32 @HEVC_FILT_4TAP(i64 %320, i64 %321, i64 %322, i64 %323)
  store i32 %324, i32* %80, align 4
  %325 = load i64, i64* %68, align 8
  %326 = load i64, i64* %70, align 8
  %327 = load i64, i64* %39, align 8
  %328 = load i64, i64* %40, align 8
  %329 = call i32 @HEVC_FILT_4TAP(i64 %325, i64 %326, i64 %327, i64 %328)
  store i32 %329, i32* %81, align 4
  %330 = load i32, i32* %74, align 4
  %331 = load i32, i32* %75, align 4
  %332 = load i32, i32* %76, align 4
  %333 = load i32, i32* %77, align 4
  %334 = call i32 @SRA_4V(i32 %330, i32 %331, i32 %332, i32 %333, i32 6)
  %335 = load i32, i32* %78, align 4
  %336 = load i32, i32* %79, align 4
  %337 = load i32, i32* %80, align 4
  %338 = load i32, i32* %81, align 4
  %339 = call i32 @SRA_4V(i32 %335, i32 %336, i32 %337, i32 %338, i32 6)
  %340 = load i32, i32* %74, align 4
  %341 = load i32, i32* %82, align 4
  %342 = load i32, i32* %75, align 4
  %343 = load i32, i32* %82, align 4
  %344 = load i32, i32* %74, align 4
  %345 = load i32, i32* %75, align 4
  %346 = call i32 @MUL2(i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345)
  %347 = load i32, i32* %76, align 4
  %348 = load i32, i32* %82, align 4
  %349 = load i32, i32* %77, align 4
  %350 = load i32, i32* %82, align 4
  %351 = load i32, i32* %76, align 4
  %352 = load i32, i32* %77, align 4
  %353 = call i32 @MUL2(i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352)
  %354 = load i32, i32* %78, align 4
  %355 = load i32, i32* %82, align 4
  %356 = load i32, i32* %79, align 4
  %357 = load i32, i32* %82, align 4
  %358 = load i32, i32* %78, align 4
  %359 = load i32, i32* %79, align 4
  %360 = call i32 @MUL2(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359)
  %361 = load i32, i32* %80, align 4
  %362 = load i32, i32* %82, align 4
  %363 = load i32, i32* %81, align 4
  %364 = load i32, i32* %82, align 4
  %365 = load i32, i32* %80, align 4
  %366 = load i32, i32* %81, align 4
  %367 = call i32 @MUL2(i32 %361, i32 %362, i32 %363, i32 %364, i32 %365, i32 %366)
  %368 = load i32, i32* %74, align 4
  %369 = load i32, i32* %75, align 4
  %370 = load i32, i32* %76, align 4
  %371 = load i32, i32* %77, align 4
  %372 = load i32, i32* %83, align 4
  %373 = call i32 @SRAR_W4_SW(i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  %374 = load i32, i32* %78, align 4
  %375 = load i32, i32* %79, align 4
  %376 = load i32, i32* %80, align 4
  %377 = load i32, i32* %81, align 4
  %378 = load i32, i32* %83, align 4
  %379 = call i32 @SRAR_W4_SW(i32 %374, i32 %375, i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* %75, align 4
  %381 = load i32, i32* %74, align 4
  %382 = load i32, i32* %77, align 4
  %383 = load i32, i32* %76, align 4
  %384 = load i32, i32* %79, align 4
  %385 = load i32, i32* %78, align 4
  %386 = load i32, i32* %81, align 4
  %387 = load i32, i32* %80, align 4
  %388 = load i64, i64* %42, align 8
  %389 = load i64, i64* %43, align 8
  %390 = load i64, i64* %44, align 8
  %391 = load i64, i64* %45, align 8
  %392 = call i32 @PCKEV_H4_SH(i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i64 %388, i64 %389, i64 %390, i64 %391)
  %393 = load i64, i64* %42, align 8
  %394 = load i64, i64* %71, align 8
  %395 = load i64, i64* %43, align 8
  %396 = load i64, i64* %71, align 8
  %397 = load i64, i64* %42, align 8
  %398 = load i64, i64* %43, align 8
  %399 = call i32 @ADD2(i64 %393, i64 %394, i64 %395, i64 %396, i64 %397, i64 %398)
  %400 = load i64, i64* %44, align 8
  %401 = load i64, i64* %71, align 8
  %402 = load i64, i64* %45, align 8
  %403 = load i64, i64* %71, align 8
  %404 = load i64, i64* %44, align 8
  %405 = load i64, i64* %45, align 8
  %406 = call i32 @ADD2(i64 %400, i64 %401, i64 %402, i64 %403, i64 %404, i64 %405)
  %407 = load i64, i64* %42, align 8
  %408 = load i64, i64* %43, align 8
  %409 = load i64, i64* %44, align 8
  %410 = load i64, i64* %45, align 8
  %411 = call i32 @CLIP_SH4_0_255(i64 %407, i64 %408, i64 %409, i64 %410)
  %412 = load i64, i64* %43, align 8
  %413 = load i64, i64* %42, align 8
  %414 = load i64, i64* %45, align 8
  %415 = load i64, i64* %44, align 8
  %416 = load i32, i32* %22, align 4
  %417 = load i32, i32* %23, align 4
  %418 = call i32 @PCKEV_B2_UB(i64 %412, i64 %413, i64 %414, i64 %415, i32 %416, i32 %417)
  %419 = load i32, i32* %22, align 4
  %420 = load i32, i32* %23, align 4
  %421 = load i32*, i32** %13, align 8
  %422 = load i32, i32* %14, align 4
  %423 = call i32 @ST_W8(i32 %419, i32 %420, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %421, i32 %422)
  %424 = load i32, i32* %14, align 4
  %425 = mul nsw i32 8, %424
  %426 = load i32*, i32** %13, align 8
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i32, i32* %426, i64 %427
  store i32* %428, i32** %13, align 8
  %429 = load i64, i64* %69, align 8
  store i64 %429, i64* %61, align 8
  %430 = load i64, i64* %70, align 8
  store i64 %430, i64* %65, align 8
  %431 = load i64, i64* %60, align 8
  %432 = trunc i64 %431 to i32
  %433 = call i64 @__msa_splati_d(i32 %432, i32 1)
  store i64 %433, i64* %56, align 8
  br label %180

434:                                              ; preds = %180
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

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

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_h(i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH4_0_255(i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_B2_UB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
