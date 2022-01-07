; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_8t_8multx2mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hv_biwgt_8t_8multx2mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32)* @hevc_hv_biwgt_8t_8multx2mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_biwgt_8t_8multx2mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
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
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
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
  %74 = alloca i64, align 8
  %75 = alloca i64, align 8
  %76 = alloca i64, align 8
  %77 = alloca i64, align 8
  %78 = alloca i64, align 8
  %79 = alloca i64, align 8
  %80 = alloca i64, align 8
  %81 = alloca i64, align 8
  %82 = alloca i64, align 8
  %83 = alloca i64, align 8
  %84 = alloca i64, align 8
  %85 = alloca i64, align 8
  %86 = alloca i64, align 8
  %87 = alloca i64, align 8
  %88 = alloca i64, align 8
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i64, align 8
  %94 = alloca i64, align 8
  %95 = alloca i64, align 8
  %96 = alloca i64, align 8
  %97 = alloca i64, align 8
  %98 = alloca i64, align 8
  %99 = alloca i64, align 8
  %100 = alloca i64, align 8
  %101 = alloca i64, align 8
  %102 = alloca i64, align 8
  %103 = alloca i64, align 8
  %104 = alloca i64, align 8
  %105 = alloca i64, align 8
  %106 = alloca i64, align 8
  %107 = alloca i64, align 8
  %108 = alloca i64, align 8
  %109 = alloca i64, align 8
  %110 = alloca i64, align 8
  %111 = alloca i64, align 8
  %112 = alloca i64, align 8
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  store i32* %0, i32** %16, align 8
  store i32 %1, i32* %17, align 4
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i32* %4, i32** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32* %6, i32** %22, align 8
  store i32* %7, i32** %23, align 8
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  %116 = load i32, i32* @ff_hevc_mask_arr, align 4
  %117 = call i64 @LD_SB(i32 %116)
  store i64 %117, i64* %58, align 8
  %118 = load i32, i32* %17, align 4
  %119 = mul nsw i32 3, %118
  %120 = add nsw i32 %119, 3
  %121 = load i32*, i32** %16, align 8
  %122 = sext i32 %120 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32* %124, i32** %16, align 8
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %28, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %29, align 4
  %129 = shl i32 %127, %128
  store i32 %129, i32* %33, align 4
  %130 = load i32, i32* %25, align 4
  %131 = and i32 %130, 65535
  store i32 %131, i32* %25, align 4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %26, align 4
  %134 = shl i32 %133, 16
  %135 = or i32 %132, %134
  store i32 %135, i32* %34, align 4
  %136 = load i32, i32* %26, align 4
  %137 = mul nsw i32 128, %136
  %138 = call i32 @__msa_fill_w(i32 %137)
  store i32 %138, i32* %115, align 4
  %139 = load i32, i32* %115, align 4
  %140 = shl i32 %139, 6
  store i32 %140, i32* %115, align 4
  %141 = load i32, i32* %33, align 4
  %142 = call i32 @__msa_fill_w(i32 %141)
  store i32 %142, i32* %113, align 4
  %143 = load i32, i32* %29, align 4
  %144 = add nsw i32 %143, 1
  %145 = call i32 @__msa_fill_w(i32 %144)
  store i32 %145, i32* %114, align 4
  %146 = load i32, i32* %115, align 4
  %147 = load i32, i32* %113, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %113, align 4
  %149 = load i32, i32* %34, align 4
  %150 = call i32 @__msa_fill_w(i32 %149)
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %63, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = call i64 @LD_SH(i32* %152)
  store i64 %153, i64* %62, align 8
  %154 = load i64, i64* %62, align 8
  %155 = load i64, i64* %50, align 8
  %156 = load i64, i64* %51, align 8
  %157 = load i64, i64* %52, align 8
  %158 = load i64, i64* %53, align 8
  %159 = call i32 @SPLATI_H4_SH(i64 %154, i32 0, i32 1, i32 2, i32 3, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i32*, i32** %23, align 8
  %161 = call i64 @LD_SH(i32* %160)
  store i64 %161, i64* %62, align 8
  %162 = load i64, i64* %62, align 8
  %163 = load i64, i64* %62, align 8
  %164 = call i32 @UNPCK_R_SB_SH(i64 %162, i64 %163)
  %165 = load i64, i64* %62, align 8
  %166 = load i64, i64* %54, align 8
  %167 = load i64, i64* %55, align 8
  %168 = load i64, i64* %56, align 8
  %169 = load i64, i64* %57, align 8
  %170 = call i32 @SPLATI_W4_SH(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %58, align 8
  %172 = add nsw i64 %171, 2
  store i64 %172, i64* %59, align 8
  %173 = load i64, i64* %58, align 8
  %174 = add nsw i64 %173, 4
  store i64 %174, i64* %60, align 8
  %175 = load i64, i64* %58, align 8
  %176 = add nsw i64 %175, 6
  store i64 %176, i64* %61, align 8
  %177 = load i32, i32* %30, align 4
  store i32 %177, i32* %32, align 4
  br label %178

178:                                              ; preds = %583, %15
  %179 = load i32, i32* %32, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %32, align 4
  %181 = icmp ne i32 %179, 0
  br i1 %181, label %182, label %590

182:                                              ; preds = %178
  %183 = load i32*, i32** %16, align 8
  store i32* %183, i32** %35, align 8
  %184 = load i32*, i32** %18, align 8
  store i32* %184, i32** %36, align 8
  %185 = load i32*, i32** %20, align 8
  store i32* %185, i32** %37, align 8
  %186 = load i32*, i32** %35, align 8
  %187 = load i32, i32* %17, align 4
  %188 = load i64, i64* %39, align 8
  %189 = load i64, i64* %40, align 8
  %190 = load i64, i64* %41, align 8
  %191 = load i64, i64* %42, align 8
  %192 = load i64, i64* %43, align 8
  %193 = load i64, i64* %44, align 8
  %194 = load i64, i64* %45, align 8
  %195 = call i32 @LD_SB7(i32* %186, i32 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i32, i32* %17, align 4
  %197 = mul nsw i32 7, %196
  %198 = load i32*, i32** %35, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %35, align 8
  %201 = load i64, i64* %39, align 8
  %202 = load i64, i64* %40, align 8
  %203 = load i64, i64* %41, align 8
  %204 = load i64, i64* %42, align 8
  %205 = load i64, i64* %43, align 8
  %206 = load i64, i64* %44, align 8
  %207 = load i64, i64* %45, align 8
  %208 = call i32 @XORI_B7_128_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207)
  %209 = load i64, i64* %39, align 8
  %210 = load i64, i64* %39, align 8
  %211 = load i64, i64* %58, align 8
  %212 = load i64, i64* %59, align 8
  %213 = load i64, i64* %60, align 8
  %214 = load i64, i64* %61, align 8
  %215 = load i64, i64* %64, align 8
  %216 = load i64, i64* %65, align 8
  %217 = load i64, i64* %66, align 8
  %218 = load i64, i64* %67, align 8
  %219 = call i32 @VSHF_B4_SB(i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %40, align 8
  %221 = load i64, i64* %40, align 8
  %222 = load i64, i64* %58, align 8
  %223 = load i64, i64* %59, align 8
  %224 = load i64, i64* %60, align 8
  %225 = load i64, i64* %61, align 8
  %226 = load i64, i64* %68, align 8
  %227 = load i64, i64* %69, align 8
  %228 = load i64, i64* %70, align 8
  %229 = load i64, i64* %71, align 8
  %230 = call i32 @VSHF_B4_SB(i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229)
  %231 = load i64, i64* %41, align 8
  %232 = load i64, i64* %41, align 8
  %233 = load i64, i64* %58, align 8
  %234 = load i64, i64* %59, align 8
  %235 = load i64, i64* %60, align 8
  %236 = load i64, i64* %61, align 8
  %237 = load i64, i64* %72, align 8
  %238 = load i64, i64* %73, align 8
  %239 = load i64, i64* %74, align 8
  %240 = load i64, i64* %75, align 8
  %241 = call i32 @VSHF_B4_SB(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i64, i64* %42, align 8
  %243 = load i64, i64* %42, align 8
  %244 = load i64, i64* %58, align 8
  %245 = load i64, i64* %59, align 8
  %246 = load i64, i64* %60, align 8
  %247 = load i64, i64* %61, align 8
  %248 = load i64, i64* %76, align 8
  %249 = load i64, i64* %77, align 8
  %250 = load i64, i64* %78, align 8
  %251 = load i64, i64* %79, align 8
  %252 = call i32 @VSHF_B4_SB(i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251)
  %253 = load i64, i64* %64, align 8
  %254 = load i64, i64* %65, align 8
  %255 = load i64, i64* %66, align 8
  %256 = load i64, i64* %67, align 8
  %257 = load i64, i64* %50, align 8
  %258 = load i64, i64* %51, align 8
  %259 = load i64, i64* %52, align 8
  %260 = load i64, i64* %53, align 8
  %261 = call i64 @HEVC_FILT_8TAP_SH(i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260)
  store i64 %261, i64* %80, align 8
  %262 = load i64, i64* %68, align 8
  %263 = load i64, i64* %69, align 8
  %264 = load i64, i64* %70, align 8
  %265 = load i64, i64* %71, align 8
  %266 = load i64, i64* %50, align 8
  %267 = load i64, i64* %51, align 8
  %268 = load i64, i64* %52, align 8
  %269 = load i64, i64* %53, align 8
  %270 = call i64 @HEVC_FILT_8TAP_SH(i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  store i64 %270, i64* %81, align 8
  %271 = load i64, i64* %72, align 8
  %272 = load i64, i64* %73, align 8
  %273 = load i64, i64* %74, align 8
  %274 = load i64, i64* %75, align 8
  %275 = load i64, i64* %50, align 8
  %276 = load i64, i64* %51, align 8
  %277 = load i64, i64* %52, align 8
  %278 = load i64, i64* %53, align 8
  %279 = call i64 @HEVC_FILT_8TAP_SH(i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278)
  store i64 %279, i64* %82, align 8
  %280 = load i64, i64* %76, align 8
  %281 = load i64, i64* %77, align 8
  %282 = load i64, i64* %78, align 8
  %283 = load i64, i64* %79, align 8
  %284 = load i64, i64* %50, align 8
  %285 = load i64, i64* %51, align 8
  %286 = load i64, i64* %52, align 8
  %287 = load i64, i64* %53, align 8
  %288 = call i64 @HEVC_FILT_8TAP_SH(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287)
  store i64 %288, i64* %83, align 8
  %289 = load i64, i64* %43, align 8
  %290 = load i64, i64* %43, align 8
  %291 = load i64, i64* %58, align 8
  %292 = load i64, i64* %59, align 8
  %293 = load i64, i64* %60, align 8
  %294 = load i64, i64* %61, align 8
  %295 = load i64, i64* %64, align 8
  %296 = load i64, i64* %65, align 8
  %297 = load i64, i64* %66, align 8
  %298 = load i64, i64* %67, align 8
  %299 = call i32 @VSHF_B4_SB(i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295, i64 %296, i64 %297, i64 %298)
  %300 = load i64, i64* %44, align 8
  %301 = load i64, i64* %44, align 8
  %302 = load i64, i64* %58, align 8
  %303 = load i64, i64* %59, align 8
  %304 = load i64, i64* %60, align 8
  %305 = load i64, i64* %61, align 8
  %306 = load i64, i64* %68, align 8
  %307 = load i64, i64* %69, align 8
  %308 = load i64, i64* %70, align 8
  %309 = load i64, i64* %71, align 8
  %310 = call i32 @VSHF_B4_SB(i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309)
  %311 = load i64, i64* %45, align 8
  %312 = load i64, i64* %45, align 8
  %313 = load i64, i64* %58, align 8
  %314 = load i64, i64* %59, align 8
  %315 = load i64, i64* %60, align 8
  %316 = load i64, i64* %61, align 8
  %317 = load i64, i64* %72, align 8
  %318 = load i64, i64* %73, align 8
  %319 = load i64, i64* %74, align 8
  %320 = load i64, i64* %75, align 8
  %321 = call i32 @VSHF_B4_SB(i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i64 %320)
  %322 = load i64, i64* %64, align 8
  %323 = load i64, i64* %65, align 8
  %324 = load i64, i64* %66, align 8
  %325 = load i64, i64* %67, align 8
  %326 = load i64, i64* %50, align 8
  %327 = load i64, i64* %51, align 8
  %328 = load i64, i64* %52, align 8
  %329 = load i64, i64* %53, align 8
  %330 = call i64 @HEVC_FILT_8TAP_SH(i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64 %327, i64 %328, i64 %329)
  store i64 %330, i64* %84, align 8
  %331 = load i64, i64* %68, align 8
  %332 = load i64, i64* %69, align 8
  %333 = load i64, i64* %70, align 8
  %334 = load i64, i64* %71, align 8
  %335 = load i64, i64* %50, align 8
  %336 = load i64, i64* %51, align 8
  %337 = load i64, i64* %52, align 8
  %338 = load i64, i64* %53, align 8
  %339 = call i64 @HEVC_FILT_8TAP_SH(i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i64 %336, i64 %337, i64 %338)
  store i64 %339, i64* %85, align 8
  %340 = load i64, i64* %72, align 8
  %341 = load i64, i64* %73, align 8
  %342 = load i64, i64* %74, align 8
  %343 = load i64, i64* %75, align 8
  %344 = load i64, i64* %50, align 8
  %345 = load i64, i64* %51, align 8
  %346 = load i64, i64* %52, align 8
  %347 = load i64, i64* %53, align 8
  %348 = call i64 @HEVC_FILT_8TAP_SH(i64 %340, i64 %341, i64 %342, i64 %343, i64 %344, i64 %345, i64 %346, i64 %347)
  store i64 %348, i64* %86, align 8
  %349 = load i32, i32* %24, align 4
  %350 = ashr i32 %349, 1
  store i32 %350, i32* %31, align 4
  br label %351

351:                                              ; preds = %355, %182
  %352 = load i32, i32* %31, align 4
  %353 = add nsw i32 %352, -1
  store i32 %353, i32* %31, align 4
  %354 = icmp ne i32 %352, 0
  br i1 %354, label %355, label %583

355:                                              ; preds = %351
  %356 = load i32*, i32** %35, align 8
  %357 = load i32, i32* %17, align 4
  %358 = load i64, i64* %46, align 8
  %359 = load i64, i64* %47, align 8
  %360 = call i32 @LD_SB2(i32* %356, i32 %357, i64 %358, i64 %359)
  %361 = load i64, i64* %46, align 8
  %362 = load i64, i64* %47, align 8
  %363 = call i32 @XORI_B2_128_SB(i64 %361, i64 %362)
  %364 = load i32, i32* %17, align 4
  %365 = mul nsw i32 2, %364
  %366 = load i32*, i32** %35, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i32, i32* %366, i64 %367
  store i32* %368, i32** %35, align 8
  %369 = load i32*, i32** %36, align 8
  %370 = load i32, i32* %19, align 4
  %371 = load i64, i64* %48, align 8
  %372 = load i64, i64* %49, align 8
  %373 = call i32 @LD_SH2(i32* %369, i32 %370, i64 %371, i64 %372)
  %374 = load i32, i32* %19, align 4
  %375 = mul nsw i32 2, %374
  %376 = load i32*, i32** %36, align 8
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  store i32* %378, i32** %36, align 8
  %379 = load i64, i64* %81, align 8
  %380 = load i64, i64* %80, align 8
  %381 = load i64, i64* %83, align 8
  %382 = load i64, i64* %82, align 8
  %383 = load i64, i64* %85, align 8
  %384 = load i64, i64* %84, align 8
  %385 = load i64, i64* %82, align 8
  %386 = load i64, i64* %81, align 8
  %387 = load i64, i64* %97, align 8
  %388 = load i64, i64* %98, align 8
  %389 = load i64, i64* %99, align 8
  %390 = load i64, i64* %105, align 8
  %391 = call i32 @ILVR_H4_SH(i64 %379, i64 %380, i64 %381, i64 %382, i64 %383, i64 %384, i64 %385, i64 %386, i64 %387, i64 %388, i64 %389, i64 %390)
  %392 = load i64, i64* %81, align 8
  %393 = load i64, i64* %80, align 8
  %394 = load i64, i64* %83, align 8
  %395 = load i64, i64* %82, align 8
  %396 = load i64, i64* %85, align 8
  %397 = load i64, i64* %84, align 8
  %398 = load i64, i64* %82, align 8
  %399 = load i64, i64* %81, align 8
  %400 = load i64, i64* %101, align 8
  %401 = load i64, i64* %102, align 8
  %402 = load i64, i64* %103, align 8
  %403 = load i64, i64* %109, align 8
  %404 = call i32 @ILVL_H4_SH(i64 %392, i64 %393, i64 %394, i64 %395, i64 %396, i64 %397, i64 %398, i64 %399, i64 %400, i64 %401, i64 %402, i64 %403)
  %405 = load i64, i64* %84, align 8
  %406 = load i64, i64* %83, align 8
  %407 = load i64, i64* %86, align 8
  %408 = load i64, i64* %85, align 8
  %409 = load i64, i64* %106, align 8
  %410 = load i64, i64* %107, align 8
  %411 = call i32 @ILVR_H2_SH(i64 %405, i64 %406, i64 %407, i64 %408, i64 %409, i64 %410)
  %412 = load i64, i64* %84, align 8
  %413 = load i64, i64* %83, align 8
  %414 = load i64, i64* %86, align 8
  %415 = load i64, i64* %85, align 8
  %416 = load i64, i64* %110, align 8
  %417 = load i64, i64* %111, align 8
  %418 = call i32 @ILVL_H2_SH(i64 %412, i64 %413, i64 %414, i64 %415, i64 %416, i64 %417)
  %419 = load i64, i64* %46, align 8
  %420 = load i64, i64* %46, align 8
  %421 = load i64, i64* %58, align 8
  %422 = load i64, i64* %59, align 8
  %423 = load i64, i64* %60, align 8
  %424 = load i64, i64* %61, align 8
  %425 = load i64, i64* %64, align 8
  %426 = load i64, i64* %65, align 8
  %427 = load i64, i64* %66, align 8
  %428 = load i64, i64* %67, align 8
  %429 = call i32 @VSHF_B4_SB(i64 %419, i64 %420, i64 %421, i64 %422, i64 %423, i64 %424, i64 %425, i64 %426, i64 %427, i64 %428)
  %430 = load i64, i64* %64, align 8
  %431 = load i64, i64* %65, align 8
  %432 = load i64, i64* %66, align 8
  %433 = load i64, i64* %67, align 8
  %434 = load i64, i64* %50, align 8
  %435 = load i64, i64* %51, align 8
  %436 = load i64, i64* %52, align 8
  %437 = load i64, i64* %53, align 8
  %438 = call i64 @HEVC_FILT_8TAP_SH(i64 %430, i64 %431, i64 %432, i64 %433, i64 %434, i64 %435, i64 %436, i64 %437)
  store i64 %438, i64* %87, align 8
  %439 = load i64, i64* %87, align 8
  %440 = load i64, i64* %86, align 8
  %441 = load i64, i64* %100, align 8
  %442 = load i64, i64* %104, align 8
  %443 = call i32 @ILVRL_H2_SH(i64 %439, i64 %440, i64 %441, i64 %442)
  %444 = load i64, i64* %97, align 8
  %445 = load i64, i64* %98, align 8
  %446 = load i64, i64* %99, align 8
  %447 = load i64, i64* %100, align 8
  %448 = load i64, i64* %54, align 8
  %449 = load i64, i64* %55, align 8
  %450 = load i64, i64* %56, align 8
  %451 = load i64, i64* %57, align 8
  %452 = call i32 @HEVC_FILT_8TAP(i64 %444, i64 %445, i64 %446, i64 %447, i64 %448, i64 %449, i64 %450, i64 %451)
  store i32 %452, i32* %89, align 4
  %453 = load i64, i64* %101, align 8
  %454 = load i64, i64* %102, align 8
  %455 = load i64, i64* %103, align 8
  %456 = load i64, i64* %104, align 8
  %457 = load i64, i64* %54, align 8
  %458 = load i64, i64* %55, align 8
  %459 = load i64, i64* %56, align 8
  %460 = load i64, i64* %57, align 8
  %461 = call i32 @HEVC_FILT_8TAP(i64 %453, i64 %454, i64 %455, i64 %456, i64 %457, i64 %458, i64 %459, i64 %460)
  store i32 %461, i32* %90, align 4
  %462 = load i32, i32* %89, align 4
  %463 = ashr i32 %462, 6
  store i32 %463, i32* %89, align 4
  %464 = load i32, i32* %90, align 4
  %465 = ashr i32 %464, 6
  store i32 %465, i32* %90, align 4
  %466 = load i64, i64* %47, align 8
  %467 = load i64, i64* %47, align 8
  %468 = load i64, i64* %58, align 8
  %469 = load i64, i64* %59, align 8
  %470 = load i64, i64* %60, align 8
  %471 = load i64, i64* %61, align 8
  %472 = load i64, i64* %64, align 8
  %473 = load i64, i64* %65, align 8
  %474 = load i64, i64* %66, align 8
  %475 = load i64, i64* %67, align 8
  %476 = call i32 @VSHF_B4_SB(i64 %466, i64 %467, i64 %468, i64 %469, i64 %470, i64 %471, i64 %472, i64 %473, i64 %474, i64 %475)
  %477 = load i64, i64* %64, align 8
  %478 = load i64, i64* %65, align 8
  %479 = load i64, i64* %66, align 8
  %480 = load i64, i64* %67, align 8
  %481 = load i64, i64* %50, align 8
  %482 = load i64, i64* %51, align 8
  %483 = load i64, i64* %52, align 8
  %484 = load i64, i64* %53, align 8
  %485 = call i64 @HEVC_FILT_8TAP_SH(i64 %477, i64 %478, i64 %479, i64 %480, i64 %481, i64 %482, i64 %483, i64 %484)
  store i64 %485, i64* %88, align 8
  %486 = load i64, i64* %88, align 8
  %487 = load i64, i64* %87, align 8
  %488 = load i64, i64* %108, align 8
  %489 = load i64, i64* %112, align 8
  %490 = call i32 @ILVRL_H2_SH(i64 %486, i64 %487, i64 %488, i64 %489)
  %491 = load i64, i64* %105, align 8
  %492 = load i64, i64* %106, align 8
  %493 = load i64, i64* %107, align 8
  %494 = load i64, i64* %108, align 8
  %495 = load i64, i64* %54, align 8
  %496 = load i64, i64* %55, align 8
  %497 = load i64, i64* %56, align 8
  %498 = load i64, i64* %57, align 8
  %499 = call i32 @HEVC_FILT_8TAP(i64 %491, i64 %492, i64 %493, i64 %494, i64 %495, i64 %496, i64 %497, i64 %498)
  store i32 %499, i32* %91, align 4
  %500 = load i64, i64* %109, align 8
  %501 = load i64, i64* %110, align 8
  %502 = load i64, i64* %111, align 8
  %503 = load i64, i64* %112, align 8
  %504 = load i64, i64* %54, align 8
  %505 = load i64, i64* %55, align 8
  %506 = load i64, i64* %56, align 8
  %507 = load i64, i64* %57, align 8
  %508 = call i32 @HEVC_FILT_8TAP(i64 %500, i64 %501, i64 %502, i64 %503, i64 %504, i64 %505, i64 %506, i64 %507)
  store i32 %508, i32* %92, align 4
  %509 = load i32, i32* %91, align 4
  %510 = ashr i32 %509, 6
  store i32 %510, i32* %91, align 4
  %511 = load i32, i32* %92, align 4
  %512 = ashr i32 %511, 6
  store i32 %512, i32* %92, align 4
  %513 = load i32, i32* %90, align 4
  %514 = load i32, i32* %89, align 4
  %515 = load i32, i32* %92, align 4
  %516 = load i32, i32* %91, align 4
  %517 = load i64, i64* %94, align 8
  %518 = load i64, i64* %96, align 8
  %519 = call i32 @PCKEV_H2_SH(i32 %513, i32 %514, i32 %515, i32 %516, i64 %517, i64 %518)
  %520 = load i64, i64* %94, align 8
  %521 = load i64, i64* %48, align 8
  %522 = load i64, i64* %93, align 8
  %523 = load i64, i64* %94, align 8
  %524 = call i32 @ILVRL_H2_SH(i64 %520, i64 %521, i64 %522, i64 %523)
  %525 = load i64, i64* %96, align 8
  %526 = load i64, i64* %49, align 8
  %527 = load i64, i64* %95, align 8
  %528 = load i64, i64* %96, align 8
  %529 = call i32 @ILVRL_H2_SH(i64 %525, i64 %526, i64 %527, i64 %528)
  %530 = load i32, i32* %113, align 4
  %531 = load i64, i64* %93, align 8
  %532 = load i64, i64* %63, align 8
  %533 = call i32 @__msa_dpadd_s_w(i32 %530, i64 %531, i64 %532)
  store i32 %533, i32* %89, align 4
  %534 = load i32, i32* %113, align 4
  %535 = load i64, i64* %94, align 8
  %536 = load i64, i64* %63, align 8
  %537 = call i32 @__msa_dpadd_s_w(i32 %534, i64 %535, i64 %536)
  store i32 %537, i32* %90, align 4
  %538 = load i32, i32* %113, align 4
  %539 = load i64, i64* %95, align 8
  %540 = load i64, i64* %63, align 8
  %541 = call i32 @__msa_dpadd_s_w(i32 %538, i64 %539, i64 %540)
  store i32 %541, i32* %91, align 4
  %542 = load i32, i32* %113, align 4
  %543 = load i64, i64* %96, align 8
  %544 = load i64, i64* %63, align 8
  %545 = call i32 @__msa_dpadd_s_w(i32 %542, i64 %543, i64 %544)
  store i32 %545, i32* %92, align 4
  %546 = load i32, i32* %90, align 4
  %547 = load i32, i32* %89, align 4
  %548 = load i32, i32* %92, align 4
  %549 = load i32, i32* %91, align 4
  %550 = load i32, i32* %114, align 4
  %551 = call i32 @SRAR_W4_SW(i32 %546, i32 %547, i32 %548, i32 %549, i32 %550)
  %552 = load i32, i32* %90, align 4
  %553 = load i32, i32* %89, align 4
  %554 = load i32, i32* %92, align 4
  %555 = load i32, i32* %91, align 4
  %556 = call i32 @CLIP_SW4_0_255(i32 %552, i32 %553, i32 %554, i32 %555)
  %557 = load i32, i32* %90, align 4
  %558 = load i32, i32* %89, align 4
  %559 = load i32, i32* %92, align 4
  %560 = load i32, i32* %91, align 4
  %561 = load i64, i64* %93, align 8
  %562 = load i64, i64* %94, align 8
  %563 = call i32 @PCKEV_H2_SH(i32 %557, i32 %558, i32 %559, i32 %560, i64 %561, i64 %562)
  %564 = load i64, i64* %94, align 8
  %565 = load i64, i64* %93, align 8
  %566 = call i64 @__msa_pckev_b(i64 %564, i64 %565)
  store i64 %566, i64* %38, align 8
  %567 = load i64, i64* %38, align 8
  %568 = load i32*, i32** %37, align 8
  %569 = load i32, i32* %21, align 4
  %570 = call i32 @ST_D2(i64 %567, i32 0, i32 1, i32* %568, i32 %569)
  %571 = load i32, i32* %21, align 4
  %572 = mul nsw i32 2, %571
  %573 = load i32*, i32** %37, align 8
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i32, i32* %573, i64 %574
  store i32* %575, i32** %37, align 8
  %576 = load i64, i64* %82, align 8
  store i64 %576, i64* %80, align 8
  %577 = load i64, i64* %83, align 8
  store i64 %577, i64* %81, align 8
  %578 = load i64, i64* %84, align 8
  store i64 %578, i64* %82, align 8
  %579 = load i64, i64* %85, align 8
  store i64 %579, i64* %83, align 8
  %580 = load i64, i64* %86, align 8
  store i64 %580, i64* %84, align 8
  %581 = load i64, i64* %87, align 8
  store i64 %581, i64* %85, align 8
  %582 = load i64, i64* %88, align 8
  store i64 %582, i64* %86, align 8
  br label %351

583:                                              ; preds = %351
  %584 = load i32*, i32** %16, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 8
  store i32* %585, i32** %16, align 8
  %586 = load i32*, i32** %18, align 8
  %587 = getelementptr inbounds i32, i32* %586, i64 8
  store i32* %587, i32** %18, align 8
  %588 = load i32*, i32** %20, align 8
  %589 = getelementptr inbounds i32, i32* %588, i64 8
  store i32* %589, i32** %20, align 8
  br label %178

590:                                              ; preds = %178
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W4_SH(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_8TAP_SH(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_H2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_H2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_8TAP(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @__msa_dpadd_s_w(i32, i64, i64) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SW4_0_255(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
