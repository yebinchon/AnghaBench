; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 3, %92
  %94 = load i32*, i32** %14, align 8
  %95 = sext i32 %93 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %14, align 8
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %25, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %26, align 4
  %102 = shl i32 %100, %101
  store i32 %102, i32* %28, align 4
  %103 = load i32, i32* %22, align 4
  %104 = and i32 %103, 65535
  store i32 %104, i32* %22, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %23, align 4
  %107 = shl i32 %106, 16
  %108 = or i32 %105, %107
  store i32 %108, i32* %29, align 4
  %109 = call i32 @__msa_ldi_w(i32 128)
  store i32 %109, i32* %91, align 4
  %110 = load i32, i32* %91, align 4
  %111 = shl i32 %110, 6
  store i32 %111, i32* %91, align 4
  %112 = load i32, i32* %28, align 4
  %113 = call i32 @__msa_fill_w(i32 %112)
  store i32 %113, i32* %89, align 4
  %114 = load i32, i32* %29, align 4
  %115 = call i32 @__msa_fill_w(i32 %114)
  store i32 %115, i32* %87, align 4
  %116 = load i32, i32* %26, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @__msa_fill_w(i32 %117)
  store i32 %118, i32* %90, align 4
  %119 = load i32, i32* %23, align 4
  %120 = call i32 @__msa_fill_w(i32 %119)
  store i32 %120, i32* %88, align 4
  %121 = load i32, i32* %91, align 4
  %122 = load i32, i32* %88, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %89, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %89, align 4
  %126 = load i32*, i32** %20, align 8
  %127 = call i32 @LD_SH(i32* %126)
  store i32 %127, i32* %82, align 4
  %128 = load i32, i32* %82, align 4
  %129 = load i32, i32* %78, align 4
  %130 = load i32, i32* %79, align 4
  %131 = load i32, i32* %80, align 4
  %132 = load i32, i32* %81, align 4
  %133 = call i32 @SPLATI_H4_SH(i32 %128, i32 0, i32 1, i32 2, i32 3, i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %30, align 4
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %32, align 4
  %139 = load i32, i32* %33, align 4
  %140 = load i32, i32* %34, align 4
  %141 = load i32, i32* %35, align 4
  %142 = load i32, i32* %36, align 4
  %143 = call i32 @LD_SB7(i32* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %15, align 4
  %145 = mul nsw i32 7, %144
  %146 = load i32*, i32** %14, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %14, align 8
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %30, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %32, align 4
  %153 = load i32, i32* %35, align 4
  %154 = load i32, i32* %34, align 4
  %155 = load i32, i32* %32, align 4
  %156 = load i32, i32* %31, align 4
  %157 = load i32, i32* %53, align 4
  %158 = load i32, i32* %54, align 4
  %159 = load i32, i32* %55, align 4
  %160 = load i32, i32* %58, align 4
  %161 = call i32 @ILVR_B4_SB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %34, align 4
  %163 = load i32, i32* %33, align 4
  %164 = load i32, i32* %36, align 4
  %165 = load i32, i32* %35, align 4
  %166 = load i32, i32* %59, align 4
  %167 = load i32, i32* %60, align 4
  %168 = call i32 @ILVR_B2_SB(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %58, align 4
  %170 = load i32, i32* %53, align 4
  %171 = load i32, i32* %59, align 4
  %172 = load i32, i32* %54, align 4
  %173 = load i32, i32* %60, align 4
  %174 = load i32, i32* %55, align 4
  %175 = load i32, i32* %67, align 4
  %176 = load i32, i32* %68, align 4
  %177 = load i32, i32* %69, align 4
  %178 = call i32 @ILVR_D3_SB(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %67, align 4
  %180 = load i32, i32* %68, align 4
  %181 = load i32, i32* %69, align 4
  %182 = call i32 @XORI_B3_128_SB(i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %21, align 4
  %184 = ashr i32 %183, 3
  store i32 %184, i32* %27, align 4
  br label %185

185:                                              ; preds = %189, %13
  %186 = load i32, i32* %27, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %27, align 4
  %188 = icmp ne i32 %186, 0
  br i1 %188, label %189, label %369

189:                                              ; preds = %185
  %190 = load i32*, i32** %14, align 8
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %37, align 4
  %193 = load i32, i32* %38, align 4
  %194 = load i32, i32* %39, align 4
  %195 = load i32, i32* %40, align 4
  %196 = load i32, i32* %41, align 4
  %197 = load i32, i32* %42, align 4
  %198 = load i32, i32* %43, align 4
  %199 = load i32, i32* %44, align 4
  %200 = call i32 @LD_SB8(i32* %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199)
  %201 = load i32, i32* %15, align 4
  %202 = mul nsw i32 8, %201
  %203 = load i32*, i32** %14, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  store i32* %205, i32** %14, align 8
  %206 = load i32*, i32** %16, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %45, align 4
  %209 = load i32, i32* %46, align 4
  %210 = load i32, i32* %47, align 4
  %211 = load i32, i32* %48, align 4
  %212 = load i32, i32* %49, align 4
  %213 = load i32, i32* %50, align 4
  %214 = load i32, i32* %51, align 4
  %215 = load i32, i32* %52, align 4
  %216 = call i32 @LD_SH8(i32* %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %17, align 4
  %218 = mul nsw i32 8, %217
  %219 = load i32*, i32** %16, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %16, align 8
  %222 = load i32, i32* %46, align 4
  %223 = load i32, i32* %45, align 4
  %224 = load i32, i32* %48, align 4
  %225 = load i32, i32* %47, align 4
  %226 = load i32, i32* %45, align 4
  %227 = load i32, i32* %46, align 4
  %228 = call i32 @ILVR_D2_SH(i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %50, align 4
  %230 = load i32, i32* %49, align 4
  %231 = load i32, i32* %52, align 4
  %232 = load i32, i32* %51, align 4
  %233 = load i32, i32* %47, align 4
  %234 = load i32, i32* %48, align 4
  %235 = call i32 @ILVR_D2_SH(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %37, align 4
  %237 = load i32, i32* %36, align 4
  %238 = load i32, i32* %38, align 4
  %239 = load i32, i32* %37, align 4
  %240 = load i32, i32* %39, align 4
  %241 = load i32, i32* %38, align 4
  %242 = load i32, i32* %40, align 4
  %243 = load i32, i32* %39, align 4
  %244 = load i32, i32* %56, align 4
  %245 = load i32, i32* %61, align 4
  %246 = load i32, i32* %57, align 4
  %247 = load i32, i32* %62, align 4
  %248 = call i32 @ILVR_B4_SB(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %41, align 4
  %250 = load i32, i32* %40, align 4
  %251 = load i32, i32* %42, align 4
  %252 = load i32, i32* %41, align 4
  %253 = load i32, i32* %43, align 4
  %254 = load i32, i32* %42, align 4
  %255 = load i32, i32* %44, align 4
  %256 = load i32, i32* %43, align 4
  %257 = load i32, i32* %63, align 4
  %258 = load i32, i32* %64, align 4
  %259 = load i32, i32* %65, align 4
  %260 = load i32, i32* %66, align 4
  %261 = call i32 @ILVR_B4_SB(i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %61, align 4
  %263 = load i32, i32* %56, align 4
  %264 = load i32, i32* %62, align 4
  %265 = load i32, i32* %57, align 4
  %266 = load i32, i32* %64, align 4
  %267 = load i32, i32* %63, align 4
  %268 = load i32, i32* %66, align 4
  %269 = load i32, i32* %65, align 4
  %270 = load i32, i32* %70, align 4
  %271 = load i32, i32* %71, align 4
  %272 = load i32, i32* %72, align 4
  %273 = load i32, i32* %73, align 4
  %274 = call i32 @ILVR_D4_SB(i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %70, align 4
  %276 = load i32, i32* %71, align 4
  %277 = load i32, i32* %72, align 4
  %278 = load i32, i32* %73, align 4
  %279 = call i32 @XORI_B4_128_SB(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %67, align 4
  %281 = load i32, i32* %68, align 4
  %282 = load i32, i32* %69, align 4
  %283 = load i32, i32* %70, align 4
  %284 = load i32, i32* %78, align 4
  %285 = load i32, i32* %78, align 4
  %286 = load i32, i32* %78, align 4
  %287 = load i32, i32* %78, align 4
  %288 = load i32, i32* %74, align 4
  %289 = load i32, i32* %75, align 4
  %290 = load i32, i32* %76, align 4
  %291 = load i32, i32* %77, align 4
  %292 = call i32 @DOTP_SB4_SH(i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291)
  %293 = load i32, i32* %68, align 4
  %294 = load i32, i32* %69, align 4
  %295 = load i32, i32* %70, align 4
  %296 = load i32, i32* %71, align 4
  %297 = load i32, i32* %79, align 4
  %298 = load i32, i32* %79, align 4
  %299 = load i32, i32* %79, align 4
  %300 = load i32, i32* %79, align 4
  %301 = load i32, i32* %74, align 4
  %302 = load i32, i32* %75, align 4
  %303 = load i32, i32* %76, align 4
  %304 = load i32, i32* %77, align 4
  %305 = call i32 @DPADD_SB4_SH(i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %69, align 4
  %307 = load i32, i32* %70, align 4
  %308 = load i32, i32* %71, align 4
  %309 = load i32, i32* %72, align 4
  %310 = load i32, i32* %80, align 4
  %311 = load i32, i32* %80, align 4
  %312 = load i32, i32* %80, align 4
  %313 = load i32, i32* %80, align 4
  %314 = load i32, i32* %74, align 4
  %315 = load i32, i32* %75, align 4
  %316 = load i32, i32* %76, align 4
  %317 = load i32, i32* %77, align 4
  %318 = call i32 @DPADD_SB4_SH(i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317)
  %319 = load i32, i32* %70, align 4
  %320 = load i32, i32* %71, align 4
  %321 = load i32, i32* %72, align 4
  %322 = load i32, i32* %73, align 4
  %323 = load i32, i32* %81, align 4
  %324 = load i32, i32* %81, align 4
  %325 = load i32, i32* %81, align 4
  %326 = load i32, i32* %81, align 4
  %327 = load i32, i32* %74, align 4
  %328 = load i32, i32* %75, align 4
  %329 = load i32, i32* %76, align 4
  %330 = load i32, i32* %77, align 4
  %331 = call i32 @DPADD_SB4_SH(i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327, i32 %328, i32 %329, i32 %330)
  %332 = load i32, i32* %74, align 4
  %333 = load i32, i32* %75, align 4
  %334 = load i32, i32* %76, align 4
  %335 = load i32, i32* %77, align 4
  %336 = load i32, i32* %45, align 4
  %337 = load i32, i32* %46, align 4
  %338 = load i32, i32* %47, align 4
  %339 = load i32, i32* %48, align 4
  %340 = load i32, i32* %87, align 4
  %341 = load i32, i32* %90, align 4
  %342 = load i32, i32* %89, align 4
  %343 = load i32, i32* %83, align 4
  %344 = load i32, i32* %84, align 4
  %345 = load i32, i32* %85, align 4
  %346 = load i32, i32* %86, align 4
  %347 = call i32 @HEVC_BIW_RND_CLIP4(i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %84, align 4
  %349 = load i32, i32* %83, align 4
  %350 = load i32, i32* %86, align 4
  %351 = load i32, i32* %85, align 4
  %352 = load i32, i32* %83, align 4
  %353 = load i32, i32* %84, align 4
  %354 = call i32 @PCKEV_B2_SH(i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353)
  %355 = load i32, i32* %83, align 4
  %356 = load i32, i32* %84, align 4
  %357 = load i32*, i32** %18, align 8
  %358 = load i32, i32* %19, align 4
  %359 = call i32 @ST_W8(i32 %355, i32 %356, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %357, i32 %358)
  %360 = load i32, i32* %19, align 4
  %361 = mul nsw i32 8, %360
  %362 = load i32*, i32** %18, align 8
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  store i32* %364, i32** %18, align 8
  %365 = load i32, i32* %71, align 4
  store i32 %365, i32* %67, align 4
  %366 = load i32, i32* %72, align 4
  store i32 %366, i32* %68, align 4
  %367 = load i32, i32* %73, align 4
  store i32 %367, i32* %69, align 4
  %368 = load i32, i32* %44, align 4
  store i32 %368, i32* %36, align 4
  br label %185

369:                                              ; preds = %185
  ret void
}

declare dso_local i32 @__msa_ldi_w(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
