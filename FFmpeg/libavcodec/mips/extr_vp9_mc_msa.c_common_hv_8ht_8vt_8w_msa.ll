; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @common_hv_8ht_8vt_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_8ht_8vt_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %67 = load i32*, i32** @mc_filt_mask_arr, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = call i64 @LD_UB(i32* %68)
  store i64 %69, i64* %31, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul nsw i32 3, %70
  %72 = add nsw i32 3, %71
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i64 @LD_SH(i32* %77)
  store i64 %78, i64* %37, align 8
  %79 = load i64, i64* %37, align 8
  %80 = load i32, i32* %27, align 4
  %81 = load i32, i32* %28, align 4
  %82 = load i32, i32* %29, align 4
  %83 = load i32, i32* %30, align 4
  %84 = call i32 @SPLATI_H4_SB(i64 %79, i32 0, i32 1, i32 2, i32 3, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* %31, align 8
  %86 = add nsw i64 %85, 2
  store i64 %86, i64* %32, align 8
  %87 = load i64, i64* %31, align 8
  %88 = add nsw i64 %87, 4
  store i64 %88, i64* %33, align 8
  %89 = load i64, i64* %31, align 8
  %90 = add nsw i64 %89, 6
  store i64 %90, i64* %34, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @LD_SB7(i32* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = mul nsw i32 7, %101
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %22, align 4
  %113 = call i32 @XORI_B7_128_SB(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* %33, align 8
  %119 = load i64, i64* %34, align 8
  %120 = load i32, i32* %27, align 4
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* %29, align 4
  %123 = load i32, i32* %30, align 4
  %124 = call i64 @HORIZ_8TAP_FILT(i32 %114, i32 %115, i64 %116, i64 %117, i64 %118, i64 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  store i64 %124, i64* %42, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = load i64, i64* %34, align 8
  %131 = load i32, i32* %27, align 4
  %132 = load i32, i32* %28, align 4
  %133 = load i32, i32* %29, align 4
  %134 = load i32, i32* %30, align 4
  %135 = call i64 @HORIZ_8TAP_FILT(i32 %125, i32 %126, i64 %127, i64 %128, i64 %129, i64 %130, i32 %131, i32 %132, i32 %133, i32 %134)
  store i64 %135, i64* %43, align 8
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i64, i64* %31, align 8
  %139 = load i64, i64* %32, align 8
  %140 = load i64, i64* %33, align 8
  %141 = load i64, i64* %34, align 8
  %142 = load i32, i32* %27, align 4
  %143 = load i32, i32* %28, align 4
  %144 = load i32, i32* %29, align 4
  %145 = load i32, i32* %30, align 4
  %146 = call i64 @HORIZ_8TAP_FILT(i32 %136, i32 %137, i64 %138, i64 %139, i64 %140, i64 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i64 %146, i64* %44, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = load i64, i64* %31, align 8
  %150 = load i64, i64* %32, align 8
  %151 = load i64, i64* %33, align 8
  %152 = load i64, i64* %34, align 8
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %30, align 4
  %157 = call i64 @HORIZ_8TAP_FILT(i32 %147, i32 %148, i64 %149, i64 %150, i64 %151, i64 %152, i32 %153, i32 %154, i32 %155, i32 %156)
  store i64 %157, i64* %45, align 8
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %32, align 8
  %162 = load i64, i64* %33, align 8
  %163 = load i64, i64* %34, align 8
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* %28, align 4
  %166 = load i32, i32* %29, align 4
  %167 = load i32, i32* %30, align 4
  %168 = call i64 @HORIZ_8TAP_FILT(i32 %158, i32 %159, i64 %160, i64 %161, i64 %162, i64 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  store i64 %168, i64* %46, align 8
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i64, i64* %31, align 8
  %172 = load i64, i64* %32, align 8
  %173 = load i64, i64* %33, align 8
  %174 = load i64, i64* %34, align 8
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %30, align 4
  %179 = call i64 @HORIZ_8TAP_FILT(i32 %169, i32 %170, i64 %171, i64 %172, i64 %173, i64 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  store i64 %179, i64* %47, align 8
  %180 = load i32, i32* %22, align 4
  %181 = load i32, i32* %22, align 4
  %182 = load i64, i64* %31, align 8
  %183 = load i64, i64* %32, align 8
  %184 = load i64, i64* %33, align 8
  %185 = load i64, i64* %34, align 8
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %28, align 4
  %188 = load i32, i32* %29, align 4
  %189 = load i32, i32* %30, align 4
  %190 = call i64 @HORIZ_8TAP_FILT(i32 %180, i32 %181, i64 %182, i64 %183, i64 %184, i64 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  store i64 %190, i64* %48, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = call i64 @LD_SH(i32* %191)
  store i64 %192, i64* %37, align 8
  %193 = load i64, i64* %37, align 8
  %194 = load i64, i64* %38, align 8
  %195 = load i64, i64* %39, align 8
  %196 = load i64, i64* %40, align 8
  %197 = load i64, i64* %41, align 8
  %198 = call i32 @SPLATI_H4_SH(i64 %193, i32 0, i32 1, i32 2, i32 3, i64 %194, i64 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %42, align 8
  %200 = load i64, i64* %43, align 8
  %201 = load i64, i64* %44, align 8
  %202 = load i64, i64* %45, align 8
  %203 = load i64, i64* %57, align 8
  %204 = load i64, i64* %58, align 8
  %205 = call i32 @ILVEV_B2_SH(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %46, align 8
  %207 = load i64, i64* %47, align 8
  %208 = load i64, i64* %43, align 8
  %209 = load i64, i64* %44, align 8
  %210 = load i64, i64* %59, align 8
  %211 = load i64, i64* %61, align 8
  %212 = call i32 @ILVEV_B2_SH(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %45, align 8
  %214 = load i64, i64* %46, align 8
  %215 = load i64, i64* %47, align 8
  %216 = load i64, i64* %48, align 8
  %217 = load i64, i64* %62, align 8
  %218 = load i64, i64* %63, align 8
  %219 = call i32 @ILVEV_B2_SH(i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i32, i32* %14, align 4
  %221 = ashr i32 %220, 2
  store i32 %221, i32* %15, align 4
  br label %222

222:                                              ; preds = %226, %7
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %15, align 4
  %225 = icmp ne i32 %223, 0
  br i1 %225, label %226, label %377

226:                                              ; preds = %222
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %25, align 4
  %232 = load i32, i32* %26, align 4
  %233 = call i32 @LD_SB4(i32* %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %9, align 4
  %235 = mul nsw i32 4, %234
  %236 = load i32*, i32** %8, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32* %238, i32** %8, align 8
  %239 = load i32, i32* %23, align 4
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %25, align 4
  %242 = load i32, i32* %26, align 4
  %243 = call i32 @XORI_B4_128_SB(i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %23, align 4
  %245 = load i32, i32* %23, align 4
  %246 = load i64, i64* %31, align 8
  %247 = load i64, i64* %32, align 8
  %248 = load i64, i64* %33, align 8
  %249 = load i64, i64* %34, align 8
  %250 = load i32, i32* %27, align 4
  %251 = load i32, i32* %28, align 4
  %252 = load i32, i32* %29, align 4
  %253 = load i32, i32* %30, align 4
  %254 = call i64 @HORIZ_8TAP_FILT(i32 %244, i32 %245, i64 %246, i64 %247, i64 %248, i64 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  store i64 %254, i64* %49, align 8
  %255 = load i64, i64* %49, align 8
  %256 = trunc i64 %255 to i32
  %257 = load i64, i64* %48, align 8
  %258 = trunc i64 %257 to i32
  %259 = call i64 @__msa_ilvev_b(i32 %256, i32 %258)
  store i64 %259, i64* %60, align 8
  %260 = load i64, i64* %57, align 8
  %261 = load i64, i64* %58, align 8
  %262 = load i64, i64* %59, align 8
  %263 = load i64, i64* %60, align 8
  %264 = load i64, i64* %38, align 8
  %265 = load i64, i64* %39, align 8
  %266 = load i64, i64* %40, align 8
  %267 = load i64, i64* %41, align 8
  %268 = call i64 @FILT_8TAP_DPADD_S_H(i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267)
  store i64 %268, i64* %53, align 8
  %269 = load i32, i32* %24, align 4
  %270 = load i32, i32* %24, align 4
  %271 = load i64, i64* %31, align 8
  %272 = load i64, i64* %32, align 8
  %273 = load i64, i64* %33, align 8
  %274 = load i64, i64* %34, align 8
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %28, align 4
  %277 = load i32, i32* %29, align 4
  %278 = load i32, i32* %30, align 4
  %279 = call i64 @HORIZ_8TAP_FILT(i32 %269, i32 %270, i64 %271, i64 %272, i64 %273, i64 %274, i32 %275, i32 %276, i32 %277, i32 %278)
  store i64 %279, i64* %50, align 8
  %280 = load i64, i64* %50, align 8
  %281 = trunc i64 %280 to i32
  %282 = load i64, i64* %49, align 8
  %283 = trunc i64 %282 to i32
  %284 = call i64 @__msa_ilvev_b(i32 %281, i32 %283)
  store i64 %284, i64* %64, align 8
  %285 = load i64, i64* %61, align 8
  %286 = load i64, i64* %62, align 8
  %287 = load i64, i64* %63, align 8
  %288 = load i64, i64* %64, align 8
  %289 = load i64, i64* %38, align 8
  %290 = load i64, i64* %39, align 8
  %291 = load i64, i64* %40, align 8
  %292 = load i64, i64* %41, align 8
  %293 = call i64 @FILT_8TAP_DPADD_S_H(i64 %285, i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292)
  store i64 %293, i64* %54, align 8
  %294 = load i32, i32* %25, align 4
  %295 = load i32, i32* %25, align 4
  %296 = load i64, i64* %31, align 8
  %297 = load i64, i64* %32, align 8
  %298 = load i64, i64* %33, align 8
  %299 = load i64, i64* %34, align 8
  %300 = load i32, i32* %27, align 4
  %301 = load i32, i32* %28, align 4
  %302 = load i32, i32* %29, align 4
  %303 = load i32, i32* %30, align 4
  %304 = call i64 @HORIZ_8TAP_FILT(i32 %294, i32 %295, i64 %296, i64 %297, i64 %298, i64 %299, i32 %300, i32 %301, i32 %302, i32 %303)
  store i64 %304, i64* %51, align 8
  %305 = load i64, i64* %51, align 8
  %306 = trunc i64 %305 to i32
  %307 = load i64, i64* %50, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i64 @__msa_ilvev_b(i32 %306, i32 %308)
  store i64 %309, i64* %65, align 8
  %310 = load i64, i64* %58, align 8
  %311 = load i64, i64* %59, align 8
  %312 = load i64, i64* %60, align 8
  %313 = load i64, i64* %65, align 8
  %314 = load i64, i64* %38, align 8
  %315 = load i64, i64* %39, align 8
  %316 = load i64, i64* %40, align 8
  %317 = load i64, i64* %41, align 8
  %318 = call i64 @FILT_8TAP_DPADD_S_H(i64 %310, i64 %311, i64 %312, i64 %313, i64 %314, i64 %315, i64 %316, i64 %317)
  store i64 %318, i64* %55, align 8
  %319 = load i32, i32* %26, align 4
  %320 = load i32, i32* %26, align 4
  %321 = load i64, i64* %31, align 8
  %322 = load i64, i64* %32, align 8
  %323 = load i64, i64* %33, align 8
  %324 = load i64, i64* %34, align 8
  %325 = load i32, i32* %27, align 4
  %326 = load i32, i32* %28, align 4
  %327 = load i32, i32* %29, align 4
  %328 = load i32, i32* %30, align 4
  %329 = call i64 @HORIZ_8TAP_FILT(i32 %319, i32 %320, i64 %321, i64 %322, i64 %323, i64 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  store i64 %329, i64* %52, align 8
  %330 = load i64, i64* %52, align 8
  %331 = trunc i64 %330 to i32
  %332 = load i64, i64* %51, align 8
  %333 = trunc i64 %332 to i32
  %334 = call i64 @__msa_ilvev_b(i32 %331, i32 %333)
  store i64 %334, i64* %66, align 8
  %335 = load i64, i64* %62, align 8
  %336 = load i64, i64* %63, align 8
  %337 = load i64, i64* %64, align 8
  %338 = load i64, i64* %66, align 8
  %339 = load i64, i64* %38, align 8
  %340 = load i64, i64* %39, align 8
  %341 = load i64, i64* %40, align 8
  %342 = load i64, i64* %41, align 8
  %343 = call i64 @FILT_8TAP_DPADD_S_H(i64 %335, i64 %336, i64 %337, i64 %338, i64 %339, i64 %340, i64 %341, i64 %342)
  store i64 %343, i64* %56, align 8
  %344 = load i64, i64* %53, align 8
  %345 = load i64, i64* %54, align 8
  %346 = load i64, i64* %55, align 8
  %347 = load i64, i64* %56, align 8
  %348 = call i32 @SRARI_H4_SH(i64 %344, i64 %345, i64 %346, i64 %347, i32 7)
  %349 = load i64, i64* %53, align 8
  %350 = load i64, i64* %54, align 8
  %351 = load i64, i64* %55, align 8
  %352 = load i64, i64* %56, align 8
  %353 = call i32 @SAT_SH4_SH(i64 %349, i64 %350, i64 %351, i64 %352, i32 7)
  %354 = load i64, i64* %53, align 8
  %355 = load i64, i64* %54, align 8
  %356 = call i64 @PCKEV_XORI128_UB(i64 %354, i64 %355)
  store i64 %356, i64* %35, align 8
  %357 = load i64, i64* %55, align 8
  %358 = load i64, i64* %56, align 8
  %359 = call i64 @PCKEV_XORI128_UB(i64 %357, i64 %358)
  store i64 %359, i64* %36, align 8
  %360 = load i64, i64* %35, align 8
  %361 = load i64, i64* %36, align 8
  %362 = load i32*, i32** %10, align 8
  %363 = load i32, i32* %11, align 4
  %364 = call i32 @ST_D4(i64 %360, i64 %361, i32 0, i32 1, i32 0, i32 1, i32* %362, i32 %363)
  %365 = load i32, i32* %11, align 4
  %366 = mul nsw i32 4, %365
  %367 = load i32*, i32** %10, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  store i32* %369, i32** %10, align 8
  %370 = load i64, i64* %52, align 8
  store i64 %370, i64* %48, align 8
  %371 = load i64, i64* %59, align 8
  store i64 %371, i64* %57, align 8
  %372 = load i64, i64* %60, align 8
  store i64 %372, i64* %58, align 8
  %373 = load i64, i64* %65, align 8
  store i64 %373, i64* %59, align 8
  %374 = load i64, i64* %63, align 8
  store i64 %374, i64* %61, align 8
  %375 = load i64, i64* %64, align 8
  store i64 %375, i64* %62, align 8
  %376 = load i64, i64* %66, align 8
  store i64 %376, i64* %63, align 8
  br label %222

377:                                              ; preds = %222
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_8TAP_FILT(i32, i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @FILT_8TAP_DPADD_S_H(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
