; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_8multx4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_8multx4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32)* @hevc_hv_uniwgt_4t_8multx4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_8multx4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
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
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
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
  %87 = load i32, i32* @ff_hevc_mask_arr, align 4
  %88 = call i64 @LD_SB(i32 %87)
  store i64 %88, i64* %41, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32*, i32** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32* %94, i32** %12, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @LD_SH(i32* %95)
  store i32 %96, i32* %40, align 4
  %97 = load i32, i32* %40, align 4
  %98 = load i32, i32* %36, align 4
  %99 = load i32, i32* %37, align 4
  %100 = call i32 @SPLATI_H2_SH(i32 %97, i32 0, i32 1, i32 %98, i32 %99)
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @LD_SH(i32* %101)
  store i32 %102, i32* %40, align 4
  %103 = load i32, i32* %40, align 4
  %104 = load i32, i32* %40, align 4
  %105 = call i32 @UNPCK_R_SB_SH(i32 %103, i32 %104)
  %106 = load i32, i32* %40, align 4
  %107 = load i32, i32* %38, align 4
  %108 = load i32, i32* %39, align 4
  %109 = call i32 @SPLATI_W2_SH(i32 %106, i32 0, i32 %107, i32 %108)
  %110 = load i64, i64* %41, align 8
  %111 = add nsw i64 %110, 2
  store i64 %111, i64* %42, align 8
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @__msa_fill_w(i32 %112)
  store i32 %113, i32* %85, align 4
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @__msa_fill_w(i32 %114)
  store i32 %115, i32* %86, align 4
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @__msa_fill_h(i32 %116)
  store i32 %117, i32* %78, align 4
  %118 = load i32, i32* %21, align 4
  %119 = sub nsw i32 %118, 6
  %120 = call i32 @__msa_fill_h(i32 %119)
  store i32 %120, i32* %80, align 4
  %121 = load i32, i32* %19, align 4
  %122 = mul nsw i32 128, %121
  %123 = call i32 @__msa_fill_h(i32 %122)
  store i32 %123, i32* %79, align 4
  %124 = load i32, i32* %79, align 4
  %125 = load i32, i32* %80, align 4
  %126 = call i64 @__msa_srar_h(i32 %124, i32 %125)
  %127 = load i32, i32* %78, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %78, align 4
  %131 = load i32, i32* %22, align 4
  store i32 %131, i32* %24, align 4
  br label %132

132:                                              ; preds = %450, %11
  %133 = load i32, i32* %24, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %24, align 4
  %135 = icmp ne i32 %133, 0
  br i1 %135, label %136, label %455

136:                                              ; preds = %132
  %137 = load i32*, i32** %12, align 8
  store i32* %137, i32** %25, align 8
  %138 = load i32*, i32** %14, align 8
  store i32* %138, i32** %26, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i64, i64* %29, align 8
  %142 = load i64, i64* %30, align 8
  %143 = load i64, i64* %31, align 8
  %144 = call i32 @LD_SB3(i32* %139, i32 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i32, i32* %13, align 4
  %146 = mul nsw i32 3, %145
  %147 = load i32*, i32** %25, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %25, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %30, align 8
  %152 = load i64, i64* %31, align 8
  %153 = call i32 @XORI_B3_128_SB(i64 %150, i64 %151, i64 %152)
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %29, align 8
  %157 = load i64, i64* %29, align 8
  %158 = load i64, i64* %41, align 8
  %159 = load i64, i64* %42, align 8
  %160 = load i64, i64* %43, align 8
  %161 = load i64, i64* %44, align 8
  %162 = call i32 @VSHF_B2_SB(i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %163 = load i64, i64* %30, align 8
  %164 = load i64, i64* %30, align 8
  %165 = load i64, i64* %30, align 8
  %166 = load i64, i64* %30, align 8
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* %42, align 8
  %169 = load i64, i64* %45, align 8
  %170 = load i64, i64* %46, align 8
  %171 = call i32 @VSHF_B2_SB(i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %31, align 8
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* %31, align 8
  %175 = load i64, i64* %31, align 8
  %176 = load i64, i64* %41, align 8
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %47, align 8
  %179 = load i64, i64* %48, align 8
  %180 = call i32 @VSHF_B2_SB(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %43, align 8
  %182 = load i64, i64* %44, align 8
  %183 = load i32, i32* %36, align 4
  %184 = load i32, i32* %37, align 4
  %185 = call i32 @HEVC_FILT_4TAP_SH(i64 %181, i64 %182, i32 %183, i32 %184)
  store i32 %185, i32* %51, align 4
  %186 = load i64, i64* %45, align 8
  %187 = load i64, i64* %46, align 8
  %188 = load i32, i32* %36, align 4
  %189 = load i32, i32* %37, align 4
  %190 = call i32 @HEVC_FILT_4TAP_SH(i64 %186, i64 %187, i32 %188, i32 %189)
  store i32 %190, i32* %52, align 4
  %191 = load i64, i64* %47, align 8
  %192 = load i64, i64* %48, align 8
  %193 = load i32, i32* %36, align 4
  %194 = load i32, i32* %37, align 4
  %195 = call i32 @HEVC_FILT_4TAP_SH(i64 %191, i64 %192, i32 %193, i32 %194)
  store i32 %195, i32* %53, align 4
  %196 = load i32, i32* %52, align 4
  %197 = load i32, i32* %51, align 4
  %198 = load i32, i32* %62, align 4
  %199 = load i32, i32* %68, align 4
  %200 = call i32 @ILVRL_H2_SH(i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %53, align 4
  %202 = load i32, i32* %52, align 4
  %203 = load i32, i32* %65, align 4
  %204 = load i32, i32* %71, align 4
  %205 = call i32 @ILVRL_H2_SH(i32 %201, i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %18, align 4
  %207 = ashr i32 %206, 2
  store i32 %207, i32* %23, align 4
  br label %208

208:                                              ; preds = %212, %136
  %209 = load i32, i32* %23, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %23, align 4
  %211 = icmp ne i32 %209, 0
  br i1 %211, label %212, label %450

212:                                              ; preds = %208
  %213 = load i32*, i32** %25, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load i64, i64* %32, align 8
  %216 = load i64, i64* %33, align 8
  %217 = load i64, i64* %34, align 8
  %218 = load i64, i64* %35, align 8
  %219 = call i32 @LD_SB4(i32* %213, i32 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i32, i32* %13, align 4
  %221 = mul nsw i32 4, %220
  %222 = load i32*, i32** %25, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %25, align 8
  %225 = load i64, i64* %32, align 8
  %226 = load i64, i64* %33, align 8
  %227 = load i64, i64* %34, align 8
  %228 = load i64, i64* %35, align 8
  %229 = call i32 @XORI_B4_128_SB(i64 %225, i64 %226, i64 %227, i64 %228)
  %230 = load i64, i64* %32, align 8
  %231 = load i64, i64* %32, align 8
  %232 = load i64, i64* %32, align 8
  %233 = load i64, i64* %32, align 8
  %234 = load i64, i64* %41, align 8
  %235 = load i64, i64* %42, align 8
  %236 = load i64, i64* %43, align 8
  %237 = load i64, i64* %44, align 8
  %238 = call i32 @VSHF_B2_SB(i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237)
  %239 = load i64, i64* %33, align 8
  %240 = load i64, i64* %33, align 8
  %241 = load i64, i64* %33, align 8
  %242 = load i64, i64* %33, align 8
  %243 = load i64, i64* %41, align 8
  %244 = load i64, i64* %42, align 8
  %245 = load i64, i64* %45, align 8
  %246 = load i64, i64* %46, align 8
  %247 = call i32 @VSHF_B2_SB(i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246)
  %248 = load i64, i64* %34, align 8
  %249 = load i64, i64* %34, align 8
  %250 = load i64, i64* %34, align 8
  %251 = load i64, i64* %34, align 8
  %252 = load i64, i64* %41, align 8
  %253 = load i64, i64* %42, align 8
  %254 = load i64, i64* %47, align 8
  %255 = load i64, i64* %48, align 8
  %256 = call i32 @VSHF_B2_SB(i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255)
  %257 = load i64, i64* %35, align 8
  %258 = load i64, i64* %35, align 8
  %259 = load i64, i64* %35, align 8
  %260 = load i64, i64* %35, align 8
  %261 = load i64, i64* %41, align 8
  %262 = load i64, i64* %42, align 8
  %263 = load i64, i64* %49, align 8
  %264 = load i64, i64* %50, align 8
  %265 = call i32 @VSHF_B2_SB(i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264)
  %266 = load i64, i64* %43, align 8
  %267 = load i64, i64* %44, align 8
  %268 = load i32, i32* %36, align 4
  %269 = load i32, i32* %37, align 4
  %270 = call i32 @HEVC_FILT_4TAP_SH(i64 %266, i64 %267, i32 %268, i32 %269)
  store i32 %270, i32* %54, align 4
  %271 = load i64, i64* %45, align 8
  %272 = load i64, i64* %46, align 8
  %273 = load i32, i32* %36, align 4
  %274 = load i32, i32* %37, align 4
  %275 = call i32 @HEVC_FILT_4TAP_SH(i64 %271, i64 %272, i32 %273, i32 %274)
  store i32 %275, i32* %55, align 4
  %276 = load i64, i64* %47, align 8
  %277 = load i64, i64* %48, align 8
  %278 = load i32, i32* %36, align 4
  %279 = load i32, i32* %37, align 4
  %280 = call i32 @HEVC_FILT_4TAP_SH(i64 %276, i64 %277, i32 %278, i32 %279)
  store i32 %280, i32* %56, align 4
  %281 = load i64, i64* %49, align 8
  %282 = load i64, i64* %50, align 8
  %283 = load i32, i32* %36, align 4
  %284 = load i32, i32* %37, align 4
  %285 = call i32 @HEVC_FILT_4TAP_SH(i64 %281, i64 %282, i32 %283, i32 %284)
  store i32 %285, i32* %57, align 4
  %286 = load i32, i32* %54, align 4
  %287 = load i32, i32* %53, align 4
  %288 = load i32, i32* %63, align 4
  %289 = load i32, i32* %69, align 4
  %290 = call i32 @ILVRL_H2_SH(i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %55, align 4
  %292 = load i32, i32* %54, align 4
  %293 = load i32, i32* %66, align 4
  %294 = load i32, i32* %72, align 4
  %295 = call i32 @ILVRL_H2_SH(i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %56, align 4
  %297 = load i32, i32* %55, align 4
  %298 = load i32, i32* %64, align 4
  %299 = load i32, i32* %70, align 4
  %300 = call i32 @ILVRL_H2_SH(i32 %296, i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* %57, align 4
  %302 = load i32, i32* %56, align 4
  %303 = load i32, i32* %67, align 4
  %304 = load i32, i32* %73, align 4
  %305 = call i32 @ILVRL_H2_SH(i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %62, align 4
  %307 = load i32, i32* %63, align 4
  %308 = load i32, i32* %38, align 4
  %309 = load i32, i32* %39, align 4
  %310 = call i32 @HEVC_FILT_4TAP(i32 %306, i32 %307, i32 %308, i32 %309)
  store i32 %310, i32* %74, align 4
  %311 = load i32, i32* %68, align 4
  %312 = load i32, i32* %69, align 4
  %313 = load i32, i32* %38, align 4
  %314 = load i32, i32* %39, align 4
  %315 = call i32 @HEVC_FILT_4TAP(i32 %311, i32 %312, i32 %313, i32 %314)
  store i32 %315, i32* %75, align 4
  %316 = load i32, i32* %65, align 4
  %317 = load i32, i32* %66, align 4
  %318 = load i32, i32* %38, align 4
  %319 = load i32, i32* %39, align 4
  %320 = call i32 @HEVC_FILT_4TAP(i32 %316, i32 %317, i32 %318, i32 %319)
  store i32 %320, i32* %76, align 4
  %321 = load i32, i32* %71, align 4
  %322 = load i32, i32* %72, align 4
  %323 = load i32, i32* %38, align 4
  %324 = load i32, i32* %39, align 4
  %325 = call i32 @HEVC_FILT_4TAP(i32 %321, i32 %322, i32 %323, i32 %324)
  store i32 %325, i32* %77, align 4
  %326 = load i32, i32* %63, align 4
  %327 = load i32, i32* %64, align 4
  %328 = load i32, i32* %38, align 4
  %329 = load i32, i32* %39, align 4
  %330 = call i32 @HEVC_FILT_4TAP(i32 %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %81, align 4
  %331 = load i32, i32* %69, align 4
  %332 = load i32, i32* %70, align 4
  %333 = load i32, i32* %38, align 4
  %334 = load i32, i32* %39, align 4
  %335 = call i32 @HEVC_FILT_4TAP(i32 %331, i32 %332, i32 %333, i32 %334)
  store i32 %335, i32* %82, align 4
  %336 = load i32, i32* %66, align 4
  %337 = load i32, i32* %67, align 4
  %338 = load i32, i32* %38, align 4
  %339 = load i32, i32* %39, align 4
  %340 = call i32 @HEVC_FILT_4TAP(i32 %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %83, align 4
  %341 = load i32, i32* %72, align 4
  %342 = load i32, i32* %73, align 4
  %343 = load i32, i32* %38, align 4
  %344 = load i32, i32* %39, align 4
  %345 = call i32 @HEVC_FILT_4TAP(i32 %341, i32 %342, i32 %343, i32 %344)
  store i32 %345, i32* %84, align 4
  %346 = load i32, i32* %74, align 4
  %347 = load i32, i32* %75, align 4
  %348 = load i32, i32* %76, align 4
  %349 = load i32, i32* %77, align 4
  %350 = call i32 @SRA_4V(i32 %346, i32 %347, i32 %348, i32 %349, i32 6)
  %351 = load i32, i32* %81, align 4
  %352 = load i32, i32* %82, align 4
  %353 = load i32, i32* %83, align 4
  %354 = load i32, i32* %84, align 4
  %355 = call i32 @SRA_4V(i32 %351, i32 %352, i32 %353, i32 %354, i32 6)
  %356 = load i32, i32* %74, align 4
  %357 = load i32, i32* %85, align 4
  %358 = load i32, i32* %76, align 4
  %359 = load i32, i32* %85, align 4
  %360 = load i32, i32* %74, align 4
  %361 = load i32, i32* %76, align 4
  %362 = call i32 @MUL2(i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %81, align 4
  %364 = load i32, i32* %85, align 4
  %365 = load i32, i32* %83, align 4
  %366 = load i32, i32* %85, align 4
  %367 = load i32, i32* %81, align 4
  %368 = load i32, i32* %83, align 4
  %369 = call i32 @MUL2(i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368)
  %370 = load i32, i32* %75, align 4
  %371 = load i32, i32* %85, align 4
  %372 = load i32, i32* %77, align 4
  %373 = load i32, i32* %85, align 4
  %374 = load i32, i32* %75, align 4
  %375 = load i32, i32* %77, align 4
  %376 = call i32 @MUL2(i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375)
  %377 = load i32, i32* %82, align 4
  %378 = load i32, i32* %85, align 4
  %379 = load i32, i32* %84, align 4
  %380 = load i32, i32* %85, align 4
  %381 = load i32, i32* %82, align 4
  %382 = load i32, i32* %84, align 4
  %383 = call i32 @MUL2(i32 %377, i32 %378, i32 %379, i32 %380, i32 %381, i32 %382)
  %384 = load i32, i32* %74, align 4
  %385 = load i32, i32* %75, align 4
  %386 = load i32, i32* %76, align 4
  %387 = load i32, i32* %77, align 4
  %388 = load i32, i32* %86, align 4
  %389 = call i32 @SRAR_W4_SW(i32 %384, i32 %385, i32 %386, i32 %387, i32 %388)
  %390 = load i32, i32* %81, align 4
  %391 = load i32, i32* %82, align 4
  %392 = load i32, i32* %83, align 4
  %393 = load i32, i32* %84, align 4
  %394 = load i32, i32* %86, align 4
  %395 = call i32 @SRAR_W4_SW(i32 %390, i32 %391, i32 %392, i32 %393, i32 %394)
  %396 = load i32, i32* %75, align 4
  %397 = load i32, i32* %74, align 4
  %398 = load i32, i32* %77, align 4
  %399 = load i32, i32* %76, align 4
  %400 = load i32, i32* %82, align 4
  %401 = load i32, i32* %81, align 4
  %402 = load i32, i32* %84, align 4
  %403 = load i32, i32* %83, align 4
  %404 = load i32, i32* %58, align 4
  %405 = load i32, i32* %59, align 4
  %406 = load i32, i32* %60, align 4
  %407 = load i32, i32* %61, align 4
  %408 = call i32 @PCKEV_H4_SH(i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %58, align 4
  %410 = load i32, i32* %78, align 4
  %411 = load i32, i32* %59, align 4
  %412 = load i32, i32* %78, align 4
  %413 = load i32, i32* %58, align 4
  %414 = load i32, i32* %59, align 4
  %415 = call i32 @ADD2(i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = load i32, i32* %60, align 4
  %417 = load i32, i32* %78, align 4
  %418 = load i32, i32* %61, align 4
  %419 = load i32, i32* %78, align 4
  %420 = load i32, i32* %60, align 4
  %421 = load i32, i32* %61, align 4
  %422 = call i32 @ADD2(i32 %416, i32 %417, i32 %418, i32 %419, i32 %420, i32 %421)
  %423 = load i32, i32* %58, align 4
  %424 = load i32, i32* %59, align 4
  %425 = load i32, i32* %60, align 4
  %426 = load i32, i32* %61, align 4
  %427 = call i32 @CLIP_SH4_0_255(i32 %423, i32 %424, i32 %425, i32 %426)
  %428 = load i32, i32* %59, align 4
  %429 = load i32, i32* %58, align 4
  %430 = load i32, i32* %61, align 4
  %431 = load i32, i32* %60, align 4
  %432 = load i32, i32* %27, align 4
  %433 = load i32, i32* %28, align 4
  %434 = call i32 @PCKEV_B2_UB(i32 %428, i32 %429, i32 %430, i32 %431, i32 %432, i32 %433)
  %435 = load i32, i32* %27, align 4
  %436 = load i32, i32* %28, align 4
  %437 = load i32*, i32** %26, align 8
  %438 = load i32, i32* %15, align 4
  %439 = call i32 @ST_D4(i32 %435, i32 %436, i32 0, i32 1, i32 0, i32 1, i32* %437, i32 %438)
  %440 = load i32, i32* %15, align 4
  %441 = mul nsw i32 4, %440
  %442 = load i32*, i32** %26, align 8
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  store i32* %444, i32** %26, align 8
  %445 = load i32, i32* %64, align 4
  store i32 %445, i32* %62, align 4
  %446 = load i32, i32* %70, align 4
  store i32 %446, i32* %68, align 4
  %447 = load i32, i32* %67, align 4
  store i32 %447, i32* %65, align 4
  %448 = load i32, i32* %73, align 4
  store i32 %448, i32* %71, align 4
  %449 = load i32, i32* %57, align 4
  store i32 %449, i32* %53, align 4
  br label %208

450:                                              ; preds = %208
  %451 = load i32*, i32** %12, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 8
  store i32* %452, i32** %12, align 8
  %453 = load i32*, i32** %14, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 8
  store i32* %454, i32** %14, align 8
  br label %132

455:                                              ; preds = %132
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADD2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
