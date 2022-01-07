; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %56 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = call i64 @LD_SB(i32* %57)
  store i64 %58, i64* %38, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 -1
  store i32* %60, i32** %9, align 8
  %61 = call i32 @__msa_ldi_h(i32 128)
  store i32 %61, i32* %55, align 4
  %62 = load i32, i32* %55, align 4
  %63 = shl i32 %62, 6
  store i32 %63, i32* %55, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @LD_SH(i32* %64)
  store i32 %65, i32* %54, align 4
  %66 = load i32, i32* %54, align 4
  %67 = load i32, i32* %36, align 4
  %68 = load i32, i32* %37, align 4
  %69 = call i32 @SPLATI_H2_SH(i32 %66, i32 0, i32 1, i32 %67, i32 %68)
  %70 = load i64, i64* %38, align 8
  %71 = add nsw i64 %70, 2
  store i64 %71, i64* %39, align 8
  %72 = load i64, i64* %38, align 8
  %73 = add nsw i64 %72, 8
  store i64 %73, i64* %40, align 8
  %74 = load i64, i64* %38, align 8
  %75 = add nsw i64 %74, 10
  store i64 %75, i64* %41, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 16
  store i32* %77, i32** %18, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 16
  store i32* %79, i32** %17, align 8
  %80 = load i32, i32* %16, align 4
  %81 = ashr i32 %80, 2
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %86, %8
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %19, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %427

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %24, align 8
  %92 = load i64, i64* %26, align 8
  %93 = call i32 @LD_SB4(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 16
  %96 = load i32, i32* %10, align 4
  %97 = load i64, i64* %21, align 8
  %98 = load i64, i64* %23, align 8
  %99 = load i64, i64* %25, align 8
  %100 = load i64, i64* %27, align 8
  %101 = call i32 @LD_SB4(i32* %95, i32 %96, i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 4, %102
  %104 = load i32*, i32** %9, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32* %106, i32** %9, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %28, align 4
  %110 = load i32, i32* %30, align 4
  %111 = load i32, i32* %32, align 4
  %112 = load i32, i32* %34, align 4
  %113 = call i32 @LD_SH4(i32* %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* %31, align 4
  %119 = load i32, i32* %33, align 4
  %120 = load i32, i32* %35, align 4
  %121 = call i32 @LD_SH4(i32* %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = mul nsw i32 4, %122
  %124 = load i32*, i32** %11, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %11, align 8
  %127 = load i64, i64* %20, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %27, align 8
  %135 = call i32 @XORI_B8_128_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i32, i32* %55, align 4
  store i32 %136, i32* %46, align 4
  %137 = load i32, i32* %55, align 4
  store i32 %137, i32* %47, align 4
  %138 = load i32, i32* %55, align 4
  store i32 %138, i32* %48, align 4
  %139 = load i32, i32* %55, align 4
  store i32 %139, i32* %49, align 4
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %20, align 8
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* %38, align 8
  %145 = load i64, i64* %40, align 8
  %146 = load i64, i64* %42, align 8
  %147 = load i64, i64* %43, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* %22, align 8
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* %38, align 8
  %154 = load i64, i64* %40, align 8
  %155 = load i64, i64* %44, align 8
  %156 = load i64, i64* %45, align 8
  %157 = call i32 @VSHF_B2_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %43, align 8
  %160 = load i64, i64* %44, align 8
  %161 = load i64, i64* %45, align 8
  %162 = load i32, i32* %36, align 4
  %163 = load i32, i32* %36, align 4
  %164 = load i32, i32* %36, align 4
  %165 = load i32, i32* %36, align 4
  %166 = load i32, i32* %46, align 4
  %167 = load i32, i32* %47, align 4
  %168 = load i32, i32* %48, align 4
  %169 = load i32, i32* %49, align 4
  %170 = call i32 @DPADD_SB4_SH(i64 %158, i64 %159, i64 %160, i64 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %20, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %39, align 8
  %176 = load i64, i64* %41, align 8
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %43, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %22, align 8
  %181 = load i64, i64* %22, align 8
  %182 = load i64, i64* %22, align 8
  %183 = load i64, i64* %23, align 8
  %184 = load i64, i64* %39, align 8
  %185 = load i64, i64* %41, align 8
  %186 = load i64, i64* %44, align 8
  %187 = load i64, i64* %45, align 8
  %188 = call i32 @VSHF_B2_SB(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = load i64, i64* %45, align 8
  %193 = load i32, i32* %37, align 4
  %194 = load i32, i32* %37, align 4
  %195 = load i32, i32* %37, align 4
  %196 = load i32, i32* %37, align 4
  %197 = load i32, i32* %46, align 4
  %198 = load i32, i32* %47, align 4
  %199 = load i32, i32* %48, align 4
  %200 = load i32, i32* %49, align 4
  %201 = call i32 @DPADD_SB4_SH(i64 %189, i64 %190, i64 %191, i64 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %55, align 4
  store i32 %202, i32* %50, align 4
  %203 = load i32, i32* %55, align 4
  store i32 %203, i32* %51, align 4
  %204 = load i32, i32* %55, align 4
  store i32 %204, i32* %52, align 4
  %205 = load i32, i32* %55, align 4
  store i32 %205, i32* %53, align 4
  %206 = load i64, i64* %24, align 8
  %207 = load i64, i64* %24, align 8
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %25, align 8
  %210 = load i64, i64* %38, align 8
  %211 = load i64, i64* %40, align 8
  %212 = load i64, i64* %42, align 8
  %213 = load i64, i64* %43, align 8
  %214 = call i32 @VSHF_B2_SB(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213)
  %215 = load i64, i64* %26, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %26, align 8
  %218 = load i64, i64* %27, align 8
  %219 = load i64, i64* %38, align 8
  %220 = load i64, i64* %40, align 8
  %221 = load i64, i64* %44, align 8
  %222 = load i64, i64* %45, align 8
  %223 = call i32 @VSHF_B2_SB(i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i64, i64* %42, align 8
  %225 = load i64, i64* %43, align 8
  %226 = load i64, i64* %44, align 8
  %227 = load i64, i64* %45, align 8
  %228 = load i32, i32* %36, align 4
  %229 = load i32, i32* %36, align 4
  %230 = load i32, i32* %36, align 4
  %231 = load i32, i32* %36, align 4
  %232 = load i32, i32* %50, align 4
  %233 = load i32, i32* %51, align 4
  %234 = load i32, i32* %52, align 4
  %235 = load i32, i32* %53, align 4
  %236 = call i32 @DPADD_SB4_SH(i64 %224, i64 %225, i64 %226, i64 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i64, i64* %24, align 8
  %238 = load i64, i64* %24, align 8
  %239 = load i64, i64* %24, align 8
  %240 = load i64, i64* %25, align 8
  %241 = load i64, i64* %39, align 8
  %242 = load i64, i64* %41, align 8
  %243 = load i64, i64* %42, align 8
  %244 = load i64, i64* %43, align 8
  %245 = call i32 @VSHF_B2_SB(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %26, align 8
  %247 = load i64, i64* %26, align 8
  %248 = load i64, i64* %26, align 8
  %249 = load i64, i64* %27, align 8
  %250 = load i64, i64* %39, align 8
  %251 = load i64, i64* %41, align 8
  %252 = load i64, i64* %44, align 8
  %253 = load i64, i64* %45, align 8
  %254 = call i32 @VSHF_B2_SB(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  %255 = load i64, i64* %42, align 8
  %256 = load i64, i64* %43, align 8
  %257 = load i64, i64* %44, align 8
  %258 = load i64, i64* %45, align 8
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %37, align 4
  %261 = load i32, i32* %37, align 4
  %262 = load i32, i32* %37, align 4
  %263 = load i32, i32* %50, align 4
  %264 = load i32, i32* %51, align 4
  %265 = load i32, i32* %52, align 4
  %266 = load i32, i32* %53, align 4
  %267 = call i32 @DPADD_SB4_SH(i64 %255, i64 %256, i64 %257, i64 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %28, align 4
  %269 = load i32, i32* %29, align 4
  %270 = load i32, i32* %30, align 4
  %271 = load i32, i32* %31, align 4
  %272 = load i32, i32* %46, align 4
  %273 = load i32, i32* %47, align 4
  %274 = load i32, i32* %48, align 4
  %275 = load i32, i32* %49, align 4
  %276 = load i32, i32* %46, align 4
  %277 = load i32, i32* %47, align 4
  %278 = load i32, i32* %48, align 4
  %279 = load i32, i32* %49, align 4
  %280 = call i32 @HEVC_BI_RND_CLIP4(i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 7, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %32, align 4
  %282 = load i32, i32* %33, align 4
  %283 = load i32, i32* %34, align 4
  %284 = load i32, i32* %35, align 4
  %285 = load i32, i32* %50, align 4
  %286 = load i32, i32* %51, align 4
  %287 = load i32, i32* %52, align 4
  %288 = load i32, i32* %53, align 4
  %289 = load i32, i32* %50, align 4
  %290 = load i32, i32* %51, align 4
  %291 = load i32, i32* %52, align 4
  %292 = load i32, i32* %53, align 4
  %293 = call i32 @HEVC_BI_RND_CLIP4(i32 %281, i32 %282, i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 7, i32 %289, i32 %290, i32 %291, i32 %292)
  %294 = load i32, i32* %47, align 4
  %295 = load i32, i32* %46, align 4
  %296 = load i32, i32* %49, align 4
  %297 = load i32, i32* %48, align 4
  %298 = load i32, i32* %51, align 4
  %299 = load i32, i32* %50, align 4
  %300 = load i32, i32* %53, align 4
  %301 = load i32, i32* %52, align 4
  %302 = load i32, i32* %46, align 4
  %303 = load i32, i32* %47, align 4
  %304 = load i32, i32* %48, align 4
  %305 = load i32, i32* %49, align 4
  %306 = call i32 @PCKEV_B4_SH(i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305)
  %307 = load i32, i32* %46, align 4
  %308 = load i32, i32* %47, align 4
  %309 = load i32, i32* %48, align 4
  %310 = load i32, i32* %49, align 4
  %311 = load i32*, i32** %13, align 8
  %312 = load i32, i32* %14, align 4
  %313 = call i32 @ST_SH4(i32 %307, i32 %308, i32 %309, i32 %310, i32* %311, i32 %312)
  %314 = load i32, i32* %14, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32*, i32** %13, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %13, align 8
  %319 = load i32*, i32** %17, align 8
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %28, align 4
  %322 = load i32, i32* %29, align 4
  %323 = load i32, i32* %30, align 4
  %324 = load i32, i32* %31, align 4
  %325 = call i32 @LD_SH4(i32* %319, i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  %326 = load i32, i32* %12, align 4
  %327 = mul nsw i32 4, %326
  %328 = load i32*, i32** %17, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %17, align 8
  %331 = load i32, i32* %55, align 4
  store i32 %331, i32* %46, align 4
  %332 = load i32, i32* %55, align 4
  store i32 %332, i32* %47, align 4
  %333 = load i32, i32* %55, align 4
  store i32 %333, i32* %48, align 4
  %334 = load i32, i32* %55, align 4
  store i32 %334, i32* %49, align 4
  %335 = load i64, i64* %21, align 8
  %336 = load i64, i64* %21, align 8
  %337 = load i64, i64* %23, align 8
  %338 = load i64, i64* %23, align 8
  %339 = load i64, i64* %38, align 8
  %340 = load i64, i64* %38, align 8
  %341 = load i64, i64* %42, align 8
  %342 = load i64, i64* %43, align 8
  %343 = call i32 @VSHF_B2_SB(i64 %335, i64 %336, i64 %337, i64 %338, i64 %339, i64 %340, i64 %341, i64 %342)
  %344 = load i64, i64* %25, align 8
  %345 = load i64, i64* %25, align 8
  %346 = load i64, i64* %27, align 8
  %347 = load i64, i64* %27, align 8
  %348 = load i64, i64* %38, align 8
  %349 = load i64, i64* %38, align 8
  %350 = load i64, i64* %44, align 8
  %351 = load i64, i64* %45, align 8
  %352 = call i32 @VSHF_B2_SB(i64 %344, i64 %345, i64 %346, i64 %347, i64 %348, i64 %349, i64 %350, i64 %351)
  %353 = load i64, i64* %42, align 8
  %354 = load i64, i64* %43, align 8
  %355 = load i64, i64* %44, align 8
  %356 = load i64, i64* %45, align 8
  %357 = load i32, i32* %36, align 4
  %358 = load i32, i32* %36, align 4
  %359 = load i32, i32* %36, align 4
  %360 = load i32, i32* %36, align 4
  %361 = load i32, i32* %46, align 4
  %362 = load i32, i32* %47, align 4
  %363 = load i32, i32* %48, align 4
  %364 = load i32, i32* %49, align 4
  %365 = call i32 @DPADD_SB4_SH(i64 %353, i64 %354, i64 %355, i64 %356, i32 %357, i32 %358, i32 %359, i32 %360, i32 %361, i32 %362, i32 %363, i32 %364)
  %366 = load i64, i64* %21, align 8
  %367 = load i64, i64* %21, align 8
  %368 = load i64, i64* %23, align 8
  %369 = load i64, i64* %23, align 8
  %370 = load i64, i64* %39, align 8
  %371 = load i64, i64* %39, align 8
  %372 = load i64, i64* %42, align 8
  %373 = load i64, i64* %43, align 8
  %374 = call i32 @VSHF_B2_SB(i64 %366, i64 %367, i64 %368, i64 %369, i64 %370, i64 %371, i64 %372, i64 %373)
  %375 = load i64, i64* %25, align 8
  %376 = load i64, i64* %25, align 8
  %377 = load i64, i64* %27, align 8
  %378 = load i64, i64* %27, align 8
  %379 = load i64, i64* %39, align 8
  %380 = load i64, i64* %39, align 8
  %381 = load i64, i64* %44, align 8
  %382 = load i64, i64* %45, align 8
  %383 = call i32 @VSHF_B2_SB(i64 %375, i64 %376, i64 %377, i64 %378, i64 %379, i64 %380, i64 %381, i64 %382)
  %384 = load i64, i64* %42, align 8
  %385 = load i64, i64* %43, align 8
  %386 = load i64, i64* %44, align 8
  %387 = load i64, i64* %45, align 8
  %388 = load i32, i32* %37, align 4
  %389 = load i32, i32* %37, align 4
  %390 = load i32, i32* %37, align 4
  %391 = load i32, i32* %37, align 4
  %392 = load i32, i32* %46, align 4
  %393 = load i32, i32* %47, align 4
  %394 = load i32, i32* %48, align 4
  %395 = load i32, i32* %49, align 4
  %396 = call i32 @DPADD_SB4_SH(i64 %384, i64 %385, i64 %386, i64 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394, i32 %395)
  %397 = load i32, i32* %28, align 4
  %398 = load i32, i32* %29, align 4
  %399 = load i32, i32* %30, align 4
  %400 = load i32, i32* %31, align 4
  %401 = load i32, i32* %46, align 4
  %402 = load i32, i32* %47, align 4
  %403 = load i32, i32* %48, align 4
  %404 = load i32, i32* %49, align 4
  %405 = load i32, i32* %46, align 4
  %406 = load i32, i32* %47, align 4
  %407 = load i32, i32* %48, align 4
  %408 = load i32, i32* %49, align 4
  %409 = call i32 @HEVC_BI_RND_CLIP4(i32 %397, i32 %398, i32 %399, i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 7, i32 %405, i32 %406, i32 %407, i32 %408)
  %410 = load i32, i32* %47, align 4
  %411 = load i32, i32* %46, align 4
  %412 = load i32, i32* %49, align 4
  %413 = load i32, i32* %48, align 4
  %414 = load i32, i32* %46, align 4
  %415 = load i32, i32* %47, align 4
  %416 = call i32 @PCKEV_B2_SH(i32 %410, i32 %411, i32 %412, i32 %413, i32 %414, i32 %415)
  %417 = load i32, i32* %46, align 4
  %418 = load i32, i32* %47, align 4
  %419 = load i32*, i32** %18, align 8
  %420 = load i32, i32* %14, align 4
  %421 = call i32 @ST_D4(i32 %417, i32 %418, i32 0, i32 1, i32 0, i32 1, i32* %419, i32 %420)
  %422 = load i32, i32* %14, align 4
  %423 = mul nsw i32 4, %422
  %424 = load i32*, i32** %18, align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %424, i64 %425
  store i32* %426, i32** %18, align 8
  br label %82

427:                                              ; preds = %82
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
