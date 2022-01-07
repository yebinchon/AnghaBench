; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
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
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -3
  store i32* %53, i32** %7, align 8
  %54 = call i32 @__msa_ldi_h(i32 128)
  store i32 %54, i32* %51, align 4
  %55 = load i32, i32* %51, align 4
  %56 = shl i32 %55, 6
  store i32 %56, i32* %51, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %50, align 4
  %59 = load i32, i32* %50, align 4
  %60 = load i32, i32* %40, align 4
  %61 = load i32, i32* %41, align 4
  %62 = load i32, i32* %42, align 4
  %63 = load i32, i32* %43, align 4
  %64 = call i32 @SPLATI_H4_SH(i32 %59, i32 0, i32 1, i32 2, i32 3, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* @ff_hevc_mask_arr, align 8
  %66 = call i64 @LD_SB(i64 %65)
  store i64 %66, i64* %26, align 8
  %67 = load i64, i64* %26, align 8
  %68 = add nsw i64 %67, 2
  store i64 %68, i64* %27, align 8
  %69 = load i64, i64* %26, align 8
  %70 = add nsw i64 %69, 4
  store i64 %70, i64* %28, align 8
  %71 = load i64, i64* %26, align 8
  %72 = add nsw i64 %71, 6
  store i64 %72, i64* %29, align 8
  %73 = load i64, i64* @ff_hevc_mask_arr, align 8
  %74 = add nsw i64 %73, 16
  %75 = call i64 @LD_SB(i64 %74)
  store i64 %75, i64* %30, align 8
  %76 = load i64, i64* %30, align 8
  %77 = add nsw i64 %76, 2
  store i64 %77, i64* %31, align 8
  %78 = load i64, i64* %30, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %32, align 8
  %80 = load i64, i64* %30, align 8
  %81 = add nsw i64 %80, 6
  store i64 %81, i64* %33, align 8
  store i32 4, i32* %13, align 4
  br label %82

82:                                               ; preds = %86, %6
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %13, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %338

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %20, align 8
  %92 = load i64, i64* %21, align 8
  %93 = call i32 @LD_SB4(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = load i32, i32* %8, align 4
  %97 = load i64, i64* %22, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %24, align 8
  %100 = load i64, i64* %25, align 8
  %101 = call i32 @LD_SB4(i32* %95, i32 %96, i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load i32, i32* %8, align 4
  %103 = mul nsw i32 4, %102
  %104 = load i32*, i32** %7, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %7, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %20, align 8
  %110 = load i64, i64* %21, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %23, align 8
  %113 = load i64, i64* %24, align 8
  %114 = load i64, i64* %25, align 8
  %115 = call i32 @XORI_B8_128_SB(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i32, i32* %51, align 4
  store i32 %116, i32* %44, align 4
  %117 = load i32, i32* %51, align 4
  store i32 %117, i32* %45, align 4
  %118 = load i32, i32* %51, align 4
  store i32 %118, i32* %46, align 4
  %119 = load i32, i32* %51, align 4
  store i32 %119, i32* %47, align 4
  %120 = load i32, i32* %51, align 4
  store i32 %120, i32* %48, align 4
  %121 = load i32, i32* %51, align 4
  store i32 %121, i32* %49, align 4
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %34, align 8
  %129 = load i64, i64* %35, align 8
  %130 = call i32 @VSHF_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %26, align 8
  %137 = load i64, i64* %36, align 8
  %138 = load i64, i64* %37, align 8
  %139 = call i32 @VSHF_B2_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %30, align 8
  %145 = load i64, i64* %30, align 8
  %146 = load i64, i64* %38, align 8
  %147 = load i64, i64* %39, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %34, align 8
  %150 = load i64, i64* %35, align 8
  %151 = load i64, i64* %36, align 8
  %152 = load i64, i64* %37, align 8
  %153 = load i32, i32* %40, align 4
  %154 = load i32, i32* %40, align 4
  %155 = load i32, i32* %40, align 4
  %156 = load i32, i32* %40, align 4
  %157 = load i32, i32* %44, align 4
  %158 = load i32, i32* %45, align 4
  %159 = load i32, i32* %46, align 4
  %160 = load i32, i32* %47, align 4
  %161 = call i32 @DPADD_SB4_SH(i64 %149, i64 %150, i64 %151, i64 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i64, i64* %38, align 8
  %163 = load i64, i64* %39, align 8
  %164 = load i32, i32* %40, align 4
  %165 = load i32, i32* %40, align 4
  %166 = load i32, i32* %48, align 4
  %167 = load i32, i32* %49, align 4
  %168 = call i32 @DPADD_SB2_SH(i64 %162, i64 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i64, i64* %18, align 8
  %170 = load i64, i64* %18, align 8
  %171 = load i64, i64* %19, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %27, align 8
  %175 = load i64, i64* %34, align 8
  %176 = load i64, i64* %35, align 8
  %177 = call i32 @VSHF_B2_SB(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %20, align 8
  %180 = load i64, i64* %21, align 8
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* %27, align 8
  %183 = load i64, i64* %27, align 8
  %184 = load i64, i64* %36, align 8
  %185 = load i64, i64* %37, align 8
  %186 = call i32 @VSHF_B2_SB(i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185)
  %187 = load i64, i64* %22, align 8
  %188 = load i64, i64* %23, align 8
  %189 = load i64, i64* %24, align 8
  %190 = load i64, i64* %25, align 8
  %191 = load i64, i64* %31, align 8
  %192 = load i64, i64* %31, align 8
  %193 = load i64, i64* %38, align 8
  %194 = load i64, i64* %39, align 8
  %195 = call i32 @VSHF_B2_SB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %34, align 8
  %197 = load i64, i64* %35, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i64, i64* %37, align 8
  %200 = load i32, i32* %41, align 4
  %201 = load i32, i32* %41, align 4
  %202 = load i32, i32* %41, align 4
  %203 = load i32, i32* %41, align 4
  %204 = load i32, i32* %44, align 4
  %205 = load i32, i32* %45, align 4
  %206 = load i32, i32* %46, align 4
  %207 = load i32, i32* %47, align 4
  %208 = call i32 @DPADD_SB4_SH(i64 %196, i64 %197, i64 %198, i64 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load i64, i64* %38, align 8
  %210 = load i64, i64* %39, align 8
  %211 = load i32, i32* %41, align 4
  %212 = load i32, i32* %41, align 4
  %213 = load i32, i32* %48, align 4
  %214 = load i32, i32* %49, align 4
  %215 = call i32 @DPADD_SB2_SH(i64 %209, i64 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = load i64, i64* %18, align 8
  %217 = load i64, i64* %18, align 8
  %218 = load i64, i64* %19, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* %28, align 8
  %221 = load i64, i64* %28, align 8
  %222 = load i64, i64* %34, align 8
  %223 = load i64, i64* %35, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %20, align 8
  %226 = load i64, i64* %20, align 8
  %227 = load i64, i64* %21, align 8
  %228 = load i64, i64* %21, align 8
  %229 = load i64, i64* %28, align 8
  %230 = load i64, i64* %28, align 8
  %231 = load i64, i64* %36, align 8
  %232 = load i64, i64* %37, align 8
  %233 = call i32 @VSHF_B2_SB(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232)
  %234 = load i64, i64* %22, align 8
  %235 = load i64, i64* %23, align 8
  %236 = load i64, i64* %24, align 8
  %237 = load i64, i64* %25, align 8
  %238 = load i64, i64* %32, align 8
  %239 = load i64, i64* %32, align 8
  %240 = load i64, i64* %38, align 8
  %241 = load i64, i64* %39, align 8
  %242 = call i32 @VSHF_B2_SB(i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241)
  %243 = load i64, i64* %34, align 8
  %244 = load i64, i64* %35, align 8
  %245 = load i64, i64* %36, align 8
  %246 = load i64, i64* %37, align 8
  %247 = load i32, i32* %42, align 4
  %248 = load i32, i32* %42, align 4
  %249 = load i32, i32* %42, align 4
  %250 = load i32, i32* %42, align 4
  %251 = load i32, i32* %44, align 4
  %252 = load i32, i32* %45, align 4
  %253 = load i32, i32* %46, align 4
  %254 = load i32, i32* %47, align 4
  %255 = call i32 @DPADD_SB4_SH(i64 %243, i64 %244, i64 %245, i64 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i64, i64* %38, align 8
  %257 = load i64, i64* %39, align 8
  %258 = load i32, i32* %42, align 4
  %259 = load i32, i32* %42, align 4
  %260 = load i32, i32* %48, align 4
  %261 = load i32, i32* %49, align 4
  %262 = call i32 @DPADD_SB2_SH(i64 %256, i64 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i64, i64* %18, align 8
  %264 = load i64, i64* %18, align 8
  %265 = load i64, i64* %19, align 8
  %266 = load i64, i64* %19, align 8
  %267 = load i64, i64* %29, align 8
  %268 = load i64, i64* %29, align 8
  %269 = load i64, i64* %34, align 8
  %270 = load i64, i64* %35, align 8
  %271 = call i32 @VSHF_B2_SB(i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270)
  %272 = load i64, i64* %20, align 8
  %273 = load i64, i64* %20, align 8
  %274 = load i64, i64* %21, align 8
  %275 = load i64, i64* %21, align 8
  %276 = load i64, i64* %29, align 8
  %277 = load i64, i64* %29, align 8
  %278 = load i64, i64* %36, align 8
  %279 = load i64, i64* %37, align 8
  %280 = call i32 @VSHF_B2_SB(i64 %272, i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279)
  %281 = load i64, i64* %22, align 8
  %282 = load i64, i64* %23, align 8
  %283 = load i64, i64* %24, align 8
  %284 = load i64, i64* %25, align 8
  %285 = load i64, i64* %33, align 8
  %286 = load i64, i64* %33, align 8
  %287 = load i64, i64* %38, align 8
  %288 = load i64, i64* %39, align 8
  %289 = call i32 @VSHF_B2_SB(i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288)
  %290 = load i64, i64* %34, align 8
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %36, align 8
  %293 = load i64, i64* %37, align 8
  %294 = load i32, i32* %43, align 4
  %295 = load i32, i32* %43, align 4
  %296 = load i32, i32* %43, align 4
  %297 = load i32, i32* %43, align 4
  %298 = load i32, i32* %44, align 4
  %299 = load i32, i32* %45, align 4
  %300 = load i32, i32* %46, align 4
  %301 = load i32, i32* %47, align 4
  %302 = call i32 @DPADD_SB4_SH(i64 %290, i64 %291, i64 %292, i64 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load i64, i64* %38, align 8
  %304 = load i64, i64* %39, align 8
  %305 = load i32, i32* %43, align 4
  %306 = load i32, i32* %43, align 4
  %307 = load i32, i32* %48, align 4
  %308 = load i32, i32* %49, align 4
  %309 = call i32 @DPADD_SB2_SH(i64 %303, i64 %304, i32 %305, i32 %306, i32 %307, i32 %308)
  %310 = load i32, i32* %48, align 4
  %311 = call i32 @__msa_copy_s_d(i32 %310, i32 0)
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* %48, align 4
  %313 = call i32 @__msa_copy_s_d(i32 %312, i32 1)
  store i32 %313, i32* %15, align 4
  %314 = load i32, i32* %49, align 4
  %315 = call i32 @__msa_copy_s_d(i32 %314, i32 0)
  store i32 %315, i32* %16, align 4
  %316 = load i32, i32* %49, align 4
  %317 = call i32 @__msa_copy_s_d(i32 %316, i32 1)
  store i32 %317, i32* %17, align 4
  %318 = load i32, i32* %44, align 4
  %319 = load i32, i32* %45, align 4
  %320 = load i32, i32* %46, align 4
  %321 = load i32, i32* %47, align 4
  %322 = load i32*, i32** %9, align 8
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @ST_SH4(i32 %318, i32 %319, i32 %320, i32 %321, i32* %322, i32 %323)
  %325 = load i32, i32* %14, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %17, align 4
  %329 = load i32*, i32** %9, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 8
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @SD4(i32 %325, i32 %326, i32 %327, i32 %328, i32* %330, i32 %331)
  %333 = load i32, i32* %10, align 4
  %334 = mul nsw i32 4, %333
  %335 = load i32*, i32** %9, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** %9, align 8
  br label %82

338:                                              ; preds = %82
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_copy_s_d(i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
