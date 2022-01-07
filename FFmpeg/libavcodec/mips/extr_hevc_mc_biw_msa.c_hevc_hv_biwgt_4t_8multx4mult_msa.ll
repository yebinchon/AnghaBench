; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8multx4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_4t_8multx4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_4t_8multx4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_4t_8multx4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
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
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i64, align 8
  %56 = alloca i64, align 8
  %57 = alloca i32, align 4
  %58 = alloca i64, align 8
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
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
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %113 = load i32, i32* @ff_hevc_mask_arr, align 4
  %114 = call i64 @LD_SB(i32 %113)
  store i64 %114, i64* %55, align 8
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  %117 = load i32*, i32** %16, align 8
  %118 = sext i32 %116 to i64
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32* %120, i32** %16, align 8
  %121 = load i32*, i32** %22, align 8
  %122 = call i32 @LD_SH(i32* %121)
  store i32 %122, i32* %57, align 4
  %123 = load i32, i32* %57, align 4
  %124 = load i32, i32* %51, align 4
  %125 = load i32, i32* %52, align 4
  %126 = call i32 @SPLATI_H2_SH(i32 %123, i32 0, i32 1, i32 %124, i32 %125)
  %127 = load i32*, i32** %23, align 8
  %128 = call i32 @LD_SH(i32* %127)
  store i32 %128, i32* %57, align 4
  %129 = load i32, i32* %57, align 4
  %130 = load i32, i32* %57, align 4
  %131 = call i32 @UNPCK_R_SB_SH(i32 %129, i32 %130)
  %132 = load i32, i32* %57, align 4
  %133 = load i32, i32* %53, align 4
  %134 = load i32, i32* %54, align 4
  %135 = call i32 @SPLATI_W2_SH(i32 %132, i32 0, i32 %133, i32 %134)
  %136 = load i64, i64* %55, align 8
  %137 = add nsw i64 %136, 2
  store i64 %137, i64* %56, align 8
  %138 = load i32, i32* %27, align 4
  %139 = load i32, i32* %28, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %29, align 4
  %142 = shl i32 %140, %141
  store i32 %142, i32* %33, align 4
  %143 = load i32, i32* %25, align 4
  %144 = and i32 %143, 65535
  store i32 %144, i32* %25, align 4
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %145, %147
  store i32 %148, i32* %34, align 4
  %149 = load i32, i32* %26, align 4
  %150 = mul nsw i32 128, %149
  %151 = call i32 @__msa_fill_w(i32 %150)
  store i32 %151, i32* %112, align 4
  %152 = load i32, i32* %112, align 4
  %153 = shl i32 %152, 6
  store i32 %153, i32* %112, align 4
  %154 = load i32, i32* %33, align 4
  %155 = call i32 @__msa_fill_w(i32 %154)
  store i32 %155, i32* %110, align 4
  %156 = load i32, i32* %34, align 4
  %157 = call i32 @__msa_fill_w(i32 %156)
  store i32 %157, i32* %109, align 4
  %158 = load i32, i32* %29, align 4
  %159 = add nsw i32 %158, 1
  %160 = call i32 @__msa_fill_w(i32 %159)
  store i32 %160, i32* %111, align 4
  %161 = load i32, i32* %112, align 4
  %162 = load i32, i32* %110, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %110, align 4
  %164 = load i32, i32* %30, align 4
  %165 = ashr i32 %164, 3
  store i32 %165, i32* %32, align 4
  br label %166

166:                                              ; preds = %520, %15
  %167 = load i32, i32* %32, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %32, align 4
  %169 = icmp ne i32 %167, 0
  br i1 %169, label %170, label %527

170:                                              ; preds = %166
  %171 = load i32*, i32** %16, align 8
  store i32* %171, i32** %35, align 8
  %172 = load i32*, i32** %18, align 8
  store i32* %172, i32** %36, align 8
  %173 = load i32*, i32** %20, align 8
  store i32* %173, i32** %37, align 8
  %174 = load i32*, i32** %35, align 8
  %175 = load i32, i32* %17, align 4
  %176 = load i64, i64* %40, align 8
  %177 = load i64, i64* %41, align 8
  %178 = load i64, i64* %42, align 8
  %179 = call i32 @LD_SB3(i32* %174, i32 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i32, i32* %17, align 4
  %181 = mul nsw i32 3, %180
  %182 = load i32*, i32** %35, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %35, align 8
  %185 = load i64, i64* %40, align 8
  %186 = load i64, i64* %41, align 8
  %187 = load i64, i64* %42, align 8
  %188 = call i32 @XORI_B3_128_SB(i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* %40, align 8
  %191 = load i64, i64* %40, align 8
  %192 = load i64, i64* %40, align 8
  %193 = load i64, i64* %55, align 8
  %194 = load i64, i64* %56, align 8
  %195 = load i64, i64* %58, align 8
  %196 = load i64, i64* %59, align 8
  %197 = call i32 @VSHF_B2_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %41, align 8
  %199 = load i64, i64* %41, align 8
  %200 = load i64, i64* %41, align 8
  %201 = load i64, i64* %41, align 8
  %202 = load i64, i64* %55, align 8
  %203 = load i64, i64* %56, align 8
  %204 = load i64, i64* %60, align 8
  %205 = load i64, i64* %61, align 8
  %206 = call i32 @VSHF_B2_SB(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %42, align 8
  %208 = load i64, i64* %42, align 8
  %209 = load i64, i64* %42, align 8
  %210 = load i64, i64* %42, align 8
  %211 = load i64, i64* %55, align 8
  %212 = load i64, i64* %56, align 8
  %213 = load i64, i64* %62, align 8
  %214 = load i64, i64* %63, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %58, align 8
  %217 = load i64, i64* %59, align 8
  %218 = load i32, i32* %51, align 4
  %219 = load i32, i32* %52, align 4
  %220 = call i32 @HEVC_FILT_4TAP_SH(i64 %216, i64 %217, i32 %218, i32 %219)
  store i32 %220, i32* %66, align 4
  %221 = load i64, i64* %60, align 8
  %222 = load i64, i64* %61, align 8
  %223 = load i32, i32* %51, align 4
  %224 = load i32, i32* %52, align 4
  %225 = call i32 @HEVC_FILT_4TAP_SH(i64 %221, i64 %222, i32 %223, i32 %224)
  store i32 %225, i32* %67, align 4
  %226 = load i64, i64* %62, align 8
  %227 = load i64, i64* %63, align 8
  %228 = load i32, i32* %51, align 4
  %229 = load i32, i32* %52, align 4
  %230 = call i32 @HEVC_FILT_4TAP_SH(i64 %226, i64 %227, i32 %228, i32 %229)
  store i32 %230, i32* %68, align 4
  %231 = load i32, i32* %67, align 4
  %232 = load i32, i32* %66, align 4
  %233 = load i32, i32* %97, align 4
  %234 = load i32, i32* %103, align 4
  %235 = call i32 @ILVRL_H2_SH(i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %68, align 4
  %237 = load i32, i32* %67, align 4
  %238 = load i32, i32* %100, align 4
  %239 = load i32, i32* %106, align 4
  %240 = call i32 @ILVRL_H2_SH(i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %24, align 4
  %242 = ashr i32 %241, 2
  store i32 %242, i32* %31, align 4
  br label %243

243:                                              ; preds = %247, %170
  %244 = load i32, i32* %31, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* %31, align 4
  %246 = icmp ne i32 %244, 0
  br i1 %246, label %247, label %520

247:                                              ; preds = %243
  %248 = load i32*, i32** %35, align 8
  %249 = load i32, i32* %17, align 4
  %250 = load i64, i64* %43, align 8
  %251 = load i64, i64* %44, align 8
  %252 = load i64, i64* %45, align 8
  %253 = load i64, i64* %46, align 8
  %254 = call i32 @LD_SB4(i32* %248, i32 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  %255 = load i32, i32* %17, align 4
  %256 = mul nsw i32 4, %255
  %257 = load i32*, i32** %35, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i32, i32* %257, i64 %258
  store i32* %259, i32** %35, align 8
  %260 = load i32*, i32** %36, align 8
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %47, align 4
  %263 = load i32, i32* %48, align 4
  %264 = load i32, i32* %49, align 4
  %265 = load i32, i32* %50, align 4
  %266 = call i32 @LD_SH4(i32* %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %19, align 4
  %268 = mul nsw i32 4, %267
  %269 = load i32*, i32** %36, align 8
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32* %271, i32** %36, align 8
  %272 = load i64, i64* %43, align 8
  %273 = load i64, i64* %44, align 8
  %274 = load i64, i64* %45, align 8
  %275 = load i64, i64* %46, align 8
  %276 = call i32 @XORI_B4_128_SB(i64 %272, i64 %273, i64 %274, i64 %275)
  %277 = load i64, i64* %43, align 8
  %278 = load i64, i64* %43, align 8
  %279 = load i64, i64* %43, align 8
  %280 = load i64, i64* %43, align 8
  %281 = load i64, i64* %55, align 8
  %282 = load i64, i64* %56, align 8
  %283 = load i64, i64* %58, align 8
  %284 = load i64, i64* %59, align 8
  %285 = call i32 @VSHF_B2_SB(i64 %277, i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284)
  %286 = load i64, i64* %44, align 8
  %287 = load i64, i64* %44, align 8
  %288 = load i64, i64* %44, align 8
  %289 = load i64, i64* %44, align 8
  %290 = load i64, i64* %55, align 8
  %291 = load i64, i64* %56, align 8
  %292 = load i64, i64* %60, align 8
  %293 = load i64, i64* %61, align 8
  %294 = call i32 @VSHF_B2_SB(i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293)
  %295 = load i64, i64* %45, align 8
  %296 = load i64, i64* %45, align 8
  %297 = load i64, i64* %45, align 8
  %298 = load i64, i64* %45, align 8
  %299 = load i64, i64* %55, align 8
  %300 = load i64, i64* %56, align 8
  %301 = load i64, i64* %62, align 8
  %302 = load i64, i64* %63, align 8
  %303 = call i32 @VSHF_B2_SB(i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302)
  %304 = load i64, i64* %46, align 8
  %305 = load i64, i64* %46, align 8
  %306 = load i64, i64* %46, align 8
  %307 = load i64, i64* %46, align 8
  %308 = load i64, i64* %55, align 8
  %309 = load i64, i64* %56, align 8
  %310 = load i64, i64* %64, align 8
  %311 = load i64, i64* %65, align 8
  %312 = call i32 @VSHF_B2_SB(i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309, i64 %310, i64 %311)
  %313 = load i64, i64* %58, align 8
  %314 = load i64, i64* %59, align 8
  %315 = load i32, i32* %51, align 4
  %316 = load i32, i32* %52, align 4
  %317 = call i32 @HEVC_FILT_4TAP_SH(i64 %313, i64 %314, i32 %315, i32 %316)
  store i32 %317, i32* %69, align 4
  %318 = load i64, i64* %60, align 8
  %319 = load i64, i64* %61, align 8
  %320 = load i32, i32* %51, align 4
  %321 = load i32, i32* %52, align 4
  %322 = call i32 @HEVC_FILT_4TAP_SH(i64 %318, i64 %319, i32 %320, i32 %321)
  store i32 %322, i32* %70, align 4
  %323 = load i64, i64* %62, align 8
  %324 = load i64, i64* %63, align 8
  %325 = load i32, i32* %51, align 4
  %326 = load i32, i32* %52, align 4
  %327 = call i32 @HEVC_FILT_4TAP_SH(i64 %323, i64 %324, i32 %325, i32 %326)
  store i32 %327, i32* %71, align 4
  %328 = load i64, i64* %64, align 8
  %329 = load i64, i64* %65, align 8
  %330 = load i32, i32* %51, align 4
  %331 = load i32, i32* %52, align 4
  %332 = call i32 @HEVC_FILT_4TAP_SH(i64 %328, i64 %329, i32 %330, i32 %331)
  store i32 %332, i32* %72, align 4
  %333 = load i32, i32* %69, align 4
  %334 = load i32, i32* %68, align 4
  %335 = load i32, i32* %98, align 4
  %336 = load i32, i32* %104, align 4
  %337 = call i32 @ILVRL_H2_SH(i32 %333, i32 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %70, align 4
  %339 = load i32, i32* %69, align 4
  %340 = load i32, i32* %101, align 4
  %341 = load i32, i32* %107, align 4
  %342 = call i32 @ILVRL_H2_SH(i32 %338, i32 %339, i32 %340, i32 %341)
  %343 = load i32, i32* %71, align 4
  %344 = load i32, i32* %70, align 4
  %345 = load i32, i32* %99, align 4
  %346 = load i32, i32* %105, align 4
  %347 = call i32 @ILVRL_H2_SH(i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %72, align 4
  %349 = load i32, i32* %71, align 4
  %350 = load i32, i32* %102, align 4
  %351 = load i32, i32* %108, align 4
  %352 = call i32 @ILVRL_H2_SH(i32 %348, i32 %349, i32 %350, i32 %351)
  %353 = load i32, i32* %97, align 4
  %354 = load i32, i32* %98, align 4
  %355 = load i32, i32* %53, align 4
  %356 = load i32, i32* %54, align 4
  %357 = call i32 @HEVC_FILT_4TAP(i32 %353, i32 %354, i32 %355, i32 %356)
  store i32 %357, i32* %73, align 4
  %358 = load i32, i32* %103, align 4
  %359 = load i32, i32* %104, align 4
  %360 = load i32, i32* %53, align 4
  %361 = load i32, i32* %54, align 4
  %362 = call i32 @HEVC_FILT_4TAP(i32 %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %74, align 4
  %363 = load i32, i32* %100, align 4
  %364 = load i32, i32* %101, align 4
  %365 = load i32, i32* %53, align 4
  %366 = load i32, i32* %54, align 4
  %367 = call i32 @HEVC_FILT_4TAP(i32 %363, i32 %364, i32 %365, i32 %366)
  store i32 %367, i32* %75, align 4
  %368 = load i32, i32* %106, align 4
  %369 = load i32, i32* %107, align 4
  %370 = load i32, i32* %53, align 4
  %371 = load i32, i32* %54, align 4
  %372 = call i32 @HEVC_FILT_4TAP(i32 %368, i32 %369, i32 %370, i32 %371)
  store i32 %372, i32* %76, align 4
  %373 = load i32, i32* %98, align 4
  %374 = load i32, i32* %99, align 4
  %375 = load i32, i32* %53, align 4
  %376 = load i32, i32* %54, align 4
  %377 = call i32 @HEVC_FILT_4TAP(i32 %373, i32 %374, i32 %375, i32 %376)
  store i32 %377, i32* %77, align 4
  %378 = load i32, i32* %104, align 4
  %379 = load i32, i32* %105, align 4
  %380 = load i32, i32* %53, align 4
  %381 = load i32, i32* %54, align 4
  %382 = call i32 @HEVC_FILT_4TAP(i32 %378, i32 %379, i32 %380, i32 %381)
  store i32 %382, i32* %78, align 4
  %383 = load i32, i32* %101, align 4
  %384 = load i32, i32* %102, align 4
  %385 = load i32, i32* %53, align 4
  %386 = load i32, i32* %54, align 4
  %387 = call i32 @HEVC_FILT_4TAP(i32 %383, i32 %384, i32 %385, i32 %386)
  store i32 %387, i32* %79, align 4
  %388 = load i32, i32* %107, align 4
  %389 = load i32, i32* %108, align 4
  %390 = load i32, i32* %53, align 4
  %391 = load i32, i32* %54, align 4
  %392 = call i32 @HEVC_FILT_4TAP(i32 %388, i32 %389, i32 %390, i32 %391)
  store i32 %392, i32* %80, align 4
  %393 = load i32, i32* %73, align 4
  %394 = load i32, i32* %74, align 4
  %395 = load i32, i32* %75, align 4
  %396 = load i32, i32* %76, align 4
  %397 = call i32 @SRA_4V(i32 %393, i32 %394, i32 %395, i32 %396, i32 6)
  %398 = load i32, i32* %77, align 4
  %399 = load i32, i32* %78, align 4
  %400 = load i32, i32* %79, align 4
  %401 = load i32, i32* %80, align 4
  %402 = call i32 @SRA_4V(i32 %398, i32 %399, i32 %400, i32 %401, i32 6)
  %403 = load i32, i32* %74, align 4
  %404 = load i32, i32* %73, align 4
  %405 = load i32, i32* %76, align 4
  %406 = load i32, i32* %75, align 4
  %407 = load i32, i32* %78, align 4
  %408 = load i32, i32* %77, align 4
  %409 = load i32, i32* %80, align 4
  %410 = load i32, i32* %79, align 4
  %411 = load i32, i32* %89, align 4
  %412 = load i32, i32* %90, align 4
  %413 = load i32, i32* %91, align 4
  %414 = load i32, i32* %92, align 4
  %415 = call i32 @PCKEV_H4_SW(i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = load i32, i32* %89, align 4
  %417 = load i32, i32* %47, align 4
  %418 = load i32, i32* %81, align 4
  %419 = load i32, i32* %82, align 4
  %420 = call i32 @ILVRL_H2_SH(i32 %416, i32 %417, i32 %418, i32 %419)
  %421 = load i32, i32* %90, align 4
  %422 = load i32, i32* %48, align 4
  %423 = load i32, i32* %83, align 4
  %424 = load i32, i32* %84, align 4
  %425 = call i32 @ILVRL_H2_SH(i32 %421, i32 %422, i32 %423, i32 %424)
  %426 = load i32, i32* %91, align 4
  %427 = load i32, i32* %49, align 4
  %428 = load i32, i32* %85, align 4
  %429 = load i32, i32* %86, align 4
  %430 = call i32 @ILVRL_H2_SH(i32 %426, i32 %427, i32 %428, i32 %429)
  %431 = load i32, i32* %92, align 4
  %432 = load i32, i32* %50, align 4
  %433 = load i32, i32* %87, align 4
  %434 = load i32, i32* %88, align 4
  %435 = call i32 @ILVRL_H2_SH(i32 %431, i32 %432, i32 %433, i32 %434)
  %436 = load i32, i32* %110, align 4
  %437 = load i32, i32* %81, align 4
  %438 = load i32, i32* %109, align 4
  %439 = call i32 @__msa_dpadd_s_w(i32 %436, i32 %437, i32 %438)
  store i32 %439, i32* %89, align 4
  %440 = load i32, i32* %110, align 4
  %441 = load i32, i32* %82, align 4
  %442 = load i32, i32* %109, align 4
  %443 = call i32 @__msa_dpadd_s_w(i32 %440, i32 %441, i32 %442)
  store i32 %443, i32* %90, align 4
  %444 = load i32, i32* %110, align 4
  %445 = load i32, i32* %83, align 4
  %446 = load i32, i32* %109, align 4
  %447 = call i32 @__msa_dpadd_s_w(i32 %444, i32 %445, i32 %446)
  store i32 %447, i32* %91, align 4
  %448 = load i32, i32* %110, align 4
  %449 = load i32, i32* %84, align 4
  %450 = load i32, i32* %109, align 4
  %451 = call i32 @__msa_dpadd_s_w(i32 %448, i32 %449, i32 %450)
  store i32 %451, i32* %92, align 4
  %452 = load i32, i32* %110, align 4
  %453 = load i32, i32* %85, align 4
  %454 = load i32, i32* %109, align 4
  %455 = call i32 @__msa_dpadd_s_w(i32 %452, i32 %453, i32 %454)
  store i32 %455, i32* %93, align 4
  %456 = load i32, i32* %110, align 4
  %457 = load i32, i32* %86, align 4
  %458 = load i32, i32* %109, align 4
  %459 = call i32 @__msa_dpadd_s_w(i32 %456, i32 %457, i32 %458)
  store i32 %459, i32* %94, align 4
  %460 = load i32, i32* %110, align 4
  %461 = load i32, i32* %87, align 4
  %462 = load i32, i32* %109, align 4
  %463 = call i32 @__msa_dpadd_s_w(i32 %460, i32 %461, i32 %462)
  store i32 %463, i32* %95, align 4
  %464 = load i32, i32* %110, align 4
  %465 = load i32, i32* %88, align 4
  %466 = load i32, i32* %109, align 4
  %467 = call i32 @__msa_dpadd_s_w(i32 %464, i32 %465, i32 %466)
  store i32 %467, i32* %96, align 4
  %468 = load i32, i32* %89, align 4
  %469 = load i32, i32* %90, align 4
  %470 = load i32, i32* %91, align 4
  %471 = load i32, i32* %92, align 4
  %472 = load i32, i32* %111, align 4
  %473 = call i32 @SRAR_W4_SW(i32 %468, i32 %469, i32 %470, i32 %471, i32 %472)
  %474 = load i32, i32* %93, align 4
  %475 = load i32, i32* %94, align 4
  %476 = load i32, i32* %95, align 4
  %477 = load i32, i32* %96, align 4
  %478 = load i32, i32* %111, align 4
  %479 = call i32 @SRAR_W4_SW(i32 %474, i32 %475, i32 %476, i32 %477, i32 %478)
  %480 = load i32, i32* %90, align 4
  %481 = load i32, i32* %89, align 4
  %482 = load i32, i32* %92, align 4
  %483 = load i32, i32* %91, align 4
  %484 = load i32, i32* %94, align 4
  %485 = load i32, i32* %93, align 4
  %486 = load i32, i32* %96, align 4
  %487 = load i32, i32* %95, align 4
  %488 = load i32, i32* %81, align 4
  %489 = load i32, i32* %82, align 4
  %490 = load i32, i32* %83, align 4
  %491 = load i32, i32* %84, align 4
  %492 = call i32 @PCKEV_H4_SH(i32 %480, i32 %481, i32 %482, i32 %483, i32 %484, i32 %485, i32 %486, i32 %487, i32 %488, i32 %489, i32 %490, i32 %491)
  %493 = load i32, i32* %81, align 4
  %494 = load i32, i32* %82, align 4
  %495 = load i32, i32* %83, align 4
  %496 = load i32, i32* %84, align 4
  %497 = call i32 @CLIP_SH4_0_255(i32 %493, i32 %494, i32 %495, i32 %496)
  %498 = load i32, i32* %82, align 4
  %499 = load i32, i32* %81, align 4
  %500 = load i32, i32* %84, align 4
  %501 = load i32, i32* %83, align 4
  %502 = load i32, i32* %38, align 4
  %503 = load i32, i32* %39, align 4
  %504 = call i32 @PCKEV_B2_UB(i32 %498, i32 %499, i32 %500, i32 %501, i32 %502, i32 %503)
  %505 = load i32, i32* %38, align 4
  %506 = load i32, i32* %39, align 4
  %507 = load i32*, i32** %37, align 8
  %508 = load i32, i32* %21, align 4
  %509 = call i32 @ST_D4(i32 %505, i32 %506, i32 0, i32 1, i32 0, i32 1, i32* %507, i32 %508)
  %510 = load i32, i32* %21, align 4
  %511 = mul nsw i32 4, %510
  %512 = load i32*, i32** %37, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds i32, i32* %512, i64 %513
  store i32* %514, i32** %37, align 8
  %515 = load i32, i32* %99, align 4
  store i32 %515, i32* %97, align 4
  %516 = load i32, i32* %105, align 4
  store i32 %516, i32* %103, align 4
  %517 = load i32, i32* %102, align 4
  store i32 %517, i32* %100, align 4
  %518 = load i32, i32* %108, align 4
  store i32 %518, i32* %106, align 4
  %519 = load i32, i32* %72, align 4
  store i32 %519, i32* %68, align 4
  br label %243

520:                                              ; preds = %243
  %521 = load i32*, i32** %16, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 8
  store i32* %522, i32** %16, align 8
  %523 = load i32*, i32** %20, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 8
  store i32* %524, i32** %20, align 8
  %525 = load i32*, i32** %18, align 8
  %526 = getelementptr inbounds i32, i32* %525, i64 8
  store i32* %526, i32** %18, align 8
  br label %166

527:                                              ; preds = %166
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

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
