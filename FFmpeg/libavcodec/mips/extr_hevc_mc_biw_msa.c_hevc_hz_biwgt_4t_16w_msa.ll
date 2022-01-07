; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_hz_biwgt_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_hz_biwgt_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_biwgt_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
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
  %49 = alloca i64, align 8
  %50 = alloca i64, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i64, align 8
  %60 = alloca i64, align 8
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
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
  %65 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = call i64 @LD_SB(i32* %66)
  store i64 %67, i64* %49, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 -1
  store i32* %69, i32** %14, align 8
  %70 = load i32*, i32** %20, align 8
  %71 = call i32 @LD_SH(i32* %70)
  store i32 %71, i32* %61, align 4
  %72 = load i32, i32* %61, align 4
  %73 = load i32, i32* %47, align 4
  %74 = load i32, i32* %48, align 4
  %75 = call i32 @SPLATI_H2_SH(i32 %72, i32 0, i32 1, i32 %73, i32 %74)
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %25, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %26, align 4
  %80 = shl i32 %78, %79
  store i32 %80, i32* %28, align 4
  %81 = load i32, i32* %22, align 4
  %82 = and i32 %81, 65535
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %83, %85
  store i32 %86, i32* %29, align 4
  %87 = load i32, i32* %23, align 4
  %88 = mul nsw i32 128, %87
  store i32 %88, i32* %30, align 4
  %89 = load i32, i32* %30, align 4
  %90 = shl i32 %89, 6
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %28, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %28, align 4
  %95 = call i32 @__msa_fill_w(i32 %94)
  store i32 %95, i32* %63, align 4
  %96 = load i32, i32* %29, align 4
  %97 = call i32 @__msa_fill_w(i32 %96)
  store i32 %97, i32* %62, align 4
  %98 = load i32, i32* %26, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @__msa_fill_w(i32 %99)
  store i32 %100, i32* %64, align 4
  %101 = load i64, i64* %49, align 8
  %102 = add nsw i64 %101, 2
  store i64 %102, i64* %50, align 8
  %103 = load i32, i32* %21, align 4
  %104 = ashr i32 %103, 2
  store i32 %104, i32* %27, align 4
  br label %105

105:                                              ; preds = %109, %13
  %106 = load i32, i32* %27, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %27, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %337

109:                                              ; preds = %105
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %15, align 4
  %112 = load i64, i64* %31, align 8
  %113 = load i64, i64* %33, align 8
  %114 = load i64, i64* %35, align 8
  %115 = load i64, i64* %37, align 8
  %116 = call i32 @LD_SB4(i32* %110, i32 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 8
  %119 = load i32, i32* %15, align 4
  %120 = load i64, i64* %32, align 8
  %121 = load i64, i64* %34, align 8
  %122 = load i64, i64* %36, align 8
  %123 = load i64, i64* %38, align 8
  %124 = call i32 @LD_SB4(i32* %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i32, i32* %15, align 4
  %126 = mul nsw i32 4, %125
  %127 = load i32*, i32** %14, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %14, align 8
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %39, align 4
  %133 = load i32, i32* %41, align 4
  %134 = load i32, i32* %43, align 4
  %135 = load i32, i32* %45, align 4
  %136 = call i32 @LD_SH4(i32* %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %40, align 4
  %141 = load i32, i32* %42, align 4
  %142 = load i32, i32* %44, align 4
  %143 = load i32, i32* %46, align 4
  %144 = call i32 @LD_SH4(i32* %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %17, align 4
  %146 = mul nsw i32 4, %145
  %147 = load i32*, i32** %16, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %16, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i64, i64* %32, align 8
  %152 = load i64, i64* %33, align 8
  %153 = load i64, i64* %34, align 8
  %154 = load i64, i64* %35, align 8
  %155 = load i64, i64* %36, align 8
  %156 = load i64, i64* %37, align 8
  %157 = load i64, i64* %38, align 8
  %158 = call i32 @XORI_B8_128_SB(i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  %159 = load i64, i64* %31, align 8
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %31, align 8
  %162 = load i64, i64* %31, align 8
  %163 = load i64, i64* %49, align 8
  %164 = load i64, i64* %50, align 8
  %165 = load i64, i64* %59, align 8
  %166 = load i64, i64* %60, align 8
  %167 = call i32 @VSHF_B2_SB(i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166)
  %168 = load i64, i64* %59, align 8
  %169 = load i64, i64* %60, align 8
  %170 = load i32, i32* %47, align 4
  %171 = load i32, i32* %48, align 4
  %172 = call i32 @HEVC_FILT_4TAP_SH(i64 %168, i64 %169, i32 %170, i32 %171)
  store i32 %172, i32* %51, align 4
  %173 = load i64, i64* %32, align 8
  %174 = load i64, i64* %32, align 8
  %175 = load i64, i64* %32, align 8
  %176 = load i64, i64* %32, align 8
  %177 = load i64, i64* %49, align 8
  %178 = load i64, i64* %50, align 8
  %179 = load i64, i64* %59, align 8
  %180 = load i64, i64* %60, align 8
  %181 = call i32 @VSHF_B2_SB(i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load i64, i64* %59, align 8
  %183 = load i64, i64* %60, align 8
  %184 = load i32, i32* %47, align 4
  %185 = load i32, i32* %48, align 4
  %186 = call i32 @HEVC_FILT_4TAP_SH(i64 %182, i64 %183, i32 %184, i32 %185)
  store i32 %186, i32* %52, align 4
  %187 = load i64, i64* %33, align 8
  %188 = load i64, i64* %33, align 8
  %189 = load i64, i64* %33, align 8
  %190 = load i64, i64* %33, align 8
  %191 = load i64, i64* %49, align 8
  %192 = load i64, i64* %50, align 8
  %193 = load i64, i64* %59, align 8
  %194 = load i64, i64* %60, align 8
  %195 = call i32 @VSHF_B2_SB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %59, align 8
  %197 = load i64, i64* %60, align 8
  %198 = load i32, i32* %47, align 4
  %199 = load i32, i32* %48, align 4
  %200 = call i32 @HEVC_FILT_4TAP_SH(i64 %196, i64 %197, i32 %198, i32 %199)
  store i32 %200, i32* %53, align 4
  %201 = load i64, i64* %34, align 8
  %202 = load i64, i64* %34, align 8
  %203 = load i64, i64* %34, align 8
  %204 = load i64, i64* %34, align 8
  %205 = load i64, i64* %49, align 8
  %206 = load i64, i64* %50, align 8
  %207 = load i64, i64* %59, align 8
  %208 = load i64, i64* %60, align 8
  %209 = call i32 @VSHF_B2_SB(i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %59, align 8
  %211 = load i64, i64* %60, align 8
  %212 = load i32, i32* %47, align 4
  %213 = load i32, i32* %48, align 4
  %214 = call i32 @HEVC_FILT_4TAP_SH(i64 %210, i64 %211, i32 %212, i32 %213)
  store i32 %214, i32* %54, align 4
  %215 = load i64, i64* %35, align 8
  %216 = load i64, i64* %35, align 8
  %217 = load i64, i64* %35, align 8
  %218 = load i64, i64* %35, align 8
  %219 = load i64, i64* %49, align 8
  %220 = load i64, i64* %50, align 8
  %221 = load i64, i64* %59, align 8
  %222 = load i64, i64* %60, align 8
  %223 = call i32 @VSHF_B2_SB(i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i64, i64* %59, align 8
  %225 = load i64, i64* %60, align 8
  %226 = load i32, i32* %47, align 4
  %227 = load i32, i32* %48, align 4
  %228 = call i32 @HEVC_FILT_4TAP_SH(i64 %224, i64 %225, i32 %226, i32 %227)
  store i32 %228, i32* %55, align 4
  %229 = load i64, i64* %36, align 8
  %230 = load i64, i64* %36, align 8
  %231 = load i64, i64* %36, align 8
  %232 = load i64, i64* %36, align 8
  %233 = load i64, i64* %49, align 8
  %234 = load i64, i64* %50, align 8
  %235 = load i64, i64* %59, align 8
  %236 = load i64, i64* %60, align 8
  %237 = call i32 @VSHF_B2_SB(i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i64, i64* %59, align 8
  %239 = load i64, i64* %60, align 8
  %240 = load i32, i32* %47, align 4
  %241 = load i32, i32* %48, align 4
  %242 = call i32 @HEVC_FILT_4TAP_SH(i64 %238, i64 %239, i32 %240, i32 %241)
  store i32 %242, i32* %56, align 4
  %243 = load i64, i64* %37, align 8
  %244 = load i64, i64* %37, align 8
  %245 = load i64, i64* %37, align 8
  %246 = load i64, i64* %37, align 8
  %247 = load i64, i64* %49, align 8
  %248 = load i64, i64* %50, align 8
  %249 = load i64, i64* %59, align 8
  %250 = load i64, i64* %60, align 8
  %251 = call i32 @VSHF_B2_SB(i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249, i64 %250)
  %252 = load i64, i64* %59, align 8
  %253 = load i64, i64* %60, align 8
  %254 = load i32, i32* %47, align 4
  %255 = load i32, i32* %48, align 4
  %256 = call i32 @HEVC_FILT_4TAP_SH(i64 %252, i64 %253, i32 %254, i32 %255)
  store i32 %256, i32* %57, align 4
  %257 = load i64, i64* %38, align 8
  %258 = load i64, i64* %38, align 8
  %259 = load i64, i64* %38, align 8
  %260 = load i64, i64* %38, align 8
  %261 = load i64, i64* %49, align 8
  %262 = load i64, i64* %50, align 8
  %263 = load i64, i64* %59, align 8
  %264 = load i64, i64* %60, align 8
  %265 = call i32 @VSHF_B2_SB(i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264)
  %266 = load i64, i64* %59, align 8
  %267 = load i64, i64* %60, align 8
  %268 = load i32, i32* %47, align 4
  %269 = load i32, i32* %48, align 4
  %270 = call i32 @HEVC_FILT_4TAP_SH(i64 %266, i64 %267, i32 %268, i32 %269)
  store i32 %270, i32* %58, align 4
  %271 = load i32, i32* %51, align 4
  %272 = load i32, i32* %52, align 4
  %273 = load i32, i32* %53, align 4
  %274 = load i32, i32* %54, align 4
  %275 = load i32, i32* %39, align 4
  %276 = load i32, i32* %40, align 4
  %277 = load i32, i32* %41, align 4
  %278 = load i32, i32* %42, align 4
  %279 = load i32, i32* %62, align 4
  %280 = load i32, i32* %64, align 4
  %281 = load i32, i32* %63, align 4
  %282 = load i32, i32* %51, align 4
  %283 = load i32, i32* %52, align 4
  %284 = load i32, i32* %53, align 4
  %285 = load i32, i32* %54, align 4
  %286 = call i32 @HEVC_BIW_RND_CLIP4(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %52, align 4
  %288 = load i32, i32* %51, align 4
  %289 = load i32, i32* %54, align 4
  %290 = load i32, i32* %53, align 4
  %291 = load i32, i32* %51, align 4
  %292 = load i32, i32* %52, align 4
  %293 = call i32 @PCKEV_B2_SH(i32 %287, i32 %288, i32 %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %51, align 4
  %295 = load i32, i32* %52, align 4
  %296 = load i32*, i32** %18, align 8
  %297 = load i32, i32* %19, align 4
  %298 = call i32 @ST_SH2(i32 %294, i32 %295, i32* %296, i32 %297)
  %299 = load i32, i32* %19, align 4
  %300 = mul nsw i32 2, %299
  %301 = load i32*, i32** %18, align 8
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  store i32* %303, i32** %18, align 8
  %304 = load i32, i32* %55, align 4
  %305 = load i32, i32* %56, align 4
  %306 = load i32, i32* %57, align 4
  %307 = load i32, i32* %58, align 4
  %308 = load i32, i32* %43, align 4
  %309 = load i32, i32* %44, align 4
  %310 = load i32, i32* %45, align 4
  %311 = load i32, i32* %46, align 4
  %312 = load i32, i32* %62, align 4
  %313 = load i32, i32* %64, align 4
  %314 = load i32, i32* %63, align 4
  %315 = load i32, i32* %51, align 4
  %316 = load i32, i32* %52, align 4
  %317 = load i32, i32* %53, align 4
  %318 = load i32, i32* %54, align 4
  %319 = call i32 @HEVC_BIW_RND_CLIP4(i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %52, align 4
  %321 = load i32, i32* %51, align 4
  %322 = load i32, i32* %54, align 4
  %323 = load i32, i32* %53, align 4
  %324 = load i32, i32* %51, align 4
  %325 = load i32, i32* %52, align 4
  %326 = call i32 @PCKEV_B2_SH(i32 %320, i32 %321, i32 %322, i32 %323, i32 %324, i32 %325)
  %327 = load i32, i32* %51, align 4
  %328 = load i32, i32* %52, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = load i32, i32* %19, align 4
  %331 = call i32 @ST_SH2(i32 %327, i32 %328, i32* %329, i32 %330)
  %332 = load i32, i32* %19, align 4
  %333 = mul nsw i32 2, %332
  %334 = load i32*, i32** %18, align 8
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds i32, i32* %334, i64 %335
  store i32* %336, i32** %18, align 8
  br label %105

337:                                              ; preds = %105
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
