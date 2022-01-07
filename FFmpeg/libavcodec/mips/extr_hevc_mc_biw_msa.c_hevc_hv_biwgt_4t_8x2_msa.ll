; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
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
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
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
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %79 = load i32, i32* @ff_hevc_mask_arr, align 4
  %80 = call i64 @LD_SB(i32 %79)
  store i64 %80, i64* %39, align 8
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32*, i32** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %14, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = call i64 @LD_SH(i32* %87)
  store i64 %88, i64* %41, align 8
  %89 = load i64, i64* %41, align 8
  %90 = load i64, i64* %35, align 8
  %91 = load i64, i64* %36, align 8
  %92 = call i32 @SPLATI_H2_SH(i64 %89, i32 0, i32 1, i64 %90, i64 %91)
  %93 = load i32*, i32** %21, align 8
  %94 = call i64 @LD_SH(i32* %93)
  store i64 %94, i64* %41, align 8
  %95 = load i64, i64* %41, align 8
  %96 = load i64, i64* %41, align 8
  %97 = call i32 @UNPCK_R_SB_SH(i64 %95, i64 %96)
  %98 = load i64, i64* %41, align 8
  %99 = load i64, i64* %37, align 8
  %100 = load i64, i64* %38, align 8
  %101 = call i32 @SPLATI_W2_SH(i64 %98, i32 0, i64 %99, i64 %100)
  %102 = load i64, i64* %39, align 8
  %103 = add nsw i64 %102, 2
  store i64 %103, i64* %40, align 8
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %25, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %26, align 4
  %108 = shl i32 %106, %107
  store i32 %108, i32* %28, align 4
  %109 = load i32, i32* %22, align 4
  %110 = and i32 %109, 65535
  store i32 %110, i32* %22, align 4
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %23, align 4
  %113 = shl i32 %112, 16
  %114 = or i32 %111, %113
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %23, align 4
  %116 = mul nsw i32 128, %115
  %117 = call i32 @__msa_fill_w(i32 %116)
  store i32 %117, i32* %78, align 4
  %118 = load i32, i32* %78, align 4
  %119 = shl i32 %118, 6
  store i32 %119, i32* %78, align 4
  %120 = load i32, i32* %28, align 4
  %121 = call i32 @__msa_fill_w(i32 %120)
  store i32 %121, i32* %76, align 4
  %122 = load i32, i32* %27, align 4
  %123 = call i32 @__msa_fill_w(i32 %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %42, align 8
  %125 = load i32, i32* %26, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 @__msa_fill_w(i32 %126)
  store i32 %127, i32* %77, align 4
  %128 = load i32, i32* %78, align 4
  %129 = load i32, i32* %76, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %76, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i64, i64* %30, align 8
  %134 = load i64, i64* %31, align 8
  %135 = load i64, i64* %32, align 8
  %136 = load i64, i64* %33, align 8
  %137 = load i64, i64* %34, align 8
  %138 = call i32 @LD_SB5(i32* %131, i32 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %30, align 8
  %140 = load i64, i64* %31, align 8
  %141 = load i64, i64* %32, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i64, i64* %34, align 8
  %144 = call i32 @XORI_B5_128_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i32*, i32** %16, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i64, i64* %58, align 8
  %148 = load i64, i64* %59, align 8
  %149 = call i32 @LD_SH2(i32* %145, i32 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %30, align 8
  %153 = load i64, i64* %30, align 8
  %154 = load i64, i64* %39, align 8
  %155 = load i64, i64* %40, align 8
  %156 = load i64, i64* %43, align 8
  %157 = load i64, i64* %44, align 8
  %158 = call i32 @VSHF_B2_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %31, align 8
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %31, align 8
  %163 = load i64, i64* %39, align 8
  %164 = load i64, i64* %40, align 8
  %165 = load i64, i64* %45, align 8
  %166 = load i64, i64* %46, align 8
  %167 = call i32 @VSHF_B2_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166)
  %168 = load i64, i64* %32, align 8
  %169 = load i64, i64* %32, align 8
  %170 = load i64, i64* %32, align 8
  %171 = load i64, i64* %32, align 8
  %172 = load i64, i64* %39, align 8
  %173 = load i64, i64* %40, align 8
  %174 = load i64, i64* %47, align 8
  %175 = load i64, i64* %48, align 8
  %176 = call i32 @VSHF_B2_SB(i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %33, align 8
  %178 = load i64, i64* %33, align 8
  %179 = load i64, i64* %33, align 8
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %39, align 8
  %182 = load i64, i64* %40, align 8
  %183 = load i64, i64* %49, align 8
  %184 = load i64, i64* %50, align 8
  %185 = call i32 @VSHF_B2_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %34, align 8
  %187 = load i64, i64* %34, align 8
  %188 = load i64, i64* %34, align 8
  %189 = load i64, i64* %34, align 8
  %190 = load i64, i64* %39, align 8
  %191 = load i64, i64* %40, align 8
  %192 = load i64, i64* %51, align 8
  %193 = load i64, i64* %52, align 8
  %194 = call i32 @VSHF_B2_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %43, align 8
  %196 = load i64, i64* %44, align 8
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %36, align 8
  %199 = call i64 @HEVC_FILT_4TAP_SH(i64 %195, i64 %196, i64 %197, i64 %198)
  store i64 %199, i64* %53, align 8
  %200 = load i64, i64* %45, align 8
  %201 = load i64, i64* %46, align 8
  %202 = load i64, i64* %35, align 8
  %203 = load i64, i64* %36, align 8
  %204 = call i64 @HEVC_FILT_4TAP_SH(i64 %200, i64 %201, i64 %202, i64 %203)
  store i64 %204, i64* %54, align 8
  %205 = load i64, i64* %47, align 8
  %206 = load i64, i64* %48, align 8
  %207 = load i64, i64* %35, align 8
  %208 = load i64, i64* %36, align 8
  %209 = call i64 @HEVC_FILT_4TAP_SH(i64 %205, i64 %206, i64 %207, i64 %208)
  store i64 %209, i64* %55, align 8
  %210 = load i64, i64* %49, align 8
  %211 = load i64, i64* %50, align 8
  %212 = load i64, i64* %35, align 8
  %213 = load i64, i64* %36, align 8
  %214 = call i64 @HEVC_FILT_4TAP_SH(i64 %210, i64 %211, i64 %212, i64 %213)
  store i64 %214, i64* %56, align 8
  %215 = load i64, i64* %51, align 8
  %216 = load i64, i64* %52, align 8
  %217 = load i64, i64* %35, align 8
  %218 = load i64, i64* %36, align 8
  %219 = call i64 @HEVC_FILT_4TAP_SH(i64 %215, i64 %216, i64 %217, i64 %218)
  store i64 %219, i64* %57, align 8
  %220 = load i64, i64* %54, align 8
  %221 = load i64, i64* %53, align 8
  %222 = load i64, i64* %64, align 8
  %223 = load i64, i64* %68, align 8
  %224 = call i32 @ILVRL_H2_SH(i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %55, align 8
  %226 = load i64, i64* %54, align 8
  %227 = load i64, i64* %66, align 8
  %228 = load i64, i64* %70, align 8
  %229 = call i32 @ILVRL_H2_SH(i64 %225, i64 %226, i64 %227, i64 %228)
  %230 = load i64, i64* %56, align 8
  %231 = load i64, i64* %55, align 8
  %232 = load i64, i64* %65, align 8
  %233 = load i64, i64* %69, align 8
  %234 = call i32 @ILVRL_H2_SH(i64 %230, i64 %231, i64 %232, i64 %233)
  %235 = load i64, i64* %57, align 8
  %236 = load i64, i64* %56, align 8
  %237 = load i64, i64* %67, align 8
  %238 = load i64, i64* %71, align 8
  %239 = call i32 @ILVRL_H2_SH(i64 %235, i64 %236, i64 %237, i64 %238)
  %240 = load i64, i64* %64, align 8
  %241 = load i64, i64* %65, align 8
  %242 = load i64, i64* %37, align 8
  %243 = load i64, i64* %38, align 8
  %244 = call i32 @HEVC_FILT_4TAP(i64 %240, i64 %241, i64 %242, i64 %243)
  store i32 %244, i32* %60, align 4
  %245 = load i64, i64* %68, align 8
  %246 = load i64, i64* %69, align 8
  %247 = load i64, i64* %37, align 8
  %248 = load i64, i64* %38, align 8
  %249 = call i32 @HEVC_FILT_4TAP(i64 %245, i64 %246, i64 %247, i64 %248)
  store i32 %249, i32* %61, align 4
  %250 = load i64, i64* %66, align 8
  %251 = load i64, i64* %67, align 8
  %252 = load i64, i64* %37, align 8
  %253 = load i64, i64* %38, align 8
  %254 = call i32 @HEVC_FILT_4TAP(i64 %250, i64 %251, i64 %252, i64 %253)
  store i32 %254, i32* %62, align 4
  %255 = load i64, i64* %70, align 8
  %256 = load i64, i64* %71, align 8
  %257 = load i64, i64* %37, align 8
  %258 = load i64, i64* %38, align 8
  %259 = call i32 @HEVC_FILT_4TAP(i64 %255, i64 %256, i64 %257, i64 %258)
  store i32 %259, i32* %63, align 4
  %260 = load i32, i32* %60, align 4
  %261 = load i32, i32* %61, align 4
  %262 = load i32, i32* %62, align 4
  %263 = load i32, i32* %63, align 4
  %264 = call i32 @SRA_4V(i32 %260, i32 %261, i32 %262, i32 %263, i32 6)
  %265 = load i32, i32* %61, align 4
  %266 = load i32, i32* %60, align 4
  %267 = load i32, i32* %63, align 4
  %268 = load i32, i32* %62, align 4
  %269 = load i64, i64* %73, align 8
  %270 = load i64, i64* %75, align 8
  %271 = call i32 @PCKEV_H2_SH(i32 %265, i32 %266, i32 %267, i32 %268, i64 %269, i64 %270)
  %272 = load i64, i64* %73, align 8
  %273 = load i64, i64* %58, align 8
  %274 = load i64, i64* %72, align 8
  %275 = load i64, i64* %73, align 8
  %276 = call i32 @ILVRL_H2_SH(i64 %272, i64 %273, i64 %274, i64 %275)
  %277 = load i64, i64* %75, align 8
  %278 = load i64, i64* %59, align 8
  %279 = load i64, i64* %74, align 8
  %280 = load i64, i64* %75, align 8
  %281 = call i32 @ILVRL_H2_SH(i64 %277, i64 %278, i64 %279, i64 %280)
  %282 = load i32, i32* %76, align 4
  %283 = load i64, i64* %72, align 8
  %284 = load i64, i64* %42, align 8
  %285 = call i32 @__msa_dpadd_s_w(i32 %282, i64 %283, i64 %284)
  store i32 %285, i32* %60, align 4
  %286 = load i32, i32* %76, align 4
  %287 = load i64, i64* %73, align 8
  %288 = load i64, i64* %42, align 8
  %289 = call i32 @__msa_dpadd_s_w(i32 %286, i64 %287, i64 %288)
  store i32 %289, i32* %61, align 4
  %290 = load i32, i32* %76, align 4
  %291 = load i64, i64* %74, align 8
  %292 = load i64, i64* %42, align 8
  %293 = call i32 @__msa_dpadd_s_w(i32 %290, i64 %291, i64 %292)
  store i32 %293, i32* %62, align 4
  %294 = load i32, i32* %76, align 4
  %295 = load i64, i64* %75, align 8
  %296 = load i64, i64* %42, align 8
  %297 = call i32 @__msa_dpadd_s_w(i32 %294, i64 %295, i64 %296)
  store i32 %297, i32* %63, align 4
  %298 = load i32, i32* %60, align 4
  %299 = load i32, i32* %61, align 4
  %300 = load i32, i32* %62, align 4
  %301 = load i32, i32* %63, align 4
  %302 = load i32, i32* %77, align 4
  %303 = call i32 @SRAR_W4_SW(i32 %298, i32 %299, i32 %300, i32 %301, i32 %302)
  %304 = load i32, i32* %61, align 4
  %305 = load i32, i32* %60, align 4
  %306 = load i32, i32* %63, align 4
  %307 = load i32, i32* %62, align 4
  %308 = load i64, i64* %72, align 8
  %309 = load i64, i64* %73, align 8
  %310 = call i32 @PCKEV_H2_SH(i32 %304, i32 %305, i32 %306, i32 %307, i64 %308, i64 %309)
  %311 = load i64, i64* %72, align 8
  %312 = load i64, i64* %73, align 8
  %313 = call i32 @CLIP_SH2_0_255(i64 %311, i64 %312)
  %314 = load i64, i64* %73, align 8
  %315 = load i64, i64* %72, align 8
  %316 = call i64 @__msa_pckev_b(i64 %314, i64 %315)
  store i64 %316, i64* %29, align 8
  %317 = load i64, i64* %29, align 8
  %318 = load i32*, i32** %18, align 8
  %319 = load i32, i32* %19, align 4
  %320 = call i32 @ST_D2(i64 %317, i32 0, i32 1, i32* %318, i32 %319)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_dpadd_s_w(i32, i64, i64) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
