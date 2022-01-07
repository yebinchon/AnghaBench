; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 3, %97
  %99 = add nsw i32 %98, 3
  %100 = load i32*, i32** %8, align 8
  %101 = sext i32 %99 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @LD_SH(i32* %104)
  store i32 %105, i32* %61, align 4
  %106 = load i32, i32* %61, align 4
  %107 = load i32, i32* %53, align 4
  %108 = load i32, i32* %54, align 4
  %109 = load i32, i32* %55, align 4
  %110 = load i32, i32* %56, align 4
  %111 = call i32 @SPLATI_H4_SH(i32 %106, i32 0, i32 1, i32 2, i32 3, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** %13, align 8
  %113 = call i32 @LD_SH(i32* %112)
  store i32 %113, i32* %61, align 4
  %114 = load i32, i32* %61, align 4
  %115 = load i32, i32* %61, align 4
  %116 = call i32 @UNPCK_R_SB_SH(i32 %114, i32 %115)
  %117 = load i32, i32* %61, align 4
  %118 = load i32, i32* %57, align 4
  %119 = load i32, i32* %58, align 4
  %120 = load i32, i32* %59, align 4
  %121 = load i32, i32* %60, align 4
  %122 = call i32 @SPLATI_W4_SH(i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %124 = call i64 @LD_SB(i32* %123)
  store i64 %124, i64* %29, align 8
  %125 = load i64, i64* %29, align 8
  %126 = add nsw i64 %125, 2
  store i64 %126, i64* %30, align 8
  %127 = load i64, i64* %29, align 8
  %128 = add nsw i64 %127, 4
  store i64 %128, i64* %31, align 8
  %129 = load i64, i64* %29, align 8
  %130 = add nsw i64 %129, 6
  store i64 %130, i64* %32, align 8
  %131 = call i32 @__msa_ldi_h(i32 128)
  store i32 %131, i32* %62, align 4
  %132 = load i32, i32* %62, align 4
  %133 = shl i32 %132, 6
  store i32 %133, i32* %62, align 4
  %134 = load i32*, i32** %8, align 8
  store i32* %134, i32** %16, align 8
  %135 = load i32*, i32** %10, align 8
  store i32* %135, i32** %17, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %21, align 8
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* %24, align 8
  %145 = call i32 @LD_SB7(i32* %136, i32 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i32, i32* %9, align 4
  %147 = mul nsw i32 7, %146
  %148 = load i32*, i32** %16, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %16, align 8
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %20, align 8
  %154 = load i64, i64* %21, align 8
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %24, align 8
  %158 = call i32 @XORI_B7_128_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %29, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %37, align 8
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i64, i64* %40, align 8
  %169 = call i32 @VSHF_B4_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %19, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %29, align 8
  %173 = load i64, i64* %30, align 8
  %174 = load i64, i64* %31, align 8
  %175 = load i64, i64* %32, align 8
  %176 = load i64, i64* %41, align 8
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %43, align 8
  %179 = load i64, i64* %44, align 8
  %180 = call i32 @VSHF_B4_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %20, align 8
  %182 = load i64, i64* %20, align 8
  %183 = load i64, i64* %29, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %31, align 8
  %186 = load i64, i64* %32, align 8
  %187 = load i64, i64* %45, align 8
  %188 = load i64, i64* %46, align 8
  %189 = load i64, i64* %47, align 8
  %190 = load i64, i64* %48, align 8
  %191 = call i32 @VSHF_B4_SB(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190)
  %192 = load i64, i64* %21, align 8
  %193 = load i64, i64* %21, align 8
  %194 = load i64, i64* %29, align 8
  %195 = load i64, i64* %30, align 8
  %196 = load i64, i64* %31, align 8
  %197 = load i64, i64* %32, align 8
  %198 = load i64, i64* %49, align 8
  %199 = load i64, i64* %50, align 8
  %200 = load i64, i64* %51, align 8
  %201 = load i64, i64* %52, align 8
  %202 = call i32 @VSHF_B4_SB(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i32, i32* %62, align 4
  store i32 %203, i32* %63, align 4
  %204 = load i64, i64* %37, align 8
  %205 = load i64, i64* %38, align 8
  %206 = load i64, i64* %39, align 8
  %207 = load i64, i64* %40, align 8
  %208 = load i32, i32* %53, align 4
  %209 = load i32, i32* %54, align 4
  %210 = load i32, i32* %55, align 4
  %211 = load i32, i32* %56, align 4
  %212 = load i32, i32* %63, align 4
  %213 = load i32, i32* %63, align 4
  %214 = load i32, i32* %63, align 4
  %215 = load i32, i32* %63, align 4
  %216 = call i32 @DPADD_SB4_SH(i64 %204, i64 %205, i64 %206, i64 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %62, align 4
  store i32 %217, i32* %64, align 4
  %218 = load i64, i64* %41, align 8
  %219 = load i64, i64* %42, align 8
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %44, align 8
  %222 = load i32, i32* %53, align 4
  %223 = load i32, i32* %54, align 4
  %224 = load i32, i32* %55, align 4
  %225 = load i32, i32* %56, align 4
  %226 = load i32, i32* %64, align 4
  %227 = load i32, i32* %64, align 4
  %228 = load i32, i32* %64, align 4
  %229 = load i32, i32* %64, align 4
  %230 = call i32 @DPADD_SB4_SH(i64 %218, i64 %219, i64 %220, i64 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %62, align 4
  store i32 %231, i32* %65, align 4
  %232 = load i64, i64* %45, align 8
  %233 = load i64, i64* %46, align 8
  %234 = load i64, i64* %47, align 8
  %235 = load i64, i64* %48, align 8
  %236 = load i32, i32* %53, align 4
  %237 = load i32, i32* %54, align 4
  %238 = load i32, i32* %55, align 4
  %239 = load i32, i32* %56, align 4
  %240 = load i32, i32* %65, align 4
  %241 = load i32, i32* %65, align 4
  %242 = load i32, i32* %65, align 4
  %243 = load i32, i32* %65, align 4
  %244 = call i32 @DPADD_SB4_SH(i64 %232, i64 %233, i64 %234, i64 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %62, align 4
  store i32 %245, i32* %66, align 4
  %246 = load i64, i64* %49, align 8
  %247 = load i64, i64* %50, align 8
  %248 = load i64, i64* %51, align 8
  %249 = load i64, i64* %52, align 8
  %250 = load i32, i32* %53, align 4
  %251 = load i32, i32* %54, align 4
  %252 = load i32, i32* %55, align 4
  %253 = load i32, i32* %56, align 4
  %254 = load i32, i32* %66, align 4
  %255 = load i32, i32* %66, align 4
  %256 = load i32, i32* %66, align 4
  %257 = load i32, i32* %66, align 4
  %258 = call i32 @DPADD_SB4_SH(i64 %246, i64 %247, i64 %248, i64 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  %259 = load i64, i64* %22, align 8
  %260 = load i64, i64* %22, align 8
  %261 = load i64, i64* %29, align 8
  %262 = load i64, i64* %30, align 8
  %263 = load i64, i64* %31, align 8
  %264 = load i64, i64* %32, align 8
  %265 = load i64, i64* %37, align 8
  %266 = load i64, i64* %38, align 8
  %267 = load i64, i64* %39, align 8
  %268 = load i64, i64* %40, align 8
  %269 = call i32 @VSHF_B4_SB(i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268)
  %270 = load i64, i64* %23, align 8
  %271 = load i64, i64* %23, align 8
  %272 = load i64, i64* %29, align 8
  %273 = load i64, i64* %30, align 8
  %274 = load i64, i64* %31, align 8
  %275 = load i64, i64* %32, align 8
  %276 = load i64, i64* %41, align 8
  %277 = load i64, i64* %42, align 8
  %278 = load i64, i64* %43, align 8
  %279 = load i64, i64* %44, align 8
  %280 = call i32 @VSHF_B4_SB(i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279)
  %281 = load i64, i64* %24, align 8
  %282 = load i64, i64* %24, align 8
  %283 = load i64, i64* %29, align 8
  %284 = load i64, i64* %30, align 8
  %285 = load i64, i64* %31, align 8
  %286 = load i64, i64* %32, align 8
  %287 = load i64, i64* %45, align 8
  %288 = load i64, i64* %46, align 8
  %289 = load i64, i64* %47, align 8
  %290 = load i64, i64* %48, align 8
  %291 = call i32 @VSHF_B4_SB(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290)
  %292 = load i32, i32* %62, align 4
  store i32 %292, i32* %67, align 4
  %293 = load i64, i64* %37, align 8
  %294 = load i64, i64* %38, align 8
  %295 = load i64, i64* %39, align 8
  %296 = load i64, i64* %40, align 8
  %297 = load i32, i32* %53, align 4
  %298 = load i32, i32* %54, align 4
  %299 = load i32, i32* %55, align 4
  %300 = load i32, i32* %56, align 4
  %301 = load i32, i32* %67, align 4
  %302 = load i32, i32* %67, align 4
  %303 = load i32, i32* %67, align 4
  %304 = load i32, i32* %67, align 4
  %305 = call i32 @DPADD_SB4_SH(i64 %293, i64 %294, i64 %295, i64 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %62, align 4
  store i32 %306, i32* %68, align 4
  %307 = load i64, i64* %41, align 8
  %308 = load i64, i64* %42, align 8
  %309 = load i64, i64* %43, align 8
  %310 = load i64, i64* %44, align 8
  %311 = load i32, i32* %53, align 4
  %312 = load i32, i32* %54, align 4
  %313 = load i32, i32* %55, align 4
  %314 = load i32, i32* %56, align 4
  %315 = load i32, i32* %68, align 4
  %316 = load i32, i32* %68, align 4
  %317 = load i32, i32* %68, align 4
  %318 = load i32, i32* %68, align 4
  %319 = call i32 @DPADD_SB4_SH(i64 %307, i64 %308, i64 %309, i64 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %62, align 4
  store i32 %320, i32* %69, align 4
  %321 = load i64, i64* %45, align 8
  %322 = load i64, i64* %46, align 8
  %323 = load i64, i64* %47, align 8
  %324 = load i64, i64* %48, align 8
  %325 = load i32, i32* %53, align 4
  %326 = load i32, i32* %54, align 4
  %327 = load i32, i32* %55, align 4
  %328 = load i32, i32* %56, align 4
  %329 = load i32, i32* %69, align 4
  %330 = load i32, i32* %69, align 4
  %331 = load i32, i32* %69, align 4
  %332 = load i32, i32* %69, align 4
  %333 = call i32 @DPADD_SB4_SH(i64 %321, i64 %322, i64 %323, i64 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330, i32 %331, i32 %332)
  %334 = load i32, i32* %14, align 4
  store i32 %334, i32* %15, align 4
  br label %335

335:                                              ; preds = %339, %7
  %336 = load i32, i32* %15, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %15, align 4
  %338 = icmp ne i32 %336, 0
  br i1 %338, label %339, label %434

339:                                              ; preds = %335
  %340 = load i32*, i32** %16, align 8
  %341 = call i64 @LD_SB(i32* %340)
  store i64 %341, i64* %25, align 8
  %342 = load i64, i64* %25, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i64 @__msa_xori_b(i32 %343, i32 128)
  store i64 %344, i64* %25, align 8
  %345 = load i32, i32* %9, align 4
  %346 = load i32*, i32** %16, align 8
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  store i32* %348, i32** %16, align 8
  %349 = load i64, i64* %25, align 8
  %350 = load i64, i64* %25, align 8
  %351 = load i64, i64* %29, align 8
  %352 = load i64, i64* %30, align 8
  %353 = load i64, i64* %31, align 8
  %354 = load i64, i64* %32, align 8
  %355 = load i64, i64* %37, align 8
  %356 = load i64, i64* %38, align 8
  %357 = load i64, i64* %39, align 8
  %358 = load i64, i64* %40, align 8
  %359 = call i32 @VSHF_B4_SB(i64 %349, i64 %350, i64 %351, i64 %352, i64 %353, i64 %354, i64 %355, i64 %356, i64 %357, i64 %358)
  %360 = load i32, i32* %62, align 4
  store i32 %360, i32* %70, align 4
  %361 = load i64, i64* %37, align 8
  %362 = load i64, i64* %38, align 8
  %363 = load i64, i64* %39, align 8
  %364 = load i64, i64* %40, align 8
  %365 = load i32, i32* %53, align 4
  %366 = load i32, i32* %54, align 4
  %367 = load i32, i32* %55, align 4
  %368 = load i32, i32* %56, align 4
  %369 = load i32, i32* %70, align 4
  %370 = load i32, i32* %70, align 4
  %371 = load i32, i32* %70, align 4
  %372 = load i32, i32* %70, align 4
  %373 = call i32 @DPADD_SB4_SH(i64 %361, i64 %362, i64 %363, i64 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  %374 = load i32, i32* %64, align 4
  %375 = load i32, i32* %63, align 4
  %376 = load i32, i32* %78, align 4
  %377 = load i32, i32* %88, align 4
  %378 = call i32 @ILVRL_H2_SH(i32 %374, i32 %375, i32 %376, i32 %377)
  %379 = load i32, i32* %66, align 4
  %380 = load i32, i32* %65, align 4
  %381 = load i32, i32* %79, align 4
  %382 = load i32, i32* %89, align 4
  %383 = call i32 @ILVRL_H2_SH(i32 %379, i32 %380, i32 %381, i32 %382)
  %384 = load i32, i32* %68, align 4
  %385 = load i32, i32* %67, align 4
  %386 = load i32, i32* %80, align 4
  %387 = load i32, i32* %90, align 4
  %388 = call i32 @ILVRL_H2_SH(i32 %384, i32 %385, i32 %386, i32 %387)
  %389 = load i32, i32* %70, align 4
  %390 = load i32, i32* %69, align 4
  %391 = load i32, i32* %81, align 4
  %392 = load i32, i32* %91, align 4
  %393 = call i32 @ILVRL_H2_SH(i32 %389, i32 %390, i32 %391, i32 %392)
  %394 = load i32, i32* %78, align 4
  %395 = load i32, i32* %79, align 4
  %396 = load i32, i32* %80, align 4
  %397 = load i32, i32* %81, align 4
  %398 = load i32, i32* %57, align 4
  %399 = load i32, i32* %58, align 4
  %400 = load i32, i32* %59, align 4
  %401 = load i32, i32* %60, align 4
  %402 = call i32 @HEVC_FILT_8TAP(i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401)
  store i32 %402, i32* %92, align 4
  %403 = load i32, i32* %88, align 4
  %404 = load i32, i32* %89, align 4
  %405 = load i32, i32* %90, align 4
  %406 = load i32, i32* %91, align 4
  %407 = load i32, i32* %57, align 4
  %408 = load i32, i32* %58, align 4
  %409 = load i32, i32* %59, align 4
  %410 = load i32, i32* %60, align 4
  %411 = call i32 @HEVC_FILT_8TAP(i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408, i32 %409, i32 %410)
  store i32 %411, i32* %93, align 4
  %412 = load i32, i32* %92, align 4
  %413 = ashr i32 %412, 6
  store i32 %413, i32* %92, align 4
  %414 = load i32, i32* %93, align 4
  %415 = ashr i32 %414, 6
  store i32 %415, i32* %93, align 4
  %416 = load i32, i32* %93, align 4
  %417 = load i32, i32* %92, align 4
  %418 = call i64 @__msa_pckev_h(i32 %416, i32 %417)
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %92, align 4
  %420 = load i32, i32* %92, align 4
  %421 = load i32*, i32** %17, align 8
  %422 = call i32 @ST_SW(i32 %420, i32* %421)
  %423 = load i32, i32* %11, align 4
  %424 = load i32*, i32** %17, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  store i32* %426, i32** %17, align 8
  %427 = load i32, i32* %64, align 4
  store i32 %427, i32* %63, align 4
  %428 = load i32, i32* %65, align 4
  store i32 %428, i32* %64, align 4
  %429 = load i32, i32* %66, align 4
  store i32 %429, i32* %65, align 4
  %430 = load i32, i32* %67, align 4
  store i32 %430, i32* %66, align 4
  %431 = load i32, i32* %68, align 4
  store i32 %431, i32* %67, align 4
  %432 = load i32, i32* %69, align 4
  store i32 %432, i32* %68, align 4
  %433 = load i32, i32* %70, align 4
  store i32 %433, i32* %69, align 4
  br label %335

434:                                              ; preds = %335
  %435 = load i32*, i32** %8, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 8
  store i32* %436, i32** %8, align 8
  %437 = load i32*, i32** %10, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 8
  store i32* %438, i32** %10, align 8
  %439 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 16
  %441 = call i64 @LD_SB(i32* %440)
  store i64 %441, i64* %33, align 8
  %442 = load i64, i64* %33, align 8
  %443 = add nsw i64 %442, 2
  store i64 %443, i64* %34, align 8
  %444 = load i64, i64* %33, align 8
  %445 = add nsw i64 %444, 4
  store i64 %445, i64* %35, align 8
  %446 = load i64, i64* %33, align 8
  %447 = add nsw i64 %446, 6
  store i64 %447, i64* %36, align 8
  %448 = load i32*, i32** %8, align 8
  %449 = load i32, i32* %9, align 4
  %450 = load i64, i64* %18, align 8
  %451 = load i64, i64* %19, align 8
  %452 = load i64, i64* %20, align 8
  %453 = load i64, i64* %21, align 8
  %454 = load i64, i64* %22, align 8
  %455 = load i64, i64* %23, align 8
  %456 = load i64, i64* %24, align 8
  %457 = call i32 @LD_SB7(i32* %448, i32 %449, i64 %450, i64 %451, i64 %452, i64 %453, i64 %454, i64 %455, i64 %456)
  %458 = load i32, i32* %9, align 4
  %459 = mul nsw i32 7, %458
  %460 = load i32*, i32** %8, align 8
  %461 = sext i32 %459 to i64
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  store i32* %462, i32** %8, align 8
  %463 = load i64, i64* %18, align 8
  %464 = load i64, i64* %19, align 8
  %465 = load i64, i64* %20, align 8
  %466 = load i64, i64* %21, align 8
  %467 = load i64, i64* %22, align 8
  %468 = load i64, i64* %23, align 8
  %469 = load i64, i64* %24, align 8
  %470 = call i32 @XORI_B7_128_SB(i64 %463, i64 %464, i64 %465, i64 %466, i64 %467, i64 %468, i64 %469)
  %471 = load i64, i64* %18, align 8
  %472 = load i64, i64* %21, align 8
  %473 = load i64, i64* %33, align 8
  %474 = load i64, i64* %34, align 8
  %475 = load i64, i64* %35, align 8
  %476 = load i64, i64* %36, align 8
  %477 = load i64, i64* %37, align 8
  %478 = load i64, i64* %38, align 8
  %479 = load i64, i64* %39, align 8
  %480 = load i64, i64* %40, align 8
  %481 = call i32 @VSHF_B4_SB(i64 %471, i64 %472, i64 %473, i64 %474, i64 %475, i64 %476, i64 %477, i64 %478, i64 %479, i64 %480)
  %482 = load i64, i64* %19, align 8
  %483 = load i64, i64* %22, align 8
  %484 = load i64, i64* %33, align 8
  %485 = load i64, i64* %34, align 8
  %486 = load i64, i64* %35, align 8
  %487 = load i64, i64* %36, align 8
  %488 = load i64, i64* %41, align 8
  %489 = load i64, i64* %42, align 8
  %490 = load i64, i64* %43, align 8
  %491 = load i64, i64* %44, align 8
  %492 = call i32 @VSHF_B4_SB(i64 %482, i64 %483, i64 %484, i64 %485, i64 %486, i64 %487, i64 %488, i64 %489, i64 %490, i64 %491)
  %493 = load i64, i64* %20, align 8
  %494 = load i64, i64* %23, align 8
  %495 = load i64, i64* %33, align 8
  %496 = load i64, i64* %34, align 8
  %497 = load i64, i64* %35, align 8
  %498 = load i64, i64* %36, align 8
  %499 = load i64, i64* %45, align 8
  %500 = load i64, i64* %46, align 8
  %501 = load i64, i64* %47, align 8
  %502 = load i64, i64* %48, align 8
  %503 = call i32 @VSHF_B4_SB(i64 %493, i64 %494, i64 %495, i64 %496, i64 %497, i64 %498, i64 %499, i64 %500, i64 %501, i64 %502)
  %504 = load i64, i64* %21, align 8
  %505 = load i64, i64* %24, align 8
  %506 = load i64, i64* %33, align 8
  %507 = load i64, i64* %34, align 8
  %508 = load i64, i64* %35, align 8
  %509 = load i64, i64* %36, align 8
  %510 = load i64, i64* %49, align 8
  %511 = load i64, i64* %50, align 8
  %512 = load i64, i64* %51, align 8
  %513 = load i64, i64* %52, align 8
  %514 = call i32 @VSHF_B4_SB(i64 %504, i64 %505, i64 %506, i64 %507, i64 %508, i64 %509, i64 %510, i64 %511, i64 %512, i64 %513)
  %515 = load i32, i32* %62, align 4
  store i32 %515, i32* %71, align 4
  %516 = load i64, i64* %37, align 8
  %517 = load i64, i64* %38, align 8
  %518 = load i64, i64* %39, align 8
  %519 = load i64, i64* %40, align 8
  %520 = load i32, i32* %53, align 4
  %521 = load i32, i32* %54, align 4
  %522 = load i32, i32* %55, align 4
  %523 = load i32, i32* %56, align 4
  %524 = load i32, i32* %71, align 4
  %525 = load i32, i32* %71, align 4
  %526 = load i32, i32* %71, align 4
  %527 = load i32, i32* %71, align 4
  %528 = call i32 @DPADD_SB4_SH(i64 %516, i64 %517, i64 %518, i64 %519, i32 %520, i32 %521, i32 %522, i32 %523, i32 %524, i32 %525, i32 %526, i32 %527)
  %529 = load i32, i32* %62, align 4
  store i32 %529, i32* %72, align 4
  %530 = load i64, i64* %41, align 8
  %531 = load i64, i64* %42, align 8
  %532 = load i64, i64* %43, align 8
  %533 = load i64, i64* %44, align 8
  %534 = load i32, i32* %53, align 4
  %535 = load i32, i32* %54, align 4
  %536 = load i32, i32* %55, align 4
  %537 = load i32, i32* %56, align 4
  %538 = load i32, i32* %72, align 4
  %539 = load i32, i32* %72, align 4
  %540 = load i32, i32* %72, align 4
  %541 = load i32, i32* %72, align 4
  %542 = call i32 @DPADD_SB4_SH(i64 %530, i64 %531, i64 %532, i64 %533, i32 %534, i32 %535, i32 %536, i32 %537, i32 %538, i32 %539, i32 %540, i32 %541)
  %543 = load i32, i32* %62, align 4
  store i32 %543, i32* %73, align 4
  %544 = load i64, i64* %45, align 8
  %545 = load i64, i64* %46, align 8
  %546 = load i64, i64* %47, align 8
  %547 = load i64, i64* %48, align 8
  %548 = load i32, i32* %53, align 4
  %549 = load i32, i32* %54, align 4
  %550 = load i32, i32* %55, align 4
  %551 = load i32, i32* %56, align 4
  %552 = load i32, i32* %73, align 4
  %553 = load i32, i32* %73, align 4
  %554 = load i32, i32* %73, align 4
  %555 = load i32, i32* %73, align 4
  %556 = call i32 @DPADD_SB4_SH(i64 %544, i64 %545, i64 %546, i64 %547, i32 %548, i32 %549, i32 %550, i32 %551, i32 %552, i32 %553, i32 %554, i32 %555)
  %557 = load i32, i32* %62, align 4
  store i32 %557, i32* %74, align 4
  %558 = load i64, i64* %49, align 8
  %559 = load i64, i64* %50, align 8
  %560 = load i64, i64* %51, align 8
  %561 = load i64, i64* %52, align 8
  %562 = load i32, i32* %53, align 4
  %563 = load i32, i32* %54, align 4
  %564 = load i32, i32* %55, align 4
  %565 = load i32, i32* %56, align 4
  %566 = load i32, i32* %74, align 4
  %567 = load i32, i32* %74, align 4
  %568 = load i32, i32* %74, align 4
  %569 = load i32, i32* %74, align 4
  %570 = call i32 @DPADD_SB4_SH(i64 %558, i64 %559, i64 %560, i64 %561, i32 %562, i32 %563, i32 %564, i32 %565, i32 %566, i32 %567, i32 %568, i32 %569)
  %571 = load i32, i32* %72, align 4
  %572 = load i32, i32* %71, align 4
  %573 = load i32, i32* %78, align 4
  %574 = load i32, i32* %84, align 4
  %575 = call i32 @ILVRL_H2_SH(i32 %571, i32 %572, i32 %573, i32 %574)
  %576 = load i32, i32* %73, align 4
  %577 = load i32, i32* %72, align 4
  %578 = load i32, i32* %83, align 4
  %579 = load i32, i32* %80, align 4
  %580 = call i32 @ILVRL_H2_SH(i32 %576, i32 %577, i32 %578, i32 %579)
  %581 = load i32, i32* %74, align 4
  %582 = load i32, i32* %73, align 4
  %583 = load i32, i32* %79, align 4
  %584 = load i32, i32* %85, align 4
  %585 = call i32 @ILVRL_H2_SH(i32 %581, i32 %582, i32 %583, i32 %584)
  %586 = load i32, i32* %74, align 4
  %587 = call i64 @__msa_splati_d(i32 %586, i32 1)
  %588 = trunc i64 %587 to i32
  store i32 %588, i32* %75, align 4
  %589 = load i32, i32* %14, align 4
  %590 = ashr i32 %589, 2
  store i32 %590, i32* %15, align 4
  br label %591

591:                                              ; preds = %595, %434
  %592 = load i32, i32* %15, align 4
  %593 = add nsw i32 %592, -1
  store i32 %593, i32* %15, align 4
  %594 = icmp ne i32 %592, 0
  br i1 %594, label %595, label %744

595:                                              ; preds = %591
  %596 = load i32*, i32** %8, align 8
  %597 = load i32, i32* %9, align 4
  %598 = load i64, i64* %25, align 8
  %599 = load i64, i64* %26, align 8
  %600 = load i64, i64* %27, align 8
  %601 = load i64, i64* %28, align 8
  %602 = call i32 @LD_SB4(i32* %596, i32 %597, i64 %598, i64 %599, i64 %600, i64 %601)
  %603 = load i32, i32* %9, align 4
  %604 = mul nsw i32 4, %603
  %605 = load i32*, i32** %8, align 8
  %606 = sext i32 %604 to i64
  %607 = getelementptr inbounds i32, i32* %605, i64 %606
  store i32* %607, i32** %8, align 8
  %608 = load i64, i64* %25, align 8
  %609 = load i64, i64* %26, align 8
  %610 = load i64, i64* %27, align 8
  %611 = load i64, i64* %28, align 8
  %612 = call i32 @XORI_B4_128_SB(i64 %608, i64 %609, i64 %610, i64 %611)
  %613 = load i64, i64* %25, align 8
  %614 = load i64, i64* %27, align 8
  %615 = load i64, i64* %33, align 8
  %616 = load i64, i64* %34, align 8
  %617 = load i64, i64* %35, align 8
  %618 = load i64, i64* %36, align 8
  %619 = load i64, i64* %37, align 8
  %620 = load i64, i64* %38, align 8
  %621 = load i64, i64* %39, align 8
  %622 = load i64, i64* %40, align 8
  %623 = call i32 @VSHF_B4_SB(i64 %613, i64 %614, i64 %615, i64 %616, i64 %617, i64 %618, i64 %619, i64 %620, i64 %621, i64 %622)
  %624 = load i64, i64* %26, align 8
  %625 = load i64, i64* %28, align 8
  %626 = load i64, i64* %33, align 8
  %627 = load i64, i64* %34, align 8
  %628 = load i64, i64* %35, align 8
  %629 = load i64, i64* %36, align 8
  %630 = load i64, i64* %41, align 8
  %631 = load i64, i64* %42, align 8
  %632 = load i64, i64* %43, align 8
  %633 = load i64, i64* %44, align 8
  %634 = call i32 @VSHF_B4_SB(i64 %624, i64 %625, i64 %626, i64 %627, i64 %628, i64 %629, i64 %630, i64 %631, i64 %632, i64 %633)
  %635 = load i32, i32* %62, align 4
  store i32 %635, i32* %76, align 4
  %636 = load i32, i32* %62, align 4
  store i32 %636, i32* %77, align 4
  %637 = load i64, i64* %37, align 8
  %638 = load i64, i64* %38, align 8
  %639 = load i64, i64* %39, align 8
  %640 = load i64, i64* %40, align 8
  %641 = load i32, i32* %53, align 4
  %642 = load i32, i32* %54, align 4
  %643 = load i32, i32* %55, align 4
  %644 = load i32, i32* %56, align 4
  %645 = load i32, i32* %76, align 4
  %646 = load i32, i32* %76, align 4
  %647 = load i32, i32* %76, align 4
  %648 = load i32, i32* %76, align 4
  %649 = call i32 @DPADD_SB4_SH(i64 %637, i64 %638, i64 %639, i64 %640, i32 %641, i32 %642, i32 %643, i32 %644, i32 %645, i32 %646, i32 %647, i32 %648)
  %650 = load i64, i64* %41, align 8
  %651 = load i64, i64* %42, align 8
  %652 = load i64, i64* %43, align 8
  %653 = load i64, i64* %44, align 8
  %654 = load i32, i32* %53, align 4
  %655 = load i32, i32* %54, align 4
  %656 = load i32, i32* %55, align 4
  %657 = load i32, i32* %56, align 4
  %658 = load i32, i32* %77, align 4
  %659 = load i32, i32* %77, align 4
  %660 = load i32, i32* %77, align 4
  %661 = load i32, i32* %77, align 4
  %662 = call i32 @DPADD_SB4_SH(i64 %650, i64 %651, i64 %652, i64 %653, i32 %654, i32 %655, i32 %656, i32 %657, i32 %658, i32 %659, i32 %660, i32 %661)
  %663 = load i32, i32* %76, align 4
  %664 = load i32, i32* %75, align 4
  %665 = call i32 @__msa_ilvr_h(i32 %663, i32 %664)
  store i32 %665, i32* %81, align 4
  %666 = load i32, i32* %77, align 4
  %667 = load i32, i32* %76, align 4
  %668 = load i32, i32* %86, align 4
  %669 = load i32, i32* %87, align 4
  %670 = call i32 @ILVRL_H2_SH(i32 %666, i32 %667, i32 %668, i32 %669)
  %671 = load i32, i32* %76, align 4
  %672 = call i64 @__msa_splati_d(i32 %671, i32 1)
  %673 = trunc i64 %672 to i32
  store i32 %673, i32* %75, align 4
  %674 = load i32, i32* %75, align 4
  %675 = load i32, i32* %77, align 4
  %676 = call i32 @__msa_ilvr_h(i32 %674, i32 %675)
  store i32 %676, i32* %82, align 4
  %677 = load i32, i32* %78, align 4
  %678 = load i32, i32* %79, align 4
  %679 = load i32, i32* %80, align 4
  %680 = load i32, i32* %81, align 4
  %681 = load i32, i32* %57, align 4
  %682 = load i32, i32* %58, align 4
  %683 = load i32, i32* %59, align 4
  %684 = load i32, i32* %60, align 4
  %685 = call i32 @HEVC_FILT_8TAP(i32 %677, i32 %678, i32 %679, i32 %680, i32 %681, i32 %682, i32 %683, i32 %684)
  store i32 %685, i32* %92, align 4
  %686 = load i32, i32* %83, align 4
  %687 = load i32, i32* %84, align 4
  %688 = load i32, i32* %85, align 4
  %689 = load i32, i32* %86, align 4
  %690 = load i32, i32* %57, align 4
  %691 = load i32, i32* %58, align 4
  %692 = load i32, i32* %59, align 4
  %693 = load i32, i32* %60, align 4
  %694 = call i32 @HEVC_FILT_8TAP(i32 %686, i32 %687, i32 %688, i32 %689, i32 %690, i32 %691, i32 %692, i32 %693)
  store i32 %694, i32* %94, align 4
  %695 = load i32, i32* %79, align 4
  %696 = load i32, i32* %80, align 4
  %697 = load i32, i32* %81, align 4
  %698 = load i32, i32* %82, align 4
  %699 = load i32, i32* %57, align 4
  %700 = load i32, i32* %58, align 4
  %701 = load i32, i32* %59, align 4
  %702 = load i32, i32* %60, align 4
  %703 = call i32 @HEVC_FILT_8TAP(i32 %695, i32 %696, i32 %697, i32 %698, i32 %699, i32 %700, i32 %701, i32 %702)
  store i32 %703, i32* %95, align 4
  %704 = load i32, i32* %84, align 4
  %705 = load i32, i32* %85, align 4
  %706 = load i32, i32* %86, align 4
  %707 = load i32, i32* %87, align 4
  %708 = load i32, i32* %57, align 4
  %709 = load i32, i32* %58, align 4
  %710 = load i32, i32* %59, align 4
  %711 = load i32, i32* %60, align 4
  %712 = call i32 @HEVC_FILT_8TAP(i32 %704, i32 %705, i32 %706, i32 %707, i32 %708, i32 %709, i32 %710, i32 %711)
  store i32 %712, i32* %96, align 4
  %713 = load i32, i32* %92, align 4
  %714 = load i32, i32* %94, align 4
  %715 = load i32, i32* %95, align 4
  %716 = load i32, i32* %96, align 4
  %717 = call i32 @SRA_4V(i32 %713, i32 %714, i32 %715, i32 %716, i32 6)
  %718 = load i32, i32* %94, align 4
  %719 = load i32, i32* %92, align 4
  %720 = load i32, i32* %96, align 4
  %721 = load i32, i32* %95, align 4
  %722 = load i32, i32* %92, align 4
  %723 = load i32, i32* %95, align 4
  %724 = call i32 @PCKEV_H2_SW(i32 %718, i32 %719, i32 %720, i32 %721, i32 %722, i32 %723)
  %725 = load i32, i32* %92, align 4
  %726 = load i32, i32* %95, align 4
  %727 = load i32*, i32** %10, align 8
  %728 = load i32, i32* %11, align 4
  %729 = call i32 @ST_D4(i32 %725, i32 %726, i32 0, i32 1, i32 0, i32 1, i32* %727, i32 %728)
  %730 = load i32, i32* %11, align 4
  %731 = mul nsw i32 4, %730
  %732 = load i32*, i32** %10, align 8
  %733 = sext i32 %731 to i64
  %734 = getelementptr inbounds i32, i32* %732, i64 %733
  store i32* %734, i32** %10, align 8
  %735 = load i32, i32* %80, align 4
  store i32 %735, i32* %78, align 4
  %736 = load i32, i32* %81, align 4
  store i32 %736, i32* %79, align 4
  %737 = load i32, i32* %82, align 4
  store i32 %737, i32* %80, align 4
  %738 = load i32, i32* %85, align 4
  store i32 %738, i32* %83, align 4
  %739 = load i32, i32* %86, align 4
  store i32 %739, i32* %84, align 4
  %740 = load i32, i32* %87, align 4
  store i32 %740, i32* %85, align 4
  %741 = load i32, i32* %77, align 4
  %742 = call i64 @__msa_splati_d(i32 %741, i32 1)
  %743 = trunc i64 %742 to i32
  store i32 %743, i32* %75, align 4
  br label %591

744:                                              ; preds = %591
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_h(i32, i32) #1

declare dso_local i32 @ST_SW(i32, i32*) #1

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @__msa_ilvr_h(i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
