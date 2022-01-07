; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8multx4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8multx4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32)* @hevc_hv_bi_4t_8multx4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_8multx4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
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
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %86 = load i32, i32* @ff_hevc_mask_arr, align 4
  %87 = call i64 @LD_SB(i32 %86)
  store i64 %87, i64* %43, align 8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32*, i32** %11, align 8
  %91 = sext i32 %89 to i64
  %92 = sub i64 0, %91
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %11, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @LD_SH(i32* %94)
  store i32 %95, i32* %45, align 4
  %96 = load i32, i32* %45, align 4
  %97 = load i32, i32* %39, align 4
  %98 = load i32, i32* %40, align 4
  %99 = call i32 @SPLATI_H2_SH(i32 %96, i32 0, i32 1, i32 %97, i32 %98)
  %100 = load i32*, i32** %18, align 8
  %101 = call i32 @LD_SH(i32* %100)
  store i32 %101, i32* %45, align 4
  %102 = load i32, i32* %45, align 4
  %103 = load i32, i32* %45, align 4
  %104 = call i32 @UNPCK_R_SB_SH(i32 %102, i32 %103)
  %105 = load i32, i32* %45, align 4
  %106 = load i32, i32* %41, align 4
  %107 = load i32, i32* %42, align 4
  %108 = call i32 @SPLATI_W2_SH(i32 %105, i32 0, i32 %106, i32 %107)
  %109 = load i64, i64* %43, align 8
  %110 = add nsw i64 %109, 2
  store i64 %110, i64* %44, align 8
  %111 = call i32 @__msa_ldi_h(i32 128)
  store i32 %111, i32* %46, align 4
  %112 = load i32, i32* %46, align 4
  %113 = shl i32 %112, 6
  store i32 %113, i32* %46, align 4
  %114 = load i32, i32* %20, align 4
  %115 = ashr i32 %114, 3
  store i32 %115, i32* %22, align 4
  br label %116

116:                                              ; preds = %424, %10
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %22, align 4
  %119 = icmp ne i32 %117, 0
  br i1 %119, label %120, label %431

120:                                              ; preds = %116
  %121 = load i32*, i32** %11, align 8
  store i32* %121, i32** %23, align 8
  %122 = load i32*, i32** %15, align 8
  store i32* %122, i32** %25, align 8
  %123 = load i32*, i32** %13, align 8
  store i32* %123, i32** %24, align 8
  %124 = load i32*, i32** %23, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i64, i64* %28, align 8
  %127 = load i64, i64* %29, align 8
  %128 = load i64, i64* %30, align 8
  %129 = call i32 @LD_SB3(i32* %124, i32 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 3, %130
  %132 = load i32*, i32** %23, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %23, align 8
  %135 = load i64, i64* %28, align 8
  %136 = load i64, i64* %29, align 8
  %137 = load i64, i64* %30, align 8
  %138 = call i32 @XORI_B3_128_SB(i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %28, align 8
  %142 = load i64, i64* %28, align 8
  %143 = load i64, i64* %43, align 8
  %144 = load i64, i64* %44, align 8
  %145 = load i64, i64* %47, align 8
  %146 = load i64, i64* %48, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %29, align 8
  %149 = load i64, i64* %29, align 8
  %150 = load i64, i64* %29, align 8
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %43, align 8
  %153 = load i64, i64* %44, align 8
  %154 = load i64, i64* %49, align 8
  %155 = load i64, i64* %50, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %30, align 8
  %158 = load i64, i64* %30, align 8
  %159 = load i64, i64* %30, align 8
  %160 = load i64, i64* %30, align 8
  %161 = load i64, i64* %43, align 8
  %162 = load i64, i64* %44, align 8
  %163 = load i64, i64* %51, align 8
  %164 = load i64, i64* %52, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %47, align 8
  %167 = load i64, i64* %48, align 8
  %168 = load i32, i32* %39, align 4
  %169 = load i32, i32* %40, align 4
  %170 = call i32 @HEVC_FILT_4TAP_SH(i64 %166, i64 %167, i32 %168, i32 %169)
  store i32 %170, i32* %55, align 4
  %171 = load i64, i64* %49, align 8
  %172 = load i64, i64* %50, align 8
  %173 = load i32, i32* %39, align 4
  %174 = load i32, i32* %40, align 4
  %175 = call i32 @HEVC_FILT_4TAP_SH(i64 %171, i64 %172, i32 %173, i32 %174)
  store i32 %175, i32* %56, align 4
  %176 = load i64, i64* %51, align 8
  %177 = load i64, i64* %52, align 8
  %178 = load i32, i32* %39, align 4
  %179 = load i32, i32* %40, align 4
  %180 = call i32 @HEVC_FILT_4TAP_SH(i64 %176, i64 %177, i32 %178, i32 %179)
  store i32 %180, i32* %57, align 4
  %181 = load i32, i32* %56, align 4
  %182 = load i32, i32* %55, align 4
  %183 = load i32, i32* %73, align 4
  %184 = load i32, i32* %77, align 4
  %185 = call i32 @ILVRL_H2_SH(i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %57, align 4
  %187 = load i32, i32* %56, align 4
  %188 = load i32, i32* %75, align 4
  %189 = load i32, i32* %79, align 4
  %190 = call i32 @ILVRL_H2_SH(i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %19, align 4
  %192 = ashr i32 %191, 2
  store i32 %192, i32* %21, align 4
  br label %193

193:                                              ; preds = %197, %120
  %194 = load i32, i32* %21, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %21, align 4
  %196 = icmp ne i32 %194, 0
  br i1 %196, label %197, label %424

197:                                              ; preds = %193
  %198 = load i32*, i32** %23, align 8
  %199 = load i32, i32* %12, align 4
  %200 = load i64, i64* %31, align 8
  %201 = load i64, i64* %32, align 8
  %202 = load i64, i64* %33, align 8
  %203 = load i64, i64* %34, align 8
  %204 = call i32 @LD_SB4(i32* %198, i32 %199, i64 %200, i64 %201, i64 %202, i64 %203)
  %205 = load i32, i32* %12, align 4
  %206 = mul nsw i32 4, %205
  %207 = load i32*, i32** %23, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32* %209, i32** %23, align 8
  %210 = load i32*, i32** %24, align 8
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %35, align 4
  %213 = load i32, i32* %36, align 4
  %214 = load i32, i32* %37, align 4
  %215 = load i32, i32* %38, align 4
  %216 = call i32 @LD_SH4(i32* %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %14, align 4
  %218 = mul nsw i32 4, %217
  %219 = load i32*, i32** %24, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %24, align 8
  %222 = load i64, i64* %31, align 8
  %223 = load i64, i64* %32, align 8
  %224 = load i64, i64* %33, align 8
  %225 = load i64, i64* %34, align 8
  %226 = call i32 @XORI_B4_128_SB(i64 %222, i64 %223, i64 %224, i64 %225)
  %227 = load i32, i32* %35, align 4
  %228 = load i32, i32* %46, align 4
  %229 = load i32, i32* %36, align 4
  %230 = load i32, i32* %46, align 4
  %231 = load i32, i32* %37, align 4
  %232 = load i32, i32* %46, align 4
  %233 = load i32, i32* %38, align 4
  %234 = load i32, i32* %46, align 4
  %235 = load i32, i32* %35, align 4
  %236 = load i32, i32* %36, align 4
  %237 = load i32, i32* %37, align 4
  %238 = load i32, i32* %38, align 4
  %239 = call i32 @ADDS_SH4_SH(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i64, i64* %31, align 8
  %241 = load i64, i64* %31, align 8
  %242 = load i64, i64* %31, align 8
  %243 = load i64, i64* %31, align 8
  %244 = load i64, i64* %43, align 8
  %245 = load i64, i64* %44, align 8
  %246 = load i64, i64* %47, align 8
  %247 = load i64, i64* %48, align 8
  %248 = call i32 @VSHF_B2_SB(i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %32, align 8
  %250 = load i64, i64* %32, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* %32, align 8
  %253 = load i64, i64* %43, align 8
  %254 = load i64, i64* %44, align 8
  %255 = load i64, i64* %49, align 8
  %256 = load i64, i64* %50, align 8
  %257 = call i32 @VSHF_B2_SB(i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256)
  %258 = load i64, i64* %33, align 8
  %259 = load i64, i64* %33, align 8
  %260 = load i64, i64* %33, align 8
  %261 = load i64, i64* %33, align 8
  %262 = load i64, i64* %43, align 8
  %263 = load i64, i64* %44, align 8
  %264 = load i64, i64* %51, align 8
  %265 = load i64, i64* %52, align 8
  %266 = call i32 @VSHF_B2_SB(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265)
  %267 = load i64, i64* %34, align 8
  %268 = load i64, i64* %34, align 8
  %269 = load i64, i64* %34, align 8
  %270 = load i64, i64* %34, align 8
  %271 = load i64, i64* %43, align 8
  %272 = load i64, i64* %44, align 8
  %273 = load i64, i64* %53, align 8
  %274 = load i64, i64* %54, align 8
  %275 = call i32 @VSHF_B2_SB(i64 %267, i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274)
  %276 = load i64, i64* %47, align 8
  %277 = load i64, i64* %48, align 8
  %278 = load i32, i32* %39, align 4
  %279 = load i32, i32* %40, align 4
  %280 = call i32 @HEVC_FILT_4TAP_SH(i64 %276, i64 %277, i32 %278, i32 %279)
  store i32 %280, i32* %58, align 4
  %281 = load i64, i64* %49, align 8
  %282 = load i64, i64* %50, align 8
  %283 = load i32, i32* %39, align 4
  %284 = load i32, i32* %40, align 4
  %285 = call i32 @HEVC_FILT_4TAP_SH(i64 %281, i64 %282, i32 %283, i32 %284)
  store i32 %285, i32* %59, align 4
  %286 = load i64, i64* %51, align 8
  %287 = load i64, i64* %52, align 8
  %288 = load i32, i32* %39, align 4
  %289 = load i32, i32* %40, align 4
  %290 = call i32 @HEVC_FILT_4TAP_SH(i64 %286, i64 %287, i32 %288, i32 %289)
  store i32 %290, i32* %60, align 4
  %291 = load i64, i64* %53, align 8
  %292 = load i64, i64* %54, align 8
  %293 = load i32, i32* %39, align 4
  %294 = load i32, i32* %40, align 4
  %295 = call i32 @HEVC_FILT_4TAP_SH(i64 %291, i64 %292, i32 %293, i32 %294)
  store i32 %295, i32* %85, align 4
  %296 = load i32, i32* %58, align 4
  %297 = load i32, i32* %57, align 4
  %298 = load i32, i32* %74, align 4
  %299 = load i32, i32* %78, align 4
  %300 = call i32 @ILVRL_H2_SH(i32 %296, i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* %59, align 4
  %302 = load i32, i32* %58, align 4
  %303 = load i32, i32* %76, align 4
  %304 = load i32, i32* %80, align 4
  %305 = call i32 @ILVRL_H2_SH(i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %60, align 4
  %307 = load i32, i32* %59, align 4
  %308 = load i32, i32* %81, align 4
  %309 = load i32, i32* %82, align 4
  %310 = call i32 @ILVRL_H2_SH(i32 %306, i32 %307, i32 %308, i32 %309)
  %311 = load i32, i32* %85, align 4
  %312 = load i32, i32* %60, align 4
  %313 = load i32, i32* %83, align 4
  %314 = load i32, i32* %84, align 4
  %315 = call i32 @ILVRL_H2_SH(i32 %311, i32 %312, i32 %313, i32 %314)
  %316 = load i32, i32* %73, align 4
  %317 = load i32, i32* %74, align 4
  %318 = load i32, i32* %41, align 4
  %319 = load i32, i32* %42, align 4
  %320 = call i32 @HEVC_FILT_4TAP(i32 %316, i32 %317, i32 %318, i32 %319)
  store i32 %320, i32* %61, align 4
  %321 = load i32, i32* %77, align 4
  %322 = load i32, i32* %78, align 4
  %323 = load i32, i32* %41, align 4
  %324 = load i32, i32* %42, align 4
  %325 = call i32 @HEVC_FILT_4TAP(i32 %321, i32 %322, i32 %323, i32 %324)
  store i32 %325, i32* %62, align 4
  %326 = load i32, i32* %75, align 4
  %327 = load i32, i32* %76, align 4
  %328 = load i32, i32* %41, align 4
  %329 = load i32, i32* %42, align 4
  %330 = call i32 @HEVC_FILT_4TAP(i32 %326, i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %63, align 4
  %331 = load i32, i32* %79, align 4
  %332 = load i32, i32* %80, align 4
  %333 = load i32, i32* %41, align 4
  %334 = load i32, i32* %42, align 4
  %335 = call i32 @HEVC_FILT_4TAP(i32 %331, i32 %332, i32 %333, i32 %334)
  store i32 %335, i32* %64, align 4
  %336 = load i32, i32* %74, align 4
  %337 = load i32, i32* %81, align 4
  %338 = load i32, i32* %41, align 4
  %339 = load i32, i32* %42, align 4
  %340 = call i32 @HEVC_FILT_4TAP(i32 %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %65, align 4
  %341 = load i32, i32* %78, align 4
  %342 = load i32, i32* %82, align 4
  %343 = load i32, i32* %41, align 4
  %344 = load i32, i32* %42, align 4
  %345 = call i32 @HEVC_FILT_4TAP(i32 %341, i32 %342, i32 %343, i32 %344)
  store i32 %345, i32* %66, align 4
  %346 = load i32, i32* %76, align 4
  %347 = load i32, i32* %83, align 4
  %348 = load i32, i32* %41, align 4
  %349 = load i32, i32* %42, align 4
  %350 = call i32 @HEVC_FILT_4TAP(i32 %346, i32 %347, i32 %348, i32 %349)
  store i32 %350, i32* %67, align 4
  %351 = load i32, i32* %80, align 4
  %352 = load i32, i32* %84, align 4
  %353 = load i32, i32* %41, align 4
  %354 = load i32, i32* %42, align 4
  %355 = call i32 @HEVC_FILT_4TAP(i32 %351, i32 %352, i32 %353, i32 %354)
  store i32 %355, i32* %68, align 4
  %356 = load i32, i32* %61, align 4
  %357 = load i32, i32* %62, align 4
  %358 = load i32, i32* %63, align 4
  %359 = load i32, i32* %64, align 4
  %360 = call i32 @SRA_4V(i32 %356, i32 %357, i32 %358, i32 %359, i32 6)
  %361 = load i32, i32* %65, align 4
  %362 = load i32, i32* %66, align 4
  %363 = load i32, i32* %67, align 4
  %364 = load i32, i32* %68, align 4
  %365 = call i32 @SRA_4V(i32 %361, i32 %362, i32 %363, i32 %364, i32 6)
  %366 = load i32, i32* %62, align 4
  %367 = load i32, i32* %61, align 4
  %368 = load i32, i32* %64, align 4
  %369 = load i32, i32* %63, align 4
  %370 = load i32, i32* %66, align 4
  %371 = load i32, i32* %65, align 4
  %372 = load i32, i32* %68, align 4
  %373 = load i32, i32* %67, align 4
  %374 = load i32, i32* %69, align 4
  %375 = load i32, i32* %70, align 4
  %376 = load i32, i32* %71, align 4
  %377 = load i32, i32* %72, align 4
  %378 = call i32 @PCKEV_H4_SH(i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377)
  %379 = load i32, i32* %35, align 4
  %380 = load i32, i32* %69, align 4
  %381 = load i32, i32* %36, align 4
  %382 = load i32, i32* %70, align 4
  %383 = load i32, i32* %37, align 4
  %384 = load i32, i32* %71, align 4
  %385 = load i32, i32* %38, align 4
  %386 = load i32, i32* %72, align 4
  %387 = load i32, i32* %69, align 4
  %388 = load i32, i32* %70, align 4
  %389 = load i32, i32* %71, align 4
  %390 = load i32, i32* %72, align 4
  %391 = call i32 @ADDS_SH4_SH(i32 %379, i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390)
  %392 = load i32, i32* %69, align 4
  %393 = load i32, i32* %70, align 4
  %394 = load i32, i32* %71, align 4
  %395 = load i32, i32* %72, align 4
  %396 = call i32 @SRARI_H4_SH(i32 %392, i32 %393, i32 %394, i32 %395, i32 7)
  %397 = load i32, i32* %69, align 4
  %398 = load i32, i32* %70, align 4
  %399 = load i32, i32* %71, align 4
  %400 = load i32, i32* %72, align 4
  %401 = call i32 @CLIP_SH4_0_255(i32 %397, i32 %398, i32 %399, i32 %400)
  %402 = load i32, i32* %70, align 4
  %403 = load i32, i32* %69, align 4
  %404 = load i32, i32* %72, align 4
  %405 = load i32, i32* %71, align 4
  %406 = load i32, i32* %26, align 4
  %407 = load i32, i32* %27, align 4
  %408 = call i32 @PCKEV_B2_UB(i32 %402, i32 %403, i32 %404, i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* %26, align 4
  %410 = load i32, i32* %27, align 4
  %411 = load i32*, i32** %25, align 8
  %412 = load i32, i32* %16, align 4
  %413 = call i32 @ST_D4(i32 %409, i32 %410, i32 0, i32 1, i32 0, i32 1, i32* %411, i32 %412)
  %414 = load i32, i32* %16, align 4
  %415 = mul nsw i32 4, %414
  %416 = load i32*, i32** %25, align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  store i32* %418, i32** %25, align 8
  %419 = load i32, i32* %81, align 4
  store i32 %419, i32* %73, align 4
  %420 = load i32, i32* %82, align 4
  store i32 %420, i32* %77, align 4
  %421 = load i32, i32* %83, align 4
  store i32 %421, i32* %75, align 4
  %422 = load i32, i32* %84, align 4
  store i32 %422, i32* %79, align 4
  %423 = load i32, i32* %85, align 4
  store i32 %423, i32* %57, align 4
  br label %193

424:                                              ; preds = %193
  %425 = load i32*, i32** %11, align 8
  %426 = getelementptr inbounds i32, i32* %425, i64 8
  store i32* %426, i32** %11, align 8
  %427 = load i32*, i32** %15, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 8
  store i32* %428, i32** %15, align 8
  %429 = load i32*, i32** %13, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 8
  store i32* %430, i32** %13, align 8
  br label %116

431:                                              ; preds = %116
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

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

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @ADDS_SH4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH4_0_255(i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
