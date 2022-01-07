; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8multx4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8multx4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_4t_8multx4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_4t_8multx4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
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
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32* %2, i32** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32*, i32** %15, align 8
  %110 = sext i32 %108 to i64
  %111 = sub i64 0, %110
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = call i32 @LD_SH(i32* %113)
  store i32 %114, i32* %55, align 4
  %115 = load i32, i32* %55, align 4
  %116 = load i32, i32* %51, align 4
  %117 = load i32, i32* %52, align 4
  %118 = call i32 @SPLATI_H2_SH(i32 %115, i32 0, i32 1, i32 %116, i32 %117)
  %119 = load i32*, i32** %22, align 8
  %120 = call i32 @LD_SH(i32* %119)
  store i32 %120, i32* %55, align 4
  %121 = load i32, i32* %55, align 4
  %122 = load i32, i32* %55, align 4
  %123 = call i32 @UNPCK_R_SB_SH(i32 %121, i32 %122)
  %124 = load i32, i32* %55, align 4
  %125 = load i32, i32* %53, align 4
  %126 = load i32, i32* %54, align 4
  %127 = call i32 @SPLATI_W2_SH(i32 %124, i32 0, i32 %125, i32 %126)
  %128 = load i32, i32* @ff_hevc_mask_arr, align 4
  %129 = call i64 @LD_SB(i32 %128)
  store i64 %129, i64* %41, align 8
  %130 = load i64, i64* %41, align 8
  %131 = add nsw i64 %130, 2
  store i64 %131, i64* %42, align 8
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %26, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %27, align 4
  %136 = shl i32 %134, %135
  store i32 %136, i32* %30, align 4
  %137 = load i32, i32* %23, align 4
  %138 = and i32 %137, 65535
  store i32 %138, i32* %23, align 4
  %139 = load i32, i32* %23, align 4
  %140 = load i32, i32* %24, align 4
  %141 = shl i32 %140, 16
  %142 = or i32 %139, %141
  store i32 %142, i32* %29, align 4
  %143 = load i32, i32* %24, align 4
  %144 = mul nsw i32 128, %143
  %145 = call i32 @__msa_fill_w(i32 %144)
  store i32 %145, i32* %106, align 4
  %146 = load i32, i32* %106, align 4
  %147 = shl i32 %146, 6
  store i32 %147, i32* %106, align 4
  %148 = load i32, i32* %30, align 4
  %149 = call i32 @__msa_fill_w(i32 %148)
  store i32 %149, i32* %104, align 4
  %150 = load i32, i32* %27, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @__msa_fill_w(i32 %151)
  store i32 %152, i32* %105, align 4
  %153 = load i32, i32* %106, align 4
  %154 = load i32, i32* %104, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %104, align 4
  %156 = load i32, i32* %29, align 4
  %157 = call i32 @__msa_fill_w(i32 %156)
  store i32 %157, i32* %56, align 4
  %158 = load i32, i32* %28, align 4
  store i32 %158, i32* %31, align 4
  br label %159

159:                                              ; preds = %163, %14
  %160 = load i32, i32* %31, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %31, align 4
  %162 = icmp ne i32 %160, 0
  br i1 %162, label %163, label %480

163:                                              ; preds = %159
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i64, i64* %34, align 8
  %167 = load i64, i64* %35, align 8
  %168 = load i64, i64* %36, align 8
  %169 = load i64, i64* %37, align 8
  %170 = load i64, i64* %38, align 8
  %171 = load i64, i64* %39, align 8
  %172 = load i64, i64* %40, align 8
  %173 = call i32 @LD_SB7(i32* %164, i32 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i32*, i32** %15, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 8
  store i32* %175, i32** %15, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* %36, align 8
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %38, align 8
  %181 = load i64, i64* %39, align 8
  %182 = load i64, i64* %40, align 8
  %183 = call i32 @XORI_B7_128_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %18, align 4
  %186 = load i32, i32* %72, align 4
  %187 = load i32, i32* %73, align 4
  %188 = load i32, i32* %74, align 4
  %189 = load i32, i32* %75, align 4
  %190 = call i32 @LD_SH4(i32* %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32*, i32** %17, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 8
  store i32* %192, i32** %17, align 8
  %193 = load i64, i64* %34, align 8
  %194 = load i64, i64* %34, align 8
  %195 = load i64, i64* %34, align 8
  %196 = load i64, i64* %34, align 8
  %197 = load i64, i64* %41, align 8
  %198 = load i64, i64* %42, align 8
  %199 = load i64, i64* %43, align 8
  %200 = load i64, i64* %44, align 8
  %201 = call i32 @VSHF_B2_SB(i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200)
  %202 = load i64, i64* %35, align 8
  %203 = load i64, i64* %35, align 8
  %204 = load i64, i64* %35, align 8
  %205 = load i64, i64* %35, align 8
  %206 = load i64, i64* %41, align 8
  %207 = load i64, i64* %42, align 8
  %208 = load i64, i64* %45, align 8
  %209 = load i64, i64* %46, align 8
  %210 = call i32 @VSHF_B2_SB(i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  %211 = load i64, i64* %36, align 8
  %212 = load i64, i64* %36, align 8
  %213 = load i64, i64* %36, align 8
  %214 = load i64, i64* %36, align 8
  %215 = load i64, i64* %41, align 8
  %216 = load i64, i64* %42, align 8
  %217 = load i64, i64* %47, align 8
  %218 = load i64, i64* %48, align 8
  %219 = call i32 @VSHF_B2_SB(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %44, align 8
  %222 = load i32, i32* %51, align 4
  %223 = load i32, i32* %52, align 4
  %224 = call i32 @HEVC_FILT_4TAP_SH(i64 %220, i64 %221, i32 %222, i32 %223)
  store i32 %224, i32* %57, align 4
  %225 = load i64, i64* %45, align 8
  %226 = load i64, i64* %46, align 8
  %227 = load i32, i32* %51, align 4
  %228 = load i32, i32* %52, align 4
  %229 = call i32 @HEVC_FILT_4TAP_SH(i64 %225, i64 %226, i32 %227, i32 %228)
  store i32 %229, i32* %58, align 4
  %230 = load i64, i64* %47, align 8
  %231 = load i64, i64* %48, align 8
  %232 = load i32, i32* %51, align 4
  %233 = load i32, i32* %52, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i64 %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %59, align 4
  %235 = load i32, i32* %58, align 4
  %236 = load i32, i32* %57, align 4
  %237 = load i32, i32* %76, align 4
  %238 = load i32, i32* %82, align 4
  %239 = call i32 @ILVRL_H2_SH(i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %59, align 4
  %241 = load i32, i32* %58, align 4
  %242 = load i32, i32* %79, align 4
  %243 = load i32, i32* %85, align 4
  %244 = call i32 @ILVRL_H2_SH(i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i64, i64* %37, align 8
  %246 = load i64, i64* %37, align 8
  %247 = load i64, i64* %37, align 8
  %248 = load i64, i64* %37, align 8
  %249 = load i64, i64* %41, align 8
  %250 = load i64, i64* %42, align 8
  %251 = load i64, i64* %43, align 8
  %252 = load i64, i64* %44, align 8
  %253 = call i32 @VSHF_B2_SB(i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i64, i64* %38, align 8
  %255 = load i64, i64* %38, align 8
  %256 = load i64, i64* %38, align 8
  %257 = load i64, i64* %38, align 8
  %258 = load i64, i64* %41, align 8
  %259 = load i64, i64* %42, align 8
  %260 = load i64, i64* %45, align 8
  %261 = load i64, i64* %46, align 8
  %262 = call i32 @VSHF_B2_SB(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261)
  %263 = load i64, i64* %39, align 8
  %264 = load i64, i64* %39, align 8
  %265 = load i64, i64* %39, align 8
  %266 = load i64, i64* %39, align 8
  %267 = load i64, i64* %41, align 8
  %268 = load i64, i64* %42, align 8
  %269 = load i64, i64* %47, align 8
  %270 = load i64, i64* %48, align 8
  %271 = call i32 @VSHF_B2_SB(i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270)
  %272 = load i64, i64* %40, align 8
  %273 = load i64, i64* %40, align 8
  %274 = load i64, i64* %40, align 8
  %275 = load i64, i64* %40, align 8
  %276 = load i64, i64* %41, align 8
  %277 = load i64, i64* %42, align 8
  %278 = load i64, i64* %49, align 8
  %279 = load i64, i64* %50, align 8
  %280 = call i32 @VSHF_B2_SB(i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279)
  %281 = load i64, i64* %43, align 8
  %282 = load i64, i64* %44, align 8
  %283 = load i32, i32* %51, align 4
  %284 = load i32, i32* %52, align 4
  %285 = call i32 @HEVC_FILT_4TAP_SH(i64 %281, i64 %282, i32 %283, i32 %284)
  store i32 %285, i32* %60, align 4
  %286 = load i64, i64* %45, align 8
  %287 = load i64, i64* %46, align 8
  %288 = load i32, i32* %51, align 4
  %289 = load i32, i32* %52, align 4
  %290 = call i32 @HEVC_FILT_4TAP_SH(i64 %286, i64 %287, i32 %288, i32 %289)
  store i32 %290, i32* %61, align 4
  %291 = load i64, i64* %47, align 8
  %292 = load i64, i64* %48, align 8
  %293 = load i32, i32* %51, align 4
  %294 = load i32, i32* %52, align 4
  %295 = call i32 @HEVC_FILT_4TAP_SH(i64 %291, i64 %292, i32 %293, i32 %294)
  store i32 %295, i32* %62, align 4
  %296 = load i64, i64* %49, align 8
  %297 = load i64, i64* %50, align 8
  %298 = load i32, i32* %51, align 4
  %299 = load i32, i32* %52, align 4
  %300 = call i32 @HEVC_FILT_4TAP_SH(i64 %296, i64 %297, i32 %298, i32 %299)
  store i32 %300, i32* %63, align 4
  %301 = load i32, i32* %60, align 4
  %302 = load i32, i32* %59, align 4
  %303 = load i32, i32* %77, align 4
  %304 = load i32, i32* %83, align 4
  %305 = call i32 @ILVRL_H2_SH(i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %61, align 4
  %307 = load i32, i32* %60, align 4
  %308 = load i32, i32* %80, align 4
  %309 = load i32, i32* %86, align 4
  %310 = call i32 @ILVRL_H2_SH(i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %62, align 4
  %312 = load i32, i32* %61, align 4
  %313 = load i32, i32* %78, align 4
  %314 = load i32, i32* %84, align 4
  %315 = call i32 @ILVRL_H2_SH(i32 %311, i32 %312, i32 %313, i32 %314)
  %316 = load i32, i32* %63, align 4
  %317 = load i32, i32* %62, align 4
  %318 = load i32, i32* %81, align 4
  %319 = load i32, i32* %87, align 4
  %320 = call i32 @ILVRL_H2_SH(i32 %316, i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* %76, align 4
  %322 = load i32, i32* %77, align 4
  %323 = load i32, i32* %53, align 4
  %324 = load i32, i32* %54, align 4
  %325 = call i32 @HEVC_FILT_4TAP(i32 %321, i32 %322, i32 %323, i32 %324)
  store i32 %325, i32* %88, align 4
  %326 = load i32, i32* %82, align 4
  %327 = load i32, i32* %83, align 4
  %328 = load i32, i32* %53, align 4
  %329 = load i32, i32* %54, align 4
  %330 = call i32 @HEVC_FILT_4TAP(i32 %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %89, align 4
  %331 = load i32, i32* %79, align 4
  %332 = load i32, i32* %80, align 4
  %333 = load i32, i32* %53, align 4
  %334 = load i32, i32* %54, align 4
  %335 = call i32 @HEVC_FILT_4TAP(i32 %331, i32 %332, i32 %333, i32 %334)
  store i32 %335, i32* %90, align 4
  %336 = load i32, i32* %85, align 4
  %337 = load i32, i32* %86, align 4
  %338 = load i32, i32* %53, align 4
  %339 = load i32, i32* %54, align 4
  %340 = call i32 @HEVC_FILT_4TAP(i32 %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %91, align 4
  %341 = load i32, i32* %77, align 4
  %342 = load i32, i32* %78, align 4
  %343 = load i32, i32* %53, align 4
  %344 = load i32, i32* %54, align 4
  %345 = call i32 @HEVC_FILT_4TAP(i32 %341, i32 %342, i32 %343, i32 %344)
  store i32 %345, i32* %92, align 4
  %346 = load i32, i32* %83, align 4
  %347 = load i32, i32* %84, align 4
  %348 = load i32, i32* %53, align 4
  %349 = load i32, i32* %54, align 4
  %350 = call i32 @HEVC_FILT_4TAP(i32 %346, i32 %347, i32 %348, i32 %349)
  store i32 %350, i32* %93, align 4
  %351 = load i32, i32* %80, align 4
  %352 = load i32, i32* %81, align 4
  %353 = load i32, i32* %53, align 4
  %354 = load i32, i32* %54, align 4
  %355 = call i32 @HEVC_FILT_4TAP(i32 %351, i32 %352, i32 %353, i32 %354)
  store i32 %355, i32* %94, align 4
  %356 = load i32, i32* %86, align 4
  %357 = load i32, i32* %87, align 4
  %358 = load i32, i32* %53, align 4
  %359 = load i32, i32* %54, align 4
  %360 = call i32 @HEVC_FILT_4TAP(i32 %356, i32 %357, i32 %358, i32 %359)
  store i32 %360, i32* %95, align 4
  %361 = load i32, i32* %88, align 4
  %362 = load i32, i32* %89, align 4
  %363 = load i32, i32* %90, align 4
  %364 = load i32, i32* %91, align 4
  %365 = call i32 @SRA_4V(i32 %361, i32 %362, i32 %363, i32 %364, i32 6)
  %366 = load i32, i32* %92, align 4
  %367 = load i32, i32* %93, align 4
  %368 = load i32, i32* %94, align 4
  %369 = load i32, i32* %95, align 4
  %370 = call i32 @SRA_4V(i32 %366, i32 %367, i32 %368, i32 %369, i32 6)
  %371 = load i32, i32* %89, align 4
  %372 = load i32, i32* %88, align 4
  %373 = load i32, i32* %91, align 4
  %374 = load i32, i32* %90, align 4
  %375 = load i32, i32* %93, align 4
  %376 = load i32, i32* %92, align 4
  %377 = load i32, i32* %95, align 4
  %378 = load i32, i32* %94, align 4
  %379 = load i32, i32* %96, align 4
  %380 = load i32, i32* %97, align 4
  %381 = load i32, i32* %98, align 4
  %382 = load i32, i32* %99, align 4
  %383 = call i32 @PCKEV_H4_SW(i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379, i32 %380, i32 %381, i32 %382)
  %384 = load i32, i32* %96, align 4
  %385 = load i32, i32* %72, align 4
  %386 = load i32, i32* %64, align 4
  %387 = load i32, i32* %65, align 4
  %388 = call i32 @ILVRL_H2_SH(i32 %384, i32 %385, i32 %386, i32 %387)
  %389 = load i32, i32* %97, align 4
  %390 = load i32, i32* %73, align 4
  %391 = load i32, i32* %66, align 4
  %392 = load i32, i32* %67, align 4
  %393 = call i32 @ILVRL_H2_SH(i32 %389, i32 %390, i32 %391, i32 %392)
  %394 = load i32, i32* %98, align 4
  %395 = load i32, i32* %74, align 4
  %396 = load i32, i32* %68, align 4
  %397 = load i32, i32* %69, align 4
  %398 = call i32 @ILVRL_H2_SH(i32 %394, i32 %395, i32 %396, i32 %397)
  %399 = load i32, i32* %99, align 4
  %400 = load i32, i32* %75, align 4
  %401 = load i32, i32* %70, align 4
  %402 = load i32, i32* %71, align 4
  %403 = call i32 @ILVRL_H2_SH(i32 %399, i32 %400, i32 %401, i32 %402)
  %404 = load i32, i32* %104, align 4
  %405 = load i32, i32* %64, align 4
  %406 = load i32, i32* %56, align 4
  %407 = call i32 @__msa_dpadd_s_w(i32 %404, i32 %405, i32 %406)
  store i32 %407, i32* %96, align 4
  %408 = load i32, i32* %104, align 4
  %409 = load i32, i32* %65, align 4
  %410 = load i32, i32* %56, align 4
  %411 = call i32 @__msa_dpadd_s_w(i32 %408, i32 %409, i32 %410)
  store i32 %411, i32* %97, align 4
  %412 = load i32, i32* %104, align 4
  %413 = load i32, i32* %66, align 4
  %414 = load i32, i32* %56, align 4
  %415 = call i32 @__msa_dpadd_s_w(i32 %412, i32 %413, i32 %414)
  store i32 %415, i32* %98, align 4
  %416 = load i32, i32* %104, align 4
  %417 = load i32, i32* %67, align 4
  %418 = load i32, i32* %56, align 4
  %419 = call i32 @__msa_dpadd_s_w(i32 %416, i32 %417, i32 %418)
  store i32 %419, i32* %99, align 4
  %420 = load i32, i32* %104, align 4
  %421 = load i32, i32* %68, align 4
  %422 = load i32, i32* %56, align 4
  %423 = call i32 @__msa_dpadd_s_w(i32 %420, i32 %421, i32 %422)
  store i32 %423, i32* %100, align 4
  %424 = load i32, i32* %104, align 4
  %425 = load i32, i32* %69, align 4
  %426 = load i32, i32* %56, align 4
  %427 = call i32 @__msa_dpadd_s_w(i32 %424, i32 %425, i32 %426)
  store i32 %427, i32* %101, align 4
  %428 = load i32, i32* %104, align 4
  %429 = load i32, i32* %70, align 4
  %430 = load i32, i32* %56, align 4
  %431 = call i32 @__msa_dpadd_s_w(i32 %428, i32 %429, i32 %430)
  store i32 %431, i32* %102, align 4
  %432 = load i32, i32* %104, align 4
  %433 = load i32, i32* %71, align 4
  %434 = load i32, i32* %56, align 4
  %435 = call i32 @__msa_dpadd_s_w(i32 %432, i32 %433, i32 %434)
  store i32 %435, i32* %103, align 4
  %436 = load i32, i32* %96, align 4
  %437 = load i32, i32* %97, align 4
  %438 = load i32, i32* %98, align 4
  %439 = load i32, i32* %99, align 4
  %440 = load i32, i32* %105, align 4
  %441 = call i32 @SRAR_W4_SW(i32 %436, i32 %437, i32 %438, i32 %439, i32 %440)
  %442 = load i32, i32* %100, align 4
  %443 = load i32, i32* %101, align 4
  %444 = load i32, i32* %102, align 4
  %445 = load i32, i32* %103, align 4
  %446 = load i32, i32* %105, align 4
  %447 = call i32 @SRAR_W4_SW(i32 %442, i32 %443, i32 %444, i32 %445, i32 %446)
  %448 = load i32, i32* %97, align 4
  %449 = load i32, i32* %96, align 4
  %450 = load i32, i32* %99, align 4
  %451 = load i32, i32* %98, align 4
  %452 = load i32, i32* %101, align 4
  %453 = load i32, i32* %100, align 4
  %454 = load i32, i32* %103, align 4
  %455 = load i32, i32* %102, align 4
  %456 = load i32, i32* %64, align 4
  %457 = load i32, i32* %65, align 4
  %458 = load i32, i32* %66, align 4
  %459 = load i32, i32* %67, align 4
  %460 = call i32 @PCKEV_H4_SH(i32 %448, i32 %449, i32 %450, i32 %451, i32 %452, i32 %453, i32 %454, i32 %455, i32 %456, i32 %457, i32 %458, i32 %459)
  %461 = load i32, i32* %64, align 4
  %462 = load i32, i32* %65, align 4
  %463 = load i32, i32* %66, align 4
  %464 = load i32, i32* %67, align 4
  %465 = call i32 @CLIP_SH4_0_255(i32 %461, i32 %462, i32 %463, i32 %464)
  %466 = load i32, i32* %65, align 4
  %467 = load i32, i32* %64, align 4
  %468 = load i32, i32* %67, align 4
  %469 = load i32, i32* %66, align 4
  %470 = load i32, i32* %32, align 4
  %471 = load i32, i32* %33, align 4
  %472 = call i32 @PCKEV_B2_UB(i32 %466, i32 %467, i32 %468, i32 %469, i32 %470, i32 %471)
  %473 = load i32, i32* %32, align 4
  %474 = load i32, i32* %33, align 4
  %475 = load i32*, i32** %19, align 8
  %476 = load i32, i32* %20, align 4
  %477 = call i32 @ST_D4(i32 %473, i32 %474, i32 0, i32 1, i32 0, i32 1, i32* %475, i32 %476)
  %478 = load i32*, i32** %19, align 8
  %479 = getelementptr inbounds i32, i32* %478, i64 8
  store i32* %479, i32** %19, align 8
  br label %159

480:                                              ; preds = %159
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_w(i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
