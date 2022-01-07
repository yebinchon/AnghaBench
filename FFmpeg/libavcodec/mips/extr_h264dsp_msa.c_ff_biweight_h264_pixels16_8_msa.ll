; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_ff_biweight_h264_pixels16_8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_ff_biweight_h264_pixels16_8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_biweight_h264_pixels16_8_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  %72 = or i32 %71, 1
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %72, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = mul nsw i32 128, %77
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @__msa_fill_b(i32 %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @__msa_fill_b(i32 %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @__msa_fill_h(i32 %85)
  store i32 %86, i32* %69, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, 1
  %89 = call i32 @__msa_fill_h(i32 %88)
  store i32 %89, i32* %68, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @__msa_ilvev_b(i32 %90, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %24, align 4
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i32 @LD_UB8(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 8, %104
  %106 = load i32*, i32** %10, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %10, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %28, align 4
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* %30, align 4
  %114 = load i32, i32* %31, align 4
  %115 = load i32, i32* %32, align 4
  %116 = load i32, i32* %33, align 4
  %117 = load i32, i32* %34, align 4
  %118 = load i32, i32* %35, align 4
  %119 = call i32 @LD_UB8(i32* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %27, align 4
  %128 = call i32 @XORI_B8_128_UB(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %28, align 4
  %130 = load i32, i32* %29, align 4
  %131 = load i32, i32* %30, align 4
  %132 = load i32, i32* %31, align 4
  %133 = load i32, i32* %32, align 4
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %34, align 4
  %136 = load i32, i32* %35, align 4
  %137 = call i32 @XORI_B8_128_UB(i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %28, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %29, align 4
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %30, align 4
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %31, align 4
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %36, align 4
  %147 = load i32, i32* %38, align 4
  %148 = load i32, i32* %40, align 4
  %149 = load i32, i32* %42, align 4
  %150 = call i32 @ILVR_B4_SB(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %28, align 4
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %30, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %37, align 4
  %160 = load i32, i32* %39, align 4
  %161 = load i32, i32* %41, align 4
  %162 = load i32, i32* %43, align 4
  %163 = call i32 @ILVL_B4_SB(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %32, align 4
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* %33, align 4
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %34, align 4
  %169 = load i32, i32* %26, align 4
  %170 = load i32, i32* %35, align 4
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %44, align 4
  %173 = load i32, i32* %46, align 4
  %174 = load i32, i32* %48, align 4
  %175 = load i32, i32* %50, align 4
  %176 = call i32 @ILVR_B4_SB(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %32, align 4
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* %25, align 4
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %35, align 4
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %45, align 4
  %186 = load i32, i32* %47, align 4
  %187 = load i32, i32* %49, align 4
  %188 = load i32, i32* %51, align 4
  %189 = call i32 @ILVL_B4_SB(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %69, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %36, align 4
  %193 = call i32 @__msa_dpadd_s_h(i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %52, align 4
  %194 = load i32, i32* %69, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %37, align 4
  %197 = call i32 @__msa_dpadd_s_h(i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %53, align 4
  %198 = load i32, i32* %69, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %38, align 4
  %201 = call i32 @__msa_dpadd_s_h(i32 %198, i32 %199, i32 %200)
  store i32 %201, i32* %54, align 4
  %202 = load i32, i32* %69, align 4
  %203 = load i32, i32* %19, align 4
  %204 = load i32, i32* %39, align 4
  %205 = call i32 @__msa_dpadd_s_h(i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %55, align 4
  %206 = load i32, i32* %69, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %40, align 4
  %209 = call i32 @__msa_dpadd_s_h(i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %56, align 4
  %210 = load i32, i32* %69, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %41, align 4
  %213 = call i32 @__msa_dpadd_s_h(i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %57, align 4
  %214 = load i32, i32* %69, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %42, align 4
  %217 = call i32 @__msa_dpadd_s_h(i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %58, align 4
  %218 = load i32, i32* %69, align 4
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %43, align 4
  %221 = call i32 @__msa_dpadd_s_h(i32 %218, i32 %219, i32 %220)
  store i32 %221, i32* %59, align 4
  %222 = load i32, i32* %69, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %44, align 4
  %225 = call i32 @__msa_dpadd_s_h(i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* %60, align 4
  %226 = load i32, i32* %69, align 4
  %227 = load i32, i32* %19, align 4
  %228 = load i32, i32* %45, align 4
  %229 = call i32 @__msa_dpadd_s_h(i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %61, align 4
  %230 = load i32, i32* %69, align 4
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %46, align 4
  %233 = call i32 @__msa_dpadd_s_h(i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %62, align 4
  %234 = load i32, i32* %69, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %47, align 4
  %237 = call i32 @__msa_dpadd_s_h(i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %63, align 4
  %238 = load i32, i32* %69, align 4
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %48, align 4
  %241 = call i32 @__msa_dpadd_s_h(i32 %238, i32 %239, i32 %240)
  store i32 %241, i32* %64, align 4
  %242 = load i32, i32* %69, align 4
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %49, align 4
  %245 = call i32 @__msa_dpadd_s_h(i32 %242, i32 %243, i32 %244)
  store i32 %245, i32* %65, align 4
  %246 = load i32, i32* %69, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %50, align 4
  %249 = call i32 @__msa_dpadd_s_h(i32 %246, i32 %247, i32 %248)
  store i32 %249, i32* %66, align 4
  %250 = load i32, i32* %69, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %51, align 4
  %253 = call i32 @__msa_dpadd_s_h(i32 %250, i32 %251, i32 %252)
  store i32 %253, i32* %67, align 4
  %254 = load i32, i32* %52, align 4
  %255 = load i32, i32* %53, align 4
  %256 = load i32, i32* %54, align 4
  %257 = load i32, i32* %55, align 4
  %258 = load i32, i32* %68, align 4
  %259 = call i32 @SRA_4V(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %56, align 4
  %261 = load i32, i32* %57, align 4
  %262 = load i32, i32* %58, align 4
  %263 = load i32, i32* %59, align 4
  %264 = load i32, i32* %68, align 4
  %265 = call i32 @SRA_4V(i32 %260, i32 %261, i32 %262, i32 %263, i32 %264)
  %266 = load i32, i32* %60, align 4
  %267 = load i32, i32* %61, align 4
  %268 = load i32, i32* %62, align 4
  %269 = load i32, i32* %63, align 4
  %270 = load i32, i32* %68, align 4
  %271 = call i32 @SRA_4V(i32 %266, i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %64, align 4
  %273 = load i32, i32* %65, align 4
  %274 = load i32, i32* %66, align 4
  %275 = load i32, i32* %67, align 4
  %276 = load i32, i32* %68, align 4
  %277 = call i32 @SRA_4V(i32 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* %52, align 4
  %279 = load i32, i32* %53, align 4
  %280 = load i32, i32* %54, align 4
  %281 = load i32, i32* %55, align 4
  %282 = load i32, i32* %56, align 4
  %283 = load i32, i32* %57, align 4
  %284 = load i32, i32* %58, align 4
  %285 = load i32, i32* %59, align 4
  %286 = call i32 @CLIP_SH8_0_255(i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %60, align 4
  %288 = load i32, i32* %61, align 4
  %289 = load i32, i32* %62, align 4
  %290 = load i32, i32* %63, align 4
  %291 = load i32, i32* %64, align 4
  %292 = load i32, i32* %65, align 4
  %293 = load i32, i32* %66, align 4
  %294 = load i32, i32* %67, align 4
  %295 = call i32 @CLIP_SH8_0_255(i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %53, align 4
  %297 = load i32, i32* %52, align 4
  %298 = load i32, i32* %55, align 4
  %299 = load i32, i32* %54, align 4
  %300 = load i32, i32* %57, align 4
  %301 = load i32, i32* %56, align 4
  %302 = load i32, i32* %59, align 4
  %303 = load i32, i32* %58, align 4
  %304 = load i32, i32* %28, align 4
  %305 = load i32, i32* %29, align 4
  %306 = load i32, i32* %30, align 4
  %307 = load i32, i32* %31, align 4
  %308 = call i32 @PCKEV_B4_UB(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307)
  %309 = load i32, i32* %61, align 4
  %310 = load i32, i32* %60, align 4
  %311 = load i32, i32* %63, align 4
  %312 = load i32, i32* %62, align 4
  %313 = load i32, i32* %65, align 4
  %314 = load i32, i32* %64, align 4
  %315 = load i32, i32* %67, align 4
  %316 = load i32, i32* %66, align 4
  %317 = load i32, i32* %32, align 4
  %318 = load i32, i32* %33, align 4
  %319 = load i32, i32* %34, align 4
  %320 = load i32, i32* %35, align 4
  %321 = call i32 @PCKEV_B4_UB(i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320)
  %322 = load i32, i32* %28, align 4
  %323 = load i32, i32* %29, align 4
  %324 = load i32, i32* %30, align 4
  %325 = load i32, i32* %31, align 4
  %326 = load i32, i32* %32, align 4
  %327 = load i32, i32* %33, align 4
  %328 = load i32, i32* %34, align 4
  %329 = load i32, i32* %35, align 4
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %11, align 4
  %332 = call i32 @ST_UB8(i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32* %330, i32 %331)
  %333 = load i32, i32* %11, align 4
  %334 = mul nsw i32 8, %333
  %335 = load i32*, i32** %9, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** %9, align 8
  %338 = load i32, i32* %12, align 4
  %339 = icmp eq i32 16, %338
  br i1 %339, label %340, label %576

340:                                              ; preds = %8
  %341 = load i32*, i32** %10, align 8
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = load i32, i32* %22, align 4
  %346 = load i32, i32* %23, align 4
  %347 = load i32, i32* %24, align 4
  %348 = load i32, i32* %25, align 4
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* %27, align 4
  %351 = call i32 @LD_UB8(i32* %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350)
  %352 = load i32*, i32** %9, align 8
  %353 = load i32, i32* %11, align 4
  %354 = load i32, i32* %28, align 4
  %355 = load i32, i32* %29, align 4
  %356 = load i32, i32* %30, align 4
  %357 = load i32, i32* %31, align 4
  %358 = load i32, i32* %32, align 4
  %359 = load i32, i32* %33, align 4
  %360 = load i32, i32* %34, align 4
  %361 = load i32, i32* %35, align 4
  %362 = call i32 @LD_UB8(i32* %352, i32 %353, i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361)
  %363 = load i32, i32* %20, align 4
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %22, align 4
  %366 = load i32, i32* %23, align 4
  %367 = load i32, i32* %24, align 4
  %368 = load i32, i32* %25, align 4
  %369 = load i32, i32* %26, align 4
  %370 = load i32, i32* %27, align 4
  %371 = call i32 @XORI_B8_128_UB(i32 %363, i32 %364, i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370)
  %372 = load i32, i32* %28, align 4
  %373 = load i32, i32* %29, align 4
  %374 = load i32, i32* %30, align 4
  %375 = load i32, i32* %31, align 4
  %376 = load i32, i32* %32, align 4
  %377 = load i32, i32* %33, align 4
  %378 = load i32, i32* %34, align 4
  %379 = load i32, i32* %35, align 4
  %380 = call i32 @XORI_B8_128_UB(i32 %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 %378, i32 %379)
  %381 = load i32, i32* %28, align 4
  %382 = load i32, i32* %20, align 4
  %383 = load i32, i32* %29, align 4
  %384 = load i32, i32* %21, align 4
  %385 = load i32, i32* %30, align 4
  %386 = load i32, i32* %22, align 4
  %387 = load i32, i32* %31, align 4
  %388 = load i32, i32* %23, align 4
  %389 = load i32, i32* %36, align 4
  %390 = load i32, i32* %38, align 4
  %391 = load i32, i32* %40, align 4
  %392 = load i32, i32* %42, align 4
  %393 = call i32 @ILVR_B4_SB(i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392)
  %394 = load i32, i32* %28, align 4
  %395 = load i32, i32* %20, align 4
  %396 = load i32, i32* %29, align 4
  %397 = load i32, i32* %21, align 4
  %398 = load i32, i32* %30, align 4
  %399 = load i32, i32* %22, align 4
  %400 = load i32, i32* %31, align 4
  %401 = load i32, i32* %23, align 4
  %402 = load i32, i32* %37, align 4
  %403 = load i32, i32* %39, align 4
  %404 = load i32, i32* %41, align 4
  %405 = load i32, i32* %43, align 4
  %406 = call i32 @ILVL_B4_SB(i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405)
  %407 = load i32, i32* %32, align 4
  %408 = load i32, i32* %24, align 4
  %409 = load i32, i32* %33, align 4
  %410 = load i32, i32* %25, align 4
  %411 = load i32, i32* %34, align 4
  %412 = load i32, i32* %26, align 4
  %413 = load i32, i32* %35, align 4
  %414 = load i32, i32* %27, align 4
  %415 = load i32, i32* %44, align 4
  %416 = load i32, i32* %46, align 4
  %417 = load i32, i32* %48, align 4
  %418 = load i32, i32* %50, align 4
  %419 = call i32 @ILVR_B4_SB(i32 %407, i32 %408, i32 %409, i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415, i32 %416, i32 %417, i32 %418)
  %420 = load i32, i32* %32, align 4
  %421 = load i32, i32* %24, align 4
  %422 = load i32, i32* %33, align 4
  %423 = load i32, i32* %25, align 4
  %424 = load i32, i32* %34, align 4
  %425 = load i32, i32* %26, align 4
  %426 = load i32, i32* %35, align 4
  %427 = load i32, i32* %27, align 4
  %428 = load i32, i32* %45, align 4
  %429 = load i32, i32* %47, align 4
  %430 = load i32, i32* %49, align 4
  %431 = load i32, i32* %51, align 4
  %432 = call i32 @ILVL_B4_SB(i32 %420, i32 %421, i32 %422, i32 %423, i32 %424, i32 %425, i32 %426, i32 %427, i32 %428, i32 %429, i32 %430, i32 %431)
  %433 = load i32, i32* %69, align 4
  %434 = load i32, i32* %19, align 4
  %435 = load i32, i32* %36, align 4
  %436 = call i32 @__msa_dpadd_s_h(i32 %433, i32 %434, i32 %435)
  store i32 %436, i32* %52, align 4
  %437 = load i32, i32* %69, align 4
  %438 = load i32, i32* %19, align 4
  %439 = load i32, i32* %37, align 4
  %440 = call i32 @__msa_dpadd_s_h(i32 %437, i32 %438, i32 %439)
  store i32 %440, i32* %53, align 4
  %441 = load i32, i32* %69, align 4
  %442 = load i32, i32* %19, align 4
  %443 = load i32, i32* %38, align 4
  %444 = call i32 @__msa_dpadd_s_h(i32 %441, i32 %442, i32 %443)
  store i32 %444, i32* %54, align 4
  %445 = load i32, i32* %69, align 4
  %446 = load i32, i32* %19, align 4
  %447 = load i32, i32* %39, align 4
  %448 = call i32 @__msa_dpadd_s_h(i32 %445, i32 %446, i32 %447)
  store i32 %448, i32* %55, align 4
  %449 = load i32, i32* %69, align 4
  %450 = load i32, i32* %19, align 4
  %451 = load i32, i32* %40, align 4
  %452 = call i32 @__msa_dpadd_s_h(i32 %449, i32 %450, i32 %451)
  store i32 %452, i32* %56, align 4
  %453 = load i32, i32* %69, align 4
  %454 = load i32, i32* %19, align 4
  %455 = load i32, i32* %41, align 4
  %456 = call i32 @__msa_dpadd_s_h(i32 %453, i32 %454, i32 %455)
  store i32 %456, i32* %57, align 4
  %457 = load i32, i32* %69, align 4
  %458 = load i32, i32* %19, align 4
  %459 = load i32, i32* %42, align 4
  %460 = call i32 @__msa_dpadd_s_h(i32 %457, i32 %458, i32 %459)
  store i32 %460, i32* %58, align 4
  %461 = load i32, i32* %69, align 4
  %462 = load i32, i32* %19, align 4
  %463 = load i32, i32* %43, align 4
  %464 = call i32 @__msa_dpadd_s_h(i32 %461, i32 %462, i32 %463)
  store i32 %464, i32* %59, align 4
  %465 = load i32, i32* %69, align 4
  %466 = load i32, i32* %19, align 4
  %467 = load i32, i32* %44, align 4
  %468 = call i32 @__msa_dpadd_s_h(i32 %465, i32 %466, i32 %467)
  store i32 %468, i32* %60, align 4
  %469 = load i32, i32* %69, align 4
  %470 = load i32, i32* %19, align 4
  %471 = load i32, i32* %45, align 4
  %472 = call i32 @__msa_dpadd_s_h(i32 %469, i32 %470, i32 %471)
  store i32 %472, i32* %61, align 4
  %473 = load i32, i32* %69, align 4
  %474 = load i32, i32* %19, align 4
  %475 = load i32, i32* %46, align 4
  %476 = call i32 @__msa_dpadd_s_h(i32 %473, i32 %474, i32 %475)
  store i32 %476, i32* %62, align 4
  %477 = load i32, i32* %69, align 4
  %478 = load i32, i32* %19, align 4
  %479 = load i32, i32* %47, align 4
  %480 = call i32 @__msa_dpadd_s_h(i32 %477, i32 %478, i32 %479)
  store i32 %480, i32* %63, align 4
  %481 = load i32, i32* %69, align 4
  %482 = load i32, i32* %19, align 4
  %483 = load i32, i32* %48, align 4
  %484 = call i32 @__msa_dpadd_s_h(i32 %481, i32 %482, i32 %483)
  store i32 %484, i32* %64, align 4
  %485 = load i32, i32* %69, align 4
  %486 = load i32, i32* %19, align 4
  %487 = load i32, i32* %49, align 4
  %488 = call i32 @__msa_dpadd_s_h(i32 %485, i32 %486, i32 %487)
  store i32 %488, i32* %65, align 4
  %489 = load i32, i32* %69, align 4
  %490 = load i32, i32* %19, align 4
  %491 = load i32, i32* %50, align 4
  %492 = call i32 @__msa_dpadd_s_h(i32 %489, i32 %490, i32 %491)
  store i32 %492, i32* %66, align 4
  %493 = load i32, i32* %69, align 4
  %494 = load i32, i32* %19, align 4
  %495 = load i32, i32* %51, align 4
  %496 = call i32 @__msa_dpadd_s_h(i32 %493, i32 %494, i32 %495)
  store i32 %496, i32* %67, align 4
  %497 = load i32, i32* %52, align 4
  %498 = load i32, i32* %53, align 4
  %499 = load i32, i32* %54, align 4
  %500 = load i32, i32* %55, align 4
  %501 = load i32, i32* %68, align 4
  %502 = call i32 @SRA_4V(i32 %497, i32 %498, i32 %499, i32 %500, i32 %501)
  %503 = load i32, i32* %56, align 4
  %504 = load i32, i32* %57, align 4
  %505 = load i32, i32* %58, align 4
  %506 = load i32, i32* %59, align 4
  %507 = load i32, i32* %68, align 4
  %508 = call i32 @SRA_4V(i32 %503, i32 %504, i32 %505, i32 %506, i32 %507)
  %509 = load i32, i32* %60, align 4
  %510 = load i32, i32* %61, align 4
  %511 = load i32, i32* %62, align 4
  %512 = load i32, i32* %63, align 4
  %513 = load i32, i32* %68, align 4
  %514 = call i32 @SRA_4V(i32 %509, i32 %510, i32 %511, i32 %512, i32 %513)
  %515 = load i32, i32* %64, align 4
  %516 = load i32, i32* %65, align 4
  %517 = load i32, i32* %66, align 4
  %518 = load i32, i32* %67, align 4
  %519 = load i32, i32* %68, align 4
  %520 = call i32 @SRA_4V(i32 %515, i32 %516, i32 %517, i32 %518, i32 %519)
  %521 = load i32, i32* %52, align 4
  %522 = load i32, i32* %53, align 4
  %523 = load i32, i32* %54, align 4
  %524 = load i32, i32* %55, align 4
  %525 = load i32, i32* %56, align 4
  %526 = load i32, i32* %57, align 4
  %527 = load i32, i32* %58, align 4
  %528 = load i32, i32* %59, align 4
  %529 = call i32 @CLIP_SH8_0_255(i32 %521, i32 %522, i32 %523, i32 %524, i32 %525, i32 %526, i32 %527, i32 %528)
  %530 = load i32, i32* %60, align 4
  %531 = load i32, i32* %61, align 4
  %532 = load i32, i32* %62, align 4
  %533 = load i32, i32* %63, align 4
  %534 = load i32, i32* %64, align 4
  %535 = load i32, i32* %65, align 4
  %536 = load i32, i32* %66, align 4
  %537 = load i32, i32* %67, align 4
  %538 = call i32 @CLIP_SH8_0_255(i32 %530, i32 %531, i32 %532, i32 %533, i32 %534, i32 %535, i32 %536, i32 %537)
  %539 = load i32, i32* %53, align 4
  %540 = load i32, i32* %52, align 4
  %541 = load i32, i32* %55, align 4
  %542 = load i32, i32* %54, align 4
  %543 = load i32, i32* %57, align 4
  %544 = load i32, i32* %56, align 4
  %545 = load i32, i32* %59, align 4
  %546 = load i32, i32* %58, align 4
  %547 = load i32, i32* %28, align 4
  %548 = load i32, i32* %29, align 4
  %549 = load i32, i32* %30, align 4
  %550 = load i32, i32* %31, align 4
  %551 = call i32 @PCKEV_B4_UB(i32 %539, i32 %540, i32 %541, i32 %542, i32 %543, i32 %544, i32 %545, i32 %546, i32 %547, i32 %548, i32 %549, i32 %550)
  %552 = load i32, i32* %61, align 4
  %553 = load i32, i32* %60, align 4
  %554 = load i32, i32* %63, align 4
  %555 = load i32, i32* %62, align 4
  %556 = load i32, i32* %65, align 4
  %557 = load i32, i32* %64, align 4
  %558 = load i32, i32* %67, align 4
  %559 = load i32, i32* %66, align 4
  %560 = load i32, i32* %32, align 4
  %561 = load i32, i32* %33, align 4
  %562 = load i32, i32* %34, align 4
  %563 = load i32, i32* %35, align 4
  %564 = call i32 @PCKEV_B4_UB(i32 %552, i32 %553, i32 %554, i32 %555, i32 %556, i32 %557, i32 %558, i32 %559, i32 %560, i32 %561, i32 %562, i32 %563)
  %565 = load i32, i32* %28, align 4
  %566 = load i32, i32* %29, align 4
  %567 = load i32, i32* %30, align 4
  %568 = load i32, i32* %31, align 4
  %569 = load i32, i32* %32, align 4
  %570 = load i32, i32* %33, align 4
  %571 = load i32, i32* %34, align 4
  %572 = load i32, i32* %35, align 4
  %573 = load i32*, i32** %9, align 8
  %574 = load i32, i32* %11, align 4
  %575 = call i32 @ST_UB8(i32 %565, i32 %566, i32 %567, i32 %568, i32 %569, i32 %570, i32 %571, i32 %572, i32* %573, i32 %574)
  br label %576

576:                                              ; preds = %340, %8
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @LD_UB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_h(i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH8_0_255(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB8(i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
