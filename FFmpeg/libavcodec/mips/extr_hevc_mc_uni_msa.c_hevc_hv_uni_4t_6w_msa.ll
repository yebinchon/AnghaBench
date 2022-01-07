; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_uni_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uni_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %95 = alloca i64, align 8
  %96 = alloca i64, align 8
  %97 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %98 = load i32, i32* @ff_hevc_mask_arr, align 4
  %99 = call i64 @LD_SB(i32 %98)
  store i64 %99, i64* %39, align 8
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32* %105, i32** %8, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i64 @LD_SH(i32* %106)
  store i64 %107, i64* %43, align 8
  %108 = load i64, i64* %43, align 8
  %109 = load i64, i64* %29, align 8
  %110 = load i64, i64* %30, align 8
  %111 = call i32 @SPLATI_H2_SH(i64 %108, i32 0, i32 1, i64 %109, i64 %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i64 @LD_SH(i32* %112)
  store i64 %113, i64* %43, align 8
  %114 = load i64, i64* %43, align 8
  %115 = load i64, i64* %43, align 8
  %116 = call i32 @UNPCK_R_SB_SH(i64 %114, i64 %115)
  %117 = load i64, i64* %43, align 8
  %118 = load i64, i64* %41, align 8
  %119 = load i64, i64* %42, align 8
  %120 = call i32 @SPLATI_W2_SH(i64 %117, i32 0, i64 %118, i64 %119)
  %121 = load i64, i64* %39, align 8
  %122 = add nsw i64 %121, 2
  store i64 %122, i64* %40, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i64, i64* %18, align 8
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %20, align 8
  %128 = call i32 @LD_SB3(i32* %123, i32 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i32, i32* %9, align 4
  %130 = mul nsw i32 3, %129
  %131 = load i32*, i32** %8, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %8, align 8
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* %19, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call i32 @XORI_B3_128_SB(i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %39, align 8
  %143 = load i64, i64* %40, align 8
  %144 = load i64, i64* %31, align 8
  %145 = load i64, i64* %32, align 8
  %146 = call i32 @VSHF_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %19, align 8
  %151 = load i64, i64* %39, align 8
  %152 = load i64, i64* %40, align 8
  %153 = load i64, i64* %33, align 8
  %154 = load i64, i64* %34, align 8
  %155 = call i32 @VSHF_B2_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i64, i64* %20, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load i64, i64* %20, align 8
  %159 = load i64, i64* %20, align 8
  %160 = load i64, i64* %39, align 8
  %161 = load i64, i64* %40, align 8
  %162 = load i64, i64* %35, align 8
  %163 = load i64, i64* %36, align 8
  %164 = call i32 @VSHF_B2_SB(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %31, align 8
  %166 = load i64, i64* %32, align 8
  %167 = load i64, i64* %29, align 8
  %168 = load i64, i64* %30, align 8
  %169 = call i64 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i64 %167, i64 %168)
  store i64 %169, i64* %44, align 8
  %170 = load i64, i64* %33, align 8
  %171 = load i64, i64* %34, align 8
  %172 = load i64, i64* %29, align 8
  %173 = load i64, i64* %30, align 8
  %174 = call i64 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i64 %172, i64 %173)
  store i64 %174, i64* %45, align 8
  %175 = load i64, i64* %35, align 8
  %176 = load i64, i64* %36, align 8
  %177 = load i64, i64* %29, align 8
  %178 = load i64, i64* %30, align 8
  %179 = call i64 @HEVC_FILT_4TAP_SH(i64 %175, i64 %176, i64 %177, i64 %178)
  store i64 %179, i64* %46, align 8
  %180 = load i64, i64* %45, align 8
  %181 = load i64, i64* %44, align 8
  %182 = load i64, i64* %73, align 8
  %183 = load i64, i64* %77, align 8
  %184 = call i32 @ILVRL_H2_SH(i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %46, align 8
  %186 = load i64, i64* %45, align 8
  %187 = load i64, i64* %75, align 8
  %188 = load i64, i64* %79, align 8
  %189 = call i32 @ILVRL_H2_SH(i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = load i64, i64* %21, align 8
  %193 = load i64, i64* %22, align 8
  %194 = load i64, i64* %23, align 8
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %25, align 8
  %197 = load i64, i64* %26, align 8
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* %28, align 8
  %200 = call i32 @LD_SB8(i32* %190, i32 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %23, align 8
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %26, align 8
  %207 = load i64, i64* %27, align 8
  %208 = load i64, i64* %28, align 8
  %209 = call i32 @XORI_B8_128_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %21, align 8
  %211 = load i64, i64* %21, align 8
  %212 = load i64, i64* %21, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* %39, align 8
  %215 = load i64, i64* %40, align 8
  %216 = load i64, i64* %31, align 8
  %217 = load i64, i64* %32, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %22, align 8
  %221 = load i64, i64* %22, align 8
  %222 = load i64, i64* %22, align 8
  %223 = load i64, i64* %39, align 8
  %224 = load i64, i64* %40, align 8
  %225 = load i64, i64* %33, align 8
  %226 = load i64, i64* %34, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %23, align 8
  %229 = load i64, i64* %23, align 8
  %230 = load i64, i64* %23, align 8
  %231 = load i64, i64* %23, align 8
  %232 = load i64, i64* %39, align 8
  %233 = load i64, i64* %40, align 8
  %234 = load i64, i64* %35, align 8
  %235 = load i64, i64* %36, align 8
  %236 = call i32 @VSHF_B2_SB(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %24, align 8
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* %24, align 8
  %240 = load i64, i64* %24, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %40, align 8
  %243 = load i64, i64* %37, align 8
  %244 = load i64, i64* %38, align 8
  %245 = call i32 @VSHF_B2_SB(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %31, align 8
  %247 = load i64, i64* %32, align 8
  %248 = load i64, i64* %29, align 8
  %249 = load i64, i64* %30, align 8
  %250 = call i64 @HEVC_FILT_4TAP_SH(i64 %246, i64 %247, i64 %248, i64 %249)
  store i64 %250, i64* %47, align 8
  %251 = load i64, i64* %33, align 8
  %252 = load i64, i64* %34, align 8
  %253 = load i64, i64* %29, align 8
  %254 = load i64, i64* %30, align 8
  %255 = call i64 @HEVC_FILT_4TAP_SH(i64 %251, i64 %252, i64 %253, i64 %254)
  store i64 %255, i64* %48, align 8
  %256 = load i64, i64* %35, align 8
  %257 = load i64, i64* %36, align 8
  %258 = load i64, i64* %29, align 8
  %259 = load i64, i64* %30, align 8
  %260 = call i64 @HEVC_FILT_4TAP_SH(i64 %256, i64 %257, i64 %258, i64 %259)
  store i64 %260, i64* %49, align 8
  %261 = load i64, i64* %37, align 8
  %262 = load i64, i64* %38, align 8
  %263 = load i64, i64* %29, align 8
  %264 = load i64, i64* %30, align 8
  %265 = call i64 @HEVC_FILT_4TAP_SH(i64 %261, i64 %262, i64 %263, i64 %264)
  store i64 %265, i64* %50, align 8
  %266 = load i64, i64* %25, align 8
  %267 = load i64, i64* %25, align 8
  %268 = load i64, i64* %25, align 8
  %269 = load i64, i64* %25, align 8
  %270 = load i64, i64* %39, align 8
  %271 = load i64, i64* %40, align 8
  %272 = load i64, i64* %31, align 8
  %273 = load i64, i64* %32, align 8
  %274 = call i32 @VSHF_B2_SB(i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273)
  %275 = load i64, i64* %26, align 8
  %276 = load i64, i64* %26, align 8
  %277 = load i64, i64* %26, align 8
  %278 = load i64, i64* %26, align 8
  %279 = load i64, i64* %39, align 8
  %280 = load i64, i64* %40, align 8
  %281 = load i64, i64* %33, align 8
  %282 = load i64, i64* %34, align 8
  %283 = call i32 @VSHF_B2_SB(i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282)
  %284 = load i64, i64* %27, align 8
  %285 = load i64, i64* %27, align 8
  %286 = load i64, i64* %27, align 8
  %287 = load i64, i64* %27, align 8
  %288 = load i64, i64* %39, align 8
  %289 = load i64, i64* %40, align 8
  %290 = load i64, i64* %35, align 8
  %291 = load i64, i64* %36, align 8
  %292 = call i32 @VSHF_B2_SB(i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291)
  %293 = load i64, i64* %28, align 8
  %294 = load i64, i64* %28, align 8
  %295 = load i64, i64* %28, align 8
  %296 = load i64, i64* %28, align 8
  %297 = load i64, i64* %39, align 8
  %298 = load i64, i64* %40, align 8
  %299 = load i64, i64* %37, align 8
  %300 = load i64, i64* %38, align 8
  %301 = call i32 @VSHF_B2_SB(i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300)
  %302 = load i64, i64* %31, align 8
  %303 = load i64, i64* %32, align 8
  %304 = load i64, i64* %29, align 8
  %305 = load i64, i64* %30, align 8
  %306 = call i64 @HEVC_FILT_4TAP_SH(i64 %302, i64 %303, i64 %304, i64 %305)
  store i64 %306, i64* %51, align 8
  %307 = load i64, i64* %33, align 8
  %308 = load i64, i64* %34, align 8
  %309 = load i64, i64* %29, align 8
  %310 = load i64, i64* %30, align 8
  %311 = call i64 @HEVC_FILT_4TAP_SH(i64 %307, i64 %308, i64 %309, i64 %310)
  store i64 %311, i64* %52, align 8
  %312 = load i64, i64* %35, align 8
  %313 = load i64, i64* %36, align 8
  %314 = load i64, i64* %29, align 8
  %315 = load i64, i64* %30, align 8
  %316 = call i64 @HEVC_FILT_4TAP_SH(i64 %312, i64 %313, i64 %314, i64 %315)
  store i64 %316, i64* %53, align 8
  %317 = load i64, i64* %37, align 8
  %318 = load i64, i64* %38, align 8
  %319 = load i64, i64* %29, align 8
  %320 = load i64, i64* %30, align 8
  %321 = call i64 @HEVC_FILT_4TAP_SH(i64 %317, i64 %318, i64 %319, i64 %320)
  store i64 %321, i64* %54, align 8
  %322 = load i64, i64* %47, align 8
  %323 = load i64, i64* %46, align 8
  %324 = load i64, i64* %74, align 8
  %325 = load i64, i64* %78, align 8
  %326 = call i32 @ILVRL_H2_SH(i64 %322, i64 %323, i64 %324, i64 %325)
  %327 = load i64, i64* %48, align 8
  %328 = load i64, i64* %47, align 8
  %329 = load i64, i64* %76, align 8
  %330 = load i64, i64* %80, align 8
  %331 = call i32 @ILVRL_H2_SH(i64 %327, i64 %328, i64 %329, i64 %330)
  %332 = load i64, i64* %49, align 8
  %333 = load i64, i64* %48, align 8
  %334 = load i64, i64* %81, align 8
  %335 = load i64, i64* %89, align 8
  %336 = call i32 @ILVRL_H2_SH(i64 %332, i64 %333, i64 %334, i64 %335)
  %337 = load i64, i64* %50, align 8
  %338 = load i64, i64* %49, align 8
  %339 = load i64, i64* %84, align 8
  %340 = load i64, i64* %88, align 8
  %341 = call i32 @ILVRL_H2_SH(i64 %337, i64 %338, i64 %339, i64 %340)
  %342 = load i64, i64* %51, align 8
  %343 = load i64, i64* %50, align 8
  %344 = load i64, i64* %82, align 8
  %345 = load i64, i64* %90, align 8
  %346 = call i32 @ILVRL_H2_SH(i64 %342, i64 %343, i64 %344, i64 %345)
  %347 = load i64, i64* %52, align 8
  %348 = load i64, i64* %51, align 8
  %349 = load i64, i64* %85, align 8
  %350 = load i64, i64* %91, align 8
  %351 = call i32 @ILVRL_H2_SH(i64 %347, i64 %348, i64 %349, i64 %350)
  %352 = load i64, i64* %53, align 8
  %353 = load i64, i64* %52, align 8
  %354 = load i64, i64* %83, align 8
  %355 = load i64, i64* %87, align 8
  %356 = call i32 @ILVRL_H2_SH(i64 %352, i64 %353, i64 %354, i64 %355)
  %357 = load i64, i64* %54, align 8
  %358 = load i64, i64* %53, align 8
  %359 = load i64, i64* %86, align 8
  %360 = load i64, i64* %92, align 8
  %361 = call i32 @ILVRL_H2_SH(i64 %357, i64 %358, i64 %359, i64 %360)
  %362 = load i64, i64* %79, align 8
  %363 = load i64, i64* %77, align 8
  %364 = load i64, i64* %80, align 8
  %365 = load i64, i64* %78, align 8
  %366 = load i64, i64* %93, align 8
  %367 = load i64, i64* %94, align 8
  %368 = call i32 @PCKEV_D2_SH(i64 %362, i64 %363, i64 %364, i64 %365, i64 %366, i64 %367)
  %369 = load i64, i64* %88, align 8
  %370 = load i64, i64* %89, align 8
  %371 = load i64, i64* %91, align 8
  %372 = load i64, i64* %90, align 8
  %373 = load i64, i64* %95, align 8
  %374 = load i64, i64* %96, align 8
  %375 = call i32 @PCKEV_D2_SH(i64 %369, i64 %370, i64 %371, i64 %372, i64 %373, i64 %374)
  %376 = load i64, i64* %92, align 8
  %377 = trunc i64 %376 to i32
  %378 = load i64, i64* %87, align 8
  %379 = trunc i64 %378 to i32
  %380 = call i64 @__msa_pckev_d(i32 %377, i32 %379)
  store i64 %380, i64* %97, align 8
  %381 = load i64, i64* %73, align 8
  %382 = load i64, i64* %74, align 8
  %383 = load i64, i64* %41, align 8
  %384 = load i64, i64* %42, align 8
  %385 = call i32 @HEVC_FILT_4TAP(i64 %381, i64 %382, i64 %383, i64 %384)
  store i32 %385, i32* %61, align 4
  %386 = load i64, i64* %75, align 8
  %387 = load i64, i64* %76, align 8
  %388 = load i64, i64* %41, align 8
  %389 = load i64, i64* %42, align 8
  %390 = call i32 @HEVC_FILT_4TAP(i64 %386, i64 %387, i64 %388, i64 %389)
  store i32 %390, i32* %63, align 4
  %391 = load i64, i64* %74, align 8
  %392 = load i64, i64* %81, align 8
  %393 = load i64, i64* %41, align 8
  %394 = load i64, i64* %42, align 8
  %395 = call i32 @HEVC_FILT_4TAP(i64 %391, i64 %392, i64 %393, i64 %394)
  store i32 %395, i32* %65, align 4
  %396 = load i64, i64* %76, align 8
  %397 = load i64, i64* %84, align 8
  %398 = load i64, i64* %41, align 8
  %399 = load i64, i64* %42, align 8
  %400 = call i32 @HEVC_FILT_4TAP(i64 %396, i64 %397, i64 %398, i64 %399)
  store i32 %400, i32* %67, align 4
  %401 = load i64, i64* %81, align 8
  %402 = load i64, i64* %82, align 8
  %403 = load i64, i64* %41, align 8
  %404 = load i64, i64* %42, align 8
  %405 = call i32 @HEVC_FILT_4TAP(i64 %401, i64 %402, i64 %403, i64 %404)
  store i32 %405, i32* %69, align 4
  %406 = load i64, i64* %84, align 8
  %407 = load i64, i64* %85, align 8
  %408 = load i64, i64* %41, align 8
  %409 = load i64, i64* %42, align 8
  %410 = call i32 @HEVC_FILT_4TAP(i64 %406, i64 %407, i64 %408, i64 %409)
  store i32 %410, i32* %70, align 4
  %411 = load i64, i64* %82, align 8
  %412 = load i64, i64* %83, align 8
  %413 = load i64, i64* %41, align 8
  %414 = load i64, i64* %42, align 8
  %415 = call i32 @HEVC_FILT_4TAP(i64 %411, i64 %412, i64 %413, i64 %414)
  store i32 %415, i32* %71, align 4
  %416 = load i64, i64* %85, align 8
  %417 = load i64, i64* %86, align 8
  %418 = load i64, i64* %41, align 8
  %419 = load i64, i64* %42, align 8
  %420 = call i32 @HEVC_FILT_4TAP(i64 %416, i64 %417, i64 %418, i64 %419)
  store i32 %420, i32* %72, align 4
  %421 = load i64, i64* %93, align 8
  %422 = load i64, i64* %94, align 8
  %423 = load i64, i64* %41, align 8
  %424 = load i64, i64* %42, align 8
  %425 = call i32 @HEVC_FILT_4TAP(i64 %421, i64 %422, i64 %423, i64 %424)
  store i32 %425, i32* %62, align 4
  %426 = load i64, i64* %94, align 8
  %427 = load i64, i64* %95, align 8
  %428 = load i64, i64* %41, align 8
  %429 = load i64, i64* %42, align 8
  %430 = call i32 @HEVC_FILT_4TAP(i64 %426, i64 %427, i64 %428, i64 %429)
  store i32 %430, i32* %64, align 4
  %431 = load i64, i64* %95, align 8
  %432 = load i64, i64* %96, align 8
  %433 = load i64, i64* %41, align 8
  %434 = load i64, i64* %42, align 8
  %435 = call i32 @HEVC_FILT_4TAP(i64 %431, i64 %432, i64 %433, i64 %434)
  store i32 %435, i32* %66, align 4
  %436 = load i64, i64* %96, align 8
  %437 = load i64, i64* %97, align 8
  %438 = load i64, i64* %41, align 8
  %439 = load i64, i64* %42, align 8
  %440 = call i32 @HEVC_FILT_4TAP(i64 %436, i64 %437, i64 %438, i64 %439)
  store i32 %440, i32* %68, align 4
  %441 = load i32, i32* %61, align 4
  %442 = load i32, i32* %63, align 4
  %443 = load i32, i32* %65, align 4
  %444 = load i32, i32* %67, align 4
  %445 = call i32 @SRA_4V(i32 %441, i32 %442, i32 %443, i32 %444, i32 6)
  %446 = load i32, i32* %69, align 4
  %447 = load i32, i32* %70, align 4
  %448 = load i32, i32* %71, align 4
  %449 = load i32, i32* %72, align 4
  %450 = call i32 @SRA_4V(i32 %446, i32 %447, i32 %448, i32 %449, i32 6)
  %451 = load i32, i32* %62, align 4
  %452 = load i32, i32* %64, align 4
  %453 = load i32, i32* %66, align 4
  %454 = load i32, i32* %68, align 4
  %455 = call i32 @SRA_4V(i32 %451, i32 %452, i32 %453, i32 %454, i32 6)
  %456 = load i32, i32* %63, align 4
  %457 = load i32, i32* %61, align 4
  %458 = load i32, i32* %67, align 4
  %459 = load i32, i32* %65, align 4
  %460 = load i64, i64* %55, align 8
  %461 = load i64, i64* %56, align 8
  %462 = call i32 @PCKEV_H2_SH(i32 %456, i32 %457, i32 %458, i32 %459, i64 %460, i64 %461)
  %463 = load i32, i32* %70, align 4
  %464 = load i32, i32* %69, align 4
  %465 = load i32, i32* %72, align 4
  %466 = load i32, i32* %71, align 4
  %467 = load i64, i64* %57, align 8
  %468 = load i64, i64* %58, align 8
  %469 = call i32 @PCKEV_H2_SH(i32 %463, i32 %464, i32 %465, i32 %466, i64 %467, i64 %468)
  %470 = load i32, i32* %64, align 4
  %471 = load i32, i32* %62, align 4
  %472 = load i32, i32* %68, align 4
  %473 = load i32, i32* %66, align 4
  %474 = load i64, i64* %59, align 8
  %475 = load i64, i64* %60, align 8
  %476 = call i32 @PCKEV_H2_SH(i32 %470, i32 %471, i32 %472, i32 %473, i64 %474, i64 %475)
  %477 = load i64, i64* %55, align 8
  %478 = load i64, i64* %56, align 8
  %479 = load i64, i64* %57, align 8
  %480 = load i64, i64* %58, align 8
  %481 = call i32 @SRARI_H4_SH(i64 %477, i64 %478, i64 %479, i64 %480, i32 6)
  %482 = load i64, i64* %59, align 8
  %483 = load i64, i64* %60, align 8
  %484 = call i32 @SRARI_H2_SH(i64 %482, i64 %483, i32 6)
  %485 = load i64, i64* %55, align 8
  %486 = load i64, i64* %56, align 8
  %487 = load i64, i64* %57, align 8
  %488 = load i64, i64* %58, align 8
  %489 = call i32 @SAT_SH4_SH(i64 %485, i64 %486, i64 %487, i64 %488, i32 7)
  %490 = load i64, i64* %59, align 8
  %491 = load i64, i64* %60, align 8
  %492 = call i32 @SAT_SH2_SH(i64 %490, i64 %491, i32 7)
  %493 = load i64, i64* %55, align 8
  %494 = load i64, i64* %56, align 8
  %495 = call i32 @PCKEV_XORI128_UB(i64 %493, i64 %494)
  store i32 %495, i32* %15, align 4
  %496 = load i64, i64* %57, align 8
  %497 = load i64, i64* %58, align 8
  %498 = call i32 @PCKEV_XORI128_UB(i64 %496, i64 %497)
  store i32 %498, i32* %16, align 4
  %499 = load i64, i64* %59, align 8
  %500 = load i64, i64* %60, align 8
  %501 = call i32 @PCKEV_XORI128_UB(i64 %499, i64 %500)
  store i32 %501, i32* %17, align 4
  %502 = load i32, i32* %15, align 4
  %503 = load i32, i32* %16, align 4
  %504 = load i32*, i32** %10, align 8
  %505 = load i32, i32* %11, align 4
  %506 = call i32 @ST_W8(i32 %502, i32 %503, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %504, i32 %505)
  %507 = load i32, i32* %17, align 4
  %508 = load i32*, i32** %10, align 8
  %509 = getelementptr inbounds i32, i32* %508, i64 4
  %510 = load i32, i32* %11, align 4
  %511 = call i32 @ST_H8(i32 %507, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32* %509, i32 %510)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

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

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
