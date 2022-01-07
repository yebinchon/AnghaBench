; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @hevc_hv_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
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
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %85 = load i32, i32* @ff_hevc_mask_arr, align 4
  %86 = call i64 @LD_SB(i32 %85)
  store i64 %86, i64* %26, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32*, i32** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = sub i64 0, %90
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32* %92, i32** %7, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @LD_SH(i32* %93)
  store i32 %94, i32* %28, align 4
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = call i32 @SPLATI_H2_SH(i32 %95, i32 0, i32 1, i32 %96, i32 %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @LD_SH(i32* %99)
  store i32 %100, i32* %28, align 4
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %28, align 4
  %103 = call i32 @UNPCK_R_SB_SH(i32 %101, i32 %102)
  %104 = load i32, i32* %28, align 4
  %105 = load i32, i32* %24, align 4
  %106 = load i32, i32* %25, align 4
  %107 = call i32 @SPLATI_W2_SH(i32 %104, i32 0, i32 %105, i32 %106)
  %108 = load i64, i64* %26, align 8
  %109 = add nsw i64 %108, 2
  store i64 %109, i64* %27, align 8
  %110 = call i32 @__msa_ldi_h(i32 128)
  store i32 %110, i32* %29, align 4
  %111 = load i32, i32* %29, align 4
  %112 = shl i32 %111, 6
  store i32 %112, i32* %29, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %15, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @LD_SB5(i32* %113, i32 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 5, %121
  %123 = load i32*, i32** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %7, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %20, align 8
  %131 = load i64, i64* %21, align 8
  %132 = call i32 @LD_SB4(i32* %126, i32 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @XORI_B5_128_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %18, align 8
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %21, align 8
  %143 = call i32 @XORI_B4_128_SB(i64 %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %26, align 8
  %149 = load i64, i64* %27, align 8
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %31, align 8
  %152 = call i32 @VSHF_B2_SB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151)
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %26, align 8
  %158 = load i64, i64* %27, align 8
  %159 = load i64, i64* %32, align 8
  %160 = load i64, i64* %33, align 8
  %161 = call i32 @VSHF_B2_SB(i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %15, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i64, i64* %15, align 8
  %165 = load i64, i64* %15, align 8
  %166 = load i64, i64* %26, align 8
  %167 = load i64, i64* %27, align 8
  %168 = load i64, i64* %34, align 8
  %169 = load i64, i64* %35, align 8
  %170 = call i32 @VSHF_B2_SB(i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %16, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load i64, i64* %26, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load i64, i64* %36, align 8
  %178 = load i64, i64* %37, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %17, align 8
  %181 = load i64, i64* %17, align 8
  %182 = load i64, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %26, align 8
  %185 = load i64, i64* %27, align 8
  %186 = load i64, i64* %38, align 8
  %187 = load i64, i64* %39, align 8
  %188 = call i32 @VSHF_B2_SB(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* %18, align 8
  %191 = load i64, i64* %18, align 8
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %26, align 8
  %194 = load i64, i64* %27, align 8
  %195 = load i64, i64* %40, align 8
  %196 = load i64, i64* %41, align 8
  %197 = call i32 @VSHF_B2_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %19, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %19, align 8
  %202 = load i64, i64* %26, align 8
  %203 = load i64, i64* %27, align 8
  %204 = load i64, i64* %42, align 8
  %205 = load i64, i64* %43, align 8
  %206 = call i32 @VSHF_B2_SB(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %20, align 8
  %208 = load i64, i64* %20, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load i64, i64* %20, align 8
  %211 = load i64, i64* %26, align 8
  %212 = load i64, i64* %27, align 8
  %213 = load i64, i64* %44, align 8
  %214 = load i64, i64* %45, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %21, align 8
  %217 = load i64, i64* %21, align 8
  %218 = load i64, i64* %21, align 8
  %219 = load i64, i64* %21, align 8
  %220 = load i64, i64* %26, align 8
  %221 = load i64, i64* %27, align 8
  %222 = load i64, i64* %46, align 8
  %223 = load i64, i64* %47, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i32, i32* %29, align 4
  store i32 %225, i32* %48, align 4
  %226 = load i64, i64* %30, align 8
  %227 = load i64, i64* %31, align 8
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %48, align 4
  %231 = load i32, i32* %48, align 4
  %232 = call i32 @DPADD_SB2_SH(i64 %226, i64 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i32, i32* %29, align 4
  store i32 %233, i32* %49, align 4
  %234 = load i64, i64* %32, align 8
  %235 = load i64, i64* %33, align 8
  %236 = load i32, i32* %22, align 4
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %49, align 4
  %239 = load i32, i32* %49, align 4
  %240 = call i32 @DPADD_SB2_SH(i64 %234, i64 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %29, align 4
  store i32 %241, i32* %50, align 4
  %242 = load i64, i64* %34, align 8
  %243 = load i64, i64* %35, align 8
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %23, align 4
  %246 = load i32, i32* %50, align 4
  %247 = load i32, i32* %50, align 4
  %248 = call i32 @DPADD_SB2_SH(i64 %242, i64 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %29, align 4
  store i32 %249, i32* %51, align 4
  %250 = load i64, i64* %36, align 8
  %251 = load i64, i64* %37, align 8
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %23, align 4
  %254 = load i32, i32* %51, align 4
  %255 = load i32, i32* %51, align 4
  %256 = call i32 @DPADD_SB2_SH(i64 %250, i64 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %29, align 4
  store i32 %257, i32* %52, align 4
  %258 = load i64, i64* %38, align 8
  %259 = load i64, i64* %39, align 8
  %260 = load i32, i32* %22, align 4
  %261 = load i32, i32* %23, align 4
  %262 = load i32, i32* %52, align 4
  %263 = load i32, i32* %52, align 4
  %264 = call i32 @DPADD_SB2_SH(i64 %258, i64 %259, i32 %260, i32 %261, i32 %262, i32 %263)
  %265 = load i32, i32* %29, align 4
  store i32 %265, i32* %53, align 4
  %266 = load i64, i64* %40, align 8
  %267 = load i64, i64* %41, align 8
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* %23, align 4
  %270 = load i32, i32* %53, align 4
  %271 = load i32, i32* %53, align 4
  %272 = call i32 @DPADD_SB2_SH(i64 %266, i64 %267, i32 %268, i32 %269, i32 %270, i32 %271)
  %273 = load i32, i32* %29, align 4
  store i32 %273, i32* %54, align 4
  %274 = load i64, i64* %42, align 8
  %275 = load i64, i64* %43, align 8
  %276 = load i32, i32* %22, align 4
  %277 = load i32, i32* %23, align 4
  %278 = load i32, i32* %54, align 4
  %279 = load i32, i32* %54, align 4
  %280 = call i32 @DPADD_SB2_SH(i64 %274, i64 %275, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %29, align 4
  store i32 %281, i32* %55, align 4
  %282 = load i64, i64* %44, align 8
  %283 = load i64, i64* %45, align 8
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* %23, align 4
  %286 = load i32, i32* %55, align 4
  %287 = load i32, i32* %55, align 4
  %288 = call i32 @DPADD_SB2_SH(i64 %282, i64 %283, i32 %284, i32 %285, i32 %286, i32 %287)
  %289 = load i32, i32* %29, align 4
  store i32 %289, i32* %56, align 4
  %290 = load i64, i64* %46, align 8
  %291 = load i64, i64* %47, align 8
  %292 = load i32, i32* %22, align 4
  %293 = load i32, i32* %23, align 4
  %294 = load i32, i32* %56, align 4
  %295 = load i32, i32* %56, align 4
  %296 = call i32 @DPADD_SB2_SH(i64 %290, i64 %291, i32 %292, i32 %293, i32 %294, i32 %295)
  %297 = load i32, i32* %49, align 4
  %298 = load i32, i32* %48, align 4
  %299 = load i32, i32* %69, align 4
  %300 = load i32, i32* %71, align 4
  %301 = call i32 @ILVRL_H2_SH(i32 %297, i32 %298, i32 %299, i32 %300)
  %302 = load i32, i32* %50, align 4
  %303 = load i32, i32* %49, align 4
  %304 = load i32, i32* %73, align 4
  %305 = load i32, i32* %75, align 4
  %306 = call i32 @ILVRL_H2_SH(i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %51, align 4
  %308 = load i32, i32* %50, align 4
  %309 = load i32, i32* %70, align 4
  %310 = load i32, i32* %72, align 4
  %311 = call i32 @ILVRL_H2_SH(i32 %307, i32 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %52, align 4
  %313 = load i32, i32* %51, align 4
  %314 = load i32, i32* %74, align 4
  %315 = load i32, i32* %76, align 4
  %316 = call i32 @ILVRL_H2_SH(i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* %53, align 4
  %318 = load i32, i32* %52, align 4
  %319 = load i32, i32* %77, align 4
  %320 = load i32, i32* %78, align 4
  %321 = call i32 @ILVRL_H2_SH(i32 %317, i32 %318, i32 %319, i32 %320)
  %322 = load i32, i32* %54, align 4
  %323 = load i32, i32* %53, align 4
  %324 = load i32, i32* %79, align 4
  %325 = load i32, i32* %80, align 4
  %326 = call i32 @ILVRL_H2_SH(i32 %322, i32 %323, i32 %324, i32 %325)
  %327 = load i32, i32* %55, align 4
  %328 = load i32, i32* %54, align 4
  %329 = load i32, i32* %81, align 4
  %330 = load i32, i32* %82, align 4
  %331 = call i32 @ILVRL_H2_SH(i32 %327, i32 %328, i32 %329, i32 %330)
  %332 = load i32, i32* %56, align 4
  %333 = load i32, i32* %55, align 4
  %334 = load i32, i32* %83, align 4
  %335 = load i32, i32* %84, align 4
  %336 = call i32 @ILVRL_H2_SH(i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %69, align 4
  %338 = load i32, i32* %70, align 4
  %339 = load i32, i32* %24, align 4
  %340 = load i32, i32* %25, align 4
  %341 = call i32 @HEVC_FILT_4TAP(i32 %337, i32 %338, i32 %339, i32 %340)
  store i32 %341, i32* %57, align 4
  %342 = load i32, i32* %71, align 4
  %343 = load i32, i32* %72, align 4
  %344 = load i32, i32* %24, align 4
  %345 = load i32, i32* %25, align 4
  %346 = call i32 @HEVC_FILT_4TAP(i32 %342, i32 %343, i32 %344, i32 %345)
  store i32 %346, i32* %58, align 4
  %347 = load i32, i32* %73, align 4
  %348 = load i32, i32* %74, align 4
  %349 = load i32, i32* %24, align 4
  %350 = load i32, i32* %25, align 4
  %351 = call i32 @HEVC_FILT_4TAP(i32 %347, i32 %348, i32 %349, i32 %350)
  store i32 %351, i32* %59, align 4
  %352 = load i32, i32* %75, align 4
  %353 = load i32, i32* %76, align 4
  %354 = load i32, i32* %24, align 4
  %355 = load i32, i32* %25, align 4
  %356 = call i32 @HEVC_FILT_4TAP(i32 %352, i32 %353, i32 %354, i32 %355)
  store i32 %356, i32* %60, align 4
  %357 = load i32, i32* %70, align 4
  %358 = load i32, i32* %77, align 4
  %359 = load i32, i32* %24, align 4
  %360 = load i32, i32* %25, align 4
  %361 = call i32 @HEVC_FILT_4TAP(i32 %357, i32 %358, i32 %359, i32 %360)
  store i32 %361, i32* %61, align 4
  %362 = load i32, i32* %72, align 4
  %363 = load i32, i32* %78, align 4
  %364 = load i32, i32* %24, align 4
  %365 = load i32, i32* %25, align 4
  %366 = call i32 @HEVC_FILT_4TAP(i32 %362, i32 %363, i32 %364, i32 %365)
  store i32 %366, i32* %62, align 4
  %367 = load i32, i32* %74, align 4
  %368 = load i32, i32* %79, align 4
  %369 = load i32, i32* %24, align 4
  %370 = load i32, i32* %25, align 4
  %371 = call i32 @HEVC_FILT_4TAP(i32 %367, i32 %368, i32 %369, i32 %370)
  store i32 %371, i32* %63, align 4
  %372 = load i32, i32* %76, align 4
  %373 = load i32, i32* %80, align 4
  %374 = load i32, i32* %24, align 4
  %375 = load i32, i32* %25, align 4
  %376 = call i32 @HEVC_FILT_4TAP(i32 %372, i32 %373, i32 %374, i32 %375)
  store i32 %376, i32* %64, align 4
  %377 = load i32, i32* %77, align 4
  %378 = load i32, i32* %81, align 4
  %379 = load i32, i32* %24, align 4
  %380 = load i32, i32* %25, align 4
  %381 = call i32 @HEVC_FILT_4TAP(i32 %377, i32 %378, i32 %379, i32 %380)
  store i32 %381, i32* %65, align 4
  %382 = load i32, i32* %78, align 4
  %383 = load i32, i32* %82, align 4
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %25, align 4
  %386 = call i32 @HEVC_FILT_4TAP(i32 %382, i32 %383, i32 %384, i32 %385)
  store i32 %386, i32* %66, align 4
  %387 = load i32, i32* %79, align 4
  %388 = load i32, i32* %83, align 4
  %389 = load i32, i32* %24, align 4
  %390 = load i32, i32* %25, align 4
  %391 = call i32 @HEVC_FILT_4TAP(i32 %387, i32 %388, i32 %389, i32 %390)
  store i32 %391, i32* %67, align 4
  %392 = load i32, i32* %80, align 4
  %393 = load i32, i32* %84, align 4
  %394 = load i32, i32* %24, align 4
  %395 = load i32, i32* %25, align 4
  %396 = call i32 @HEVC_FILT_4TAP(i32 %392, i32 %393, i32 %394, i32 %395)
  store i32 %396, i32* %68, align 4
  %397 = load i32, i32* %57, align 4
  %398 = load i32, i32* %58, align 4
  %399 = load i32, i32* %59, align 4
  %400 = load i32, i32* %60, align 4
  %401 = call i32 @SRA_4V(i32 %397, i32 %398, i32 %399, i32 %400, i32 6)
  %402 = load i32, i32* %61, align 4
  %403 = load i32, i32* %62, align 4
  %404 = load i32, i32* %63, align 4
  %405 = load i32, i32* %64, align 4
  %406 = call i32 @SRA_4V(i32 %402, i32 %403, i32 %404, i32 %405, i32 6)
  %407 = load i32, i32* %65, align 4
  %408 = load i32, i32* %66, align 4
  %409 = load i32, i32* %67, align 4
  %410 = load i32, i32* %68, align 4
  %411 = call i32 @SRA_4V(i32 %407, i32 %408, i32 %409, i32 %410, i32 6)
  %412 = load i32, i32* %58, align 4
  %413 = load i32, i32* %57, align 4
  %414 = load i32, i32* %60, align 4
  %415 = load i32, i32* %59, align 4
  %416 = load i32, i32* %62, align 4
  %417 = load i32, i32* %61, align 4
  %418 = load i32, i32* %64, align 4
  %419 = load i32, i32* %63, align 4
  %420 = load i32, i32* %57, align 4
  %421 = load i32, i32* %59, align 4
  %422 = load i32, i32* %61, align 4
  %423 = load i32, i32* %63, align 4
  %424 = call i32 @PCKEV_H4_SW(i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 %417, i32 %418, i32 %419, i32 %420, i32 %421, i32 %422, i32 %423)
  %425 = load i32, i32* %66, align 4
  %426 = load i32, i32* %65, align 4
  %427 = load i32, i32* %68, align 4
  %428 = load i32, i32* %67, align 4
  %429 = load i32, i32* %65, align 4
  %430 = load i32, i32* %67, align 4
  %431 = call i32 @PCKEV_H2_SW(i32 %425, i32 %426, i32 %427, i32 %428, i32 %429, i32 %430)
  %432 = load i32, i32* %57, align 4
  %433 = load i32, i32* %59, align 4
  %434 = load i32*, i32** %9, align 8
  %435 = load i32, i32* %10, align 4
  %436 = call i32 @ST_SW2(i32 %432, i32 %433, i32* %434, i32 %435)
  %437 = load i32, i32* %10, align 4
  %438 = mul nsw i32 2, %437
  %439 = load i32*, i32** %9, align 8
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %439, i64 %440
  store i32* %441, i32** %9, align 8
  %442 = load i32, i32* %61, align 4
  %443 = load i32, i32* %63, align 4
  %444 = load i32*, i32** %9, align 8
  %445 = load i32, i32* %10, align 4
  %446 = call i32 @ST_SW2(i32 %442, i32 %443, i32* %444, i32 %445)
  %447 = load i32, i32* %10, align 4
  %448 = mul nsw i32 2, %447
  %449 = load i32*, i32** %9, align 8
  %450 = sext i32 %448 to i64
  %451 = getelementptr inbounds i32, i32* %449, i64 %450
  store i32* %451, i32** %9, align 8
  %452 = load i32, i32* %65, align 4
  %453 = load i32, i32* %67, align 4
  %454 = load i32*, i32** %9, align 8
  %455 = load i32, i32* %10, align 4
  %456 = call i32 @ST_SW2(i32 %452, i32 %453, i32* %454, i32 %455)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SW2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
