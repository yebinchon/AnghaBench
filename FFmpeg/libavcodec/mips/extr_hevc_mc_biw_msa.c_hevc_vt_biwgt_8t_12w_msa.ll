; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
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
  %81 = load i32, i32* %15, align 4
  %82 = mul nsw i32 3, %81
  %83 = load i32*, i32** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %14, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %26, align 4
  %91 = shl i32 %89, %90
  store i32 %91, i32* %28, align 4
  %92 = load i32, i32* %22, align 4
  %93 = and i32 %92, 65535
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %23, align 4
  %96 = shl i32 %95, 16
  %97 = or i32 %94, %96
  store i32 %97, i32* %29, align 4
  %98 = call i32 @__msa_ldi_w(i32 128)
  store i32 %98, i32* %80, align 4
  %99 = load i32, i32* %80, align 4
  %100 = shl i32 %99, 6
  store i32 %100, i32* %80, align 4
  %101 = load i32, i32* %28, align 4
  %102 = call i32 @__msa_fill_w(i32 %101)
  store i32 %102, i32* %78, align 4
  %103 = load i32, i32* %29, align 4
  %104 = call i32 @__msa_fill_w(i32 %103)
  store i32 %104, i32* %76, align 4
  %105 = load i32, i32* %26, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i32 @__msa_fill_w(i32 %106)
  store i32 %107, i32* %79, align 4
  %108 = load i32, i32* %23, align 4
  %109 = call i32 @__msa_fill_w(i32 %108)
  store i32 %109, i32* %77, align 4
  %110 = load i32, i32* %80, align 4
  %111 = load i32, i32* %77, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %78, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %78, align 4
  %115 = load i32*, i32** %20, align 8
  %116 = call i64 @LD_SH(i32* %115)
  store i64 %116, i64* %73, align 8
  %117 = load i64, i64* %73, align 8
  %118 = load i64, i64* %66, align 8
  %119 = load i64, i64* %67, align 8
  %120 = load i64, i64* %68, align 8
  %121 = load i64, i64* %69, align 8
  %122 = call i32 @SPLATI_H4_SH(i64 %117, i32 0, i32 1, i32 2, i32 3, i64 %118, i64 %119, i64 %120, i64 %121)
  %123 = load i32*, i32** %14, align 8
  %124 = load i32, i32* %15, align 4
  %125 = load i64, i64* %30, align 8
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %32, align 8
  %128 = load i64, i64* %33, align 8
  %129 = load i64, i64* %34, align 8
  %130 = load i64, i64* %35, align 8
  %131 = load i64, i64* %36, align 8
  %132 = call i32 @LD_SB7(i32* %123, i32 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i32, i32* %15, align 4
  %134 = mul nsw i32 7, %133
  %135 = load i32*, i32** %14, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %14, align 8
  %138 = load i64, i64* %30, align 8
  %139 = load i64, i64* %31, align 8
  %140 = load i64, i64* %32, align 8
  %141 = load i64, i64* %33, align 8
  %142 = load i64, i64* %34, align 8
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* %36, align 8
  %145 = call i32 @XORI_B7_128_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144)
  %146 = load i64, i64* %31, align 8
  %147 = load i64, i64* %30, align 8
  %148 = load i64, i64* %33, align 8
  %149 = load i64, i64* %32, align 8
  %150 = load i64, i64* %35, align 8
  %151 = load i64, i64* %34, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i64, i64* %31, align 8
  %154 = load i64, i64* %43, align 8
  %155 = load i64, i64* %44, align 8
  %156 = load i64, i64* %45, align 8
  %157 = load i64, i64* %47, align 8
  %158 = call i32 @ILVR_B4_SB(i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %34, align 8
  %160 = load i64, i64* %33, align 8
  %161 = load i64, i64* %36, align 8
  %162 = load i64, i64* %35, align 8
  %163 = load i64, i64* %48, align 8
  %164 = load i64, i64* %49, align 8
  %165 = call i32 @ILVR_B2_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %31, align 8
  %167 = load i64, i64* %30, align 8
  %168 = load i64, i64* %33, align 8
  %169 = load i64, i64* %32, align 8
  %170 = load i64, i64* %35, align 8
  %171 = load i64, i64* %34, align 8
  %172 = load i64, i64* %32, align 8
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* %54, align 8
  %175 = load i64, i64* %55, align 8
  %176 = load i64, i64* %56, align 8
  %177 = load i64, i64* %58, align 8
  %178 = call i32 @ILVL_B4_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177)
  %179 = load i64, i64* %34, align 8
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %36, align 8
  %182 = load i64, i64* %35, align 8
  %183 = load i64, i64* %59, align 8
  %184 = load i64, i64* %60, align 8
  %185 = call i32 @ILVL_B2_SB(i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %58, align 8
  %187 = load i64, i64* %54, align 8
  %188 = load i64, i64* %59, align 8
  %189 = load i64, i64* %55, align 8
  %190 = load i64, i64* %60, align 8
  %191 = load i64, i64* %56, align 8
  %192 = load i64, i64* %62, align 8
  %193 = load i64, i64* %63, align 8
  %194 = load i64, i64* %64, align 8
  %195 = call i32 @ILVR_D3_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  store i32 8, i32* %27, align 4
  br label %196

196:                                              ; preds = %200, %13
  %197 = load i32, i32* %27, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %27, align 4
  %199 = icmp ne i32 %197, 0
  br i1 %199, label %200, label %366

200:                                              ; preds = %196
  %201 = load i32*, i32** %14, align 8
  %202 = load i32, i32* %15, align 4
  %203 = load i64, i64* %37, align 8
  %204 = load i64, i64* %38, align 8
  %205 = call i32 @LD_SB2(i32* %201, i32 %202, i64 %203, i64 %204)
  %206 = load i32, i32* %15, align 4
  %207 = mul nsw i32 2, %206
  %208 = load i32*, i32** %14, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32* %210, i32** %14, align 8
  %211 = load i32*, i32** %16, align 8
  %212 = load i32, i32* %17, align 4
  %213 = load i64, i64* %39, align 8
  %214 = load i64, i64* %40, align 8
  %215 = call i32 @LD_SH2(i32* %211, i32 %212, i64 %213, i64 %214)
  %216 = load i32*, i32** %16, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 8
  %218 = load i32, i32* %17, align 4
  %219 = load i64, i64* %41, align 8
  %220 = load i64, i64* %42, align 8
  %221 = call i32 @LD_SH2(i32* %217, i32 %218, i64 %219, i64 %220)
  %222 = load i32, i32* %17, align 4
  %223 = mul nsw i32 2, %222
  %224 = load i32*, i32** %16, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %16, align 8
  %227 = load i64, i64* %42, align 8
  %228 = trunc i64 %227 to i32
  %229 = load i64, i64* %41, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i64 @__msa_ilvr_d(i32 %228, i32 %230)
  store i64 %231, i64* %41, align 8
  %232 = load i64, i64* %37, align 8
  %233 = load i64, i64* %38, align 8
  %234 = call i32 @XORI_B2_128_SB(i64 %232, i64 %233)
  %235 = load i64, i64* %37, align 8
  %236 = load i64, i64* %36, align 8
  %237 = load i64, i64* %38, align 8
  %238 = load i64, i64* %37, align 8
  %239 = load i64, i64* %46, align 8
  %240 = load i64, i64* %50, align 8
  %241 = call i32 @ILVR_B2_SB(i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i64, i64* %37, align 8
  %243 = load i64, i64* %36, align 8
  %244 = load i64, i64* %38, align 8
  %245 = load i64, i64* %37, align 8
  %246 = load i64, i64* %57, align 8
  %247 = load i64, i64* %61, align 8
  %248 = call i32 @ILVL_B2_SB(i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %61, align 8
  %250 = trunc i64 %249 to i32
  %251 = load i64, i64* %57, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i64 @__msa_ilvr_d(i32 %250, i32 %252)
  store i64 %253, i64* %65, align 8
  %254 = load i64, i64* %43, align 8
  %255 = load i64, i64* %47, align 8
  %256 = load i64, i64* %62, align 8
  %257 = load i64, i64* %66, align 8
  %258 = load i64, i64* %66, align 8
  %259 = load i64, i64* %66, align 8
  %260 = load i64, i64* %51, align 8
  %261 = load i64, i64* %52, align 8
  %262 = load i64, i64* %53, align 8
  %263 = call i32 @DOTP_SB3_SH(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64, i64* %44, align 8
  %265 = load i64, i64* %48, align 8
  %266 = load i64, i64* %67, align 8
  %267 = load i64, i64* %67, align 8
  %268 = load i64, i64* %51, align 8
  %269 = load i64, i64* %52, align 8
  %270 = call i32 @DPADD_SB2_SH(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  %271 = load i64, i64* %53, align 8
  %272 = load i64, i64* %63, align 8
  %273 = load i64, i64* %67, align 8
  %274 = call i64 @__msa_dpadd_s_h(i64 %271, i64 %272, i64 %273)
  store i64 %274, i64* %53, align 8
  %275 = load i64, i64* %45, align 8
  %276 = load i64, i64* %49, align 8
  %277 = load i64, i64* %68, align 8
  %278 = load i64, i64* %68, align 8
  %279 = load i64, i64* %51, align 8
  %280 = load i64, i64* %52, align 8
  %281 = call i32 @DPADD_SB2_SH(i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280)
  %282 = load i64, i64* %53, align 8
  %283 = load i64, i64* %64, align 8
  %284 = load i64, i64* %68, align 8
  %285 = call i64 @__msa_dpadd_s_h(i64 %282, i64 %283, i64 %284)
  store i64 %285, i64* %53, align 8
  %286 = load i64, i64* %46, align 8
  %287 = load i64, i64* %50, align 8
  %288 = load i64, i64* %69, align 8
  %289 = load i64, i64* %69, align 8
  %290 = load i64, i64* %51, align 8
  %291 = load i64, i64* %52, align 8
  %292 = call i32 @DPADD_SB2_SH(i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291)
  %293 = load i64, i64* %53, align 8
  %294 = load i64, i64* %65, align 8
  %295 = load i64, i64* %69, align 8
  %296 = call i64 @__msa_dpadd_s_h(i64 %293, i64 %294, i64 %295)
  store i64 %296, i64* %53, align 8
  %297 = load i64, i64* %51, align 8
  %298 = load i64, i64* %52, align 8
  %299 = load i64, i64* %39, align 8
  %300 = load i64, i64* %40, align 8
  %301 = load i32, i32* %76, align 4
  %302 = load i32, i32* %79, align 4
  %303 = load i32, i32* %78, align 4
  %304 = load i64, i64* %70, align 8
  %305 = load i64, i64* %71, align 8
  %306 = call i32 @HEVC_BIW_RND_CLIP2(i64 %297, i64 %298, i64 %299, i64 %300, i32 %301, i32 %302, i32 %303, i64 %304, i64 %305)
  %307 = load i64, i64* %53, align 8
  %308 = load i64, i64* %41, align 8
  %309 = load i32, i32* %74, align 4
  %310 = load i32, i32* %75, align 4
  %311 = call i32 @ILVRL_H2_SW(i64 %307, i64 %308, i32 %309, i32 %310)
  %312 = load i32, i32* %78, align 4
  %313 = load i32, i32* %74, align 4
  %314 = sext i32 %313 to i64
  %315 = load i32, i32* %76, align 4
  %316 = sext i32 %315 to i64
  %317 = call i32 @__msa_dpadd_s_w(i32 %312, i64 %314, i64 %316)
  store i32 %317, i32* %74, align 4
  %318 = load i32, i32* %78, align 4
  %319 = load i32, i32* %75, align 4
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %76, align 4
  %322 = sext i32 %321 to i64
  %323 = call i32 @__msa_dpadd_s_w(i32 %318, i64 %320, i64 %322)
  store i32 %323, i32* %75, align 4
  %324 = load i32, i32* %74, align 4
  %325 = load i32, i32* %75, align 4
  %326 = load i32, i32* %79, align 4
  %327 = call i32 @SRAR_W2_SW(i32 %324, i32 %325, i32 %326)
  %328 = load i32, i32* %75, align 4
  %329 = sext i32 %328 to i64
  %330 = load i32, i32* %74, align 4
  %331 = sext i32 %330 to i64
  %332 = call i64 @__msa_pckev_h(i64 %329, i64 %331)
  store i64 %332, i64* %72, align 8
  %333 = load i64, i64* %72, align 8
  %334 = call i32 @CLIP_SH_0_255(i64 %333)
  %335 = load i64, i64* %71, align 8
  %336 = load i64, i64* %70, align 8
  %337 = load i64, i64* %72, align 8
  %338 = load i64, i64* %72, align 8
  %339 = load i64, i64* %70, align 8
  %340 = load i64, i64* %72, align 8
  %341 = call i32 @PCKEV_B2_SH(i64 %335, i64 %336, i64 %337, i64 %338, i64 %339, i64 %340)
  %342 = load i64, i64* %70, align 8
  %343 = load i32*, i32** %18, align 8
  %344 = load i32, i32* %19, align 4
  %345 = call i32 @ST_D2(i64 %342, i32 0, i32 1, i32* %343, i32 %344)
  %346 = load i64, i64* %72, align 8
  %347 = load i32*, i32** %18, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 8
  %349 = load i32, i32* %19, align 4
  %350 = call i32 @ST_W2(i64 %346, i32 0, i32 1, i32* %348, i32 %349)
  %351 = load i32, i32* %19, align 4
  %352 = mul nsw i32 2, %351
  %353 = load i32*, i32** %18, align 8
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  store i32* %355, i32** %18, align 8
  %356 = load i64, i64* %44, align 8
  store i64 %356, i64* %43, align 8
  %357 = load i64, i64* %45, align 8
  store i64 %357, i64* %44, align 8
  %358 = load i64, i64* %46, align 8
  store i64 %358, i64* %45, align 8
  %359 = load i64, i64* %48, align 8
  store i64 %359, i64* %47, align 8
  %360 = load i64, i64* %49, align 8
  store i64 %360, i64* %48, align 8
  %361 = load i64, i64* %50, align 8
  store i64 %361, i64* %49, align 8
  %362 = load i64, i64* %63, align 8
  store i64 %362, i64* %62, align 8
  %363 = load i64, i64* %64, align 8
  store i64 %363, i64* %63, align 8
  %364 = load i64, i64* %65, align 8
  store i64 %364, i64* %64, align 8
  %365 = load i64, i64* %38, align 8
  store i64 %365, i64* %36, align 8
  br label %196

366:                                              ; preds = %196
  ret void
}

declare dso_local i32 @__msa_ldi_w(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D3_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @DOTP_SB3_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_dpadd_s_h(i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_w(i32, i64, i64) #1

declare dso_local i32 @SRAR_W2_SW(i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @CLIP_SH_0_255(i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
