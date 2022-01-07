; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %58 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i64 @LD_SB(i32* %59)
  store i64 %60, i64* %32, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -1
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @LD_SH(i32* %63)
  store i32 %64, i32* %52, align 4
  %65 = load i32, i32* %52, align 4
  %66 = load i32, i32* %30, align 4
  %67 = load i32, i32* %31, align 4
  %68 = call i32 @SPLATI_H2_SH(i32 %65, i32 0, i32 1, i32 %66, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @__msa_fill_w(i32 %71)
  store i32 %72, i32* %56, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @__msa_fill_w(i32 %73)
  store i32 %74, i32* %57, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %75, 128
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %77, 6
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @__msa_fill_h(i32 %79)
  store i32 %80, i32* %53, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @__msa_fill_h(i32 %81)
  store i32 %82, i32* %54, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @__msa_fill_h(i32 %83)
  store i32 %84, i32* %55, align 4
  %85 = load i32, i32* %53, align 4
  %86 = load i32, i32* %55, align 4
  %87 = call i32 @__msa_srar_h(i32 %85, i32 %86)
  store i32 %87, i32* %53, align 4
  %88 = load i32, i32* %54, align 4
  %89 = load i32, i32* %53, align 4
  %90 = call i32 @__msa_adds_s_h(i32 %88, i32 %89)
  store i32 %90, i32* %54, align 4
  %91 = load i64, i64* %32, align 8
  %92 = add nsw i64 %91, 2
  store i64 %92, i64* %33, align 8
  %93 = load i64, i64* %32, align 8
  %94 = add nsw i64 %93, 8
  store i64 %94, i64* %34, align 8
  %95 = load i64, i64* %32, align 8
  %96 = add nsw i64 %95, 10
  store i64 %96, i64* %35, align 8
  %97 = load i32, i32* %15, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %103, %9
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %19, align 4
  %102 = icmp ne i32 %100, 0
  br i1 %102, label %103, label %299

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %25, align 8
  %107 = call i32 @LD_SB2(i32* %104, i32 16, i64 %105, i64 %106)
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 24
  %110 = call i64 @LD_SB(i32* %109)
  store i64 %110, i64* %26, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %10, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i64, i64* %27, align 8
  %117 = load i64, i64* %28, align 8
  %118 = call i32 @LD_SB2(i32* %115, i32 16, i64 %116, i64 %117)
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 24
  %121 = call i64 @LD_SB(i32* %120)
  store i64 %121, i64* %29, align 8
  %122 = load i32, i32* %11, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %10, align 8
  %126 = load i64, i64* %24, align 8
  %127 = load i64, i64* %25, align 8
  %128 = load i64, i64* %26, align 8
  %129 = load i64, i64* %27, align 8
  %130 = load i64, i64* %28, align 8
  %131 = load i64, i64* %29, align 8
  %132 = call i32 @XORI_B6_128_SB(i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %24, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %32, align 8
  %138 = load i64, i64* %33, align 8
  %139 = load i64, i64* %36, align 8
  %140 = load i64, i64* %37, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %24, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %34, align 8
  %147 = load i64, i64* %35, align 8
  %148 = load i64, i64* %38, align 8
  %149 = load i64, i64* %39, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %25, align 8
  %152 = load i64, i64* %25, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load i64, i64* %25, align 8
  %155 = load i64, i64* %32, align 8
  %156 = load i64, i64* %33, align 8
  %157 = load i64, i64* %40, align 8
  %158 = load i64, i64* %41, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %26, align 8
  %161 = load i64, i64* %26, align 8
  %162 = load i64, i64* %26, align 8
  %163 = load i64, i64* %26, align 8
  %164 = load i64, i64* %32, align 8
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %42, align 8
  %167 = load i64, i64* %43, align 8
  %168 = call i32 @VSHF_B2_SB(i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %36, align 8
  %170 = load i64, i64* %37, align 8
  %171 = load i32, i32* %30, align 4
  %172 = load i32, i32* %31, align 4
  %173 = call i32 @HEVC_FILT_4TAP_SH(i64 %169, i64 %170, i32 %171, i32 %172)
  store i32 %173, i32* %44, align 4
  %174 = load i64, i64* %38, align 8
  %175 = load i64, i64* %39, align 8
  %176 = load i32, i32* %30, align 4
  %177 = load i32, i32* %31, align 4
  %178 = call i32 @HEVC_FILT_4TAP_SH(i64 %174, i64 %175, i32 %176, i32 %177)
  store i32 %178, i32* %45, align 4
  %179 = load i64, i64* %40, align 8
  %180 = load i64, i64* %41, align 8
  %181 = load i32, i32* %30, align 4
  %182 = load i32, i32* %31, align 4
  %183 = call i32 @HEVC_FILT_4TAP_SH(i64 %179, i64 %180, i32 %181, i32 %182)
  store i32 %183, i32* %46, align 4
  %184 = load i64, i64* %42, align 8
  %185 = load i64, i64* %43, align 8
  %186 = load i32, i32* %30, align 4
  %187 = load i32, i32* %31, align 4
  %188 = call i32 @HEVC_FILT_4TAP_SH(i64 %184, i64 %185, i32 %186, i32 %187)
  store i32 %188, i32* %47, align 4
  %189 = load i64, i64* %27, align 8
  %190 = load i64, i64* %27, align 8
  %191 = load i64, i64* %27, align 8
  %192 = load i64, i64* %27, align 8
  %193 = load i64, i64* %32, align 8
  %194 = load i64, i64* %33, align 8
  %195 = load i64, i64* %36, align 8
  %196 = load i64, i64* %37, align 8
  %197 = call i32 @VSHF_B2_SB(i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %27, align 8
  %199 = load i64, i64* %28, align 8
  %200 = load i64, i64* %27, align 8
  %201 = load i64, i64* %28, align 8
  %202 = load i64, i64* %34, align 8
  %203 = load i64, i64* %35, align 8
  %204 = load i64, i64* %38, align 8
  %205 = load i64, i64* %39, align 8
  %206 = call i32 @VSHF_B2_SB(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %28, align 8
  %208 = load i64, i64* %28, align 8
  %209 = load i64, i64* %28, align 8
  %210 = load i64, i64* %28, align 8
  %211 = load i64, i64* %32, align 8
  %212 = load i64, i64* %33, align 8
  %213 = load i64, i64* %40, align 8
  %214 = load i64, i64* %41, align 8
  %215 = call i32 @VSHF_B2_SB(i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %29, align 8
  %217 = load i64, i64* %29, align 8
  %218 = load i64, i64* %29, align 8
  %219 = load i64, i64* %29, align 8
  %220 = load i64, i64* %32, align 8
  %221 = load i64, i64* %33, align 8
  %222 = load i64, i64* %42, align 8
  %223 = load i64, i64* %43, align 8
  %224 = call i32 @VSHF_B2_SB(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223)
  %225 = load i64, i64* %36, align 8
  %226 = load i64, i64* %37, align 8
  %227 = load i32, i32* %30, align 4
  %228 = load i32, i32* %31, align 4
  %229 = call i32 @HEVC_FILT_4TAP_SH(i64 %225, i64 %226, i32 %227, i32 %228)
  store i32 %229, i32* %48, align 4
  %230 = load i64, i64* %38, align 8
  %231 = load i64, i64* %39, align 8
  %232 = load i32, i32* %30, align 4
  %233 = load i32, i32* %31, align 4
  %234 = call i32 @HEVC_FILT_4TAP_SH(i64 %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %49, align 4
  %235 = load i64, i64* %40, align 8
  %236 = load i64, i64* %41, align 8
  %237 = load i32, i32* %30, align 4
  %238 = load i32, i32* %31, align 4
  %239 = call i32 @HEVC_FILT_4TAP_SH(i64 %235, i64 %236, i32 %237, i32 %238)
  store i32 %239, i32* %50, align 4
  %240 = load i64, i64* %42, align 8
  %241 = load i64, i64* %43, align 8
  %242 = load i32, i32* %30, align 4
  %243 = load i32, i32* %31, align 4
  %244 = call i32 @HEVC_FILT_4TAP_SH(i64 %240, i64 %241, i32 %242, i32 %243)
  store i32 %244, i32* %51, align 4
  %245 = load i32, i32* %44, align 4
  %246 = load i32, i32* %45, align 4
  %247 = load i32, i32* %46, align 4
  %248 = load i32, i32* %47, align 4
  %249 = load i32, i32* %56, align 4
  %250 = load i32, i32* %54, align 4
  %251 = load i32, i32* %57, align 4
  %252 = load i32, i32* %44, align 4
  %253 = load i32, i32* %45, align 4
  %254 = load i32, i32* %46, align 4
  %255 = load i32, i32* %47, align 4
  %256 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %48, align 4
  %258 = load i32, i32* %49, align 4
  %259 = load i32, i32* %50, align 4
  %260 = load i32, i32* %51, align 4
  %261 = load i32, i32* %56, align 4
  %262 = load i32, i32* %54, align 4
  %263 = load i32, i32* %57, align 4
  %264 = load i32, i32* %48, align 4
  %265 = load i32, i32* %49, align 4
  %266 = load i32, i32* %50, align 4
  %267 = load i32, i32* %51, align 4
  %268 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267)
  %269 = load i32, i32* %45, align 4
  %270 = load i32, i32* %44, align 4
  %271 = load i32, i32* %47, align 4
  %272 = load i32, i32* %46, align 4
  %273 = load i32, i32* %20, align 4
  %274 = load i32, i32* %21, align 4
  %275 = call i32 @PCKEV_B2_UB(i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %49, align 4
  %277 = load i32, i32* %48, align 4
  %278 = load i32, i32* %51, align 4
  %279 = load i32, i32* %50, align 4
  %280 = load i32, i32* %22, align 4
  %281 = load i32, i32* %23, align 4
  %282 = call i32 @PCKEV_B2_UB(i32 %276, i32 %277, i32 %278, i32 %279, i32 %280, i32 %281)
  %283 = load i32, i32* %20, align 4
  %284 = load i32, i32* %21, align 4
  %285 = load i32*, i32** %12, align 8
  %286 = call i32 @ST_UB2(i32 %283, i32 %284, i32* %285, i32 16)
  %287 = load i32, i32* %13, align 4
  %288 = load i32*, i32** %12, align 8
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %288, i64 %289
  store i32* %290, i32** %12, align 8
  %291 = load i32, i32* %22, align 4
  %292 = load i32, i32* %23, align 4
  %293 = load i32*, i32** %12, align 8
  %294 = call i32 @ST_UB2(i32 %291, i32 %292, i32* %293, i32 16)
  %295 = load i32, i32* %13, align 4
  %296 = load i32*, i32** %12, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32* %298, i32** %12, align 8
  br label %99

299:                                              ; preds = %99
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B6_128_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
