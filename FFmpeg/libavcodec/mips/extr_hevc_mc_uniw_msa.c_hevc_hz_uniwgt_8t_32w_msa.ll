; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_8t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_8t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_8t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 -3
  store i32* %71, i32** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @__msa_fill_w(i32 %72)
  store i32 %73, i32* %68, align 4
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @__msa_fill_w(i32 %74)
  store i32 %75, i32* %69, align 4
  %76 = load i32, i32* %16, align 4
  %77 = mul nsw i32 %76, 128
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %78, 6
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @__msa_fill_h(i32 %80)
  store i32 %81, i32* %65, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @__msa_fill_h(i32 %82)
  store i32 %83, i32* %66, align 4
  %84 = load i32, i32* %18, align 4
  %85 = call i32 @__msa_fill_h(i32 %84)
  store i32 %85, i32* %67, align 4
  %86 = load i32, i32* %65, align 4
  %87 = load i32, i32* %67, align 4
  %88 = call i32 @__msa_srar_h(i32 %86, i32 %87)
  store i32 %88, i32* %65, align 4
  %89 = load i32, i32* %66, align 4
  %90 = load i32, i32* %65, align 4
  %91 = call i32 @__msa_adds_s_h(i32 %89, i32 %90)
  store i32 %91, i32* %66, align 4
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @LD_SH(i32* %92)
  store i32 %93, i32* %56, align 4
  %94 = load i32, i32* %56, align 4
  %95 = load i32, i32* %32, align 4
  %96 = load i32, i32* %33, align 4
  %97 = load i32, i32* %34, align 4
  %98 = load i32, i32* %35, align 4
  %99 = call i32 @SPLATI_H4_SH(i32 %94, i32 0, i32 1, i32 2, i32 3, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = call i64 @LD_SB(i32* %101)
  store i64 %102, i64* %36, align 8
  %103 = load i64, i64* %36, align 8
  %104 = add nsw i64 %103, 2
  store i64 %104, i64* %37, align 8
  %105 = load i64, i64* %36, align 8
  %106 = add nsw i64 %105, 4
  store i64 %106, i64* %38, align 8
  %107 = load i64, i64* %36, align 8
  %108 = add nsw i64 %107, 6
  store i64 %108, i64* %39, align 8
  %109 = load i32, i32* %15, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %115, %9
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %19, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %359

115:                                              ; preds = %111
  %116 = load i32*, i32** %10, align 8
  %117 = load i64, i64* %24, align 8
  %118 = load i64, i64* %25, align 8
  %119 = load i64, i64* %26, align 8
  %120 = load i64, i64* %27, align 8
  %121 = call i32 @LD_SB4(i32* %116, i32 8, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %10, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = load i64, i64* %28, align 8
  %128 = load i64, i64* %29, align 8
  %129 = load i64, i64* %30, align 8
  %130 = load i64, i64* %31, align 8
  %131 = call i32 @LD_SB4(i32* %126, i32 8, i64 %127, i64 %128, i64 %129, i64 %130)
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %10, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %25, align 8
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %29, align 8
  %142 = load i64, i64* %30, align 8
  %143 = load i64, i64* %31, align 8
  %144 = call i32 @XORI_B8_128_SB(i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143)
  %145 = load i64, i64* %24, align 8
  %146 = load i64, i64* %24, align 8
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %37, align 8
  %149 = load i64, i64* %38, align 8
  %150 = load i64, i64* %39, align 8
  %151 = load i64, i64* %40, align 8
  %152 = load i64, i64* %41, align 8
  %153 = load i64, i64* %42, align 8
  %154 = load i64, i64* %43, align 8
  %155 = call i32 @VSHF_B4_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i64, i64* %25, align 8
  %157 = load i64, i64* %25, align 8
  %158 = load i64, i64* %36, align 8
  %159 = load i64, i64* %37, align 8
  %160 = load i64, i64* %38, align 8
  %161 = load i64, i64* %39, align 8
  %162 = load i64, i64* %44, align 8
  %163 = load i64, i64* %45, align 8
  %164 = load i64, i64* %46, align 8
  %165 = load i64, i64* %47, align 8
  %166 = call i32 @VSHF_B4_SB(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %26, align 8
  %168 = load i64, i64* %26, align 8
  %169 = load i64, i64* %36, align 8
  %170 = load i64, i64* %37, align 8
  %171 = load i64, i64* %38, align 8
  %172 = load i64, i64* %39, align 8
  %173 = load i64, i64* %48, align 8
  %174 = load i64, i64* %49, align 8
  %175 = load i64, i64* %50, align 8
  %176 = load i64, i64* %51, align 8
  %177 = call i32 @VSHF_B4_SB(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i64, i64* %27, align 8
  %179 = load i64, i64* %27, align 8
  %180 = load i64, i64* %36, align 8
  %181 = load i64, i64* %37, align 8
  %182 = load i64, i64* %38, align 8
  %183 = load i64, i64* %39, align 8
  %184 = load i64, i64* %52, align 8
  %185 = load i64, i64* %53, align 8
  %186 = load i64, i64* %54, align 8
  %187 = load i64, i64* %55, align 8
  %188 = call i32 @VSHF_B4_SB(i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* %41, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %43, align 8
  %193 = load i32, i32* %32, align 4
  %194 = load i32, i32* %33, align 4
  %195 = load i32, i32* %34, align 4
  %196 = load i32, i32* %35, align 4
  %197 = call i32 @HEVC_FILT_8TAP_SH(i64 %189, i64 %190, i64 %191, i64 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %57, align 4
  %198 = load i64, i64* %44, align 8
  %199 = load i64, i64* %45, align 8
  %200 = load i64, i64* %46, align 8
  %201 = load i64, i64* %47, align 8
  %202 = load i32, i32* %32, align 4
  %203 = load i32, i32* %33, align 4
  %204 = load i32, i32* %34, align 4
  %205 = load i32, i32* %35, align 4
  %206 = call i32 @HEVC_FILT_8TAP_SH(i64 %198, i64 %199, i64 %200, i64 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  store i32 %206, i32* %58, align 4
  %207 = load i64, i64* %48, align 8
  %208 = load i64, i64* %49, align 8
  %209 = load i64, i64* %50, align 8
  %210 = load i64, i64* %51, align 8
  %211 = load i32, i32* %32, align 4
  %212 = load i32, i32* %33, align 4
  %213 = load i32, i32* %34, align 4
  %214 = load i32, i32* %35, align 4
  %215 = call i32 @HEVC_FILT_8TAP_SH(i64 %207, i64 %208, i64 %209, i64 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %59, align 4
  %216 = load i64, i64* %52, align 8
  %217 = load i64, i64* %53, align 8
  %218 = load i64, i64* %54, align 8
  %219 = load i64, i64* %55, align 8
  %220 = load i32, i32* %32, align 4
  %221 = load i32, i32* %33, align 4
  %222 = load i32, i32* %34, align 4
  %223 = load i32, i32* %35, align 4
  %224 = call i32 @HEVC_FILT_8TAP_SH(i64 %216, i64 %217, i64 %218, i64 %219, i32 %220, i32 %221, i32 %222, i32 %223)
  store i32 %224, i32* %60, align 4
  %225 = load i64, i64* %28, align 8
  %226 = load i64, i64* %28, align 8
  %227 = load i64, i64* %36, align 8
  %228 = load i64, i64* %37, align 8
  %229 = load i64, i64* %38, align 8
  %230 = load i64, i64* %39, align 8
  %231 = load i64, i64* %40, align 8
  %232 = load i64, i64* %41, align 8
  %233 = load i64, i64* %42, align 8
  %234 = load i64, i64* %43, align 8
  %235 = call i32 @VSHF_B4_SB(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  %236 = load i64, i64* %29, align 8
  %237 = load i64, i64* %29, align 8
  %238 = load i64, i64* %36, align 8
  %239 = load i64, i64* %37, align 8
  %240 = load i64, i64* %38, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %44, align 8
  %243 = load i64, i64* %45, align 8
  %244 = load i64, i64* %46, align 8
  %245 = load i64, i64* %47, align 8
  %246 = call i32 @VSHF_B4_SB(i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245)
  %247 = load i64, i64* %30, align 8
  %248 = load i64, i64* %30, align 8
  %249 = load i64, i64* %36, align 8
  %250 = load i64, i64* %37, align 8
  %251 = load i64, i64* %38, align 8
  %252 = load i64, i64* %39, align 8
  %253 = load i64, i64* %48, align 8
  %254 = load i64, i64* %49, align 8
  %255 = load i64, i64* %50, align 8
  %256 = load i64, i64* %51, align 8
  %257 = call i32 @VSHF_B4_SB(i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254, i64 %255, i64 %256)
  %258 = load i64, i64* %31, align 8
  %259 = load i64, i64* %31, align 8
  %260 = load i64, i64* %36, align 8
  %261 = load i64, i64* %37, align 8
  %262 = load i64, i64* %38, align 8
  %263 = load i64, i64* %39, align 8
  %264 = load i64, i64* %52, align 8
  %265 = load i64, i64* %53, align 8
  %266 = load i64, i64* %54, align 8
  %267 = load i64, i64* %55, align 8
  %268 = call i32 @VSHF_B4_SB(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267)
  %269 = load i64, i64* %40, align 8
  %270 = load i64, i64* %41, align 8
  %271 = load i64, i64* %42, align 8
  %272 = load i64, i64* %43, align 8
  %273 = load i32, i32* %32, align 4
  %274 = load i32, i32* %33, align 4
  %275 = load i32, i32* %34, align 4
  %276 = load i32, i32* %35, align 4
  %277 = call i32 @HEVC_FILT_8TAP_SH(i64 %269, i64 %270, i64 %271, i64 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  store i32 %277, i32* %61, align 4
  %278 = load i64, i64* %44, align 8
  %279 = load i64, i64* %45, align 8
  %280 = load i64, i64* %46, align 8
  %281 = load i64, i64* %47, align 8
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* %33, align 4
  %284 = load i32, i32* %34, align 4
  %285 = load i32, i32* %35, align 4
  %286 = call i32 @HEVC_FILT_8TAP_SH(i64 %278, i64 %279, i64 %280, i64 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  store i32 %286, i32* %62, align 4
  %287 = load i64, i64* %48, align 8
  %288 = load i64, i64* %49, align 8
  %289 = load i64, i64* %50, align 8
  %290 = load i64, i64* %51, align 8
  %291 = load i32, i32* %32, align 4
  %292 = load i32, i32* %33, align 4
  %293 = load i32, i32* %34, align 4
  %294 = load i32, i32* %35, align 4
  %295 = call i32 @HEVC_FILT_8TAP_SH(i64 %287, i64 %288, i64 %289, i64 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  store i32 %295, i32* %63, align 4
  %296 = load i64, i64* %52, align 8
  %297 = load i64, i64* %53, align 8
  %298 = load i64, i64* %54, align 8
  %299 = load i64, i64* %55, align 8
  %300 = load i32, i32* %32, align 4
  %301 = load i32, i32* %33, align 4
  %302 = load i32, i32* %34, align 4
  %303 = load i32, i32* %35, align 4
  %304 = call i32 @HEVC_FILT_8TAP_SH(i64 %296, i64 %297, i64 %298, i64 %299, i32 %300, i32 %301, i32 %302, i32 %303)
  store i32 %304, i32* %64, align 4
  %305 = load i32, i32* %57, align 4
  %306 = load i32, i32* %58, align 4
  %307 = load i32, i32* %59, align 4
  %308 = load i32, i32* %60, align 4
  %309 = load i32, i32* %68, align 4
  %310 = load i32, i32* %66, align 4
  %311 = load i32, i32* %69, align 4
  %312 = load i32, i32* %57, align 4
  %313 = load i32, i32* %58, align 4
  %314 = load i32, i32* %59, align 4
  %315 = load i32, i32* %60, align 4
  %316 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* %61, align 4
  %318 = load i32, i32* %62, align 4
  %319 = load i32, i32* %63, align 4
  %320 = load i32, i32* %64, align 4
  %321 = load i32, i32* %68, align 4
  %322 = load i32, i32* %66, align 4
  %323 = load i32, i32* %69, align 4
  %324 = load i32, i32* %61, align 4
  %325 = load i32, i32* %62, align 4
  %326 = load i32, i32* %63, align 4
  %327 = load i32, i32* %64, align 4
  %328 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %317, i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* %58, align 4
  %330 = load i32, i32* %57, align 4
  %331 = load i32, i32* %60, align 4
  %332 = load i32, i32* %59, align 4
  %333 = load i32, i32* %20, align 4
  %334 = load i32, i32* %21, align 4
  %335 = call i32 @PCKEV_B2_UB(i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334)
  %336 = load i32, i32* %62, align 4
  %337 = load i32, i32* %61, align 4
  %338 = load i32, i32* %64, align 4
  %339 = load i32, i32* %63, align 4
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %23, align 4
  %342 = call i32 @PCKEV_B2_UB(i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341)
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %21, align 4
  %345 = load i32*, i32** %12, align 8
  %346 = call i32 @ST_UB2(i32 %343, i32 %344, i32* %345, i32 16)
  %347 = load i32, i32* %13, align 4
  %348 = load i32*, i32** %12, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32* %350, i32** %12, align 8
  %351 = load i32, i32* %22, align 4
  %352 = load i32, i32* %23, align 4
  %353 = load i32*, i32** %12, align 8
  %354 = call i32 @ST_UB2(i32 %351, i32 %352, i32* %353, i32 16)
  %355 = load i32, i32* %13, align 4
  %356 = load i32*, i32** %12, align 8
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %356, i64 %357
  store i32* %358, i32** %12, align 8
  br label %111

359:                                              ; preds = %111
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

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
