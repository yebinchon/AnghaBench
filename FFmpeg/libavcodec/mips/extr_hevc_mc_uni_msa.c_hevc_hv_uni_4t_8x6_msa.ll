; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_8x6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_4t_8x6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @hevc_hv_uni_4t_8x6_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uni_4t_8x6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %93 = load i32, i32* @ff_hevc_mask_arr, align 4
  %94 = call i64 @LD_SB(i32 %93)
  store i64 %94, i64* %30, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32*, i32** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = sub i64 0, %98
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %7, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @LD_SH(i32* %101)
  store i32 %102, i32* %29, align 4
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = call i32 @SPLATI_H2_SH(i32 %103, i32 0, i32 1, i32 %104, i32 %105)
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @LD_SH(i32* %107)
  store i32 %108, i32* %29, align 4
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %29, align 4
  %111 = call i32 @UNPCK_R_SB_SH(i32 %109, i32 %110)
  %112 = load i32, i32* %29, align 4
  %113 = load i32, i32* %27, align 4
  %114 = load i32, i32* %28, align 4
  %115 = call i32 @SPLATI_W2_SH(i32 %112, i32 0, i32 %113, i32 %114)
  %116 = load i64, i64* %30, align 8
  %117 = add nsw i64 %116, 2
  store i64 %117, i64* %31, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %20, align 8
  %125 = call i32 @LD_SB5(i32* %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124)
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 5, %126
  %128 = load i32*, i32** %7, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %24, align 8
  %137 = call i32 @LD_SB4(i32* %131, i32 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %18, align 8
  %141 = load i64, i64* %19, align 8
  %142 = load i64, i64* %20, align 8
  %143 = call i32 @XORI_B5_128_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* %22, align 8
  %146 = load i64, i64* %23, align 8
  %147 = load i64, i64* %24, align 8
  %148 = call i32 @XORI_B4_128_SB(i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %30, align 8
  %154 = load i64, i64* %31, align 8
  %155 = load i64, i64* %32, align 8
  %156 = load i64, i64* %33, align 8
  %157 = call i32 @VSHF_B2_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %17, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %34, align 8
  %165 = load i64, i64* %35, align 8
  %166 = call i32 @VSHF_B2_SB(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load i64, i64* %18, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* %30, align 8
  %172 = load i64, i64* %31, align 8
  %173 = load i64, i64* %36, align 8
  %174 = load i64, i64* %37, align 8
  %175 = call i32 @VSHF_B2_SB(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %19, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %30, align 8
  %181 = load i64, i64* %31, align 8
  %182 = load i64, i64* %38, align 8
  %183 = load i64, i64* %39, align 8
  %184 = call i32 @VSHF_B2_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %20, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load i64, i64* %20, align 8
  %188 = load i64, i64* %20, align 8
  %189 = load i64, i64* %30, align 8
  %190 = load i64, i64* %31, align 8
  %191 = load i64, i64* %40, align 8
  %192 = load i64, i64* %41, align 8
  %193 = call i32 @VSHF_B2_SB(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %21, align 8
  %195 = load i64, i64* %21, align 8
  %196 = load i64, i64* %21, align 8
  %197 = load i64, i64* %21, align 8
  %198 = load i64, i64* %30, align 8
  %199 = load i64, i64* %31, align 8
  %200 = load i64, i64* %42, align 8
  %201 = load i64, i64* %43, align 8
  %202 = call i32 @VSHF_B2_SB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i64, i64* %22, align 8
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* %22, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i64, i64* %30, align 8
  %208 = load i64, i64* %31, align 8
  %209 = load i64, i64* %44, align 8
  %210 = load i64, i64* %45, align 8
  %211 = call i32 @VSHF_B2_SB(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210)
  %212 = load i64, i64* %23, align 8
  %213 = load i64, i64* %23, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %23, align 8
  %216 = load i64, i64* %30, align 8
  %217 = load i64, i64* %31, align 8
  %218 = load i64, i64* %46, align 8
  %219 = load i64, i64* %47, align 8
  %220 = call i32 @VSHF_B2_SB(i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219)
  %221 = load i64, i64* %24, align 8
  %222 = load i64, i64* %24, align 8
  %223 = load i64, i64* %24, align 8
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* %30, align 8
  %226 = load i64, i64* %31, align 8
  %227 = load i64, i64* %48, align 8
  %228 = load i64, i64* %49, align 8
  %229 = call i32 @VSHF_B2_SB(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228)
  %230 = load i64, i64* %32, align 8
  %231 = load i64, i64* %33, align 8
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %26, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i64 %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %50, align 4
  %235 = load i64, i64* %34, align 8
  %236 = load i64, i64* %35, align 8
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %26, align 4
  %239 = call i32 @HEVC_FILT_4TAP_SH(i64 %235, i64 %236, i32 %237, i32 %238)
  store i32 %239, i32* %51, align 4
  %240 = load i64, i64* %36, align 8
  %241 = load i64, i64* %37, align 8
  %242 = load i32, i32* %25, align 4
  %243 = load i32, i32* %26, align 4
  %244 = call i32 @HEVC_FILT_4TAP_SH(i64 %240, i64 %241, i32 %242, i32 %243)
  store i32 %244, i32* %52, align 4
  %245 = load i64, i64* %38, align 8
  %246 = load i64, i64* %39, align 8
  %247 = load i32, i32* %25, align 4
  %248 = load i32, i32* %26, align 4
  %249 = call i32 @HEVC_FILT_4TAP_SH(i64 %245, i64 %246, i32 %247, i32 %248)
  store i32 %249, i32* %53, align 4
  %250 = load i64, i64* %40, align 8
  %251 = load i64, i64* %41, align 8
  %252 = load i32, i32* %25, align 4
  %253 = load i32, i32* %26, align 4
  %254 = call i32 @HEVC_FILT_4TAP_SH(i64 %250, i64 %251, i32 %252, i32 %253)
  store i32 %254, i32* %54, align 4
  %255 = load i64, i64* %42, align 8
  %256 = load i64, i64* %43, align 8
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %26, align 4
  %259 = call i32 @HEVC_FILT_4TAP_SH(i64 %255, i64 %256, i32 %257, i32 %258)
  store i32 %259, i32* %55, align 4
  %260 = load i64, i64* %44, align 8
  %261 = load i64, i64* %45, align 8
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* %26, align 4
  %264 = call i32 @HEVC_FILT_4TAP_SH(i64 %260, i64 %261, i32 %262, i32 %263)
  store i32 %264, i32* %56, align 4
  %265 = load i64, i64* %46, align 8
  %266 = load i64, i64* %47, align 8
  %267 = load i32, i32* %25, align 4
  %268 = load i32, i32* %26, align 4
  %269 = call i32 @HEVC_FILT_4TAP_SH(i64 %265, i64 %266, i32 %267, i32 %268)
  store i32 %269, i32* %57, align 4
  %270 = load i64, i64* %48, align 8
  %271 = load i64, i64* %49, align 8
  %272 = load i32, i32* %25, align 4
  %273 = load i32, i32* %26, align 4
  %274 = call i32 @HEVC_FILT_4TAP_SH(i64 %270, i64 %271, i32 %272, i32 %273)
  store i32 %274, i32* %58, align 4
  %275 = load i32, i32* %51, align 4
  %276 = load i32, i32* %50, align 4
  %277 = load i32, i32* %71, align 4
  %278 = load i32, i32* %73, align 4
  %279 = call i32 @ILVRL_H2_SH(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %52, align 4
  %281 = load i32, i32* %51, align 4
  %282 = load i32, i32* %75, align 4
  %283 = load i32, i32* %77, align 4
  %284 = call i32 @ILVRL_H2_SH(i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %53, align 4
  %286 = load i32, i32* %52, align 4
  %287 = load i32, i32* %72, align 4
  %288 = load i32, i32* %74, align 4
  %289 = call i32 @ILVRL_H2_SH(i32 %285, i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %54, align 4
  %291 = load i32, i32* %53, align 4
  %292 = load i32, i32* %76, align 4
  %293 = load i32, i32* %78, align 4
  %294 = call i32 @ILVRL_H2_SH(i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %55, align 4
  %296 = load i32, i32* %54, align 4
  %297 = load i32, i32* %79, align 4
  %298 = load i32, i32* %80, align 4
  %299 = call i32 @ILVRL_H2_SH(i32 %295, i32 %296, i32 %297, i32 %298)
  %300 = load i32, i32* %56, align 4
  %301 = load i32, i32* %55, align 4
  %302 = load i32, i32* %81, align 4
  %303 = load i32, i32* %82, align 4
  %304 = call i32 @ILVRL_H2_SH(i32 %300, i32 %301, i32 %302, i32 %303)
  %305 = load i32, i32* %57, align 4
  %306 = load i32, i32* %56, align 4
  %307 = load i32, i32* %83, align 4
  %308 = load i32, i32* %84, align 4
  %309 = call i32 @ILVRL_H2_SH(i32 %305, i32 %306, i32 %307, i32 %308)
  %310 = load i32, i32* %58, align 4
  %311 = load i32, i32* %57, align 4
  %312 = load i32, i32* %85, align 4
  %313 = load i32, i32* %86, align 4
  %314 = call i32 @ILVRL_H2_SH(i32 %310, i32 %311, i32 %312, i32 %313)
  %315 = load i32, i32* %71, align 4
  %316 = load i32, i32* %72, align 4
  %317 = load i32, i32* %27, align 4
  %318 = load i32, i32* %28, align 4
  %319 = call i32 @HEVC_FILT_4TAP(i32 %315, i32 %316, i32 %317, i32 %318)
  store i32 %319, i32* %59, align 4
  %320 = load i32, i32* %73, align 4
  %321 = load i32, i32* %74, align 4
  %322 = load i32, i32* %27, align 4
  %323 = load i32, i32* %28, align 4
  %324 = call i32 @HEVC_FILT_4TAP(i32 %320, i32 %321, i32 %322, i32 %323)
  store i32 %324, i32* %60, align 4
  %325 = load i32, i32* %75, align 4
  %326 = load i32, i32* %76, align 4
  %327 = load i32, i32* %27, align 4
  %328 = load i32, i32* %28, align 4
  %329 = call i32 @HEVC_FILT_4TAP(i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %61, align 4
  %330 = load i32, i32* %77, align 4
  %331 = load i32, i32* %78, align 4
  %332 = load i32, i32* %27, align 4
  %333 = load i32, i32* %28, align 4
  %334 = call i32 @HEVC_FILT_4TAP(i32 %330, i32 %331, i32 %332, i32 %333)
  store i32 %334, i32* %62, align 4
  %335 = load i32, i32* %72, align 4
  %336 = load i32, i32* %79, align 4
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %28, align 4
  %339 = call i32 @HEVC_FILT_4TAP(i32 %335, i32 %336, i32 %337, i32 %338)
  store i32 %339, i32* %63, align 4
  %340 = load i32, i32* %74, align 4
  %341 = load i32, i32* %80, align 4
  %342 = load i32, i32* %27, align 4
  %343 = load i32, i32* %28, align 4
  %344 = call i32 @HEVC_FILT_4TAP(i32 %340, i32 %341, i32 %342, i32 %343)
  store i32 %344, i32* %64, align 4
  %345 = load i32, i32* %76, align 4
  %346 = load i32, i32* %81, align 4
  %347 = load i32, i32* %27, align 4
  %348 = load i32, i32* %28, align 4
  %349 = call i32 @HEVC_FILT_4TAP(i32 %345, i32 %346, i32 %347, i32 %348)
  store i32 %349, i32* %65, align 4
  %350 = load i32, i32* %78, align 4
  %351 = load i32, i32* %82, align 4
  %352 = load i32, i32* %27, align 4
  %353 = load i32, i32* %28, align 4
  %354 = call i32 @HEVC_FILT_4TAP(i32 %350, i32 %351, i32 %352, i32 %353)
  store i32 %354, i32* %66, align 4
  %355 = load i32, i32* %79, align 4
  %356 = load i32, i32* %83, align 4
  %357 = load i32, i32* %27, align 4
  %358 = load i32, i32* %28, align 4
  %359 = call i32 @HEVC_FILT_4TAP(i32 %355, i32 %356, i32 %357, i32 %358)
  store i32 %359, i32* %67, align 4
  %360 = load i32, i32* %80, align 4
  %361 = load i32, i32* %84, align 4
  %362 = load i32, i32* %27, align 4
  %363 = load i32, i32* %28, align 4
  %364 = call i32 @HEVC_FILT_4TAP(i32 %360, i32 %361, i32 %362, i32 %363)
  store i32 %364, i32* %68, align 4
  %365 = load i32, i32* %81, align 4
  %366 = load i32, i32* %85, align 4
  %367 = load i32, i32* %27, align 4
  %368 = load i32, i32* %28, align 4
  %369 = call i32 @HEVC_FILT_4TAP(i32 %365, i32 %366, i32 %367, i32 %368)
  store i32 %369, i32* %69, align 4
  %370 = load i32, i32* %82, align 4
  %371 = load i32, i32* %86, align 4
  %372 = load i32, i32* %27, align 4
  %373 = load i32, i32* %28, align 4
  %374 = call i32 @HEVC_FILT_4TAP(i32 %370, i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %70, align 4
  %375 = load i32, i32* %59, align 4
  %376 = load i32, i32* %60, align 4
  %377 = load i32, i32* %61, align 4
  %378 = load i32, i32* %62, align 4
  %379 = call i32 @SRA_4V(i32 %375, i32 %376, i32 %377, i32 %378, i32 6)
  %380 = load i32, i32* %63, align 4
  %381 = load i32, i32* %64, align 4
  %382 = load i32, i32* %65, align 4
  %383 = load i32, i32* %66, align 4
  %384 = call i32 @SRA_4V(i32 %380, i32 %381, i32 %382, i32 %383, i32 6)
  %385 = load i32, i32* %67, align 4
  %386 = load i32, i32* %68, align 4
  %387 = load i32, i32* %69, align 4
  %388 = load i32, i32* %70, align 4
  %389 = call i32 @SRA_4V(i32 %385, i32 %386, i32 %387, i32 %388, i32 6)
  %390 = load i32, i32* %60, align 4
  %391 = load i32, i32* %59, align 4
  %392 = load i32, i32* %62, align 4
  %393 = load i32, i32* %61, align 4
  %394 = load i32, i32* %64, align 4
  %395 = load i32, i32* %63, align 4
  %396 = load i32, i32* %66, align 4
  %397 = load i32, i32* %65, align 4
  %398 = load i32, i32* %87, align 4
  %399 = load i32, i32* %88, align 4
  %400 = load i32, i32* %89, align 4
  %401 = load i32, i32* %90, align 4
  %402 = call i32 @PCKEV_H4_SH(i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i32 %395, i32 %396, i32 %397, i32 %398, i32 %399, i32 %400, i32 %401)
  %403 = load i32, i32* %68, align 4
  %404 = load i32, i32* %67, align 4
  %405 = load i32, i32* %70, align 4
  %406 = load i32, i32* %69, align 4
  %407 = load i32, i32* %91, align 4
  %408 = load i32, i32* %92, align 4
  %409 = call i32 @PCKEV_H2_SH(i32 %403, i32 %404, i32 %405, i32 %406, i32 %407, i32 %408)
  %410 = load i32, i32* %87, align 4
  %411 = load i32, i32* %88, align 4
  %412 = load i32, i32* %89, align 4
  %413 = load i32, i32* %90, align 4
  %414 = call i32 @SRARI_H4_SH(i32 %410, i32 %411, i32 %412, i32 %413, i32 6)
  %415 = load i32, i32* %91, align 4
  %416 = load i32, i32* %92, align 4
  %417 = call i32 @SRARI_H2_SH(i32 %415, i32 %416, i32 6)
  %418 = load i32, i32* %87, align 4
  %419 = load i32, i32* %88, align 4
  %420 = load i32, i32* %89, align 4
  %421 = load i32, i32* %90, align 4
  %422 = call i32 @SAT_SH4_SH(i32 %418, i32 %419, i32 %420, i32 %421, i32 7)
  %423 = load i32, i32* %91, align 4
  %424 = load i32, i32* %92, align 4
  %425 = call i32 @SAT_SH2_SH(i32 %423, i32 %424, i32 7)
  %426 = load i32, i32* %87, align 4
  %427 = load i32, i32* %88, align 4
  %428 = call i32 @PCKEV_XORI128_UB(i32 %426, i32 %427)
  store i32 %428, i32* %13, align 4
  %429 = load i32, i32* %89, align 4
  %430 = load i32, i32* %90, align 4
  %431 = call i32 @PCKEV_XORI128_UB(i32 %429, i32 %430)
  store i32 %431, i32* %14, align 4
  %432 = load i32, i32* %91, align 4
  %433 = load i32, i32* %92, align 4
  %434 = call i32 @PCKEV_XORI128_UB(i32 %432, i32 %433)
  store i32 %434, i32* %15, align 4
  %435 = load i32, i32* %13, align 4
  %436 = load i32, i32* %14, align 4
  %437 = load i32*, i32** %9, align 8
  %438 = load i32, i32* %10, align 4
  %439 = call i32 @ST_D4(i32 %435, i32 %436, i32 0, i32 1, i32 0, i32 1, i32* %437, i32 %438)
  %440 = load i32, i32* %15, align 4
  %441 = load i32*, i32** %9, align 8
  %442 = load i32, i32* %10, align 4
  %443 = mul nsw i32 4, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %441, i64 %444
  %446 = load i32, i32* %10, align 4
  %447 = call i32 @ST_D2(i32 %440, i32 0, i32 1, i32* %445, i32 %446)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
