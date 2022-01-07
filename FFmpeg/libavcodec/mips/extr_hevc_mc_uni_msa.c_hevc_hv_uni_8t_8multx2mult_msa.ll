; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_8t_8multx2mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_hevc_hv_uni_8t_8multx2mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32)* @hevc_hv_uni_8t_8multx2mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uni_8t_8multx2mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
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
  %88 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %89 = load i32, i32* @ff_hevc_mask_arr, align 4
  %90 = call i64 @LD_SB(i32 %89)
  store i64 %90, i64* %88, align 8
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 3, %91
  %93 = add nsw i32 %92, 3
  %94 = load i32*, i32** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = sub i64 0, %95
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %9, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = call i32 @LD_SH(i32* %98)
  store i32 %99, i32* %42, align 4
  %100 = load i32, i32* %42, align 4
  %101 = load i32, i32* %31, align 4
  %102 = load i32, i32* %32, align 4
  %103 = load i32, i32* %33, align 4
  %104 = load i32, i32* %34, align 4
  %105 = call i32 @SPLATI_H4_SH(i32 %100, i32 0, i32 1, i32 2, i32 3, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @LD_SH(i32* %106)
  store i32 %107, i32* %42, align 4
  %108 = load i32, i32* %42, align 4
  %109 = load i32, i32* %42, align 4
  %110 = call i32 @UNPCK_R_SB_SH(i32 %108, i32 %109)
  %111 = load i32, i32* %42, align 4
  %112 = load i32, i32* %35, align 4
  %113 = load i32, i32* %36, align 4
  %114 = load i32, i32* %37, align 4
  %115 = load i32, i32* %38, align 4
  %116 = call i32 @SPLATI_W4_SH(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i64, i64* %88, align 8
  %118 = add nsw i64 %117, 2
  store i64 %118, i64* %39, align 8
  %119 = load i64, i64* %88, align 8
  %120 = add nsw i64 %119, 4
  store i64 %120, i64* %40, align 8
  %121 = load i64, i64* %88, align 8
  %122 = add nsw i64 %121, 6
  store i64 %122, i64* %41, align 8
  %123 = load i32, i32* %16, align 4
  %124 = ashr i32 %123, 3
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %485, %8
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %18, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %490

129:                                              ; preds = %125
  %130 = load i32*, i32** %9, align 8
  store i32* %130, i32** %19, align 8
  %131 = load i32*, i32** %11, align 8
  store i32* %131, i32** %20, align 8
  %132 = load i32*, i32** %19, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %23, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %25, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %28, align 8
  %141 = call i32 @LD_SB7(i32* %132, i32 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i32, i32* %10, align 4
  %143 = mul nsw i32 7, %142
  %144 = load i32*, i32** %19, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32* %146, i32** %19, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %24, align 8
  %150 = load i64, i64* %25, align 8
  %151 = load i64, i64* %26, align 8
  %152 = load i64, i64* %27, align 8
  %153 = load i64, i64* %28, align 8
  %154 = call i32 @XORI_B7_128_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = load i64, i64* %22, align 8
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* %88, align 8
  %158 = load i64, i64* %39, align 8
  %159 = load i64, i64* %40, align 8
  %160 = load i64, i64* %41, align 8
  %161 = load i64, i64* %43, align 8
  %162 = load i64, i64* %44, align 8
  %163 = load i64, i64* %45, align 8
  %164 = load i64, i64* %46, align 8
  %165 = call i32 @VSHF_B4_SB(i64 %155, i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %23, align 8
  %167 = load i64, i64* %23, align 8
  %168 = load i64, i64* %88, align 8
  %169 = load i64, i64* %39, align 8
  %170 = load i64, i64* %40, align 8
  %171 = load i64, i64* %41, align 8
  %172 = load i64, i64* %47, align 8
  %173 = load i64, i64* %48, align 8
  %174 = load i64, i64* %49, align 8
  %175 = load i64, i64* %50, align 8
  %176 = call i32 @VSHF_B4_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i64, i64* %24, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %88, align 8
  %180 = load i64, i64* %39, align 8
  %181 = load i64, i64* %40, align 8
  %182 = load i64, i64* %41, align 8
  %183 = load i64, i64* %51, align 8
  %184 = load i64, i64* %52, align 8
  %185 = load i64, i64* %53, align 8
  %186 = load i64, i64* %54, align 8
  %187 = call i32 @VSHF_B4_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186)
  %188 = load i64, i64* %25, align 8
  %189 = load i64, i64* %25, align 8
  %190 = load i64, i64* %88, align 8
  %191 = load i64, i64* %39, align 8
  %192 = load i64, i64* %40, align 8
  %193 = load i64, i64* %41, align 8
  %194 = load i64, i64* %55, align 8
  %195 = load i64, i64* %56, align 8
  %196 = load i64, i64* %57, align 8
  %197 = load i64, i64* %58, align 8
  %198 = call i32 @VSHF_B4_SB(i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %43, align 8
  %200 = load i64, i64* %44, align 8
  %201 = load i64, i64* %45, align 8
  %202 = load i64, i64* %46, align 8
  %203 = load i32, i32* %31, align 4
  %204 = load i32, i32* %32, align 4
  %205 = load i32, i32* %33, align 4
  %206 = load i32, i32* %34, align 4
  %207 = call i32 @HEVC_FILT_8TAP_SH(i64 %199, i64 %200, i64 %201, i64 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %59, align 4
  %208 = load i64, i64* %47, align 8
  %209 = load i64, i64* %48, align 8
  %210 = load i64, i64* %49, align 8
  %211 = load i64, i64* %50, align 8
  %212 = load i32, i32* %31, align 4
  %213 = load i32, i32* %32, align 4
  %214 = load i32, i32* %33, align 4
  %215 = load i32, i32* %34, align 4
  %216 = call i32 @HEVC_FILT_8TAP_SH(i64 %208, i64 %209, i64 %210, i64 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %60, align 4
  %217 = load i64, i64* %51, align 8
  %218 = load i64, i64* %52, align 8
  %219 = load i64, i64* %53, align 8
  %220 = load i64, i64* %54, align 8
  %221 = load i32, i32* %31, align 4
  %222 = load i32, i32* %32, align 4
  %223 = load i32, i32* %33, align 4
  %224 = load i32, i32* %34, align 4
  %225 = call i32 @HEVC_FILT_8TAP_SH(i64 %217, i64 %218, i64 %219, i64 %220, i32 %221, i32 %222, i32 %223, i32 %224)
  store i32 %225, i32* %61, align 4
  %226 = load i64, i64* %55, align 8
  %227 = load i64, i64* %56, align 8
  %228 = load i64, i64* %57, align 8
  %229 = load i64, i64* %58, align 8
  %230 = load i32, i32* %31, align 4
  %231 = load i32, i32* %32, align 4
  %232 = load i32, i32* %33, align 4
  %233 = load i32, i32* %34, align 4
  %234 = call i32 @HEVC_FILT_8TAP_SH(i64 %226, i64 %227, i64 %228, i64 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %62, align 4
  %235 = load i64, i64* %26, align 8
  %236 = load i64, i64* %26, align 8
  %237 = load i64, i64* %88, align 8
  %238 = load i64, i64* %39, align 8
  %239 = load i64, i64* %40, align 8
  %240 = load i64, i64* %41, align 8
  %241 = load i64, i64* %43, align 8
  %242 = load i64, i64* %44, align 8
  %243 = load i64, i64* %45, align 8
  %244 = load i64, i64* %46, align 8
  %245 = call i32 @VSHF_B4_SB(i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %27, align 8
  %247 = load i64, i64* %27, align 8
  %248 = load i64, i64* %88, align 8
  %249 = load i64, i64* %39, align 8
  %250 = load i64, i64* %40, align 8
  %251 = load i64, i64* %41, align 8
  %252 = load i64, i64* %47, align 8
  %253 = load i64, i64* %48, align 8
  %254 = load i64, i64* %49, align 8
  %255 = load i64, i64* %50, align 8
  %256 = call i32 @VSHF_B4_SB(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255)
  %257 = load i64, i64* %28, align 8
  %258 = load i64, i64* %28, align 8
  %259 = load i64, i64* %88, align 8
  %260 = load i64, i64* %39, align 8
  %261 = load i64, i64* %40, align 8
  %262 = load i64, i64* %41, align 8
  %263 = load i64, i64* %51, align 8
  %264 = load i64, i64* %52, align 8
  %265 = load i64, i64* %53, align 8
  %266 = load i64, i64* %54, align 8
  %267 = call i32 @VSHF_B4_SB(i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266)
  %268 = load i64, i64* %43, align 8
  %269 = load i64, i64* %44, align 8
  %270 = load i64, i64* %45, align 8
  %271 = load i64, i64* %46, align 8
  %272 = load i32, i32* %31, align 4
  %273 = load i32, i32* %32, align 4
  %274 = load i32, i32* %33, align 4
  %275 = load i32, i32* %34, align 4
  %276 = call i32 @HEVC_FILT_8TAP_SH(i64 %268, i64 %269, i64 %270, i64 %271, i32 %272, i32 %273, i32 %274, i32 %275)
  store i32 %276, i32* %63, align 4
  %277 = load i64, i64* %47, align 8
  %278 = load i64, i64* %48, align 8
  %279 = load i64, i64* %49, align 8
  %280 = load i64, i64* %50, align 8
  %281 = load i32, i32* %31, align 4
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* %33, align 4
  %284 = load i32, i32* %34, align 4
  %285 = call i32 @HEVC_FILT_8TAP_SH(i64 %277, i64 %278, i64 %279, i64 %280, i32 %281, i32 %282, i32 %283, i32 %284)
  store i32 %285, i32* %64, align 4
  %286 = load i64, i64* %51, align 8
  %287 = load i64, i64* %52, align 8
  %288 = load i64, i64* %53, align 8
  %289 = load i64, i64* %54, align 8
  %290 = load i32, i32* %31, align 4
  %291 = load i32, i32* %32, align 4
  %292 = load i32, i32* %33, align 4
  %293 = load i32, i32* %34, align 4
  %294 = call i32 @HEVC_FILT_8TAP_SH(i64 %286, i64 %287, i64 %288, i64 %289, i32 %290, i32 %291, i32 %292, i32 %293)
  store i32 %294, i32* %65, align 4
  %295 = load i32, i32* %15, align 4
  %296 = ashr i32 %295, 1
  store i32 %296, i32* %17, align 4
  br label %297

297:                                              ; preds = %301, %129
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %17, align 4
  %300 = icmp ne i32 %298, 0
  br i1 %300, label %301, label %485

301:                                              ; preds = %297
  %302 = load i32*, i32** %19, align 8
  %303 = load i32, i32* %10, align 4
  %304 = load i64, i64* %29, align 8
  %305 = load i64, i64* %30, align 8
  %306 = call i32 @LD_SB2(i32* %302, i32 %303, i64 %304, i64 %305)
  %307 = load i64, i64* %29, align 8
  %308 = load i64, i64* %30, align 8
  %309 = call i32 @XORI_B2_128_SB(i64 %307, i64 %308)
  %310 = load i32, i32* %10, align 4
  %311 = mul nsw i32 2, %310
  %312 = load i32*, i32** %19, align 8
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32* %314, i32** %19, align 8
  %315 = load i32, i32* %60, align 4
  %316 = load i32, i32* %59, align 4
  %317 = load i32, i32* %62, align 4
  %318 = load i32, i32* %61, align 4
  %319 = load i32, i32* %64, align 4
  %320 = load i32, i32* %63, align 4
  %321 = load i32, i32* %61, align 4
  %322 = load i32, i32* %60, align 4
  %323 = load i32, i32* %72, align 4
  %324 = load i32, i32* %73, align 4
  %325 = load i32, i32* %74, align 4
  %326 = load i32, i32* %80, align 4
  %327 = call i32 @ILVR_H4_SH(i32 %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326)
  %328 = load i32, i32* %60, align 4
  %329 = load i32, i32* %59, align 4
  %330 = load i32, i32* %62, align 4
  %331 = load i32, i32* %61, align 4
  %332 = load i32, i32* %64, align 4
  %333 = load i32, i32* %63, align 4
  %334 = load i32, i32* %61, align 4
  %335 = load i32, i32* %60, align 4
  %336 = load i32, i32* %76, align 4
  %337 = load i32, i32* %77, align 4
  %338 = load i32, i32* %78, align 4
  %339 = load i32, i32* %84, align 4
  %340 = call i32 @ILVL_H4_SH(i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339)
  %341 = load i32, i32* %63, align 4
  %342 = load i32, i32* %62, align 4
  %343 = load i32, i32* %65, align 4
  %344 = load i32, i32* %64, align 4
  %345 = load i32, i32* %81, align 4
  %346 = load i32, i32* %82, align 4
  %347 = call i32 @ILVR_H2_SH(i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346)
  %348 = load i32, i32* %63, align 4
  %349 = load i32, i32* %62, align 4
  %350 = load i32, i32* %65, align 4
  %351 = load i32, i32* %64, align 4
  %352 = load i32, i32* %85, align 4
  %353 = load i32, i32* %86, align 4
  %354 = call i32 @ILVL_H2_SH(i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353)
  %355 = load i64, i64* %29, align 8
  %356 = load i64, i64* %29, align 8
  %357 = load i64, i64* %88, align 8
  %358 = load i64, i64* %39, align 8
  %359 = load i64, i64* %40, align 8
  %360 = load i64, i64* %41, align 8
  %361 = load i64, i64* %43, align 8
  %362 = load i64, i64* %44, align 8
  %363 = load i64, i64* %45, align 8
  %364 = load i64, i64* %46, align 8
  %365 = call i32 @VSHF_B4_SB(i64 %355, i64 %356, i64 %357, i64 %358, i64 %359, i64 %360, i64 %361, i64 %362, i64 %363, i64 %364)
  %366 = load i64, i64* %43, align 8
  %367 = load i64, i64* %44, align 8
  %368 = load i64, i64* %45, align 8
  %369 = load i64, i64* %46, align 8
  %370 = load i32, i32* %31, align 4
  %371 = load i32, i32* %32, align 4
  %372 = load i32, i32* %33, align 4
  %373 = load i32, i32* %34, align 4
  %374 = call i32 @HEVC_FILT_8TAP_SH(i64 %366, i64 %367, i64 %368, i64 %369, i32 %370, i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %66, align 4
  %375 = load i32, i32* %66, align 4
  %376 = load i32, i32* %65, align 4
  %377 = load i32, i32* %75, align 4
  %378 = load i32, i32* %79, align 4
  %379 = call i32 @ILVRL_H2_SH(i32 %375, i32 %376, i32 %377, i32 %378)
  %380 = load i32, i32* %72, align 4
  %381 = load i32, i32* %73, align 4
  %382 = load i32, i32* %74, align 4
  %383 = load i32, i32* %75, align 4
  %384 = load i32, i32* %35, align 4
  %385 = load i32, i32* %36, align 4
  %386 = load i32, i32* %37, align 4
  %387 = load i32, i32* %38, align 4
  %388 = call i32 @HEVC_FILT_8TAP(i32 %380, i32 %381, i32 %382, i32 %383, i32 %384, i32 %385, i32 %386, i32 %387)
  store i32 %388, i32* %68, align 4
  %389 = load i32, i32* %76, align 4
  %390 = load i32, i32* %77, align 4
  %391 = load i32, i32* %78, align 4
  %392 = load i32, i32* %79, align 4
  %393 = load i32, i32* %35, align 4
  %394 = load i32, i32* %36, align 4
  %395 = load i32, i32* %37, align 4
  %396 = load i32, i32* %38, align 4
  %397 = call i32 @HEVC_FILT_8TAP(i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i32 %395, i32 %396)
  store i32 %397, i32* %69, align 4
  %398 = load i32, i32* %68, align 4
  %399 = ashr i32 %398, 6
  store i32 %399, i32* %68, align 4
  %400 = load i32, i32* %69, align 4
  %401 = ashr i32 %400, 6
  store i32 %401, i32* %69, align 4
  %402 = load i64, i64* %30, align 8
  %403 = load i64, i64* %30, align 8
  %404 = load i64, i64* %88, align 8
  %405 = load i64, i64* %39, align 8
  %406 = load i64, i64* %40, align 8
  %407 = load i64, i64* %41, align 8
  %408 = load i64, i64* %43, align 8
  %409 = load i64, i64* %44, align 8
  %410 = load i64, i64* %45, align 8
  %411 = load i64, i64* %46, align 8
  %412 = call i32 @VSHF_B4_SB(i64 %402, i64 %403, i64 %404, i64 %405, i64 %406, i64 %407, i64 %408, i64 %409, i64 %410, i64 %411)
  %413 = load i64, i64* %43, align 8
  %414 = load i64, i64* %44, align 8
  %415 = load i64, i64* %45, align 8
  %416 = load i64, i64* %46, align 8
  %417 = load i32, i32* %31, align 4
  %418 = load i32, i32* %32, align 4
  %419 = load i32, i32* %33, align 4
  %420 = load i32, i32* %34, align 4
  %421 = call i32 @HEVC_FILT_8TAP_SH(i64 %413, i64 %414, i64 %415, i64 %416, i32 %417, i32 %418, i32 %419, i32 %420)
  store i32 %421, i32* %67, align 4
  %422 = load i32, i32* %67, align 4
  %423 = load i32, i32* %66, align 4
  %424 = load i32, i32* %83, align 4
  %425 = load i32, i32* %87, align 4
  %426 = call i32 @ILVRL_H2_SH(i32 %422, i32 %423, i32 %424, i32 %425)
  %427 = load i32, i32* %80, align 4
  %428 = load i32, i32* %81, align 4
  %429 = load i32, i32* %82, align 4
  %430 = load i32, i32* %83, align 4
  %431 = load i32, i32* %35, align 4
  %432 = load i32, i32* %36, align 4
  %433 = load i32, i32* %37, align 4
  %434 = load i32, i32* %38, align 4
  %435 = call i32 @HEVC_FILT_8TAP(i32 %427, i32 %428, i32 %429, i32 %430, i32 %431, i32 %432, i32 %433, i32 %434)
  store i32 %435, i32* %70, align 4
  %436 = load i32, i32* %84, align 4
  %437 = load i32, i32* %85, align 4
  %438 = load i32, i32* %86, align 4
  %439 = load i32, i32* %87, align 4
  %440 = load i32, i32* %35, align 4
  %441 = load i32, i32* %36, align 4
  %442 = load i32, i32* %37, align 4
  %443 = load i32, i32* %38, align 4
  %444 = call i32 @HEVC_FILT_8TAP(i32 %436, i32 %437, i32 %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443)
  store i32 %444, i32* %71, align 4
  %445 = load i32, i32* %70, align 4
  %446 = ashr i32 %445, 6
  store i32 %446, i32* %70, align 4
  %447 = load i32, i32* %71, align 4
  %448 = ashr i32 %447, 6
  store i32 %448, i32* %71, align 4
  %449 = load i32, i32* %68, align 4
  %450 = load i32, i32* %69, align 4
  %451 = load i32, i32* %70, align 4
  %452 = load i32, i32* %71, align 4
  %453 = call i32 @SRARI_W4_SW(i32 %449, i32 %450, i32 %451, i32 %452, i32 6)
  %454 = load i32, i32* %68, align 4
  %455 = load i32, i32* %69, align 4
  %456 = load i32, i32* %70, align 4
  %457 = load i32, i32* %71, align 4
  %458 = call i32 @SAT_SW4_SW(i32 %454, i32 %455, i32 %456, i32 %457, i32 7)
  %459 = load i32, i32* %69, align 4
  %460 = load i32, i32* %68, align 4
  %461 = load i32, i32* %71, align 4
  %462 = load i32, i32* %70, align 4
  %463 = load i32, i32* %59, align 4
  %464 = load i32, i32* %60, align 4
  %465 = call i32 @PCKEV_H2_SH(i32 %459, i32 %460, i32 %461, i32 %462, i32 %463, i32 %464)
  %466 = load i32, i32* %59, align 4
  %467 = load i32, i32* %60, align 4
  %468 = call i32 @PCKEV_XORI128_UB(i32 %466, i32 %467)
  store i32 %468, i32* %21, align 4
  %469 = load i32, i32* %21, align 4
  %470 = load i32*, i32** %20, align 8
  %471 = load i32, i32* %12, align 4
  %472 = call i32 @ST_D2(i32 %469, i32 0, i32 1, i32* %470, i32 %471)
  %473 = load i32, i32* %12, align 4
  %474 = mul nsw i32 2, %473
  %475 = load i32*, i32** %20, align 8
  %476 = sext i32 %474 to i64
  %477 = getelementptr inbounds i32, i32* %475, i64 %476
  store i32* %477, i32** %20, align 8
  %478 = load i32, i32* %61, align 4
  store i32 %478, i32* %59, align 4
  %479 = load i32, i32* %62, align 4
  store i32 %479, i32* %60, align 4
  %480 = load i32, i32* %63, align 4
  store i32 %480, i32* %61, align 4
  %481 = load i32, i32* %64, align 4
  store i32 %481, i32* %62, align 4
  %482 = load i32, i32* %65, align 4
  store i32 %482, i32* %63, align 4
  %483 = load i32, i32* %66, align 4
  store i32 %483, i32* %64, align 4
  %484 = load i32, i32* %67, align 4
  store i32 %484, i32* %65, align 4
  br label %297

485:                                              ; preds = %297
  %486 = load i32*, i32** %9, align 8
  %487 = getelementptr inbounds i32, i32* %486, i64 8
  store i32* %487, i32** %9, align 8
  %488 = load i32*, i32** %11, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 8
  store i32* %489, i32** %11, align 8
  br label %125

490:                                              ; preds = %125
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @ILVR_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_8TAP(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SW4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
