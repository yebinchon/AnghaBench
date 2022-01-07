; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_and_aver_dst_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_and_aver_dst_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @common_hv_8ht_8vt_and_aver_dst_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_8ht_8vt_and_aver_dst_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
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
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %71 = load i32*, i32** @mc_filt_mask_arr, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i64 @LD_UB(i32* %72)
  store i64 %73, i64* %42, align 8
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 3, %74
  %76 = add nsw i32 3, %75
  %77 = load i32*, i32** %8, align 8
  %78 = sext i32 %76 to i64
  %79 = sub i64 0, %78
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32* %80, i32** %8, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = call i64 @LD_SH(i32* %81)
  store i64 %82, i64* %35, align 8
  %83 = load i64, i64* %35, align 8
  %84 = load i32, i32* %31, align 4
  %85 = load i32, i32* %32, align 4
  %86 = load i32, i32* %33, align 4
  %87 = load i32, i32* %34, align 4
  %88 = call i32 @SPLATI_H4_SB(i64 %83, i32 0, i32 1, i32 2, i32 3, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %42, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %43, align 8
  %91 = load i64, i64* %42, align 8
  %92 = add nsw i64 %91, 4
  store i64 %92, i64* %44, align 8
  %93 = load i64, i64* %42, align 8
  %94 = add nsw i64 %93, 6
  store i64 %94, i64* %45, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @LD_SB7(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 7, %105
  %107 = load i32*, i32** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %8, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %23, align 4
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %26, align 4
  %117 = call i32 @XORI_B7_128_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i64, i64* %42, align 8
  %121 = load i64, i64* %43, align 8
  %122 = load i64, i64* %44, align 8
  %123 = load i64, i64* %45, align 8
  %124 = load i32, i32* %31, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %33, align 4
  %127 = load i32, i32* %34, align 4
  %128 = call i64 @HORIZ_8TAP_FILT(i32 %118, i32 %119, i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125, i32 %126, i32 %127)
  store i64 %128, i64* %46, align 8
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load i64, i64* %42, align 8
  %132 = load i64, i64* %43, align 8
  %133 = load i64, i64* %44, align 8
  %134 = load i64, i64* %45, align 8
  %135 = load i32, i32* %31, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %33, align 4
  %138 = load i32, i32* %34, align 4
  %139 = call i64 @HORIZ_8TAP_FILT(i32 %129, i32 %130, i64 %131, i64 %132, i64 %133, i64 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  store i64 %139, i64* %47, align 8
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %22, align 4
  %142 = load i64, i64* %42, align 8
  %143 = load i64, i64* %43, align 8
  %144 = load i64, i64* %44, align 8
  %145 = load i64, i64* %45, align 8
  %146 = load i32, i32* %31, align 4
  %147 = load i32, i32* %32, align 4
  %148 = load i32, i32* %33, align 4
  %149 = load i32, i32* %34, align 4
  %150 = call i64 @HORIZ_8TAP_FILT(i32 %140, i32 %141, i64 %142, i64 %143, i64 %144, i64 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  store i64 %150, i64* %48, align 8
  %151 = load i32, i32* %23, align 4
  %152 = load i32, i32* %23, align 4
  %153 = load i64, i64* %42, align 8
  %154 = load i64, i64* %43, align 8
  %155 = load i64, i64* %44, align 8
  %156 = load i64, i64* %45, align 8
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %32, align 4
  %159 = load i32, i32* %33, align 4
  %160 = load i32, i32* %34, align 4
  %161 = call i64 @HORIZ_8TAP_FILT(i32 %151, i32 %152, i64 %153, i64 %154, i64 %155, i64 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  store i64 %161, i64* %49, align 8
  %162 = load i32, i32* %24, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i64, i64* %42, align 8
  %165 = load i64, i64* %43, align 8
  %166 = load i64, i64* %44, align 8
  %167 = load i64, i64* %45, align 8
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %32, align 4
  %170 = load i32, i32* %33, align 4
  %171 = load i32, i32* %34, align 4
  %172 = call i64 @HORIZ_8TAP_FILT(i32 %162, i32 %163, i64 %164, i64 %165, i64 %166, i64 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  store i64 %172, i64* %50, align 8
  %173 = load i32, i32* %25, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i64, i64* %42, align 8
  %176 = load i64, i64* %43, align 8
  %177 = load i64, i64* %44, align 8
  %178 = load i64, i64* %45, align 8
  %179 = load i32, i32* %31, align 4
  %180 = load i32, i32* %32, align 4
  %181 = load i32, i32* %33, align 4
  %182 = load i32, i32* %34, align 4
  %183 = call i64 @HORIZ_8TAP_FILT(i32 %173, i32 %174, i64 %175, i64 %176, i64 %177, i64 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  store i64 %183, i64* %51, align 8
  %184 = load i32, i32* %26, align 4
  %185 = load i32, i32* %26, align 4
  %186 = load i64, i64* %42, align 8
  %187 = load i64, i64* %43, align 8
  %188 = load i64, i64* %44, align 8
  %189 = load i64, i64* %45, align 8
  %190 = load i32, i32* %31, align 4
  %191 = load i32, i32* %32, align 4
  %192 = load i32, i32* %33, align 4
  %193 = load i32, i32* %34, align 4
  %194 = call i64 @HORIZ_8TAP_FILT(i32 %184, i32 %185, i64 %186, i64 %187, i64 %188, i64 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  store i64 %194, i64* %52, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = call i64 @LD_SH(i32* %195)
  store i64 %196, i64* %35, align 8
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i64, i64* %37, align 8
  %200 = load i64, i64* %38, align 8
  %201 = load i64, i64* %39, align 8
  %202 = call i32 @SPLATI_H4_SH(i64 %197, i32 0, i32 1, i32 2, i32 3, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i64, i64* %46, align 8
  %204 = load i64, i64* %47, align 8
  %205 = load i64, i64* %48, align 8
  %206 = load i64, i64* %49, align 8
  %207 = load i64, i64* %61, align 8
  %208 = load i64, i64* %62, align 8
  %209 = call i32 @ILVEV_B2_SH(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  %210 = load i64, i64* %50, align 8
  %211 = load i64, i64* %51, align 8
  %212 = load i64, i64* %47, align 8
  %213 = load i64, i64* %48, align 8
  %214 = load i64, i64* %63, align 8
  %215 = load i64, i64* %65, align 8
  %216 = call i32 @ILVEV_B2_SH(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %49, align 8
  %218 = load i64, i64* %50, align 8
  %219 = load i64, i64* %51, align 8
  %220 = load i64, i64* %52, align 8
  %221 = load i64, i64* %66, align 8
  %222 = load i64, i64* %67, align 8
  %223 = call i32 @ILVEV_B2_SH(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i32, i32* %14, align 4
  %225 = ashr i32 %224, 2
  store i32 %225, i32* %15, align 4
  br label %226

226:                                              ; preds = %230, %7
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %15, align 4
  %229 = icmp ne i32 %227, 0
  br i1 %229, label %230, label %394

230:                                              ; preds = %226
  %231 = load i32*, i32** %8, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %27, align 4
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %29, align 4
  %236 = load i32, i32* %30, align 4
  %237 = call i32 @LD_SB4(i32* %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %27, align 4
  %239 = load i32, i32* %28, align 4
  %240 = load i32, i32* %29, align 4
  %241 = load i32, i32* %30, align 4
  %242 = call i32 @XORI_B4_128_SB(i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %9, align 4
  %244 = mul nsw i32 4, %243
  %245 = load i32*, i32** %8, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %245, i64 %246
  store i32* %247, i32** %8, align 8
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %18, align 4
  %253 = load i32, i32* %19, align 4
  %254 = call i32 @LD4(i32* %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %17, align 4
  %257 = load i64, i64* %40, align 8
  %258 = call i32 @INSERT_D2_UB(i32 %255, i32 %256, i64 %257)
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* %19, align 4
  %261 = load i64, i64* %41, align 8
  %262 = call i32 @INSERT_D2_UB(i32 %259, i32 %260, i64 %261)
  %263 = load i32, i32* %27, align 4
  %264 = load i32, i32* %27, align 4
  %265 = load i64, i64* %42, align 8
  %266 = load i64, i64* %43, align 8
  %267 = load i64, i64* %44, align 8
  %268 = load i64, i64* %45, align 8
  %269 = load i32, i32* %31, align 4
  %270 = load i32, i32* %32, align 4
  %271 = load i32, i32* %33, align 4
  %272 = load i32, i32* %34, align 4
  %273 = call i64 @HORIZ_8TAP_FILT(i32 %263, i32 %264, i64 %265, i64 %266, i64 %267, i64 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  store i64 %273, i64* %53, align 8
  %274 = load i64, i64* %53, align 8
  %275 = trunc i64 %274 to i32
  %276 = load i64, i64* %52, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i64 @__msa_ilvev_b(i32 %275, i32 %277)
  store i64 %278, i64* %64, align 8
  %279 = load i64, i64* %61, align 8
  %280 = load i64, i64* %62, align 8
  %281 = load i64, i64* %63, align 8
  %282 = load i64, i64* %64, align 8
  %283 = load i64, i64* %36, align 8
  %284 = load i64, i64* %37, align 8
  %285 = load i64, i64* %38, align 8
  %286 = load i64, i64* %39, align 8
  %287 = call i64 @FILT_8TAP_DPADD_S_H(i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286)
  store i64 %287, i64* %57, align 8
  %288 = load i32, i32* %28, align 4
  %289 = load i32, i32* %28, align 4
  %290 = load i64, i64* %42, align 8
  %291 = load i64, i64* %43, align 8
  %292 = load i64, i64* %44, align 8
  %293 = load i64, i64* %45, align 8
  %294 = load i32, i32* %31, align 4
  %295 = load i32, i32* %32, align 4
  %296 = load i32, i32* %33, align 4
  %297 = load i32, i32* %34, align 4
  %298 = call i64 @HORIZ_8TAP_FILT(i32 %288, i32 %289, i64 %290, i64 %291, i64 %292, i64 %293, i32 %294, i32 %295, i32 %296, i32 %297)
  store i64 %298, i64* %54, align 8
  %299 = load i64, i64* %54, align 8
  %300 = trunc i64 %299 to i32
  %301 = load i64, i64* %53, align 8
  %302 = trunc i64 %301 to i32
  %303 = call i64 @__msa_ilvev_b(i32 %300, i32 %302)
  store i64 %303, i64* %68, align 8
  %304 = load i64, i64* %65, align 8
  %305 = load i64, i64* %66, align 8
  %306 = load i64, i64* %67, align 8
  %307 = load i64, i64* %68, align 8
  %308 = load i64, i64* %36, align 8
  %309 = load i64, i64* %37, align 8
  %310 = load i64, i64* %38, align 8
  %311 = load i64, i64* %39, align 8
  %312 = call i64 @FILT_8TAP_DPADD_S_H(i64 %304, i64 %305, i64 %306, i64 %307, i64 %308, i64 %309, i64 %310, i64 %311)
  store i64 %312, i64* %58, align 8
  %313 = load i32, i32* %29, align 4
  %314 = load i32, i32* %29, align 4
  %315 = load i64, i64* %42, align 8
  %316 = load i64, i64* %43, align 8
  %317 = load i64, i64* %44, align 8
  %318 = load i64, i64* %45, align 8
  %319 = load i32, i32* %31, align 4
  %320 = load i32, i32* %32, align 4
  %321 = load i32, i32* %33, align 4
  %322 = load i32, i32* %34, align 4
  %323 = call i64 @HORIZ_8TAP_FILT(i32 %313, i32 %314, i64 %315, i64 %316, i64 %317, i64 %318, i32 %319, i32 %320, i32 %321, i32 %322)
  store i64 %323, i64* %55, align 8
  %324 = load i64, i64* %55, align 8
  %325 = trunc i64 %324 to i32
  %326 = load i64, i64* %54, align 8
  %327 = trunc i64 %326 to i32
  %328 = call i64 @__msa_ilvev_b(i32 %325, i32 %327)
  store i64 %328, i64* %69, align 8
  %329 = load i64, i64* %62, align 8
  %330 = load i64, i64* %63, align 8
  %331 = load i64, i64* %64, align 8
  %332 = load i64, i64* %69, align 8
  %333 = load i64, i64* %36, align 8
  %334 = load i64, i64* %37, align 8
  %335 = load i64, i64* %38, align 8
  %336 = load i64, i64* %39, align 8
  %337 = call i64 @FILT_8TAP_DPADD_S_H(i64 %329, i64 %330, i64 %331, i64 %332, i64 %333, i64 %334, i64 %335, i64 %336)
  store i64 %337, i64* %59, align 8
  %338 = load i32, i32* %30, align 4
  %339 = load i32, i32* %30, align 4
  %340 = load i64, i64* %42, align 8
  %341 = load i64, i64* %43, align 8
  %342 = load i64, i64* %44, align 8
  %343 = load i64, i64* %45, align 8
  %344 = load i32, i32* %31, align 4
  %345 = load i32, i32* %32, align 4
  %346 = load i32, i32* %33, align 4
  %347 = load i32, i32* %34, align 4
  %348 = call i64 @HORIZ_8TAP_FILT(i32 %338, i32 %339, i64 %340, i64 %341, i64 %342, i64 %343, i32 %344, i32 %345, i32 %346, i32 %347)
  store i64 %348, i64* %56, align 8
  %349 = load i64, i64* %56, align 8
  %350 = trunc i64 %349 to i32
  %351 = load i64, i64* %55, align 8
  %352 = trunc i64 %351 to i32
  %353 = call i64 @__msa_ilvev_b(i32 %350, i32 %352)
  store i64 %353, i64* %70, align 8
  %354 = load i64, i64* %66, align 8
  %355 = load i64, i64* %67, align 8
  %356 = load i64, i64* %68, align 8
  %357 = load i64, i64* %70, align 8
  %358 = load i64, i64* %36, align 8
  %359 = load i64, i64* %37, align 8
  %360 = load i64, i64* %38, align 8
  %361 = load i64, i64* %39, align 8
  %362 = call i64 @FILT_8TAP_DPADD_S_H(i64 %354, i64 %355, i64 %356, i64 %357, i64 %358, i64 %359, i64 %360, i64 %361)
  store i64 %362, i64* %60, align 8
  %363 = load i64, i64* %57, align 8
  %364 = load i64, i64* %58, align 8
  %365 = load i64, i64* %59, align 8
  %366 = load i64, i64* %60, align 8
  %367 = call i32 @SRARI_H4_SH(i64 %363, i64 %364, i64 %365, i64 %366, i32 7)
  %368 = load i64, i64* %57, align 8
  %369 = load i64, i64* %58, align 8
  %370 = load i64, i64* %59, align 8
  %371 = load i64, i64* %60, align 8
  %372 = call i32 @SAT_SH4_SH(i64 %368, i64 %369, i64 %370, i64 %371, i32 7)
  %373 = load i64, i64* %57, align 8
  %374 = load i64, i64* %58, align 8
  %375 = load i64, i64* %59, align 8
  %376 = load i64, i64* %60, align 8
  %377 = load i64, i64* %40, align 8
  %378 = load i64, i64* %41, align 8
  %379 = load i32*, i32** %10, align 8
  %380 = load i32, i32* %11, align 4
  %381 = call i32 @CONVERT_UB_AVG_ST8x4_UB(i64 %373, i64 %374, i64 %375, i64 %376, i64 %377, i64 %378, i32* %379, i32 %380)
  %382 = load i32, i32* %11, align 4
  %383 = mul nsw i32 4, %382
  %384 = load i32*, i32** %10, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  store i32* %386, i32** %10, align 8
  %387 = load i64, i64* %56, align 8
  store i64 %387, i64* %52, align 8
  %388 = load i64, i64* %63, align 8
  store i64 %388, i64* %61, align 8
  %389 = load i64, i64* %64, align 8
  store i64 %389, i64* %62, align 8
  %390 = load i64, i64* %69, align 8
  store i64 %390, i64* %63, align 8
  %391 = load i64, i64* %67, align 8
  store i64 %391, i64* %65, align 8
  %392 = load i64, i64* %68, align 8
  store i64 %392, i64* %66, align 8
  %393 = load i64, i64* %70, align 8
  store i64 %393, i64* %67, align 8
  br label %226

394:                                              ; preds = %226
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

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @FILT_8TAP_DPADD_S_H(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @CONVERT_UB_AVG_ST8x4_UB(i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
