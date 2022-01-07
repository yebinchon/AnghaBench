; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_bi_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
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
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
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
  %48 = alloca i32, align 4
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
  %88 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  %89 = load i64, i64* @ff_hevc_mask_arr, align 8
  %90 = add nsw i64 %89, 16
  %91 = call i64 @LD_SB(i64 %90)
  store i64 %91, i64* %88, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 3, %92
  %94 = add nsw i32 %93, 3
  %95 = load i32*, i32** %10, align 8
  %96 = sext i32 %94 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %10, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = call i32 @LD_SH(i32* %99)
  store i32 %100, i32* %47, align 4
  %101 = load i32, i32* %47, align 4
  %102 = load i32, i32* %36, align 4
  %103 = load i32, i32* %37, align 4
  %104 = load i32, i32* %38, align 4
  %105 = load i32, i32* %39, align 4
  %106 = call i32 @SPLATI_H4_SH(i32 %101, i32 0, i32 1, i32 2, i32 3, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32*, i32** %17, align 8
  %108 = call i32 @LD_SH(i32* %107)
  store i32 %108, i32* %47, align 4
  %109 = load i32, i32* %47, align 4
  %110 = load i32, i32* %47, align 4
  %111 = call i32 @UNPCK_R_SB_SH(i32 %109, i32 %110)
  %112 = load i32, i32* %47, align 4
  %113 = load i32, i32* %40, align 4
  %114 = load i32, i32* %41, align 4
  %115 = load i32, i32* %42, align 4
  %116 = load i32, i32* %43, align 4
  %117 = call i32 @SPLATI_W4_SH(i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i64, i64* %88, align 8
  %119 = add nsw i64 %118, 2
  store i64 %119, i64* %44, align 8
  %120 = load i64, i64* %88, align 8
  %121 = add nsw i64 %120, 4
  store i64 %121, i64* %45, align 8
  %122 = load i64, i64* %88, align 8
  %123 = add nsw i64 %122, 6
  store i64 %123, i64* %46, align 8
  %124 = call i32 @__msa_ldi_h(i32 128)
  store i32 %124, i32* %48, align 4
  %125 = load i32, i32* %48, align 4
  %126 = shl i32 %125, 6
  store i32 %126, i32* %48, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i64, i64* %23, align 8
  %130 = load i64, i64* %24, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %27, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i64, i64* %29, align 8
  %136 = call i32 @LD_SB7(i32* %127, i32 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 7, %137
  %139 = load i32*, i32** %10, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %10, align 8
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* %24, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %26, align 8
  %146 = load i64, i64* %27, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* %29, align 8
  %149 = call i32 @XORI_B7_128_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148)
  %150 = load i64, i64* %23, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %88, align 8
  %153 = load i64, i64* %44, align 8
  %154 = load i64, i64* %45, align 8
  %155 = load i64, i64* %46, align 8
  %156 = load i64, i64* %49, align 8
  %157 = load i64, i64* %50, align 8
  %158 = load i64, i64* %51, align 8
  %159 = load i64, i64* %52, align 8
  %160 = call i32 @VSHF_B4_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* %27, align 8
  %163 = load i64, i64* %88, align 8
  %164 = load i64, i64* %44, align 8
  %165 = load i64, i64* %45, align 8
  %166 = load i64, i64* %46, align 8
  %167 = load i64, i64* %53, align 8
  %168 = load i64, i64* %54, align 8
  %169 = load i64, i64* %55, align 8
  %170 = load i64, i64* %56, align 8
  %171 = call i32 @VSHF_B4_SB(i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i64, i64* %25, align 8
  %173 = load i64, i64* %28, align 8
  %174 = load i64, i64* %88, align 8
  %175 = load i64, i64* %44, align 8
  %176 = load i64, i64* %45, align 8
  %177 = load i64, i64* %46, align 8
  %178 = load i64, i64* %57, align 8
  %179 = load i64, i64* %58, align 8
  %180 = load i64, i64* %59, align 8
  %181 = load i64, i64* %60, align 8
  %182 = call i32 @VSHF_B4_SB(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i64, i64* %26, align 8
  %184 = load i64, i64* %29, align 8
  %185 = load i64, i64* %88, align 8
  %186 = load i64, i64* %44, align 8
  %187 = load i64, i64* %45, align 8
  %188 = load i64, i64* %46, align 8
  %189 = load i64, i64* %61, align 8
  %190 = load i64, i64* %62, align 8
  %191 = load i64, i64* %63, align 8
  %192 = load i64, i64* %64, align 8
  %193 = call i32 @VSHF_B4_SB(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %49, align 8
  %195 = load i64, i64* %50, align 8
  %196 = load i64, i64* %51, align 8
  %197 = load i64, i64* %52, align 8
  %198 = load i32, i32* %36, align 4
  %199 = load i32, i32* %37, align 4
  %200 = load i32, i32* %38, align 4
  %201 = load i32, i32* %39, align 4
  %202 = call i32 @HEVC_FILT_8TAP_SH(i64 %194, i64 %195, i64 %196, i64 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %67, align 4
  %203 = load i64, i64* %53, align 8
  %204 = load i64, i64* %54, align 8
  %205 = load i64, i64* %55, align 8
  %206 = load i64, i64* %56, align 8
  %207 = load i32, i32* %36, align 4
  %208 = load i32, i32* %37, align 4
  %209 = load i32, i32* %38, align 4
  %210 = load i32, i32* %39, align 4
  %211 = call i32 @HEVC_FILT_8TAP_SH(i64 %203, i64 %204, i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %68, align 4
  %212 = load i64, i64* %57, align 8
  %213 = load i64, i64* %58, align 8
  %214 = load i64, i64* %59, align 8
  %215 = load i64, i64* %60, align 8
  %216 = load i32, i32* %36, align 4
  %217 = load i32, i32* %37, align 4
  %218 = load i32, i32* %38, align 4
  %219 = load i32, i32* %39, align 4
  %220 = call i32 @HEVC_FILT_8TAP_SH(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %69, align 4
  %221 = load i64, i64* %61, align 8
  %222 = load i64, i64* %62, align 8
  %223 = load i64, i64* %63, align 8
  %224 = load i64, i64* %64, align 8
  %225 = load i32, i32* %36, align 4
  %226 = load i32, i32* %37, align 4
  %227 = load i32, i32* %38, align 4
  %228 = load i32, i32* %39, align 4
  %229 = call i32 @HEVC_FILT_8TAP_SH(i64 %221, i64 %222, i64 %223, i64 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %70, align 4
  %230 = load i32, i32* %68, align 4
  %231 = load i32, i32* %67, align 4
  %232 = load i32, i32* %74, align 4
  %233 = load i32, i32* %80, align 4
  %234 = call i32 @ILVRL_H2_SH(i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %69, align 4
  %236 = load i32, i32* %68, align 4
  %237 = load i32, i32* %79, align 4
  %238 = load i32, i32* %76, align 4
  %239 = call i32 @ILVRL_H2_SH(i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %70, align 4
  %241 = load i32, i32* %69, align 4
  %242 = load i32, i32* %75, align 4
  %243 = load i32, i32* %81, align 4
  %244 = call i32 @ILVRL_H2_SH(i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %70, align 4
  %246 = call i64 @__msa_splati_d(i32 %245, i32 1)
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %71, align 4
  %248 = load i32, i32* %18, align 4
  %249 = ashr i32 %248, 2
  store i32 %249, i32* %19, align 4
  br label %250

250:                                              ; preds = %254, %9
  %251 = load i32, i32* %19, align 4
  %252 = add nsw i32 %251, -1
  store i32 %252, i32* %19, align 4
  %253 = icmp ne i32 %251, 0
  br i1 %253, label %254, label %445

254:                                              ; preds = %250
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %11, align 4
  %257 = load i64, i64* %30, align 8
  %258 = load i64, i64* %31, align 8
  %259 = load i64, i64* %32, align 8
  %260 = load i64, i64* %33, align 8
  %261 = call i32 @LD_SB4(i32* %255, i32 %256, i64 %257, i64 %258, i64 %259, i64 %260)
  %262 = load i32, i32* %11, align 4
  %263 = mul nsw i32 4, %262
  %264 = load i32*, i32** %10, align 8
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32* %266, i32** %10, align 8
  %267 = load i64, i64* %30, align 8
  %268 = load i64, i64* %31, align 8
  %269 = load i64, i64* %32, align 8
  %270 = load i64, i64* %33, align 8
  %271 = call i32 @XORI_B4_128_SB(i64 %267, i64 %268, i64 %269, i64 %270)
  %272 = load i32*, i32** %12, align 8
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %20, align 4
  %275 = load i32, i32* %21, align 4
  %276 = call i32 @LD2(i32* %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %20, align 4
  %278 = load i32, i32* %21, align 4
  %279 = load i32, i32* %34, align 4
  %280 = call i32 @INSERT_D2_SH(i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %13, align 4
  %282 = mul nsw i32 2, %281
  %283 = load i32*, i32** %12, align 8
  %284 = sext i32 %282 to i64
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  store i32* %285, i32** %12, align 8
  %286 = load i32*, i32** %12, align 8
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* %20, align 4
  %289 = load i32, i32* %21, align 4
  %290 = call i32 @LD2(i32* %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %20, align 4
  %292 = load i32, i32* %21, align 4
  %293 = load i32, i32* %35, align 4
  %294 = call i32 @INSERT_D2_SH(i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %13, align 4
  %296 = mul nsw i32 2, %295
  %297 = load i32*, i32** %12, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i32, i32* %297, i64 %298
  store i32* %299, i32** %12, align 8
  %300 = load i64, i64* %30, align 8
  %301 = load i64, i64* %32, align 8
  %302 = load i64, i64* %88, align 8
  %303 = load i64, i64* %44, align 8
  %304 = load i64, i64* %45, align 8
  %305 = load i64, i64* %46, align 8
  %306 = load i64, i64* %49, align 8
  %307 = load i64, i64* %50, align 8
  %308 = load i64, i64* %51, align 8
  %309 = load i64, i64* %52, align 8
  %310 = call i32 @VSHF_B4_SB(i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309)
  %311 = load i64, i64* %31, align 8
  %312 = load i64, i64* %33, align 8
  %313 = load i64, i64* %88, align 8
  %314 = load i64, i64* %44, align 8
  %315 = load i64, i64* %45, align 8
  %316 = load i64, i64* %46, align 8
  %317 = load i64, i64* %53, align 8
  %318 = load i64, i64* %54, align 8
  %319 = load i64, i64* %55, align 8
  %320 = load i64, i64* %56, align 8
  %321 = call i32 @VSHF_B4_SB(i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i64 %320)
  %322 = load i64, i64* %49, align 8
  %323 = load i64, i64* %50, align 8
  %324 = load i64, i64* %51, align 8
  %325 = load i64, i64* %52, align 8
  %326 = load i32, i32* %36, align 4
  %327 = load i32, i32* %37, align 4
  %328 = load i32, i32* %38, align 4
  %329 = load i32, i32* %39, align 4
  %330 = call i32 @HEVC_FILT_8TAP_SH(i64 %322, i64 %323, i64 %324, i64 %325, i32 %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %72, align 4
  %331 = load i64, i64* %53, align 8
  %332 = load i64, i64* %54, align 8
  %333 = load i64, i64* %55, align 8
  %334 = load i64, i64* %56, align 8
  %335 = load i32, i32* %36, align 4
  %336 = load i32, i32* %37, align 4
  %337 = load i32, i32* %38, align 4
  %338 = load i32, i32* %39, align 4
  %339 = call i32 @HEVC_FILT_8TAP_SH(i64 %331, i64 %332, i64 %333, i64 %334, i32 %335, i32 %336, i32 %337, i32 %338)
  store i32 %339, i32* %73, align 4
  %340 = load i32, i32* %72, align 4
  %341 = load i32, i32* %71, align 4
  %342 = call i32 @__msa_ilvr_h(i32 %340, i32 %341)
  store i32 %342, i32* %77, align 4
  %343 = load i32, i32* %73, align 4
  %344 = load i32, i32* %72, align 4
  %345 = load i32, i32* %82, align 4
  %346 = load i32, i32* %83, align 4
  %347 = call i32 @ILVRL_H2_SH(i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %72, align 4
  %349 = call i64 @__msa_splati_d(i32 %348, i32 1)
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %71, align 4
  %351 = load i32, i32* %71, align 4
  %352 = load i32, i32* %73, align 4
  %353 = call i32 @__msa_ilvr_h(i32 %351, i32 %352)
  store i32 %353, i32* %78, align 4
  %354 = load i32, i32* %74, align 4
  %355 = load i32, i32* %75, align 4
  %356 = load i32, i32* %76, align 4
  %357 = load i32, i32* %77, align 4
  %358 = load i32, i32* %40, align 4
  %359 = load i32, i32* %41, align 4
  %360 = load i32, i32* %42, align 4
  %361 = load i32, i32* %43, align 4
  %362 = call i32 @HEVC_FILT_8TAP(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  store i32 %362, i32* %84, align 4
  %363 = load i32, i32* %79, align 4
  %364 = load i32, i32* %80, align 4
  %365 = load i32, i32* %81, align 4
  %366 = load i32, i32* %82, align 4
  %367 = load i32, i32* %40, align 4
  %368 = load i32, i32* %41, align 4
  %369 = load i32, i32* %42, align 4
  %370 = load i32, i32* %43, align 4
  %371 = call i32 @HEVC_FILT_8TAP(i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370)
  store i32 %371, i32* %85, align 4
  %372 = load i32, i32* %75, align 4
  %373 = load i32, i32* %76, align 4
  %374 = load i32, i32* %77, align 4
  %375 = load i32, i32* %78, align 4
  %376 = load i32, i32* %40, align 4
  %377 = load i32, i32* %41, align 4
  %378 = load i32, i32* %42, align 4
  %379 = load i32, i32* %43, align 4
  %380 = call i32 @HEVC_FILT_8TAP(i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379)
  store i32 %380, i32* %86, align 4
  %381 = load i32, i32* %80, align 4
  %382 = load i32, i32* %81, align 4
  %383 = load i32, i32* %82, align 4
  %384 = load i32, i32* %83, align 4
  %385 = load i32, i32* %40, align 4
  %386 = load i32, i32* %41, align 4
  %387 = load i32, i32* %42, align 4
  %388 = load i32, i32* %43, align 4
  %389 = call i32 @HEVC_FILT_8TAP(i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388)
  store i32 %389, i32* %87, align 4
  %390 = load i32, i32* %84, align 4
  %391 = load i32, i32* %85, align 4
  %392 = load i32, i32* %86, align 4
  %393 = load i32, i32* %87, align 4
  %394 = call i32 @SRA_4V(i32 %390, i32 %391, i32 %392, i32 %393, i32 6)
  %395 = load i32, i32* %85, align 4
  %396 = load i32, i32* %84, align 4
  %397 = load i32, i32* %87, align 4
  %398 = load i32, i32* %86, align 4
  %399 = load i32, i32* %65, align 4
  %400 = load i32, i32* %66, align 4
  %401 = call i32 @PCKEV_H2_SH(i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400)
  %402 = load i32, i32* %65, align 4
  %403 = load i32, i32* %34, align 4
  %404 = load i32, i32* %66, align 4
  %405 = load i32, i32* %35, align 4
  %406 = load i32, i32* %65, align 4
  %407 = load i32, i32* %66, align 4
  %408 = call i32 @ADDS_SH2_SH(i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %65, align 4
  %410 = load i32, i32* %48, align 4
  %411 = load i32, i32* %66, align 4
  %412 = load i32, i32* %48, align 4
  %413 = load i32, i32* %65, align 4
  %414 = load i32, i32* %66, align 4
  %415 = call i32 @ADDS_SH2_SH(i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414)
  %416 = load i32, i32* %65, align 4
  %417 = load i32, i32* %66, align 4
  %418 = call i32 @SRARI_H2_SH(i32 %416, i32 %417, i32 7)
  %419 = load i32, i32* %65, align 4
  %420 = load i32, i32* %66, align 4
  %421 = call i32 @CLIP_SH2_0_255(i32 %419, i32 %420)
  %422 = load i32, i32* %66, align 4
  %423 = sext i32 %422 to i64
  %424 = load i32, i32* %65, align 4
  %425 = sext i32 %424 to i64
  %426 = call i64 @__msa_pckev_b(i64 %423, i64 %425)
  store i64 %426, i64* %22, align 8
  %427 = load i64, i64* %22, align 8
  %428 = load i32*, i32** %14, align 8
  %429 = load i32, i32* %15, align 4
  %430 = call i32 @ST_W4(i64 %427, i32 0, i32 1, i32 2, i32 3, i32* %428, i32 %429)
  %431 = load i32, i32* %15, align 4
  %432 = mul nsw i32 4, %431
  %433 = load i32*, i32** %14, align 8
  %434 = sext i32 %432 to i64
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  store i32* %435, i32** %14, align 8
  %436 = load i32, i32* %76, align 4
  store i32 %436, i32* %74, align 4
  %437 = load i32, i32* %77, align 4
  store i32 %437, i32* %75, align 4
  %438 = load i32, i32* %78, align 4
  store i32 %438, i32* %76, align 4
  %439 = load i32, i32* %81, align 4
  store i32 %439, i32* %79, align 4
  %440 = load i32, i32* %82, align 4
  store i32 %440, i32* %80, align 4
  %441 = load i32, i32* %83, align 4
  store i32 %441, i32* %81, align 4
  %442 = load i32, i32* %73, align 4
  %443 = call i64 @__msa_splati_d(i32 %442, i32 1)
  %444 = trunc i64 %443 to i32
  store i32 %444, i32* %71, align 4
  br label %250

445:                                              ; preds = %250
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @LD2(i32*, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_SH(i32, i32, i32) #1

declare dso_local i32 @__msa_ilvr_h(i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ADDS_SH2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
