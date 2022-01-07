; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %96 = load i32, i32* @ff_hevc_mask_arr, align 4
  %97 = call i64 @LD_SB(i32 %96)
  store i64 %97, i64* %30, align 8
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @LD_SH(i32* %104)
  store i32 %105, i32* %32, align 4
  %106 = load i32, i32* %32, align 4
  %107 = load i32, i32* %26, align 4
  %108 = load i32, i32* %27, align 4
  %109 = call i32 @SPLATI_H2_SH(i32 %106, i32 0, i32 1, i32 %107, i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @LD_SH(i32* %110)
  store i32 %111, i32* %32, align 4
  %112 = load i32, i32* %32, align 4
  %113 = load i32, i32* %32, align 4
  %114 = call i32 @UNPCK_R_SB_SH(i32 %112, i32 %113)
  %115 = load i32, i32* %32, align 4
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %29, align 4
  %118 = call i32 @SPLATI_W2_SH(i32 %115, i32 0, i32 %116, i32 %117)
  %119 = load i64, i64* %30, align 8
  %120 = add nsw i64 %119, 2
  store i64 %120, i64* %31, align 8
  %121 = call i32 @__msa_ldi_h(i32 128)
  store i32 %121, i32* %33, align 4
  %122 = load i32, i32* %33, align 4
  %123 = shl i32 %122, 6
  store i32 %123, i32* %33, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = call i32 @LD_SB3(i32* %124, i32 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 3, %130
  %132 = load i32*, i32** %8, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %8, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @XORI_B3_128_SB(i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %30, align 8
  %144 = load i64, i64* %31, align 8
  %145 = load i64, i64* %34, align 8
  %146 = load i64, i64* %35, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %16, align 8
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %30, align 8
  %153 = load i64, i64* %31, align 8
  %154 = load i64, i64* %36, align 8
  %155 = load i64, i64* %37, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %17, align 8
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %30, align 8
  %162 = load i64, i64* %31, align 8
  %163 = load i64, i64* %38, align 8
  %164 = load i64, i64* %39, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i32, i32* %33, align 4
  store i32 %166, i32* %42, align 4
  %167 = load i32, i32* %33, align 4
  store i32 %167, i32* %43, align 4
  %168 = load i32, i32* %33, align 4
  store i32 %168, i32* %44, align 4
  %169 = load i64, i64* %34, align 8
  %170 = load i64, i64* %35, align 8
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = load i32, i32* %42, align 4
  %174 = load i32, i32* %42, align 4
  %175 = call i32 @DPADD_SB2_SH(i64 %169, i64 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i64, i64* %36, align 8
  %177 = load i64, i64* %37, align 8
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %43, align 4
  %181 = load i32, i32* %43, align 4
  %182 = call i32 @DPADD_SB2_SH(i64 %176, i64 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i64, i64* %38, align 8
  %184 = load i64, i64* %39, align 8
  %185 = load i32, i32* %26, align 4
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %44, align 4
  %188 = load i32, i32* %44, align 4
  %189 = call i32 @DPADD_SB2_SH(i64 %183, i64 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %43, align 4
  %191 = load i32, i32* %42, align 4
  %192 = load i32, i32* %59, align 4
  %193 = load i32, i32* %69, align 4
  %194 = call i32 @ILVRL_H2_SH(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %43, align 4
  %197 = load i32, i32* %64, align 4
  %198 = load i32, i32* %74, align 4
  %199 = call i32 @ILVRL_H2_SH(i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i64, i64* %18, align 8
  %203 = load i64, i64* %19, align 8
  %204 = load i64, i64* %20, align 8
  %205 = load i64, i64* %21, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i64, i64* %23, align 8
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %25, align 8
  %210 = call i32 @LD_SB8(i32* %200, i32 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* %19, align 8
  %213 = load i64, i64* %20, align 8
  %214 = load i64, i64* %21, align 8
  %215 = load i64, i64* %22, align 8
  %216 = load i64, i64* %23, align 8
  %217 = load i64, i64* %24, align 8
  %218 = load i64, i64* %25, align 8
  %219 = call i32 @XORI_B8_128_SB(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %18, align 8
  %221 = load i64, i64* %18, align 8
  %222 = load i64, i64* %18, align 8
  %223 = load i64, i64* %18, align 8
  %224 = load i64, i64* %30, align 8
  %225 = load i64, i64* %31, align 8
  %226 = load i64, i64* %34, align 8
  %227 = load i64, i64* %35, align 8
  %228 = call i32 @VSHF_B2_SB(i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227)
  %229 = load i64, i64* %19, align 8
  %230 = load i64, i64* %19, align 8
  %231 = load i64, i64* %19, align 8
  %232 = load i64, i64* %19, align 8
  %233 = load i64, i64* %30, align 8
  %234 = load i64, i64* %31, align 8
  %235 = load i64, i64* %36, align 8
  %236 = load i64, i64* %37, align 8
  %237 = call i32 @VSHF_B2_SB(i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i64, i64* %20, align 8
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* %20, align 8
  %241 = load i64, i64* %20, align 8
  %242 = load i64, i64* %30, align 8
  %243 = load i64, i64* %31, align 8
  %244 = load i64, i64* %38, align 8
  %245 = load i64, i64* %39, align 8
  %246 = call i32 @VSHF_B2_SB(i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245)
  %247 = load i64, i64* %21, align 8
  %248 = load i64, i64* %21, align 8
  %249 = load i64, i64* %21, align 8
  %250 = load i64, i64* %21, align 8
  %251 = load i64, i64* %30, align 8
  %252 = load i64, i64* %31, align 8
  %253 = load i64, i64* %40, align 8
  %254 = load i64, i64* %41, align 8
  %255 = call i32 @VSHF_B2_SB(i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254)
  %256 = load i32, i32* %33, align 4
  store i32 %256, i32* %45, align 4
  %257 = load i32, i32* %33, align 4
  store i32 %257, i32* %46, align 4
  %258 = load i32, i32* %33, align 4
  store i32 %258, i32* %47, align 4
  %259 = load i32, i32* %33, align 4
  store i32 %259, i32* %48, align 4
  %260 = load i64, i64* %34, align 8
  %261 = load i64, i64* %35, align 8
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %27, align 4
  %264 = load i32, i32* %45, align 4
  %265 = load i32, i32* %45, align 4
  %266 = call i32 @DPADD_SB2_SH(i64 %260, i64 %261, i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i64, i64* %36, align 8
  %268 = load i64, i64* %37, align 8
  %269 = load i32, i32* %26, align 4
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* %46, align 4
  %272 = load i32, i32* %46, align 4
  %273 = call i32 @DPADD_SB2_SH(i64 %267, i64 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i64, i64* %38, align 8
  %275 = load i64, i64* %39, align 8
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %27, align 4
  %278 = load i32, i32* %47, align 4
  %279 = load i32, i32* %47, align 4
  %280 = call i32 @DPADD_SB2_SH(i64 %274, i64 %275, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i64, i64* %40, align 8
  %282 = load i64, i64* %41, align 8
  %283 = load i32, i32* %26, align 4
  %284 = load i32, i32* %27, align 4
  %285 = load i32, i32* %48, align 4
  %286 = load i32, i32* %48, align 4
  %287 = call i32 @DPADD_SB2_SH(i64 %281, i64 %282, i32 %283, i32 %284, i32 %285, i32 %286)
  %288 = load i64, i64* %22, align 8
  %289 = load i64, i64* %22, align 8
  %290 = load i64, i64* %22, align 8
  %291 = load i64, i64* %22, align 8
  %292 = load i64, i64* %30, align 8
  %293 = load i64, i64* %31, align 8
  %294 = load i64, i64* %34, align 8
  %295 = load i64, i64* %35, align 8
  %296 = call i32 @VSHF_B2_SB(i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295)
  %297 = load i64, i64* %23, align 8
  %298 = load i64, i64* %23, align 8
  %299 = load i64, i64* %23, align 8
  %300 = load i64, i64* %23, align 8
  %301 = load i64, i64* %30, align 8
  %302 = load i64, i64* %31, align 8
  %303 = load i64, i64* %36, align 8
  %304 = load i64, i64* %37, align 8
  %305 = call i32 @VSHF_B2_SB(i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304)
  %306 = load i64, i64* %24, align 8
  %307 = load i64, i64* %24, align 8
  %308 = load i64, i64* %24, align 8
  %309 = load i64, i64* %24, align 8
  %310 = load i64, i64* %30, align 8
  %311 = load i64, i64* %31, align 8
  %312 = load i64, i64* %38, align 8
  %313 = load i64, i64* %39, align 8
  %314 = call i32 @VSHF_B2_SB(i64 %306, i64 %307, i64 %308, i64 %309, i64 %310, i64 %311, i64 %312, i64 %313)
  %315 = load i64, i64* %25, align 8
  %316 = load i64, i64* %25, align 8
  %317 = load i64, i64* %25, align 8
  %318 = load i64, i64* %25, align 8
  %319 = load i64, i64* %30, align 8
  %320 = load i64, i64* %31, align 8
  %321 = load i64, i64* %40, align 8
  %322 = load i64, i64* %41, align 8
  %323 = call i32 @VSHF_B2_SB(i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i64 %320, i64 %321, i64 %322)
  %324 = load i32, i32* %33, align 4
  store i32 %324, i32* %49, align 4
  %325 = load i32, i32* %33, align 4
  store i32 %325, i32* %50, align 4
  %326 = load i32, i32* %33, align 4
  store i32 %326, i32* %51, align 4
  %327 = load i32, i32* %33, align 4
  store i32 %327, i32* %52, align 4
  %328 = load i64, i64* %34, align 8
  %329 = load i64, i64* %35, align 8
  %330 = load i32, i32* %26, align 4
  %331 = load i32, i32* %27, align 4
  %332 = load i32, i32* %49, align 4
  %333 = load i32, i32* %49, align 4
  %334 = call i32 @DPADD_SB2_SH(i64 %328, i64 %329, i32 %330, i32 %331, i32 %332, i32 %333)
  %335 = load i64, i64* %36, align 8
  %336 = load i64, i64* %37, align 8
  %337 = load i32, i32* %26, align 4
  %338 = load i32, i32* %27, align 4
  %339 = load i32, i32* %50, align 4
  %340 = load i32, i32* %50, align 4
  %341 = call i32 @DPADD_SB2_SH(i64 %335, i64 %336, i32 %337, i32 %338, i32 %339, i32 %340)
  %342 = load i64, i64* %38, align 8
  %343 = load i64, i64* %39, align 8
  %344 = load i32, i32* %26, align 4
  %345 = load i32, i32* %27, align 4
  %346 = load i32, i32* %51, align 4
  %347 = load i32, i32* %51, align 4
  %348 = call i32 @DPADD_SB2_SH(i64 %342, i64 %343, i32 %344, i32 %345, i32 %346, i32 %347)
  %349 = load i64, i64* %40, align 8
  %350 = load i64, i64* %41, align 8
  %351 = load i32, i32* %26, align 4
  %352 = load i32, i32* %27, align 4
  %353 = load i32, i32* %52, align 4
  %354 = load i32, i32* %52, align 4
  %355 = call i32 @DPADD_SB2_SH(i64 %349, i64 %350, i32 %351, i32 %352, i32 %353, i32 %354)
  %356 = load i32, i32* %45, align 4
  %357 = load i32, i32* %44, align 4
  %358 = load i32, i32* %60, align 4
  %359 = load i32, i32* %70, align 4
  %360 = call i32 @ILVRL_H2_SH(i32 %356, i32 %357, i32 %358, i32 %359)
  %361 = load i32, i32* %46, align 4
  %362 = load i32, i32* %45, align 4
  %363 = load i32, i32* %65, align 4
  %364 = load i32, i32* %75, align 4
  %365 = call i32 @ILVRL_H2_SH(i32 %361, i32 %362, i32 %363, i32 %364)
  %366 = load i32, i32* %47, align 4
  %367 = load i32, i32* %46, align 4
  %368 = load i32, i32* %61, align 4
  %369 = load i32, i32* %71, align 4
  %370 = call i32 @ILVRL_H2_SH(i32 %366, i32 %367, i32 %368, i32 %369)
  %371 = load i32, i32* %48, align 4
  %372 = load i32, i32* %47, align 4
  %373 = load i32, i32* %66, align 4
  %374 = load i32, i32* %76, align 4
  %375 = call i32 @ILVRL_H2_SH(i32 %371, i32 %372, i32 %373, i32 %374)
  %376 = load i32, i32* %49, align 4
  %377 = load i32, i32* %48, align 4
  %378 = load i32, i32* %62, align 4
  %379 = load i32, i32* %72, align 4
  %380 = call i32 @ILVRL_H2_SH(i32 %376, i32 %377, i32 %378, i32 %379)
  %381 = load i32, i32* %50, align 4
  %382 = load i32, i32* %49, align 4
  %383 = load i32, i32* %67, align 4
  %384 = load i32, i32* %77, align 4
  %385 = call i32 @ILVRL_H2_SH(i32 %381, i32 %382, i32 %383, i32 %384)
  %386 = load i32, i32* %51, align 4
  %387 = load i32, i32* %50, align 4
  %388 = load i32, i32* %63, align 4
  %389 = load i32, i32* %73, align 4
  %390 = call i32 @ILVRL_H2_SH(i32 %386, i32 %387, i32 %388, i32 %389)
  %391 = load i32, i32* %52, align 4
  %392 = load i32, i32* %51, align 4
  %393 = load i32, i32* %68, align 4
  %394 = load i32, i32* %78, align 4
  %395 = call i32 @ILVRL_H2_SH(i32 %391, i32 %392, i32 %393, i32 %394)
  %396 = load i32, i32* %74, align 4
  %397 = load i32, i32* %69, align 4
  %398 = load i32, i32* %75, align 4
  %399 = load i32, i32* %70, align 4
  %400 = load i32, i32* %79, align 4
  %401 = load i32, i32* %80, align 4
  %402 = call i32 @PCKEV_D2_SH(i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401)
  %403 = load i32, i32* %76, align 4
  %404 = load i32, i32* %71, align 4
  %405 = load i32, i32* %77, align 4
  %406 = load i32, i32* %72, align 4
  %407 = load i32, i32* %81, align 4
  %408 = load i32, i32* %82, align 4
  %409 = call i32 @PCKEV_D2_SH(i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408)
  %410 = load i32, i32* %78, align 4
  %411 = load i32, i32* %73, align 4
  %412 = call i64 @__msa_pckev_d(i32 %410, i32 %411)
  %413 = trunc i64 %412 to i32
  store i32 %413, i32* %83, align 4
  %414 = load i32, i32* %59, align 4
  %415 = load i32, i32* %60, align 4
  %416 = load i32, i32* %28, align 4
  %417 = load i32, i32* %29, align 4
  %418 = call i32 @HEVC_FILT_4TAP(i32 %414, i32 %415, i32 %416, i32 %417)
  store i32 %418, i32* %84, align 4
  %419 = load i32, i32* %64, align 4
  %420 = load i32, i32* %65, align 4
  %421 = load i32, i32* %28, align 4
  %422 = load i32, i32* %29, align 4
  %423 = call i32 @HEVC_FILT_4TAP(i32 %419, i32 %420, i32 %421, i32 %422)
  store i32 %423, i32* %85, align 4
  %424 = load i32, i32* %60, align 4
  %425 = load i32, i32* %61, align 4
  %426 = load i32, i32* %28, align 4
  %427 = load i32, i32* %29, align 4
  %428 = call i32 @HEVC_FILT_4TAP(i32 %424, i32 %425, i32 %426, i32 %427)
  store i32 %428, i32* %86, align 4
  %429 = load i32, i32* %65, align 4
  %430 = load i32, i32* %66, align 4
  %431 = load i32, i32* %28, align 4
  %432 = load i32, i32* %29, align 4
  %433 = call i32 @HEVC_FILT_4TAP(i32 %429, i32 %430, i32 %431, i32 %432)
  store i32 %433, i32* %87, align 4
  %434 = load i32, i32* %61, align 4
  %435 = load i32, i32* %62, align 4
  %436 = load i32, i32* %28, align 4
  %437 = load i32, i32* %29, align 4
  %438 = call i32 @HEVC_FILT_4TAP(i32 %434, i32 %435, i32 %436, i32 %437)
  store i32 %438, i32* %88, align 4
  %439 = load i32, i32* %66, align 4
  %440 = load i32, i32* %67, align 4
  %441 = load i32, i32* %28, align 4
  %442 = load i32, i32* %29, align 4
  %443 = call i32 @HEVC_FILT_4TAP(i32 %439, i32 %440, i32 %441, i32 %442)
  store i32 %443, i32* %89, align 4
  %444 = load i32, i32* %62, align 4
  %445 = load i32, i32* %63, align 4
  %446 = load i32, i32* %28, align 4
  %447 = load i32, i32* %29, align 4
  %448 = call i32 @HEVC_FILT_4TAP(i32 %444, i32 %445, i32 %446, i32 %447)
  store i32 %448, i32* %90, align 4
  %449 = load i32, i32* %67, align 4
  %450 = load i32, i32* %68, align 4
  %451 = load i32, i32* %28, align 4
  %452 = load i32, i32* %29, align 4
  %453 = call i32 @HEVC_FILT_4TAP(i32 %449, i32 %450, i32 %451, i32 %452)
  store i32 %453, i32* %91, align 4
  %454 = load i32, i32* %79, align 4
  %455 = load i32, i32* %80, align 4
  %456 = load i32, i32* %28, align 4
  %457 = load i32, i32* %29, align 4
  %458 = call i32 @HEVC_FILT_4TAP(i32 %454, i32 %455, i32 %456, i32 %457)
  store i32 %458, i32* %92, align 4
  %459 = load i32, i32* %80, align 4
  %460 = load i32, i32* %81, align 4
  %461 = load i32, i32* %28, align 4
  %462 = load i32, i32* %29, align 4
  %463 = call i32 @HEVC_FILT_4TAP(i32 %459, i32 %460, i32 %461, i32 %462)
  store i32 %463, i32* %93, align 4
  %464 = load i32, i32* %81, align 4
  %465 = load i32, i32* %82, align 4
  %466 = load i32, i32* %28, align 4
  %467 = load i32, i32* %29, align 4
  %468 = call i32 @HEVC_FILT_4TAP(i32 %464, i32 %465, i32 %466, i32 %467)
  store i32 %468, i32* %94, align 4
  %469 = load i32, i32* %82, align 4
  %470 = load i32, i32* %83, align 4
  %471 = load i32, i32* %28, align 4
  %472 = load i32, i32* %29, align 4
  %473 = call i32 @HEVC_FILT_4TAP(i32 %469, i32 %470, i32 %471, i32 %472)
  store i32 %473, i32* %95, align 4
  %474 = load i32, i32* %84, align 4
  %475 = load i32, i32* %85, align 4
  %476 = load i32, i32* %86, align 4
  %477 = load i32, i32* %87, align 4
  %478 = call i32 @SRA_4V(i32 %474, i32 %475, i32 %476, i32 %477, i32 6)
  %479 = load i32, i32* %88, align 4
  %480 = load i32, i32* %89, align 4
  %481 = load i32, i32* %90, align 4
  %482 = load i32, i32* %91, align 4
  %483 = call i32 @SRA_4V(i32 %479, i32 %480, i32 %481, i32 %482, i32 6)
  %484 = load i32, i32* %92, align 4
  %485 = load i32, i32* %93, align 4
  %486 = load i32, i32* %94, align 4
  %487 = load i32, i32* %95, align 4
  %488 = call i32 @SRA_4V(i32 %484, i32 %485, i32 %486, i32 %487, i32 6)
  %489 = load i32, i32* %85, align 4
  %490 = load i32, i32* %84, align 4
  %491 = load i32, i32* %87, align 4
  %492 = load i32, i32* %86, align 4
  %493 = load i32, i32* %53, align 4
  %494 = load i32, i32* %54, align 4
  %495 = call i32 @PCKEV_H2_SH(i32 %489, i32 %490, i32 %491, i32 %492, i32 %493, i32 %494)
  %496 = load i32, i32* %89, align 4
  %497 = load i32, i32* %88, align 4
  %498 = load i32, i32* %91, align 4
  %499 = load i32, i32* %90, align 4
  %500 = load i32, i32* %55, align 4
  %501 = load i32, i32* %56, align 4
  %502 = call i32 @PCKEV_H2_SH(i32 %496, i32 %497, i32 %498, i32 %499, i32 %500, i32 %501)
  %503 = load i32, i32* %93, align 4
  %504 = load i32, i32* %92, align 4
  %505 = load i32, i32* %95, align 4
  %506 = load i32, i32* %94, align 4
  %507 = load i32, i32* %57, align 4
  %508 = load i32, i32* %58, align 4
  %509 = call i32 @PCKEV_H2_SH(i32 %503, i32 %504, i32 %505, i32 %506, i32 %507, i32 %508)
  %510 = load i32, i32* %53, align 4
  %511 = load i32, i32* %54, align 4
  %512 = load i32*, i32** %10, align 8
  %513 = load i32, i32* %11, align 4
  %514 = call i32 @ST_D4(i32 %510, i32 %511, i32 0, i32 1, i32 0, i32 1, i32* %512, i32 %513)
  %515 = load i32, i32* %57, align 4
  %516 = load i32*, i32** %10, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 4
  %518 = load i32, i32* %11, align 4
  %519 = call i32 @ST_W4(i32 %515, i32 0, i32 1, i32 2, i32 3, i32* %517, i32 %518)
  %520 = load i32, i32* %11, align 4
  %521 = mul nsw i32 4, %520
  %522 = load i32*, i32** %10, align 8
  %523 = sext i32 %521 to i64
  %524 = getelementptr inbounds i32, i32* %522, i64 %523
  store i32* %524, i32** %10, align 8
  %525 = load i32, i32* %55, align 4
  %526 = load i32, i32* %56, align 4
  %527 = load i32*, i32** %10, align 8
  %528 = load i32, i32* %11, align 4
  %529 = call i32 @ST_D4(i32 %525, i32 %526, i32 0, i32 1, i32 0, i32 1, i32* %527, i32 %528)
  %530 = load i32, i32* %58, align 4
  %531 = load i32*, i32** %10, align 8
  %532 = getelementptr inbounds i32, i32* %531, i64 4
  %533 = load i32, i32* %11, align 4
  %534 = call i32 @ST_W4(i32 %530, i32 0, i32 1, i32 2, i32 3, i32* %532, i32 %533)
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

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_d(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
