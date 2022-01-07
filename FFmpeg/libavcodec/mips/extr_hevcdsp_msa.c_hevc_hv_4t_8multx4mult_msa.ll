; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_8multx4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_8multx4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32)* @hevc_hv_4t_8multx4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_4t_8multx4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7) #0 {
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
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
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
  %70 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %71 = load i32, i32* @ff_hevc_mask_arr, align 4
  %72 = call i64 @LD_SB(i32 %71)
  store i64 %72, i64* %32, align 8
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32*, i32** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32* %78, i32** %9, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @LD_SH(i32* %79)
  store i32 %80, i32* %34, align 4
  %81 = load i32, i32* %34, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %29, align 4
  %84 = call i32 @SPLATI_H2_SH(i32 %81, i32 0, i32 1, i32 %82, i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @LD_SH(i32* %85)
  store i32 %86, i32* %34, align 4
  %87 = load i32, i32* %34, align 4
  %88 = load i32, i32* %34, align 4
  %89 = call i32 @UNPCK_R_SB_SH(i32 %87, i32 %88)
  %90 = load i32, i32* %34, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %31, align 4
  %93 = call i32 @SPLATI_W2_SH(i32 %90, i32 0, i32 %91, i32 %92)
  %94 = load i64, i64* %32, align 8
  %95 = add nsw i64 %94, 2
  store i64 %95, i64* %33, align 8
  %96 = call i32 @__msa_ldi_h(i32 128)
  store i32 %96, i32* %35, align 4
  %97 = load i32, i32* %35, align 4
  %98 = shl i32 %97, 6
  store i32 %98, i32* %35, align 4
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %18, align 4
  br label %100

100:                                              ; preds = %375, %8
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %18, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %380

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  store i32* %105, i32** %19, align 8
  %106 = load i32*, i32** %11, align 8
  store i32* %106, i32** %20, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i64, i64* %21, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = call i32 @LD_SB3(i32* %107, i32 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 3, %113
  %115 = load i32*, i32** %19, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %19, align 8
  %118 = load i64, i64* %21, align 8
  %119 = load i64, i64* %22, align 8
  %120 = load i64, i64* %23, align 8
  %121 = call i32 @XORI_B3_128_SB(i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %21, align 8
  %123 = load i64, i64* %21, align 8
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %32, align 8
  %127 = load i64, i64* %33, align 8
  %128 = load i64, i64* %36, align 8
  %129 = load i64, i64* %37, align 8
  %130 = call i32 @VSHF_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %22, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i64, i64* %22, align 8
  %134 = load i64, i64* %22, align 8
  %135 = load i64, i64* %32, align 8
  %136 = load i64, i64* %33, align 8
  %137 = load i64, i64* %38, align 8
  %138 = load i64, i64* %39, align 8
  %139 = call i32 @VSHF_B2_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %23, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load i64, i64* %32, align 8
  %145 = load i64, i64* %33, align 8
  %146 = load i64, i64* %40, align 8
  %147 = load i64, i64* %41, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i32, i32* %35, align 4
  store i32 %149, i32* %44, align 4
  %150 = load i64, i64* %36, align 8
  %151 = load i64, i64* %37, align 8
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %29, align 4
  %154 = load i32, i32* %44, align 4
  %155 = load i32, i32* %44, align 4
  %156 = call i32 @DPADD_SB2_SH(i64 %150, i64 %151, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %35, align 4
  store i32 %157, i32* %45, align 4
  %158 = load i64, i64* %38, align 8
  %159 = load i64, i64* %39, align 8
  %160 = load i32, i32* %28, align 4
  %161 = load i32, i32* %29, align 4
  %162 = load i32, i32* %45, align 4
  %163 = load i32, i32* %45, align 4
  %164 = call i32 @DPADD_SB2_SH(i64 %158, i64 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %35, align 4
  store i32 %165, i32* %46, align 4
  %166 = load i64, i64* %40, align 8
  %167 = load i64, i64* %41, align 8
  %168 = load i32, i32* %28, align 4
  %169 = load i32, i32* %29, align 4
  %170 = load i32, i32* %46, align 4
  %171 = load i32, i32* %46, align 4
  %172 = call i32 @DPADD_SB2_SH(i64 %166, i64 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %45, align 4
  %174 = load i32, i32* %44, align 4
  %175 = load i32, i32* %59, align 4
  %176 = load i32, i32* %65, align 4
  %177 = call i32 @ILVRL_H2_SH(i32 %173, i32 %174, i32 %175, i32 %176)
  %178 = load i32, i32* %46, align 4
  %179 = load i32, i32* %45, align 4
  %180 = load i32, i32* %62, align 4
  %181 = load i32, i32* %68, align 4
  %182 = call i32 @ILVRL_H2_SH(i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %15, align 4
  %184 = ashr i32 %183, 2
  store i32 %184, i32* %17, align 4
  br label %185

185:                                              ; preds = %189, %104
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %17, align 4
  %188 = icmp ne i32 %186, 0
  br i1 %188, label %189, label %375

189:                                              ; preds = %185
  %190 = load i32*, i32** %19, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load i64, i64* %24, align 8
  %193 = load i64, i64* %25, align 8
  %194 = load i64, i64* %26, align 8
  %195 = load i64, i64* %27, align 8
  %196 = call i32 @LD_SB4(i32* %190, i32 %191, i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i32, i32* %10, align 4
  %198 = mul nsw i32 4, %197
  %199 = load i32*, i32** %19, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %19, align 8
  %202 = load i64, i64* %24, align 8
  %203 = load i64, i64* %25, align 8
  %204 = load i64, i64* %26, align 8
  %205 = load i64, i64* %27, align 8
  %206 = call i32 @XORI_B4_128_SB(i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %24, align 8
  %208 = load i64, i64* %24, align 8
  %209 = load i64, i64* %24, align 8
  %210 = load i64, i64* %24, align 8
  %211 = load i64, i64* %32, align 8
  %212 = load i64, i64* %33, align 8
  %213 = load i64, i64* %36, align 8
  %214 = load i64, i64* %37, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %25, align 8
  %217 = load i64, i64* %25, align 8
  %218 = load i64, i64* %25, align 8
  %219 = load i64, i64* %25, align 8
  %220 = load i64, i64* %32, align 8
  %221 = load i64, i64* %33, align 8
  %222 = load i64, i64* %38, align 8
  %223 = load i64, i64* %39, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %26, align 8
  %226 = load i64, i64* %26, align 8
  %227 = load i64, i64* %26, align 8
  %228 = load i64, i64* %26, align 8
  %229 = load i64, i64* %32, align 8
  %230 = load i64, i64* %33, align 8
  %231 = load i64, i64* %40, align 8
  %232 = load i64, i64* %41, align 8
  %233 = call i32 @VSHF_B2_SB(i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232)
  %234 = load i64, i64* %27, align 8
  %235 = load i64, i64* %27, align 8
  %236 = load i64, i64* %27, align 8
  %237 = load i64, i64* %27, align 8
  %238 = load i64, i64* %32, align 8
  %239 = load i64, i64* %33, align 8
  %240 = load i64, i64* %42, align 8
  %241 = load i64, i64* %43, align 8
  %242 = call i32 @VSHF_B2_SB(i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241)
  %243 = load i32, i32* %35, align 4
  store i32 %243, i32* %47, align 4
  %244 = load i32, i32* %35, align 4
  store i32 %244, i32* %48, align 4
  %245 = load i32, i32* %35, align 4
  store i32 %245, i32* %49, align 4
  %246 = load i32, i32* %35, align 4
  store i32 %246, i32* %50, align 4
  %247 = load i64, i64* %36, align 8
  %248 = load i64, i64* %37, align 8
  %249 = load i32, i32* %28, align 4
  %250 = load i32, i32* %29, align 4
  %251 = load i32, i32* %47, align 4
  %252 = load i32, i32* %47, align 4
  %253 = call i32 @DPADD_SB2_SH(i64 %247, i64 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i64, i64* %38, align 8
  %255 = load i64, i64* %39, align 8
  %256 = load i32, i32* %28, align 4
  %257 = load i32, i32* %29, align 4
  %258 = load i32, i32* %48, align 4
  %259 = load i32, i32* %48, align 4
  %260 = call i32 @DPADD_SB2_SH(i64 %254, i64 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i64, i64* %40, align 8
  %262 = load i64, i64* %41, align 8
  %263 = load i32, i32* %28, align 4
  %264 = load i32, i32* %29, align 4
  %265 = load i32, i32* %49, align 4
  %266 = load i32, i32* %49, align 4
  %267 = call i32 @DPADD_SB2_SH(i64 %261, i64 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i64, i64* %42, align 8
  %269 = load i64, i64* %43, align 8
  %270 = load i32, i32* %28, align 4
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %50, align 4
  %273 = load i32, i32* %50, align 4
  %274 = call i32 @DPADD_SB2_SH(i64 %268, i64 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %47, align 4
  %276 = load i32, i32* %46, align 4
  %277 = load i32, i32* %60, align 4
  %278 = load i32, i32* %66, align 4
  %279 = call i32 @ILVRL_H2_SH(i32 %275, i32 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %48, align 4
  %281 = load i32, i32* %47, align 4
  %282 = load i32, i32* %63, align 4
  %283 = load i32, i32* %69, align 4
  %284 = call i32 @ILVRL_H2_SH(i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %49, align 4
  %286 = load i32, i32* %48, align 4
  %287 = load i32, i32* %61, align 4
  %288 = load i32, i32* %67, align 4
  %289 = call i32 @ILVRL_H2_SH(i32 %285, i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %50, align 4
  %291 = load i32, i32* %49, align 4
  %292 = load i32, i32* %64, align 4
  %293 = load i32, i32* %70, align 4
  %294 = call i32 @ILVRL_H2_SH(i32 %290, i32 %291, i32 %292, i32 %293)
  %295 = load i32, i32* %59, align 4
  %296 = load i32, i32* %60, align 4
  %297 = load i32, i32* %30, align 4
  %298 = load i32, i32* %31, align 4
  %299 = call i32 @HEVC_FILT_4TAP(i32 %295, i32 %296, i32 %297, i32 %298)
  store i32 %299, i32* %51, align 4
  %300 = load i32, i32* %65, align 4
  %301 = load i32, i32* %66, align 4
  %302 = load i32, i32* %30, align 4
  %303 = load i32, i32* %31, align 4
  %304 = call i32 @HEVC_FILT_4TAP(i32 %300, i32 %301, i32 %302, i32 %303)
  store i32 %304, i32* %52, align 4
  %305 = load i32, i32* %62, align 4
  %306 = load i32, i32* %63, align 4
  %307 = load i32, i32* %30, align 4
  %308 = load i32, i32* %31, align 4
  %309 = call i32 @HEVC_FILT_4TAP(i32 %305, i32 %306, i32 %307, i32 %308)
  store i32 %309, i32* %53, align 4
  %310 = load i32, i32* %68, align 4
  %311 = load i32, i32* %69, align 4
  %312 = load i32, i32* %30, align 4
  %313 = load i32, i32* %31, align 4
  %314 = call i32 @HEVC_FILT_4TAP(i32 %310, i32 %311, i32 %312, i32 %313)
  store i32 %314, i32* %54, align 4
  %315 = load i32, i32* %60, align 4
  %316 = load i32, i32* %61, align 4
  %317 = load i32, i32* %30, align 4
  %318 = load i32, i32* %31, align 4
  %319 = call i32 @HEVC_FILT_4TAP(i32 %315, i32 %316, i32 %317, i32 %318)
  store i32 %319, i32* %55, align 4
  %320 = load i32, i32* %66, align 4
  %321 = load i32, i32* %67, align 4
  %322 = load i32, i32* %30, align 4
  %323 = load i32, i32* %31, align 4
  %324 = call i32 @HEVC_FILT_4TAP(i32 %320, i32 %321, i32 %322, i32 %323)
  store i32 %324, i32* %56, align 4
  %325 = load i32, i32* %63, align 4
  %326 = load i32, i32* %64, align 4
  %327 = load i32, i32* %30, align 4
  %328 = load i32, i32* %31, align 4
  %329 = call i32 @HEVC_FILT_4TAP(i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %57, align 4
  %330 = load i32, i32* %69, align 4
  %331 = load i32, i32* %70, align 4
  %332 = load i32, i32* %30, align 4
  %333 = load i32, i32* %31, align 4
  %334 = call i32 @HEVC_FILT_4TAP(i32 %330, i32 %331, i32 %332, i32 %333)
  store i32 %334, i32* %58, align 4
  %335 = load i32, i32* %51, align 4
  %336 = load i32, i32* %52, align 4
  %337 = load i32, i32* %53, align 4
  %338 = load i32, i32* %54, align 4
  %339 = call i32 @SRA_4V(i32 %335, i32 %336, i32 %337, i32 %338, i32 6)
  %340 = load i32, i32* %55, align 4
  %341 = load i32, i32* %56, align 4
  %342 = load i32, i32* %57, align 4
  %343 = load i32, i32* %58, align 4
  %344 = call i32 @SRA_4V(i32 %340, i32 %341, i32 %342, i32 %343, i32 6)
  %345 = load i32, i32* %52, align 4
  %346 = load i32, i32* %51, align 4
  %347 = load i32, i32* %54, align 4
  %348 = load i32, i32* %53, align 4
  %349 = load i32, i32* %56, align 4
  %350 = load i32, i32* %55, align 4
  %351 = load i32, i32* %58, align 4
  %352 = load i32, i32* %57, align 4
  %353 = load i32, i32* %51, align 4
  %354 = load i32, i32* %53, align 4
  %355 = load i32, i32* %55, align 4
  %356 = load i32, i32* %57, align 4
  %357 = call i32 @PCKEV_H4_SW(i32 %345, i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load i32, i32* %51, align 4
  %359 = load i32, i32* %53, align 4
  %360 = load i32, i32* %55, align 4
  %361 = load i32, i32* %57, align 4
  %362 = load i32*, i32** %20, align 8
  %363 = load i32, i32* %12, align 4
  %364 = call i32 @ST_SW4(i32 %358, i32 %359, i32 %360, i32 %361, i32* %362, i32 %363)
  %365 = load i32, i32* %12, align 4
  %366 = mul nsw i32 4, %365
  %367 = load i32*, i32** %20, align 8
  %368 = sext i32 %366 to i64
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  store i32* %369, i32** %20, align 8
  %370 = load i32, i32* %61, align 4
  store i32 %370, i32* %59, align 4
  %371 = load i32, i32* %67, align 4
  store i32 %371, i32* %65, align 4
  %372 = load i32, i32* %64, align 4
  store i32 %372, i32* %62, align 4
  %373 = load i32, i32* %70, align 4
  store i32 %373, i32* %68, align 4
  %374 = load i32, i32* %50, align 4
  store i32 %374, i32* %46, align 4
  br label %185

375:                                              ; preds = %185
  %376 = load i32*, i32** %9, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 8
  store i32* %377, i32** %9, align 8
  %378 = load i32*, i32** %11, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 8
  store i32* %379, i32** %11, align 8
  br label %100

380:                                              ; preds = %100
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SW4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
