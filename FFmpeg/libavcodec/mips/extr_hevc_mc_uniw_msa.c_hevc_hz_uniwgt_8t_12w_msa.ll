; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %26 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -3
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %16, align 4
  %76 = and i32 %75, 65535
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @__msa_fill_w(i32 %77)
  store i32 %78, i32* %71, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @__msa_fill_w(i32 %79)
  store i32 %80, i32* %72, align 4
  %81 = load i32, i32* %16, align 4
  %82 = mul nsw i32 %81, 128
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %18, align 4
  %84 = sub nsw i32 %83, 6
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @__msa_fill_h(i32 %85)
  store i32 %86, i32* %68, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @__msa_fill_h(i32 %87)
  store i32 %88, i32* %69, align 4
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @__msa_fill_h(i32 %89)
  store i32 %90, i32* %70, align 4
  %91 = load i32, i32* %68, align 4
  %92 = load i32, i32* %70, align 4
  %93 = call i32 @__msa_srar_h(i32 %91, i32 %92)
  store i32 %93, i32* %68, align 4
  %94 = load i32, i32* %69, align 4
  %95 = load i32, i32* %68, align 4
  %96 = call i32 @__msa_adds_s_h(i32 %94, i32 %95)
  store i32 %96, i32* %69, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @LD_SH(i32* %97)
  store i32 %98, i32* %59, align 4
  %99 = load i32, i32* %59, align 4
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @SPLATI_H4_SH(i32 %99, i32 0, i32 1, i32 2, i32 3, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = call i64 @LD_SB(i32* %106)
  store i64 %107, i64* %35, align 8
  %108 = load i64, i64* %35, align 8
  %109 = add nsw i64 %108, 2
  store i64 %109, i64* %36, align 8
  %110 = load i64, i64* %35, align 8
  %111 = add nsw i64 %110, 4
  store i64 %111, i64* %37, align 8
  %112 = load i64, i64* %35, align 8
  %113 = add nsw i64 %112, 6
  store i64 %113, i64* %38, align 8
  %114 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 16
  %116 = call i64 @LD_SB(i32* %115)
  store i64 %116, i64* %39, align 8
  %117 = load i64, i64* %39, align 8
  %118 = add nsw i64 %117, 2
  store i64 %118, i64* %40, align 8
  %119 = load i64, i64* %39, align 8
  %120 = add nsw i64 %119, 4
  store i64 %120, i64* %41, align 8
  %121 = load i64, i64* %39, align 8
  %122 = add nsw i64 %121, 6
  store i64 %122, i64* %42, align 8
  %123 = load i32, i32* %15, align 4
  %124 = ashr i32 %123, 2
  store i32 %124, i32* %19, align 4
  br label %125

125:                                              ; preds = %129, %9
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %19, align 4
  %128 = icmp ne i32 %126, 0
  br i1 %128, label %129, label %324

129:                                              ; preds = %125
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %30, align 8
  %136 = call i32 @LD_SB4(i32* %130, i32 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = load i32, i32* %11, align 4
  %140 = load i64, i64* %31, align 8
  %141 = load i64, i64* %32, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i64, i64* %34, align 8
  %144 = call i32 @LD_SB4(i32* %138, i32 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i32, i32* %11, align 4
  %146 = mul nsw i32 4, %145
  %147 = load i32*, i32** %10, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %10, align 8
  %150 = load i64, i64* %27, align 8
  %151 = load i64, i64* %28, align 8
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %30, align 8
  %154 = load i64, i64* %31, align 8
  %155 = load i64, i64* %32, align 8
  %156 = load i64, i64* %33, align 8
  %157 = load i64, i64* %34, align 8
  %158 = call i32 @XORI_B8_128_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %27, align 8
  %160 = load i64, i64* %27, align 8
  %161 = load i64, i64* %35, align 8
  %162 = load i64, i64* %36, align 8
  %163 = load i64, i64* %37, align 8
  %164 = load i64, i64* %38, align 8
  %165 = load i64, i64* %43, align 8
  %166 = load i64, i64* %44, align 8
  %167 = load i64, i64* %45, align 8
  %168 = load i64, i64* %46, align 8
  %169 = call i32 @VSHF_B4_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %28, align 8
  %171 = load i64, i64* %28, align 8
  %172 = load i64, i64* %35, align 8
  %173 = load i64, i64* %36, align 8
  %174 = load i64, i64* %37, align 8
  %175 = load i64, i64* %38, align 8
  %176 = load i64, i64* %47, align 8
  %177 = load i64, i64* %48, align 8
  %178 = load i64, i64* %49, align 8
  %179 = load i64, i64* %50, align 8
  %180 = call i32 @VSHF_B4_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179)
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %29, align 8
  %183 = load i64, i64* %35, align 8
  %184 = load i64, i64* %36, align 8
  %185 = load i64, i64* %37, align 8
  %186 = load i64, i64* %38, align 8
  %187 = load i64, i64* %51, align 8
  %188 = load i64, i64* %52, align 8
  %189 = load i64, i64* %53, align 8
  %190 = load i64, i64* %54, align 8
  %191 = call i32 @VSHF_B4_SB(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190)
  %192 = load i64, i64* %30, align 8
  %193 = load i64, i64* %30, align 8
  %194 = load i64, i64* %35, align 8
  %195 = load i64, i64* %36, align 8
  %196 = load i64, i64* %37, align 8
  %197 = load i64, i64* %38, align 8
  %198 = load i64, i64* %55, align 8
  %199 = load i64, i64* %56, align 8
  %200 = load i64, i64* %57, align 8
  %201 = load i64, i64* %58, align 8
  %202 = call i32 @VSHF_B4_SB(i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i64, i64* %43, align 8
  %204 = load i64, i64* %44, align 8
  %205 = load i64, i64* %45, align 8
  %206 = load i64, i64* %46, align 8
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %26, align 4
  %211 = call i32 @HEVC_FILT_8TAP_SH(i64 %203, i64 %204, i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %62, align 4
  %212 = load i64, i64* %47, align 8
  %213 = load i64, i64* %48, align 8
  %214 = load i64, i64* %49, align 8
  %215 = load i64, i64* %50, align 8
  %216 = load i32, i32* %23, align 4
  %217 = load i32, i32* %24, align 4
  %218 = load i32, i32* %25, align 4
  %219 = load i32, i32* %26, align 4
  %220 = call i32 @HEVC_FILT_8TAP_SH(i64 %212, i64 %213, i64 %214, i64 %215, i32 %216, i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %63, align 4
  %221 = load i64, i64* %51, align 8
  %222 = load i64, i64* %52, align 8
  %223 = load i64, i64* %53, align 8
  %224 = load i64, i64* %54, align 8
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %24, align 4
  %227 = load i32, i32* %25, align 4
  %228 = load i32, i32* %26, align 4
  %229 = call i32 @HEVC_FILT_8TAP_SH(i64 %221, i64 %222, i64 %223, i64 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %64, align 4
  %230 = load i64, i64* %55, align 8
  %231 = load i64, i64* %56, align 8
  %232 = load i64, i64* %57, align 8
  %233 = load i64, i64* %58, align 8
  %234 = load i32, i32* %23, align 4
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %26, align 4
  %238 = call i32 @HEVC_FILT_8TAP_SH(i64 %230, i64 %231, i64 %232, i64 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  store i32 %238, i32* %65, align 4
  %239 = load i64, i64* %31, align 8
  %240 = load i64, i64* %32, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %40, align 8
  %243 = load i64, i64* %41, align 8
  %244 = load i64, i64* %42, align 8
  %245 = load i64, i64* %43, align 8
  %246 = load i64, i64* %44, align 8
  %247 = load i64, i64* %45, align 8
  %248 = load i64, i64* %46, align 8
  %249 = call i32 @VSHF_B4_SB(i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248)
  %250 = load i64, i64* %33, align 8
  %251 = load i64, i64* %34, align 8
  %252 = load i64, i64* %39, align 8
  %253 = load i64, i64* %40, align 8
  %254 = load i64, i64* %41, align 8
  %255 = load i64, i64* %42, align 8
  %256 = load i64, i64* %47, align 8
  %257 = load i64, i64* %48, align 8
  %258 = load i64, i64* %49, align 8
  %259 = load i64, i64* %50, align 8
  %260 = call i32 @VSHF_B4_SB(i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259)
  %261 = load i64, i64* %43, align 8
  %262 = load i64, i64* %44, align 8
  %263 = load i64, i64* %45, align 8
  %264 = load i64, i64* %46, align 8
  %265 = load i32, i32* %23, align 4
  %266 = load i32, i32* %24, align 4
  %267 = load i32, i32* %25, align 4
  %268 = load i32, i32* %26, align 4
  %269 = call i32 @HEVC_FILT_8TAP_SH(i64 %261, i64 %262, i64 %263, i64 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  store i32 %269, i32* %60, align 4
  %270 = load i64, i64* %47, align 8
  %271 = load i64, i64* %48, align 8
  %272 = load i64, i64* %49, align 8
  %273 = load i64, i64* %50, align 8
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %25, align 4
  %277 = load i32, i32* %26, align 4
  %278 = call i32 @HEVC_FILT_8TAP_SH(i64 %270, i64 %271, i64 %272, i64 %273, i32 %274, i32 %275, i32 %276, i32 %277)
  store i32 %278, i32* %61, align 4
  %279 = load i32, i32* %62, align 4
  %280 = load i32, i32* %63, align 4
  %281 = load i32, i32* %64, align 4
  %282 = load i32, i32* %65, align 4
  %283 = load i32, i32* %71, align 4
  %284 = load i32, i32* %69, align 4
  %285 = load i32, i32* %72, align 4
  %286 = load i32, i32* %62, align 4
  %287 = load i32, i32* %63, align 4
  %288 = load i32, i32* %64, align 4
  %289 = load i32, i32* %65, align 4
  %290 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %60, align 4
  %292 = load i32, i32* %61, align 4
  %293 = load i32, i32* %71, align 4
  %294 = load i32, i32* %69, align 4
  %295 = load i32, i32* %72, align 4
  %296 = load i32, i32* %66, align 4
  %297 = load i32, i32* %67, align 4
  %298 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i32, i32* %63, align 4
  %300 = load i32, i32* %62, align 4
  %301 = load i32, i32* %65, align 4
  %302 = load i32, i32* %64, align 4
  %303 = load i32, i32* %67, align 4
  %304 = load i32, i32* %66, align 4
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %21, align 4
  %307 = load i32, i32* %22, align 4
  %308 = call i32 @PCKEV_B3_UB(i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307)
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %21, align 4
  %311 = load i32*, i32** %12, align 8
  %312 = load i32, i32* %13, align 4
  %313 = call i32 @ST_D4(i32 %309, i32 %310, i32 0, i32 1, i32 0, i32 1, i32* %311, i32 %312)
  %314 = load i32, i32* %22, align 4
  %315 = load i32*, i32** %12, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 8
  %317 = load i32, i32* %13, align 4
  %318 = call i32 @ST_W4(i32 %314, i32 0, i32 1, i32 2, i32 3, i32* %316, i32 %317)
  %319 = load i32, i32* %13, align 4
  %320 = mul nsw i32 4, %319
  %321 = load i32*, i32** %12, align 8
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32* %323, i32** %12, align 8
  br label %125

324:                                              ; preds = %125
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

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
