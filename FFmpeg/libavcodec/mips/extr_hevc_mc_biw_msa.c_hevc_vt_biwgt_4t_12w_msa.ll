; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
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
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %4, i32** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %69 = load i32, i32* %15, align 4
  %70 = mul nsw i32 1, %69
  %71 = load i32*, i32** %14, align 8
  %72 = sext i32 %70 to i64
  %73 = sub i64 0, %72
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %14, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %25, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %26, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %28, align 4
  %80 = load i32, i32* %22, align 4
  %81 = and i32 %80, 65535
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %23, align 4
  %84 = shl i32 %83, 16
  %85 = or i32 %82, %84
  store i32 %85, i32* %29, align 4
  %86 = load i32, i32* %23, align 4
  %87 = mul nsw i32 128, %86
  store i32 %87, i32* %30, align 4
  %88 = load i32, i32* %30, align 4
  %89 = shl i32 %88, 6
  store i32 %89, i32* %30, align 4
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %28, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %28, align 4
  %93 = load i32, i32* %28, align 4
  %94 = call i32 @__msa_fill_w(i32 %93)
  store i32 %94, i32* %67, align 4
  %95 = load i32, i32* %29, align 4
  %96 = call i32 @__msa_fill_w(i32 %95)
  store i32 %96, i32* %66, align 4
  %97 = load i32, i32* %26, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %68, align 4
  %100 = load i32*, i32** %20, align 8
  %101 = call i64 @LD_SH(i32* %100)
  store i64 %101, i64* %65, align 8
  %102 = load i64, i64* %65, align 8
  %103 = load i64, i64* %63, align 8
  %104 = load i64, i64* %64, align 8
  %105 = call i32 @SPLATI_H2_SH(i64 %102, i32 0, i32 1, i64 %103, i64 %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load i64, i64* %31, align 8
  %109 = load i64, i64* %32, align 8
  %110 = load i64, i64* %33, align 8
  %111 = call i32 @LD_SB3(i32* %106, i32 %107, i64 %108, i64 %109, i64 %110)
  %112 = load i32, i32* %15, align 4
  %113 = mul nsw i32 3, %112
  %114 = load i32*, i32** %14, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32* %116, i32** %14, align 8
  %117 = load i64, i64* %31, align 8
  %118 = load i64, i64* %32, align 8
  %119 = load i64, i64* %33, align 8
  %120 = call i32 @XORI_B3_128_SB(i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %32, align 8
  %122 = load i64, i64* %31, align 8
  %123 = load i64, i64* %33, align 8
  %124 = load i64, i64* %32, align 8
  %125 = load i64, i64* %45, align 8
  %126 = load i64, i64* %47, align 8
  %127 = call i32 @ILVR_B2_SB(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %31, align 8
  %130 = load i64, i64* %33, align 8
  %131 = load i64, i64* %32, align 8
  %132 = load i64, i64* %55, align 8
  %133 = load i64, i64* %58, align 8
  %134 = call i32 @ILVL_B2_SB(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  %135 = load i64, i64* %58, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %55, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i64 @__msa_ilvr_d(i32 %136, i32 %138)
  store i64 %139, i64* %61, align 8
  %140 = load i32, i32* %21, align 4
  %141 = ashr i32 %140, 2
  store i32 %141, i32* %27, align 4
  br label %142

142:                                              ; preds = %146, %13
  %143 = load i32, i32* %27, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %27, align 4
  %145 = icmp ne i32 %143, 0
  br i1 %145, label %146, label %319

146:                                              ; preds = %142
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i64, i64* %34, align 8
  %150 = load i64, i64* %35, align 8
  %151 = call i32 @LD_SB2(i32* %147, i32 %148, i64 %149, i64 %150)
  %152 = load i32, i32* %15, align 4
  %153 = mul nsw i32 2, %152
  %154 = load i32*, i32** %14, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %14, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = load i32, i32* %17, align 4
  %159 = load i64, i64* %37, align 8
  %160 = load i64, i64* %38, align 8
  %161 = load i64, i64* %39, align 8
  %162 = load i64, i64* %40, align 8
  %163 = call i32 @LD_SH4(i32* %157, i32 %158, i64 %159, i64 %160, i64 %161, i64 %162)
  %164 = load i32*, i32** %16, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 8
  %166 = load i32, i32* %17, align 4
  %167 = load i64, i64* %41, align 8
  %168 = load i64, i64* %42, align 8
  %169 = load i64, i64* %43, align 8
  %170 = load i64, i64* %44, align 8
  %171 = call i32 @LD_SH4(i32* %165, i32 %166, i64 %167, i64 %168, i64 %169, i64 %170)
  %172 = load i32, i32* %17, align 4
  %173 = mul nsw i32 4, %172
  %174 = load i32*, i32** %16, align 8
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %16, align 8
  %177 = load i64, i64* %42, align 8
  %178 = load i64, i64* %41, align 8
  %179 = load i64, i64* %44, align 8
  %180 = load i64, i64* %43, align 8
  %181 = load i64, i64* %41, align 8
  %182 = load i64, i64* %42, align 8
  %183 = call i32 @ILVR_D2_SH(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %184 = load i64, i64* %34, align 8
  %185 = load i64, i64* %35, align 8
  %186 = call i32 @XORI_B2_128_SB(i64 %184, i64 %185)
  %187 = load i64, i64* %34, align 8
  %188 = load i64, i64* %33, align 8
  %189 = load i64, i64* %35, align 8
  %190 = load i64, i64* %34, align 8
  %191 = load i64, i64* %46, align 8
  %192 = load i64, i64* %48, align 8
  %193 = call i32 @ILVR_B2_SB(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  %194 = load i64, i64* %34, align 8
  %195 = load i64, i64* %33, align 8
  %196 = load i64, i64* %35, align 8
  %197 = load i64, i64* %34, align 8
  %198 = load i64, i64* %56, align 8
  %199 = load i64, i64* %59, align 8
  %200 = call i32 @ILVL_B2_SB(i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199)
  %201 = load i64, i64* %59, align 8
  %202 = trunc i64 %201 to i32
  %203 = load i64, i64* %56, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i64 @__msa_ilvr_d(i32 %202, i32 %204)
  store i64 %205, i64* %62, align 8
  %206 = load i64, i64* %45, align 8
  %207 = load i64, i64* %46, align 8
  %208 = load i64, i64* %63, align 8
  %209 = load i64, i64* %64, align 8
  %210 = call i64 @HEVC_FILT_4TAP_SH(i64 %206, i64 %207, i64 %208, i64 %209)
  store i64 %210, i64* %49, align 8
  %211 = load i64, i64* %47, align 8
  %212 = load i64, i64* %48, align 8
  %213 = load i64, i64* %63, align 8
  %214 = load i64, i64* %64, align 8
  %215 = call i64 @HEVC_FILT_4TAP_SH(i64 %211, i64 %212, i64 %213, i64 %214)
  store i64 %215, i64* %50, align 8
  %216 = load i64, i64* %61, align 8
  %217 = load i64, i64* %62, align 8
  %218 = load i64, i64* %63, align 8
  %219 = load i64, i64* %64, align 8
  %220 = call i64 @HEVC_FILT_4TAP_SH(i64 %216, i64 %217, i64 %218, i64 %219)
  store i64 %220, i64* %53, align 8
  %221 = load i32*, i32** %14, align 8
  %222 = load i32, i32* %15, align 4
  %223 = load i64, i64* %36, align 8
  %224 = load i64, i64* %33, align 8
  %225 = call i32 @LD_SB2(i32* %221, i32 %222, i64 %223, i64 %224)
  %226 = load i32, i32* %15, align 4
  %227 = mul nsw i32 2, %226
  %228 = load i32*, i32** %14, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %14, align 8
  %231 = load i64, i64* %36, align 8
  %232 = load i64, i64* %33, align 8
  %233 = call i32 @XORI_B2_128_SB(i64 %231, i64 %232)
  %234 = load i64, i64* %36, align 8
  %235 = load i64, i64* %35, align 8
  %236 = load i64, i64* %33, align 8
  %237 = load i64, i64* %36, align 8
  %238 = load i64, i64* %45, align 8
  %239 = load i64, i64* %47, align 8
  %240 = call i32 @ILVR_B2_SB(i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239)
  %241 = load i64, i64* %36, align 8
  %242 = load i64, i64* %35, align 8
  %243 = load i64, i64* %33, align 8
  %244 = load i64, i64* %36, align 8
  %245 = load i64, i64* %57, align 8
  %246 = load i64, i64* %60, align 8
  %247 = call i32 @ILVL_B2_SB(i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246)
  %248 = load i64, i64* %60, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i64, i64* %57, align 8
  %251 = trunc i64 %250 to i32
  %252 = call i64 @__msa_ilvr_d(i32 %249, i32 %251)
  store i64 %252, i64* %61, align 8
  %253 = load i64, i64* %46, align 8
  %254 = load i64, i64* %45, align 8
  %255 = load i64, i64* %63, align 8
  %256 = load i64, i64* %64, align 8
  %257 = call i64 @HEVC_FILT_4TAP_SH(i64 %253, i64 %254, i64 %255, i64 %256)
  store i64 %257, i64* %51, align 8
  %258 = load i64, i64* %48, align 8
  %259 = load i64, i64* %47, align 8
  %260 = load i64, i64* %63, align 8
  %261 = load i64, i64* %64, align 8
  %262 = call i64 @HEVC_FILT_4TAP_SH(i64 %258, i64 %259, i64 %260, i64 %261)
  store i64 %262, i64* %52, align 8
  %263 = load i64, i64* %62, align 8
  %264 = load i64, i64* %61, align 8
  %265 = load i64, i64* %63, align 8
  %266 = load i64, i64* %64, align 8
  %267 = call i64 @HEVC_FILT_4TAP_SH(i64 %263, i64 %264, i64 %265, i64 %266)
  store i64 %267, i64* %54, align 8
  %268 = load i64, i64* %49, align 8
  %269 = load i64, i64* %50, align 8
  %270 = load i64, i64* %51, align 8
  %271 = load i64, i64* %52, align 8
  %272 = load i64, i64* %37, align 8
  %273 = load i64, i64* %38, align 8
  %274 = load i64, i64* %39, align 8
  %275 = load i64, i64* %40, align 8
  %276 = load i32, i32* %66, align 4
  %277 = load i32, i32* %68, align 4
  %278 = load i32, i32* %67, align 4
  %279 = load i64, i64* %49, align 8
  %280 = load i64, i64* %50, align 8
  %281 = load i64, i64* %51, align 8
  %282 = load i64, i64* %52, align 8
  %283 = call i32 @HEVC_BIW_RND_CLIP4(i64 %268, i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i32 %276, i32 %277, i32 %278, i64 %279, i64 %280, i64 %281, i64 %282)
  %284 = load i64, i64* %53, align 8
  %285 = load i64, i64* %54, align 8
  %286 = load i64, i64* %41, align 8
  %287 = load i64, i64* %42, align 8
  %288 = load i32, i32* %66, align 4
  %289 = load i32, i32* %68, align 4
  %290 = load i32, i32* %67, align 4
  %291 = load i64, i64* %53, align 8
  %292 = load i64, i64* %54, align 8
  %293 = call i32 @HEVC_BIW_RND_CLIP2(i64 %284, i64 %285, i64 %286, i64 %287, i32 %288, i32 %289, i32 %290, i64 %291, i64 %292)
  %294 = load i64, i64* %50, align 8
  %295 = load i64, i64* %49, align 8
  %296 = load i64, i64* %52, align 8
  %297 = load i64, i64* %51, align 8
  %298 = load i64, i64* %49, align 8
  %299 = load i64, i64* %50, align 8
  %300 = call i32 @PCKEV_B2_SH(i64 %294, i64 %295, i64 %296, i64 %297, i64 %298, i64 %299)
  %301 = load i64, i64* %54, align 8
  %302 = load i64, i64* %53, align 8
  %303 = call i64 @__msa_pckev_b(i64 %301, i64 %302)
  store i64 %303, i64* %51, align 8
  %304 = load i64, i64* %49, align 8
  %305 = load i64, i64* %50, align 8
  %306 = load i32*, i32** %18, align 8
  %307 = load i32, i32* %19, align 4
  %308 = call i32 @ST_D4(i64 %304, i64 %305, i32 0, i32 1, i32 0, i32 1, i32* %306, i32 %307)
  %309 = load i64, i64* %51, align 8
  %310 = load i32*, i32** %18, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 8
  %312 = load i32, i32* %19, align 4
  %313 = call i32 @ST_W4(i64 %309, i32 0, i32 1, i32 2, i32 3, i32* %311, i32 %312)
  %314 = load i32, i32* %19, align 4
  %315 = mul nsw i32 4, %314
  %316 = load i32*, i32** %18, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %18, align 8
  br label %142

319:                                              ; preds = %142
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @XORI_B3_128_SB(i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
