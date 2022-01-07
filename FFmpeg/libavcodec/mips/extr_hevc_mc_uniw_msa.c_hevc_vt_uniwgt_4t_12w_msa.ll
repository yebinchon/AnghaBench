; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %61 = alloca i64, align 8
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 1, %82
  %84 = load i32*, i32** %10, align 8
  %85 = sext i32 %83 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32* %87, i32** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = and i32 %88, 65535
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @__msa_fill_w(i32 %90)
  store i32 %91, i32* %80, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @__msa_fill_w(i32 %92)
  store i32 %93, i32* %81, align 4
  %94 = load i32, i32* %16, align 4
  %95 = mul nsw i32 %94, 128
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = sub nsw i32 %96, 6
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @__msa_fill_h(i32 %98)
  store i32 %99, i32* %77, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @__msa_fill_h(i32 %100)
  store i32 %101, i32* %78, align 4
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @__msa_fill_h(i32 %102)
  store i32 %103, i32* %79, align 4
  %104 = load i32, i32* %77, align 4
  %105 = load i32, i32* %79, align 4
  %106 = call i32 @__msa_srar_h(i32 %104, i32 %105)
  store i32 %106, i32* %77, align 4
  %107 = load i32, i32* %78, align 4
  %108 = load i32, i32* %77, align 4
  %109 = call i32 @__msa_adds_s_h(i32 %107, i32 %108)
  store i32 %109, i32* %78, align 4
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @LD_SH(i32* %110)
  store i32 %111, i32* %76, align 4
  %112 = load i32, i32* %76, align 4
  %113 = load i32, i32* %62, align 4
  %114 = load i32, i32* %63, align 4
  %115 = call i32 @SPLATI_H2_SH(i32 %112, i32 0, i32 1, i32 %113, i32 %114)
  %116 = load i32*, i32** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = load i64, i64* %26, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %28, align 8
  %121 = call i32 @LD_SB3(i32* %116, i32 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 3, %122
  %124 = load i32*, i32** %10, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %10, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* %28, align 8
  %130 = call i32 @XORI_B3_128_SB(i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %37, align 8
  %136 = load i64, i64* %39, align 8
  %137 = call i32 @ILVR_B2_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %27, align 8
  %139 = load i64, i64* %26, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %27, align 8
  %142 = load i64, i64* %41, align 8
  %143 = load i64, i64* %44, align 8
  %144 = call i32 @ILVL_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %44, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* %41, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i64 @__msa_ilvr_d(i32 %146, i32 %148)
  store i64 %149, i64* %47, align 8
  store i32 2, i32* %19, align 4
  br label %150

150:                                              ; preds = %154, %9
  %151 = load i32, i32* %19, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %19, align 4
  %153 = icmp ne i32 %151, 0
  br i1 %153, label %154, label %394

154:                                              ; preds = %150
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i64, i64* %29, align 8
  %158 = load i64, i64* %30, align 8
  %159 = load i64, i64* %31, align 8
  %160 = load i64, i64* %32, align 8
  %161 = load i64, i64* %33, align 8
  %162 = load i64, i64* %34, align 8
  %163 = load i64, i64* %35, align 8
  %164 = load i64, i64* %36, align 8
  %165 = call i32 @LD_SB8(i32* %155, i32 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i32, i32* %11, align 4
  %167 = mul nsw i32 8, %166
  %168 = load i32*, i32** %10, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %10, align 8
  %171 = load i64, i64* %29, align 8
  %172 = load i64, i64* %30, align 8
  %173 = load i64, i64* %31, align 8
  %174 = load i64, i64* %32, align 8
  %175 = load i64, i64* %33, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* %36, align 8
  %179 = call i32 @XORI_B8_128_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %29, align 8
  %181 = load i64, i64* %28, align 8
  %182 = load i64, i64* %38, align 8
  %183 = load i64, i64* %42, align 8
  %184 = call i32 @ILVRL_B2_SB(i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %30, align 8
  %186 = load i64, i64* %29, align 8
  %187 = load i64, i64* %40, align 8
  %188 = load i64, i64* %45, align 8
  %189 = call i32 @ILVRL_B2_SB(i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %31, align 8
  %191 = load i64, i64* %30, align 8
  %192 = load i64, i64* %49, align 8
  %193 = load i64, i64* %43, align 8
  %194 = call i32 @ILVRL_B2_SB(i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %32, align 8
  %196 = load i64, i64* %31, align 8
  %197 = load i64, i64* %52, align 8
  %198 = load i64, i64* %46, align 8
  %199 = call i32 @ILVRL_B2_SB(i64 %195, i64 %196, i64 %197, i64 %198)
  %200 = load i64, i64* %45, align 8
  %201 = trunc i64 %200 to i32
  %202 = load i64, i64* %42, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i64 @__msa_ilvr_d(i32 %201, i32 %203)
  store i64 %204, i64* %48, align 8
  %205 = load i64, i64* %46, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i64, i64* %43, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i64 @__msa_ilvr_d(i32 %206, i32 %208)
  store i64 %209, i64* %59, align 8
  %210 = load i64, i64* %37, align 8
  %211 = load i64, i64* %38, align 8
  %212 = load i32, i32* %62, align 4
  %213 = load i32, i32* %63, align 4
  %214 = call i32 @HEVC_FILT_4TAP_SH(i64 %210, i64 %211, i32 %212, i32 %213)
  store i32 %214, i32* %64, align 4
  %215 = load i64, i64* %39, align 8
  %216 = load i64, i64* %40, align 8
  %217 = load i32, i32* %62, align 4
  %218 = load i32, i32* %63, align 4
  %219 = call i32 @HEVC_FILT_4TAP_SH(i64 %215, i64 %216, i32 %217, i32 %218)
  store i32 %219, i32* %65, align 4
  %220 = load i64, i64* %38, align 8
  %221 = load i64, i64* %49, align 8
  %222 = load i32, i32* %62, align 4
  %223 = load i32, i32* %63, align 4
  %224 = call i32 @HEVC_FILT_4TAP_SH(i64 %220, i64 %221, i32 %222, i32 %223)
  store i32 %224, i32* %66, align 4
  %225 = load i64, i64* %40, align 8
  %226 = load i64, i64* %52, align 8
  %227 = load i32, i32* %62, align 4
  %228 = load i32, i32* %63, align 4
  %229 = call i32 @HEVC_FILT_4TAP_SH(i64 %225, i64 %226, i32 %227, i32 %228)
  store i32 %229, i32* %67, align 4
  %230 = load i64, i64* %47, align 8
  %231 = load i64, i64* %48, align 8
  %232 = load i32, i32* %62, align 4
  %233 = load i32, i32* %63, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i64 %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %68, align 4
  %235 = load i64, i64* %48, align 8
  %236 = load i64, i64* %59, align 8
  %237 = load i32, i32* %62, align 4
  %238 = load i32, i32* %63, align 4
  %239 = call i32 @HEVC_FILT_4TAP_SH(i64 %235, i64 %236, i32 %237, i32 %238)
  store i32 %239, i32* %69, align 4
  %240 = load i32, i32* %64, align 4
  %241 = load i32, i32* %65, align 4
  %242 = load i32, i32* %66, align 4
  %243 = load i32, i32* %67, align 4
  %244 = load i32, i32* %80, align 4
  %245 = load i32, i32* %78, align 4
  %246 = load i32, i32* %81, align 4
  %247 = load i32, i32* %64, align 4
  %248 = load i32, i32* %65, align 4
  %249 = load i32, i32* %66, align 4
  %250 = load i32, i32* %67, align 4
  %251 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %68, align 4
  %253 = load i32, i32* %69, align 4
  %254 = load i32, i32* %80, align 4
  %255 = load i32, i32* %78, align 4
  %256 = load i32, i32* %81, align 4
  %257 = load i32, i32* %68, align 4
  %258 = load i32, i32* %69, align 4
  %259 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %65, align 4
  %261 = load i32, i32* %64, align 4
  %262 = load i32, i32* %67, align 4
  %263 = load i32, i32* %66, align 4
  %264 = load i32, i32* %69, align 4
  %265 = load i32, i32* %68, align 4
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %21, align 4
  %268 = load i32, i32* %22, align 4
  %269 = call i32 @PCKEV_B3_UB(i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %20, align 4
  %271 = load i32, i32* %21, align 4
  %272 = load i32*, i32** %12, align 8
  %273 = load i32, i32* %13, align 4
  %274 = call i32 @ST_D4(i32 %270, i32 %271, i32 0, i32 1, i32 0, i32 1, i32* %272, i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = load i32*, i32** %12, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 8
  %278 = load i32, i32* %13, align 4
  %279 = call i32 @ST_W4(i32 %275, i32 0, i32 1, i32 2, i32 3, i32* %277, i32 %278)
  %280 = load i32, i32* %13, align 4
  %281 = mul nsw i32 4, %280
  %282 = load i32*, i32** %12, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32* %284, i32** %12, align 8
  %285 = load i64, i64* %33, align 8
  %286 = load i64, i64* %32, align 8
  %287 = load i64, i64* %50, align 8
  %288 = load i64, i64* %55, align 8
  %289 = call i32 @ILVRL_B2_SB(i64 %285, i64 %286, i64 %287, i64 %288)
  %290 = load i64, i64* %34, align 8
  %291 = load i64, i64* %33, align 8
  %292 = load i64, i64* %53, align 8
  %293 = load i64, i64* %57, align 8
  %294 = call i32 @ILVRL_B2_SB(i64 %290, i64 %291, i64 %292, i64 %293)
  %295 = load i64, i64* %35, align 8
  %296 = load i64, i64* %34, align 8
  %297 = load i64, i64* %51, align 8
  %298 = load i64, i64* %56, align 8
  %299 = call i32 @ILVRL_B2_SB(i64 %295, i64 %296, i64 %297, i64 %298)
  %300 = load i64, i64* %36, align 8
  %301 = load i64, i64* %35, align 8
  %302 = load i64, i64* %54, align 8
  %303 = load i64, i64* %58, align 8
  %304 = call i32 @ILVRL_B2_SB(i64 %300, i64 %301, i64 %302, i64 %303)
  %305 = load i64, i64* %57, align 8
  %306 = trunc i64 %305 to i32
  %307 = load i64, i64* %55, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i64 @__msa_ilvr_d(i32 %306, i32 %308)
  store i64 %309, i64* %60, align 8
  %310 = load i64, i64* %58, align 8
  %311 = trunc i64 %310 to i32
  %312 = load i64, i64* %56, align 8
  %313 = trunc i64 %312 to i32
  %314 = call i64 @__msa_ilvr_d(i32 %311, i32 %313)
  store i64 %314, i64* %61, align 8
  %315 = load i64, i64* %49, align 8
  %316 = load i64, i64* %50, align 8
  %317 = load i32, i32* %62, align 4
  %318 = load i32, i32* %63, align 4
  %319 = call i32 @HEVC_FILT_4TAP_SH(i64 %315, i64 %316, i32 %317, i32 %318)
  store i32 %319, i32* %70, align 4
  %320 = load i64, i64* %52, align 8
  %321 = load i64, i64* %53, align 8
  %322 = load i32, i32* %62, align 4
  %323 = load i32, i32* %63, align 4
  %324 = call i32 @HEVC_FILT_4TAP_SH(i64 %320, i64 %321, i32 %322, i32 %323)
  store i32 %324, i32* %71, align 4
  %325 = load i64, i64* %50, align 8
  %326 = load i64, i64* %51, align 8
  %327 = load i32, i32* %62, align 4
  %328 = load i32, i32* %63, align 4
  %329 = call i32 @HEVC_FILT_4TAP_SH(i64 %325, i64 %326, i32 %327, i32 %328)
  store i32 %329, i32* %72, align 4
  %330 = load i64, i64* %53, align 8
  %331 = load i64, i64* %54, align 8
  %332 = load i32, i32* %62, align 4
  %333 = load i32, i32* %63, align 4
  %334 = call i32 @HEVC_FILT_4TAP_SH(i64 %330, i64 %331, i32 %332, i32 %333)
  store i32 %334, i32* %73, align 4
  %335 = load i64, i64* %59, align 8
  %336 = load i64, i64* %60, align 8
  %337 = load i32, i32* %62, align 4
  %338 = load i32, i32* %63, align 4
  %339 = call i32 @HEVC_FILT_4TAP_SH(i64 %335, i64 %336, i32 %337, i32 %338)
  store i32 %339, i32* %74, align 4
  %340 = load i64, i64* %60, align 8
  %341 = load i64, i64* %61, align 8
  %342 = load i32, i32* %62, align 4
  %343 = load i32, i32* %63, align 4
  %344 = call i32 @HEVC_FILT_4TAP_SH(i64 %340, i64 %341, i32 %342, i32 %343)
  store i32 %344, i32* %75, align 4
  %345 = load i32, i32* %70, align 4
  %346 = load i32, i32* %71, align 4
  %347 = load i32, i32* %72, align 4
  %348 = load i32, i32* %73, align 4
  %349 = load i32, i32* %80, align 4
  %350 = load i32, i32* %78, align 4
  %351 = load i32, i32* %81, align 4
  %352 = load i32, i32* %70, align 4
  %353 = load i32, i32* %71, align 4
  %354 = load i32, i32* %72, align 4
  %355 = load i32, i32* %73, align 4
  %356 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355)
  %357 = load i32, i32* %74, align 4
  %358 = load i32, i32* %75, align 4
  %359 = load i32, i32* %80, align 4
  %360 = load i32, i32* %78, align 4
  %361 = load i32, i32* %81, align 4
  %362 = load i32, i32* %74, align 4
  %363 = load i32, i32* %75, align 4
  %364 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363)
  %365 = load i32, i32* %71, align 4
  %366 = load i32, i32* %70, align 4
  %367 = load i32, i32* %73, align 4
  %368 = load i32, i32* %72, align 4
  %369 = load i32, i32* %75, align 4
  %370 = load i32, i32* %74, align 4
  %371 = load i32, i32* %23, align 4
  %372 = load i32, i32* %24, align 4
  %373 = load i32, i32* %25, align 4
  %374 = call i32 @PCKEV_B3_UB(i32 %365, i32 %366, i32 %367, i32 %368, i32 %369, i32 %370, i32 %371, i32 %372, i32 %373)
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* %24, align 4
  %377 = load i32*, i32** %12, align 8
  %378 = load i32, i32* %13, align 4
  %379 = call i32 @ST_D4(i32 %375, i32 %376, i32 0, i32 1, i32 0, i32 1, i32* %377, i32 %378)
  %380 = load i32, i32* %25, align 4
  %381 = load i32*, i32** %12, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 8
  %383 = load i32, i32* %13, align 4
  %384 = call i32 @ST_W4(i32 %380, i32 0, i32 1, i32 2, i32 3, i32* %382, i32 %383)
  %385 = load i32, i32* %13, align 4
  %386 = mul nsw i32 4, %385
  %387 = load i32*, i32** %12, align 8
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  store i32* %389, i32** %12, align 8
  %390 = load i64, i64* %36, align 8
  store i64 %390, i64* %28, align 8
  %391 = load i64, i64* %51, align 8
  store i64 %391, i64* %37, align 8
  %392 = load i64, i64* %54, align 8
  store i64 %392, i64* %39, align 8
  %393 = load i64, i64* %61, align 8
  store i64 %393, i64* %47, align 8
  br label %150

394:                                              ; preds = %150
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_B2_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B3_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
