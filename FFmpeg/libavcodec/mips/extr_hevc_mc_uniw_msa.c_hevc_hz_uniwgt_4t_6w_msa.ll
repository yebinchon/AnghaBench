; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %57 = load i32, i32* @ff_hevc_mask_arr, align 4
  %58 = call i64 @LD_SB(i32 %57)
  store i64 %58, i64* %33, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 -1
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @LD_SH(i32* %61)
  store i32 %62, i32* %51, align 4
  %63 = load i32, i32* %51, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @SPLATI_H2_SH(i32 %63, i32 0, i32 1, i32 %64, i32 %65)
  %67 = load i32, i32* %16, align 4
  %68 = and i32 %67, 65535
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @__msa_fill_w(i32 %69)
  store i32 %70, i32* %55, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @__msa_fill_w(i32 %71)
  store i32 %72, i32* %56, align 4
  %73 = load i32, i32* %16, align 4
  %74 = mul nsw i32 %73, 128
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %18, align 4
  %76 = sub nsw i32 %75, 6
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @__msa_fill_h(i32 %77)
  store i32 %78, i32* %52, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @__msa_fill_h(i32 %79)
  store i32 %80, i32* %53, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @__msa_fill_h(i32 %81)
  store i32 %82, i32* %54, align 4
  %83 = load i32, i32* %52, align 4
  %84 = load i32, i32* %54, align 4
  %85 = call i32 @__msa_srar_h(i32 %83, i32 %84)
  store i32 %85, i32* %52, align 4
  %86 = load i32, i32* %53, align 4
  %87 = load i32, i32* %52, align 4
  %88 = call i32 @__msa_adds_s_h(i32 %86, i32 %87)
  store i32 %88, i32* %53, align 4
  %89 = load i64, i64* %33, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %34, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %26, align 8
  %95 = load i64, i64* %27, align 8
  %96 = load i64, i64* %28, align 8
  %97 = load i64, i64* %29, align 8
  %98 = load i64, i64* %30, align 8
  %99 = load i64, i64* %31, align 8
  %100 = load i64, i64* %32, align 8
  %101 = call i32 @LD_SB8(i32* %91, i32 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100)
  %102 = load i64, i64* %25, align 8
  %103 = load i64, i64* %26, align 8
  %104 = load i64, i64* %27, align 8
  %105 = load i64, i64* %28, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i64, i64* %30, align 8
  %108 = load i64, i64* %31, align 8
  %109 = load i64, i64* %32, align 8
  %110 = call i32 @XORI_B8_128_SB(i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i64, i64* %25, align 8
  %112 = load i64, i64* %25, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %25, align 8
  %115 = load i64, i64* %33, align 8
  %116 = load i64, i64* %34, align 8
  %117 = load i64, i64* %35, align 8
  %118 = load i64, i64* %36, align 8
  %119 = call i32 @VSHF_B2_SB(i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i64, i64* %26, align 8
  %121 = load i64, i64* %26, align 8
  %122 = load i64, i64* %26, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %33, align 8
  %125 = load i64, i64* %34, align 8
  %126 = load i64, i64* %37, align 8
  %127 = load i64, i64* %38, align 8
  %128 = call i32 @VSHF_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127)
  %129 = load i64, i64* %27, align 8
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %27, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %33, align 8
  %134 = load i64, i64* %34, align 8
  %135 = load i64, i64* %39, align 8
  %136 = load i64, i64* %40, align 8
  %137 = call i32 @VSHF_B2_SB(i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136)
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %28, align 8
  %140 = load i64, i64* %28, align 8
  %141 = load i64, i64* %28, align 8
  %142 = load i64, i64* %33, align 8
  %143 = load i64, i64* %34, align 8
  %144 = load i64, i64* %41, align 8
  %145 = load i64, i64* %42, align 8
  %146 = call i32 @VSHF_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %35, align 8
  %148 = load i64, i64* %36, align 8
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = call i32 @HEVC_FILT_4TAP_SH(i64 %147, i64 %148, i32 %149, i32 %150)
  store i32 %151, i32* %43, align 4
  %152 = load i64, i64* %37, align 8
  %153 = load i64, i64* %38, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @HEVC_FILT_4TAP_SH(i64 %152, i64 %153, i32 %154, i32 %155)
  store i32 %156, i32* %44, align 4
  %157 = load i64, i64* %39, align 8
  %158 = load i64, i64* %40, align 8
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @HEVC_FILT_4TAP_SH(i64 %157, i64 %158, i32 %159, i32 %160)
  store i32 %161, i32* %45, align 4
  %162 = load i64, i64* %41, align 8
  %163 = load i64, i64* %42, align 8
  %164 = load i32, i32* %23, align 4
  %165 = load i32, i32* %24, align 4
  %166 = call i32 @HEVC_FILT_4TAP_SH(i64 %162, i64 %163, i32 %164, i32 %165)
  store i32 %166, i32* %46, align 4
  %167 = load i64, i64* %29, align 8
  %168 = load i64, i64* %29, align 8
  %169 = load i64, i64* %29, align 8
  %170 = load i64, i64* %29, align 8
  %171 = load i64, i64* %33, align 8
  %172 = load i64, i64* %34, align 8
  %173 = load i64, i64* %35, align 8
  %174 = load i64, i64* %36, align 8
  %175 = call i32 @VSHF_B2_SB(i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* %30, align 8
  %178 = load i64, i64* %30, align 8
  %179 = load i64, i64* %30, align 8
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %34, align 8
  %182 = load i64, i64* %37, align 8
  %183 = load i64, i64* %38, align 8
  %184 = call i32 @VSHF_B2_SB(i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %31, align 8
  %186 = load i64, i64* %31, align 8
  %187 = load i64, i64* %31, align 8
  %188 = load i64, i64* %31, align 8
  %189 = load i64, i64* %33, align 8
  %190 = load i64, i64* %34, align 8
  %191 = load i64, i64* %39, align 8
  %192 = load i64, i64* %40, align 8
  %193 = call i32 @VSHF_B2_SB(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %32, align 8
  %195 = load i64, i64* %32, align 8
  %196 = load i64, i64* %32, align 8
  %197 = load i64, i64* %32, align 8
  %198 = load i64, i64* %33, align 8
  %199 = load i64, i64* %34, align 8
  %200 = load i64, i64* %41, align 8
  %201 = load i64, i64* %42, align 8
  %202 = call i32 @VSHF_B2_SB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i64, i64* %35, align 8
  %204 = load i64, i64* %36, align 8
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %24, align 4
  %207 = call i32 @HEVC_FILT_4TAP_SH(i64 %203, i64 %204, i32 %205, i32 %206)
  store i32 %207, i32* %47, align 4
  %208 = load i64, i64* %37, align 8
  %209 = load i64, i64* %38, align 8
  %210 = load i32, i32* %23, align 4
  %211 = load i32, i32* %24, align 4
  %212 = call i32 @HEVC_FILT_4TAP_SH(i64 %208, i64 %209, i32 %210, i32 %211)
  store i32 %212, i32* %48, align 4
  %213 = load i64, i64* %39, align 8
  %214 = load i64, i64* %40, align 8
  %215 = load i32, i32* %23, align 4
  %216 = load i32, i32* %24, align 4
  %217 = call i32 @HEVC_FILT_4TAP_SH(i64 %213, i64 %214, i32 %215, i32 %216)
  store i32 %217, i32* %49, align 4
  %218 = load i64, i64* %41, align 8
  %219 = load i64, i64* %42, align 8
  %220 = load i32, i32* %23, align 4
  %221 = load i32, i32* %24, align 4
  %222 = call i32 @HEVC_FILT_4TAP_SH(i64 %218, i64 %219, i32 %220, i32 %221)
  store i32 %222, i32* %50, align 4
  %223 = load i32, i32* %43, align 4
  %224 = load i32, i32* %44, align 4
  %225 = load i32, i32* %45, align 4
  %226 = load i32, i32* %46, align 4
  %227 = load i32, i32* %55, align 4
  %228 = load i32, i32* %53, align 4
  %229 = load i32, i32* %56, align 4
  %230 = load i32, i32* %43, align 4
  %231 = load i32, i32* %44, align 4
  %232 = load i32, i32* %45, align 4
  %233 = load i32, i32* %46, align 4
  %234 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %47, align 4
  %236 = load i32, i32* %48, align 4
  %237 = load i32, i32* %49, align 4
  %238 = load i32, i32* %50, align 4
  %239 = load i32, i32* %55, align 4
  %240 = load i32, i32* %53, align 4
  %241 = load i32, i32* %56, align 4
  %242 = load i32, i32* %47, align 4
  %243 = load i32, i32* %48, align 4
  %244 = load i32, i32* %49, align 4
  %245 = load i32, i32* %50, align 4
  %246 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  %247 = load i32, i32* %44, align 4
  %248 = load i32, i32* %43, align 4
  %249 = load i32, i32* %46, align 4
  %250 = load i32, i32* %45, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %20, align 4
  %253 = call i32 @PCKEV_B2_UB(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252)
  %254 = load i32, i32* %48, align 4
  %255 = load i32, i32* %47, align 4
  %256 = load i32, i32* %50, align 4
  %257 = load i32, i32* %49, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %22, align 4
  %260 = call i32 @PCKEV_B2_UB(i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %19, align 4
  %262 = load i32*, i32** %12, align 8
  %263 = load i32, i32* %13, align 4
  %264 = call i32 @ST_W2(i32 %261, i32 0, i32 2, i32* %262, i32 %263)
  %265 = load i32, i32* %19, align 4
  %266 = load i32*, i32** %12, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 4
  %268 = load i32, i32* %13, align 4
  %269 = call i32 @ST_H2(i32 %265, i32 2, i32 6, i32* %267, i32 %268)
  %270 = load i32, i32* %20, align 4
  %271 = load i32*, i32** %12, align 8
  %272 = load i32, i32* %13, align 4
  %273 = mul nsw i32 2, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %13, align 4
  %277 = call i32 @ST_W2(i32 %270, i32 0, i32 2, i32* %275, i32 %276)
  %278 = load i32, i32* %20, align 4
  %279 = load i32*, i32** %12, align 8
  %280 = load i32, i32* %13, align 4
  %281 = mul nsw i32 2, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  %284 = getelementptr inbounds i32, i32* %283, i64 4
  %285 = load i32, i32* %13, align 4
  %286 = call i32 @ST_H2(i32 %278, i32 2, i32 6, i32* %284, i32 %285)
  %287 = load i32, i32* %13, align 4
  %288 = mul nsw i32 4, %287
  %289 = load i32*, i32** %12, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  store i32* %291, i32** %12, align 8
  %292 = load i32, i32* %21, align 4
  %293 = load i32*, i32** %12, align 8
  %294 = load i32, i32* %13, align 4
  %295 = call i32 @ST_W2(i32 %292, i32 0, i32 2, i32* %293, i32 %294)
  %296 = load i32, i32* %21, align 4
  %297 = load i32*, i32** %12, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  %299 = load i32, i32* %13, align 4
  %300 = call i32 @ST_H2(i32 %296, i32 2, i32 6, i32* %298, i32 %299)
  %301 = load i32, i32* %22, align 4
  %302 = load i32*, i32** %12, align 8
  %303 = load i32, i32* %13, align 4
  %304 = mul nsw i32 2, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %13, align 4
  %308 = call i32 @ST_W2(i32 %301, i32 0, i32 2, i32* %306, i32 %307)
  %309 = load i32, i32* %22, align 4
  %310 = load i32*, i32** %12, align 8
  %311 = load i32, i32* %13, align 4
  %312 = mul nsw i32 2, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = getelementptr inbounds i32, i32* %314, i64 4
  %316 = load i32, i32* %13, align 4
  %317 = call i32 @ST_H2(i32 %309, i32 2, i32 6, i32* %315, i32 %316)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
