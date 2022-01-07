; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_vt_uniwgt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
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
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %10, align 8
  %71 = load i32, i32* %16, align 4
  %72 = and i32 %71, 65535
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @__msa_fill_w(i32 %73)
  store i32 %74, i32* %64, align 4
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @__msa_fill_w(i32 %75)
  store i32 %76, i32* %65, align 4
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 %77, 128
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sub nsw i32 %79, 6
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @__msa_fill_h(i32 %81)
  store i32 %82, i32* %61, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @__msa_fill_h(i32 %83)
  store i32 %84, i32* %62, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @__msa_fill_h(i32 %85)
  store i32 %86, i32* %63, align 4
  %87 = load i32, i32* %61, align 4
  %88 = load i32, i32* %63, align 4
  %89 = call i32 @__msa_srar_h(i32 %87, i32 %88)
  store i32 %89, i32* %61, align 4
  %90 = load i32, i32* %62, align 4
  %91 = load i32, i32* %61, align 4
  %92 = call i32 @__msa_adds_s_h(i32 %90, i32 %91)
  store i32 %92, i32* %62, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @LD_SH(i32* %93)
  store i32 %94, i32* %60, align 4
  %95 = load i32, i32* %60, align 4
  %96 = load i32, i32* %58, align 4
  %97 = load i32, i32* %59, align 4
  %98 = call i32 @SPLATI_H2_SH(i32 %95, i32 0, i32 1, i32 %96, i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @LD_SB3(i32* %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 16
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %29, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %31, align 4
  %111 = call i32 @LD_SB3(i32* %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 3, %112
  %114 = load i32*, i32** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %10, align 8
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %25, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %29, align 4
  %121 = load i32, i32* %30, align 4
  %122 = load i32, i32* %31, align 4
  %123 = call i32 @XORI_B6_128_SB(i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* %24, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %34, align 4
  %129 = load i32, i32* %38, align 4
  %130 = call i32 @ILVR_B2_SB(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* %50, align 4
  %136 = load i32, i32* %54, align 4
  %137 = call i32 @ILVL_B2_SB(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %30, align 4
  %139 = load i32, i32* %29, align 4
  %140 = load i32, i32* %31, align 4
  %141 = load i32, i32* %30, align 4
  %142 = load i32, i32* %40, align 4
  %143 = load i32, i32* %36, align 4
  %144 = call i32 @ILVR_B2_SB(i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %30, align 4
  %146 = load i32, i32* %29, align 4
  %147 = load i32, i32* %31, align 4
  %148 = load i32, i32* %30, align 4
  %149 = load i32, i32* %56, align 4
  %150 = load i32, i32* %52, align 4
  %151 = call i32 @ILVL_B2_SB(i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = ashr i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %154

154:                                              ; preds = %158, %9
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %19, align 4
  %157 = icmp ne i32 %155, 0
  br i1 %157, label %158, label %307

158:                                              ; preds = %154
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %27, align 4
  %162 = load i32, i32* %28, align 4
  %163 = call i32 @LD_SB2(i32* %159, i32 %160, i32 %161, i32 %162)
  %164 = load i32*, i32** %10, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 16
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %32, align 4
  %168 = load i32, i32* %33, align 4
  %169 = call i32 @LD_SB2(i32* %165, i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = mul nsw i32 2, %170
  %172 = load i32*, i32** %10, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32* %174, i32** %10, align 8
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %28, align 4
  %177 = load i32, i32* %32, align 4
  %178 = load i32, i32* %33, align 4
  %179 = call i32 @XORI_B4_128_SB(i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %27, align 4
  %181 = load i32, i32* %26, align 4
  %182 = load i32, i32* %28, align 4
  %183 = load i32, i32* %27, align 4
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %39, align 4
  %186 = call i32 @ILVR_B2_SB(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %26, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i32, i32* %27, align 4
  %191 = load i32, i32* %51, align 4
  %192 = load i32, i32* %55, align 4
  %193 = call i32 @ILVL_B2_SB(i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* %32, align 4
  %195 = load i32, i32* %31, align 4
  %196 = load i32, i32* %41, align 4
  %197 = load i32, i32* %57, align 4
  %198 = call i32 @ILVRL_B2_SB(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %33, align 4
  %200 = load i32, i32* %32, align 4
  %201 = load i32, i32* %37, align 4
  %202 = load i32, i32* %53, align 4
  %203 = call i32 @ILVRL_B2_SB(i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %34, align 4
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %58, align 4
  %207 = load i32, i32* %59, align 4
  %208 = call i32 @HEVC_FILT_4TAP_SH(i32 %204, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %42, align 4
  %209 = load i32, i32* %38, align 4
  %210 = load i32, i32* %39, align 4
  %211 = load i32, i32* %58, align 4
  %212 = load i32, i32* %59, align 4
  %213 = call i32 @HEVC_FILT_4TAP_SH(i32 %209, i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %43, align 4
  %214 = load i32, i32* %50, align 4
  %215 = load i32, i32* %51, align 4
  %216 = load i32, i32* %58, align 4
  %217 = load i32, i32* %59, align 4
  %218 = call i32 @HEVC_FILT_4TAP_SH(i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %44, align 4
  %219 = load i32, i32* %54, align 4
  %220 = load i32, i32* %55, align 4
  %221 = load i32, i32* %58, align 4
  %222 = load i32, i32* %59, align 4
  %223 = call i32 @HEVC_FILT_4TAP_SH(i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %45, align 4
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %41, align 4
  %226 = load i32, i32* %58, align 4
  %227 = load i32, i32* %59, align 4
  %228 = call i32 @HEVC_FILT_4TAP_SH(i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %46, align 4
  %229 = load i32, i32* %36, align 4
  %230 = load i32, i32* %37, align 4
  %231 = load i32, i32* %58, align 4
  %232 = load i32, i32* %59, align 4
  %233 = call i32 @HEVC_FILT_4TAP_SH(i32 %229, i32 %230, i32 %231, i32 %232)
  store i32 %233, i32* %47, align 4
  %234 = load i32, i32* %56, align 4
  %235 = load i32, i32* %57, align 4
  %236 = load i32, i32* %58, align 4
  %237 = load i32, i32* %59, align 4
  %238 = call i32 @HEVC_FILT_4TAP_SH(i32 %234, i32 %235, i32 %236, i32 %237)
  store i32 %238, i32* %48, align 4
  %239 = load i32, i32* %52, align 4
  %240 = load i32, i32* %53, align 4
  %241 = load i32, i32* %58, align 4
  %242 = load i32, i32* %59, align 4
  %243 = call i32 @HEVC_FILT_4TAP_SH(i32 %239, i32 %240, i32 %241, i32 %242)
  store i32 %243, i32* %49, align 4
  %244 = load i32, i32* %42, align 4
  %245 = load i32, i32* %43, align 4
  %246 = load i32, i32* %44, align 4
  %247 = load i32, i32* %45, align 4
  %248 = load i32, i32* %64, align 4
  %249 = load i32, i32* %62, align 4
  %250 = load i32, i32* %65, align 4
  %251 = load i32, i32* %42, align 4
  %252 = load i32, i32* %43, align 4
  %253 = load i32, i32* %44, align 4
  %254 = load i32, i32* %45, align 4
  %255 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254)
  %256 = load i32, i32* %46, align 4
  %257 = load i32, i32* %47, align 4
  %258 = load i32, i32* %48, align 4
  %259 = load i32, i32* %49, align 4
  %260 = load i32, i32* %64, align 4
  %261 = load i32, i32* %62, align 4
  %262 = load i32, i32* %65, align 4
  %263 = load i32, i32* %46, align 4
  %264 = load i32, i32* %47, align 4
  %265 = load i32, i32* %48, align 4
  %266 = load i32, i32* %49, align 4
  %267 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %44, align 4
  %269 = load i32, i32* %42, align 4
  %270 = load i32, i32* %45, align 4
  %271 = load i32, i32* %43, align 4
  %272 = load i32, i32* %48, align 4
  %273 = load i32, i32* %46, align 4
  %274 = load i32, i32* %49, align 4
  %275 = load i32, i32* %47, align 4
  %276 = load i32, i32* %20, align 4
  %277 = load i32, i32* %21, align 4
  %278 = load i32, i32* %22, align 4
  %279 = load i32, i32* %23, align 4
  %280 = call i32 @PCKEV_B4_UB(i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276, i32 %277, i32 %278, i32 %279)
  %281 = load i32, i32* %20, align 4
  %282 = load i32, i32* %22, align 4
  %283 = load i32*, i32** %12, align 8
  %284 = call i32 @ST_UB2(i32 %281, i32 %282, i32* %283, i32 16)
  %285 = load i32, i32* %13, align 4
  %286 = load i32*, i32** %12, align 8
  %287 = sext i32 %285 to i64
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  store i32* %288, i32** %12, align 8
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* %23, align 4
  %291 = load i32*, i32** %12, align 8
  %292 = call i32 @ST_UB2(i32 %289, i32 %290, i32* %291, i32 16)
  %293 = load i32, i32* %13, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  store i32* %296, i32** %12, align 8
  %297 = load i32, i32* %28, align 4
  store i32 %297, i32* %26, align 4
  %298 = load i32, i32* %33, align 4
  store i32 %298, i32* %31, align 4
  %299 = load i32, i32* %35, align 4
  store i32 %299, i32* %34, align 4
  %300 = load i32, i32* %39, align 4
  store i32 %300, i32* %38, align 4
  %301 = load i32, i32* %51, align 4
  store i32 %301, i32* %50, align 4
  %302 = load i32, i32* %55, align 4
  store i32 %302, i32* %54, align 4
  %303 = load i32, i32* %41, align 4
  store i32 %303, i32* %40, align 4
  %304 = load i32, i32* %37, align 4
  store i32 %304, i32* %36, align 4
  %305 = load i32, i32* %57, align 4
  store i32 %305, i32* %56, align 4
  %306 = load i32, i32* %53, align 4
  store i32 %306, i32* %52, align 4
  br label %154

307:                                              ; preds = %154
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B6_128_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVRL_B2_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
