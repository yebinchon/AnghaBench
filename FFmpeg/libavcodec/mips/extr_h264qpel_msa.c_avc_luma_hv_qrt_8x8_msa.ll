; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_8x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_8x8_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %9, align 4
  store i32 5140, i32* %10, align 4
  store i32 507, i32* %11, align 4
  %61 = call i64 @__msa_fill_h(i32 64257)
  store i64 %61, i64* %46, align 8
  %62 = call i64 @__msa_fill_h(i32 5140)
  store i64 %62, i64* %47, align 8
  %63 = call i64 @__msa_fill_h(i32 507)
  store i64 %63, i64* %48, align 8
  %64 = load i32*, i32** @luma_mask_arr, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %19, align 8
  %68 = load i64, i64* %20, align 8
  %69 = call i32 @LD_SB3(i32* %65, i32 16, i64 %66, i64 %67, i64 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i64, i64* %21, align 8
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %25, align 8
  %77 = call i32 @LD_SB5(i32* %70, i32 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 5, %78
  %80 = load i32*, i32** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %6, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %22, align 8
  %85 = load i64, i64* %23, align 8
  %86 = load i64, i64* %24, align 8
  %87 = load i64, i64* %25, align 8
  %88 = call i32 @XORI_B5_128_SB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %17, align 8
  %95 = call i32 @LD_SB4(i32* %89, i32 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @XORI_B4_128_SB(i64 %96, i64 %97, i64 %98, i64 %99)
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 4, %101
  %103 = load i32*, i32** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %5, align 8
  %106 = load i64, i64* %14, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %20, align 8
  %111 = call i64 @AVC_HORZ_FILTER_SH(i64 %106, i64 %107, i64 %108, i64 %109, i64 %110)
  store i64 %111, i64* %49, align 8
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %20, align 8
  %117 = call i64 @AVC_HORZ_FILTER_SH(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116)
  store i64 %117, i64* %50, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %18, align 8
  %121 = load i64, i64* %19, align 8
  %122 = load i64, i64* %20, align 8
  %123 = call i64 @AVC_HORZ_FILTER_SH(i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  store i64 %123, i64* %51, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %17, align 8
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %20, align 8
  %129 = call i64 @AVC_HORZ_FILTER_SH(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  store i64 %129, i64* %52, align 8
  %130 = load i64, i64* %49, align 8
  %131 = load i64, i64* %50, align 8
  %132 = load i64, i64* %51, align 8
  %133 = load i64, i64* %52, align 8
  %134 = call i32 @SRARI_H4_SH(i64 %130, i64 %131, i64 %132, i64 %133, i32 5)
  %135 = load i64, i64* %49, align 8
  %136 = load i64, i64* %50, align 8
  %137 = load i64, i64* %51, align 8
  %138 = load i64, i64* %52, align 8
  %139 = call i32 @SAT_SH4_SH(i64 %135, i64 %136, i64 %137, i64 %138, i32 7)
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i64, i64* %26, align 8
  %143 = load i64, i64* %27, align 8
  %144 = load i64, i64* %28, align 8
  %145 = load i64, i64* %29, align 8
  %146 = call i32 @LD_SB4(i32* %140, i32 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i32, i32* %8, align 4
  %148 = mul nsw i32 4, %147
  %149 = load i32*, i32** %6, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %6, align 8
  %152 = load i64, i64* %26, align 8
  %153 = load i64, i64* %27, align 8
  %154 = load i64, i64* %28, align 8
  %155 = load i64, i64* %29, align 8
  %156 = call i32 @XORI_B4_128_SB(i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %21, align 8
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* %22, align 8
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* %23, align 8
  %163 = load i64, i64* %25, align 8
  %164 = load i64, i64* %24, align 8
  %165 = load i64, i64* %34, align 8
  %166 = load i64, i64* %35, align 8
  %167 = load i64, i64* %36, align 8
  %168 = load i64, i64* %37, align 8
  %169 = call i32 @ILVR_B4_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %26, align 8
  %171 = load i64, i64* %25, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %26, align 8
  %174 = load i64, i64* %28, align 8
  %175 = load i64, i64* %27, align 8
  %176 = load i64, i64* %29, align 8
  %177 = load i64, i64* %28, align 8
  %178 = load i64, i64* %38, align 8
  %179 = load i64, i64* %39, align 8
  %180 = load i64, i64* %40, align 8
  %181 = load i64, i64* %41, align 8
  %182 = call i32 @ILVR_B4_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i64, i64* %34, align 8
  %184 = load i64, i64* %36, align 8
  %185 = load i64, i64* %38, align 8
  %186 = load i64, i64* %46, align 8
  %187 = load i64, i64* %47, align 8
  %188 = load i64, i64* %48, align 8
  %189 = call i64 @AVC_DOT_SH3_SH(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188)
  store i64 %189, i64* %53, align 8
  %190 = load i64, i64* %35, align 8
  %191 = load i64, i64* %37, align 8
  %192 = load i64, i64* %39, align 8
  %193 = load i64, i64* %46, align 8
  %194 = load i64, i64* %47, align 8
  %195 = load i64, i64* %48, align 8
  %196 = call i64 @AVC_DOT_SH3_SH(i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  store i64 %196, i64* %54, align 8
  %197 = load i64, i64* %36, align 8
  %198 = load i64, i64* %38, align 8
  %199 = load i64, i64* %40, align 8
  %200 = load i64, i64* %46, align 8
  %201 = load i64, i64* %47, align 8
  %202 = load i64, i64* %48, align 8
  %203 = call i64 @AVC_DOT_SH3_SH(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  store i64 %203, i64* %55, align 8
  %204 = load i64, i64* %37, align 8
  %205 = load i64, i64* %39, align 8
  %206 = load i64, i64* %41, align 8
  %207 = load i64, i64* %46, align 8
  %208 = load i64, i64* %47, align 8
  %209 = load i64, i64* %48, align 8
  %210 = call i64 @AVC_DOT_SH3_SH(i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  store i64 %210, i64* %56, align 8
  %211 = load i64, i64* %53, align 8
  %212 = load i64, i64* %54, align 8
  %213 = load i64, i64* %55, align 8
  %214 = load i64, i64* %56, align 8
  %215 = call i32 @SRARI_H4_SH(i64 %211, i64 %212, i64 %213, i64 %214, i32 5)
  %216 = load i64, i64* %53, align 8
  %217 = load i64, i64* %54, align 8
  %218 = load i64, i64* %55, align 8
  %219 = load i64, i64* %56, align 8
  %220 = call i32 @SAT_SH4_SH(i64 %216, i64 %217, i64 %218, i64 %219, i32 7)
  %221 = load i64, i64* %49, align 8
  %222 = load i64, i64* %53, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i64 @__msa_srari_h(i64 %223, i32 1)
  store i64 %224, i64* %57, align 8
  %225 = load i64, i64* %50, align 8
  %226 = load i64, i64* %54, align 8
  %227 = add nsw i64 %225, %226
  %228 = call i64 @__msa_srari_h(i64 %227, i32 1)
  store i64 %228, i64* %58, align 8
  %229 = load i64, i64* %51, align 8
  %230 = load i64, i64* %55, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i64 @__msa_srari_h(i64 %231, i32 1)
  store i64 %232, i64* %59, align 8
  %233 = load i64, i64* %52, align 8
  %234 = load i64, i64* %56, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i64 @__msa_srari_h(i64 %235, i32 1)
  store i64 %236, i64* %60, align 8
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %16, align 8
  %242 = load i64, i64* %17, align 8
  %243 = call i32 @LD_SB4(i32* %237, i32 %238, i64 %239, i64 %240, i64 %241, i64 %242)
  %244 = load i64, i64* %14, align 8
  %245 = load i64, i64* %15, align 8
  %246 = load i64, i64* %16, align 8
  %247 = load i64, i64* %17, align 8
  %248 = call i32 @XORI_B4_128_SB(i64 %244, i64 %245, i64 %246, i64 %247)
  %249 = load i64, i64* %57, align 8
  %250 = load i64, i64* %58, align 8
  %251 = load i64, i64* %59, align 8
  %252 = load i64, i64* %60, align 8
  %253 = call i32 @SAT_SH4_SH(i64 %249, i64 %250, i64 %251, i64 %252, i32 7)
  %254 = load i64, i64* %57, align 8
  %255 = load i64, i64* %58, align 8
  %256 = call i32 @PCKEV_XORI128_UB(i64 %254, i64 %255)
  store i32 %256, i32* %12, align 4
  %257 = load i64, i64* %59, align 8
  %258 = load i64, i64* %60, align 8
  %259 = call i32 @PCKEV_XORI128_UB(i64 %257, i64 %258)
  store i32 %259, i32* %13, align 4
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* %13, align 4
  %262 = load i32*, i32** %7, align 8
  %263 = load i32, i32* %8, align 4
  %264 = call i32 @ST_D4(i32 %260, i32 %261, i32 0, i32 1, i32 0, i32 1, i32* %262, i32 %263)
  %265 = load i32, i32* %8, align 4
  %266 = mul nsw i32 4, %265
  %267 = load i32*, i32** %7, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i32, i32* %267, i64 %268
  store i32* %269, i32** %7, align 8
  %270 = load i32*, i32** %6, align 8
  %271 = load i32, i32* %8, align 4
  %272 = load i64, i64* %30, align 8
  %273 = load i64, i64* %31, align 8
  %274 = load i64, i64* %32, align 8
  %275 = load i64, i64* %33, align 8
  %276 = call i32 @LD_SB4(i32* %270, i32 %271, i64 %272, i64 %273, i64 %274, i64 %275)
  %277 = load i64, i64* %30, align 8
  %278 = load i64, i64* %31, align 8
  %279 = load i64, i64* %32, align 8
  %280 = load i64, i64* %33, align 8
  %281 = call i32 @XORI_B4_128_SB(i64 %277, i64 %278, i64 %279, i64 %280)
  %282 = load i64, i64* %14, align 8
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* %18, align 8
  %285 = load i64, i64* %19, align 8
  %286 = load i64, i64* %20, align 8
  %287 = call i64 @AVC_HORZ_FILTER_SH(i64 %282, i64 %283, i64 %284, i64 %285, i64 %286)
  store i64 %287, i64* %49, align 8
  %288 = load i64, i64* %15, align 8
  %289 = load i64, i64* %15, align 8
  %290 = load i64, i64* %18, align 8
  %291 = load i64, i64* %19, align 8
  %292 = load i64, i64* %20, align 8
  %293 = call i64 @AVC_HORZ_FILTER_SH(i64 %288, i64 %289, i64 %290, i64 %291, i64 %292)
  store i64 %293, i64* %50, align 8
  %294 = load i64, i64* %16, align 8
  %295 = load i64, i64* %16, align 8
  %296 = load i64, i64* %18, align 8
  %297 = load i64, i64* %19, align 8
  %298 = load i64, i64* %20, align 8
  %299 = call i64 @AVC_HORZ_FILTER_SH(i64 %294, i64 %295, i64 %296, i64 %297, i64 %298)
  store i64 %299, i64* %51, align 8
  %300 = load i64, i64* %17, align 8
  %301 = load i64, i64* %17, align 8
  %302 = load i64, i64* %18, align 8
  %303 = load i64, i64* %19, align 8
  %304 = load i64, i64* %20, align 8
  %305 = call i64 @AVC_HORZ_FILTER_SH(i64 %300, i64 %301, i64 %302, i64 %303, i64 %304)
  store i64 %305, i64* %52, align 8
  %306 = load i64, i64* %49, align 8
  %307 = load i64, i64* %50, align 8
  %308 = load i64, i64* %51, align 8
  %309 = load i64, i64* %52, align 8
  %310 = call i32 @SRARI_H4_SH(i64 %306, i64 %307, i64 %308, i64 %309, i32 5)
  %311 = load i64, i64* %49, align 8
  %312 = load i64, i64* %50, align 8
  %313 = load i64, i64* %51, align 8
  %314 = load i64, i64* %52, align 8
  %315 = call i32 @SAT_SH4_SH(i64 %311, i64 %312, i64 %313, i64 %314, i32 7)
  %316 = load i64, i64* %30, align 8
  %317 = load i64, i64* %29, align 8
  %318 = load i64, i64* %31, align 8
  %319 = load i64, i64* %30, align 8
  %320 = load i64, i64* %32, align 8
  %321 = load i64, i64* %31, align 8
  %322 = load i64, i64* %33, align 8
  %323 = load i64, i64* %32, align 8
  %324 = load i64, i64* %42, align 8
  %325 = load i64, i64* %43, align 8
  %326 = load i64, i64* %44, align 8
  %327 = load i64, i64* %45, align 8
  %328 = call i32 @ILVR_B4_SB(i64 %316, i64 %317, i64 %318, i64 %319, i64 %320, i64 %321, i64 %322, i64 %323, i64 %324, i64 %325, i64 %326, i64 %327)
  %329 = load i64, i64* %38, align 8
  %330 = load i64, i64* %40, align 8
  %331 = load i64, i64* %42, align 8
  %332 = load i64, i64* %46, align 8
  %333 = load i64, i64* %47, align 8
  %334 = load i64, i64* %48, align 8
  %335 = call i64 @AVC_DOT_SH3_SH(i64 %329, i64 %330, i64 %331, i64 %332, i64 %333, i64 %334)
  store i64 %335, i64* %53, align 8
  %336 = load i64, i64* %39, align 8
  %337 = load i64, i64* %41, align 8
  %338 = load i64, i64* %43, align 8
  %339 = load i64, i64* %46, align 8
  %340 = load i64, i64* %47, align 8
  %341 = load i64, i64* %48, align 8
  %342 = call i64 @AVC_DOT_SH3_SH(i64 %336, i64 %337, i64 %338, i64 %339, i64 %340, i64 %341)
  store i64 %342, i64* %54, align 8
  %343 = load i64, i64* %40, align 8
  %344 = load i64, i64* %42, align 8
  %345 = load i64, i64* %44, align 8
  %346 = load i64, i64* %46, align 8
  %347 = load i64, i64* %47, align 8
  %348 = load i64, i64* %48, align 8
  %349 = call i64 @AVC_DOT_SH3_SH(i64 %343, i64 %344, i64 %345, i64 %346, i64 %347, i64 %348)
  store i64 %349, i64* %55, align 8
  %350 = load i64, i64* %41, align 8
  %351 = load i64, i64* %43, align 8
  %352 = load i64, i64* %45, align 8
  %353 = load i64, i64* %46, align 8
  %354 = load i64, i64* %47, align 8
  %355 = load i64, i64* %48, align 8
  %356 = call i64 @AVC_DOT_SH3_SH(i64 %350, i64 %351, i64 %352, i64 %353, i64 %354, i64 %355)
  store i64 %356, i64* %56, align 8
  %357 = load i64, i64* %53, align 8
  %358 = load i64, i64* %54, align 8
  %359 = load i64, i64* %55, align 8
  %360 = load i64, i64* %56, align 8
  %361 = call i32 @SRARI_H4_SH(i64 %357, i64 %358, i64 %359, i64 %360, i32 5)
  %362 = load i64, i64* %53, align 8
  %363 = load i64, i64* %54, align 8
  %364 = load i64, i64* %55, align 8
  %365 = load i64, i64* %56, align 8
  %366 = call i32 @SAT_SH4_SH(i64 %362, i64 %363, i64 %364, i64 %365, i32 7)
  %367 = load i64, i64* %49, align 8
  %368 = load i64, i64* %53, align 8
  %369 = add nsw i64 %367, %368
  %370 = call i64 @__msa_srari_h(i64 %369, i32 1)
  store i64 %370, i64* %57, align 8
  %371 = load i64, i64* %50, align 8
  %372 = load i64, i64* %54, align 8
  %373 = add nsw i64 %371, %372
  %374 = call i64 @__msa_srari_h(i64 %373, i32 1)
  store i64 %374, i64* %58, align 8
  %375 = load i64, i64* %51, align 8
  %376 = load i64, i64* %55, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i64 @__msa_srari_h(i64 %377, i32 1)
  store i64 %378, i64* %59, align 8
  %379 = load i64, i64* %52, align 8
  %380 = load i64, i64* %56, align 8
  %381 = add nsw i64 %379, %380
  %382 = call i64 @__msa_srari_h(i64 %381, i32 1)
  store i64 %382, i64* %60, align 8
  %383 = load i64, i64* %57, align 8
  %384 = load i64, i64* %58, align 8
  %385 = load i64, i64* %59, align 8
  %386 = load i64, i64* %60, align 8
  %387 = call i32 @SAT_SH4_SH(i64 %383, i64 %384, i64 %385, i64 %386, i32 7)
  %388 = load i64, i64* %57, align 8
  %389 = load i64, i64* %58, align 8
  %390 = call i32 @PCKEV_XORI128_UB(i64 %388, i64 %389)
  store i32 %390, i32* %12, align 4
  %391 = load i64, i64* %59, align 8
  %392 = load i64, i64* %60, align 8
  %393 = call i32 @PCKEV_XORI128_UB(i64 %391, i64 %392)
  store i32 %393, i32* %13, align 4
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %13, align 4
  %396 = load i32*, i32** %7, align 8
  %397 = load i32, i32* %8, align 4
  %398 = call i32 @ST_D4(i32 %394, i32 %395, i32 0, i32 1, i32 0, i32 1, i32* %396, i32 %397)
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
