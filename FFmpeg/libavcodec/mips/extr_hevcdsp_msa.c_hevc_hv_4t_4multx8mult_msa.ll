; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_4multx8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hv_4t_4multx8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @hevc_hv_4t_4multx8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_4t_4multx8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
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
  %43 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %68 = load i64, i64* @ff_hevc_mask_arr, align 8
  %69 = add nsw i64 %68, 16
  %70 = call i64 @LD_SB(i64 %69)
  store i64 %70, i64* %31, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32*, i32** %8, align 8
  %74 = sext i32 %72 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32* %76, i32** %8, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @LD_SH(i32* %77)
  store i32 %78, i32* %33, align 4
  %79 = load i32, i32* %33, align 4
  %80 = load i32, i32* %27, align 4
  %81 = load i32, i32* %28, align 4
  %82 = call i32 @SPLATI_H2_SH(i32 %79, i32 0, i32 1, i32 %80, i32 %81)
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @LD_SH(i32* %83)
  store i32 %84, i32* %33, align 4
  %85 = load i32, i32* %33, align 4
  %86 = load i32, i32* %33, align 4
  %87 = call i32 @UNPCK_R_SB_SH(i32 %85, i32 %86)
  %88 = load i32, i32* %33, align 4
  %89 = load i32, i32* %29, align 4
  %90 = load i32, i32* %30, align 4
  %91 = call i32 @SPLATI_W2_SH(i32 %88, i32 0, i32 %89, i32 %90)
  %92 = load i64, i64* %31, align 8
  %93 = add nsw i64 %92, 2
  store i64 %93, i64* %32, align 8
  %94 = call i32 @__msa_ldi_h(i32 128)
  store i32 %94, i32* %34, align 4
  %95 = load i32, i32* %34, align 4
  %96 = shl i32 %95, 6
  store i32 %96, i32* %34, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %18, align 8
  %102 = call i32 @LD_SB3(i32* %97, i32 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32, i32* %9, align 4
  %104 = mul nsw i32 3, %103
  %105 = load i32*, i32** %8, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %8, align 8
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call i32 @XORI_B3_128_SB(i64 %108, i64 %109, i64 %110)
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* %35, align 8
  %119 = load i64, i64* %36, align 8
  %120 = call i32 @VSHF_B2_SB(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %17, align 8
  %122 = load i64, i64* %18, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* %31, align 8
  %126 = load i64, i64* %32, align 8
  %127 = load i64, i64* %37, align 8
  %128 = load i64, i64* %38, align 8
  %129 = call i32 @VSHF_B2_SB(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i32, i32* %34, align 4
  store i32 %130, i32* %43, align 4
  %131 = load i64, i64* %35, align 8
  %132 = load i64, i64* %36, align 8
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* %43, align 4
  %136 = load i32, i32* %43, align 4
  %137 = call i32 @DPADD_SB2_SH(i64 %131, i64 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %34, align 4
  store i32 %138, i32* %44, align 4
  %139 = load i64, i64* %37, align 8
  %140 = load i64, i64* %38, align 8
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* %44, align 4
  %144 = load i32, i32* %44, align 4
  %145 = call i32 @DPADD_SB2_SH(i64 %139, i64 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %44, align 4
  %147 = load i32, i32* %43, align 4
  %148 = load i32, i32* %50, align 4
  %149 = load i32, i32* %55, align 4
  %150 = call i32 @ILVRL_H2_SH(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %44, align 4
  %152 = call i64 @__msa_splati_d(i32 %151, i32 1)
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %45, align 4
  %154 = load i32, i32* %14, align 4
  %155 = ashr i32 %154, 3
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %160, %7
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %15, align 4
  %159 = icmp ne i32 %157, 0
  br i1 %159, label %160, label %358

160:                                              ; preds = %156
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %20, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %22, align 8
  %167 = load i64, i64* %23, align 8
  %168 = load i64, i64* %24, align 8
  %169 = load i64, i64* %25, align 8
  %170 = load i64, i64* %26, align 8
  %171 = call i32 @LD_SB8(i32* %161, i32 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 8, %172
  %174 = load i32*, i32** %8, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %8, align 8
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %21, align 8
  %180 = load i64, i64* %22, align 8
  %181 = load i64, i64* %23, align 8
  %182 = load i64, i64* %24, align 8
  %183 = load i64, i64* %25, align 8
  %184 = load i64, i64* %26, align 8
  %185 = call i32 @XORI_B8_128_SB(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* %23, align 8
  %188 = load i64, i64* %19, align 8
  %189 = load i64, i64* %23, align 8
  %190 = load i64, i64* %31, align 8
  %191 = load i64, i64* %32, align 8
  %192 = load i64, i64* %35, align 8
  %193 = load i64, i64* %36, align 8
  %194 = call i32 @VSHF_B2_SB(i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %20, align 8
  %196 = load i64, i64* %24, align 8
  %197 = load i64, i64* %20, align 8
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %31, align 8
  %200 = load i64, i64* %32, align 8
  %201 = load i64, i64* %37, align 8
  %202 = load i64, i64* %38, align 8
  %203 = call i32 @VSHF_B2_SB(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %21, align 8
  %207 = load i64, i64* %25, align 8
  %208 = load i64, i64* %31, align 8
  %209 = load i64, i64* %32, align 8
  %210 = load i64, i64* %39, align 8
  %211 = load i64, i64* %40, align 8
  %212 = call i32 @VSHF_B2_SB(i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211)
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* %26, align 8
  %215 = load i64, i64* %22, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %31, align 8
  %218 = load i64, i64* %32, align 8
  %219 = load i64, i64* %41, align 8
  %220 = load i64, i64* %42, align 8
  %221 = call i32 @VSHF_B2_SB(i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220)
  %222 = load i32, i32* %34, align 4
  store i32 %222, i32* %46, align 4
  %223 = load i32, i32* %34, align 4
  store i32 %223, i32* %47, align 4
  %224 = load i32, i32* %34, align 4
  store i32 %224, i32* %48, align 4
  %225 = load i32, i32* %34, align 4
  store i32 %225, i32* %49, align 4
  %226 = load i64, i64* %35, align 8
  %227 = load i64, i64* %36, align 8
  %228 = load i32, i32* %27, align 4
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* %46, align 4
  %231 = load i32, i32* %46, align 4
  %232 = call i32 @DPADD_SB2_SH(i64 %226, i64 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i64, i64* %37, align 8
  %234 = load i64, i64* %38, align 8
  %235 = load i32, i32* %27, align 4
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* %47, align 4
  %238 = load i32, i32* %47, align 4
  %239 = call i32 @DPADD_SB2_SH(i64 %233, i64 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i64, i64* %39, align 8
  %241 = load i64, i64* %40, align 8
  %242 = load i32, i32* %27, align 4
  %243 = load i32, i32* %28, align 4
  %244 = load i32, i32* %48, align 4
  %245 = load i32, i32* %48, align 4
  %246 = call i32 @DPADD_SB2_SH(i64 %240, i64 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i64, i64* %41, align 8
  %248 = load i64, i64* %42, align 8
  %249 = load i32, i32* %27, align 4
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* %49, align 4
  %252 = load i32, i32* %49, align 4
  %253 = call i32 @DPADD_SB2_SH(i64 %247, i64 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %46, align 4
  %255 = load i32, i32* %45, align 4
  %256 = call i32 @__msa_ilvr_h(i32 %254, i32 %255)
  store i32 %256, i32* %51, align 4
  %257 = load i32, i32* %47, align 4
  %258 = load i32, i32* %46, align 4
  %259 = load i32, i32* %56, align 4
  %260 = load i32, i32* %58, align 4
  %261 = call i32 @ILVRL_H2_SH(i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %48, align 4
  %263 = load i32, i32* %47, align 4
  %264 = load i32, i32* %52, align 4
  %265 = load i32, i32* %54, align 4
  %266 = call i32 @ILVRL_H2_SH(i32 %262, i32 %263, i32 %264, i32 %265)
  %267 = load i32, i32* %49, align 4
  %268 = load i32, i32* %48, align 4
  %269 = load i32, i32* %57, align 4
  %270 = load i32, i32* %59, align 4
  %271 = call i32 @ILVRL_H2_SH(i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load i32, i32* %46, align 4
  %273 = call i64 @__msa_splati_d(i32 %272, i32 1)
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %45, align 4
  %275 = load i32, i32* %45, align 4
  %276 = load i32, i32* %49, align 4
  %277 = call i32 @__msa_ilvr_h(i32 %275, i32 %276)
  store i32 %277, i32* %53, align 4
  %278 = load i32, i32* %50, align 4
  %279 = load i32, i32* %51, align 4
  %280 = load i32, i32* %29, align 4
  %281 = load i32, i32* %30, align 4
  %282 = call i32 @HEVC_FILT_4TAP(i32 %278, i32 %279, i32 %280, i32 %281)
  store i32 %282, i32* %60, align 4
  %283 = load i32, i32* %55, align 4
  %284 = load i32, i32* %56, align 4
  %285 = load i32, i32* %29, align 4
  %286 = load i32, i32* %30, align 4
  %287 = call i32 @HEVC_FILT_4TAP(i32 %283, i32 %284, i32 %285, i32 %286)
  store i32 %287, i32* %61, align 4
  %288 = load i32, i32* %51, align 4
  %289 = load i32, i32* %52, align 4
  %290 = load i32, i32* %29, align 4
  %291 = load i32, i32* %30, align 4
  %292 = call i32 @HEVC_FILT_4TAP(i32 %288, i32 %289, i32 %290, i32 %291)
  store i32 %292, i32* %62, align 4
  %293 = load i32, i32* %56, align 4
  %294 = load i32, i32* %57, align 4
  %295 = load i32, i32* %29, align 4
  %296 = load i32, i32* %30, align 4
  %297 = call i32 @HEVC_FILT_4TAP(i32 %293, i32 %294, i32 %295, i32 %296)
  store i32 %297, i32* %63, align 4
  %298 = load i32, i32* %52, align 4
  %299 = load i32, i32* %53, align 4
  %300 = load i32, i32* %29, align 4
  %301 = load i32, i32* %30, align 4
  %302 = call i32 @HEVC_FILT_4TAP(i32 %298, i32 %299, i32 %300, i32 %301)
  store i32 %302, i32* %64, align 4
  %303 = load i32, i32* %57, align 4
  %304 = load i32, i32* %58, align 4
  %305 = load i32, i32* %29, align 4
  %306 = load i32, i32* %30, align 4
  %307 = call i32 @HEVC_FILT_4TAP(i32 %303, i32 %304, i32 %305, i32 %306)
  store i32 %307, i32* %65, align 4
  %308 = load i32, i32* %53, align 4
  %309 = load i32, i32* %54, align 4
  %310 = load i32, i32* %29, align 4
  %311 = load i32, i32* %30, align 4
  %312 = call i32 @HEVC_FILT_4TAP(i32 %308, i32 %309, i32 %310, i32 %311)
  store i32 %312, i32* %66, align 4
  %313 = load i32, i32* %58, align 4
  %314 = load i32, i32* %59, align 4
  %315 = load i32, i32* %29, align 4
  %316 = load i32, i32* %30, align 4
  %317 = call i32 @HEVC_FILT_4TAP(i32 %313, i32 %314, i32 %315, i32 %316)
  store i32 %317, i32* %67, align 4
  %318 = load i32, i32* %60, align 4
  %319 = load i32, i32* %61, align 4
  %320 = load i32, i32* %62, align 4
  %321 = load i32, i32* %63, align 4
  %322 = call i32 @SRA_4V(i32 %318, i32 %319, i32 %320, i32 %321, i32 6)
  %323 = load i32, i32* %64, align 4
  %324 = load i32, i32* %65, align 4
  %325 = load i32, i32* %66, align 4
  %326 = load i32, i32* %67, align 4
  %327 = call i32 @SRA_4V(i32 %323, i32 %324, i32 %325, i32 %326, i32 6)
  %328 = load i32, i32* %61, align 4
  %329 = load i32, i32* %60, align 4
  %330 = load i32, i32* %63, align 4
  %331 = load i32, i32* %62, align 4
  %332 = load i32, i32* %65, align 4
  %333 = load i32, i32* %64, align 4
  %334 = load i32, i32* %67, align 4
  %335 = load i32, i32* %66, align 4
  %336 = load i32, i32* %60, align 4
  %337 = load i32, i32* %61, align 4
  %338 = load i32, i32* %62, align 4
  %339 = load i32, i32* %63, align 4
  %340 = call i32 @PCKEV_H4_SW(i32 %328, i32 %329, i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339)
  %341 = load i32, i32* %60, align 4
  %342 = load i32, i32* %61, align 4
  %343 = load i32, i32* %62, align 4
  %344 = load i32, i32* %63, align 4
  %345 = load i32*, i32** %10, align 8
  %346 = load i32, i32* %11, align 4
  %347 = call i32 @ST_D8(i32 %341, i32 %342, i32 %343, i32 %344, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %345, i32 %346)
  %348 = load i32, i32* %11, align 4
  %349 = mul nsw i32 8, %348
  %350 = load i32*, i32** %10, align 8
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32* %352, i32** %10, align 8
  %353 = load i32, i32* %54, align 4
  store i32 %353, i32* %50, align 4
  %354 = load i32, i32* %59, align 4
  store i32 %354, i32* %55, align 4
  %355 = load i32, i32* %49, align 4
  %356 = call i64 @__msa_splati_d(i32 %355, i32 1)
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %45, align 4
  br label %156

358:                                              ; preds = %156
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

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

declare dso_local i64 @__msa_splati_d(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_ilvr_h(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H4_SW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
