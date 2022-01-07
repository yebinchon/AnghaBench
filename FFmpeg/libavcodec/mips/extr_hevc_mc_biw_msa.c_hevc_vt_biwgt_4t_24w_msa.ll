; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  %47 = alloca i64, align 8
  %48 = alloca i64, align 8
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
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
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
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %14, align 8
  %75 = sext i32 %73 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %14, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load i32, i32* %25, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %26, align 4
  %82 = shl i32 %80, %81
  store i32 %82, i32* %28, align 4
  %83 = load i32, i32* %22, align 4
  %84 = and i32 %83, 65535
  store i32 %84, i32* %22, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %85, %87
  store i32 %88, i32* %29, align 4
  %89 = load i32, i32* %23, align 4
  %90 = mul nsw i32 128, %89
  store i32 %90, i32* %30, align 4
  %91 = load i32, i32* %30, align 4
  %92 = shl i32 %91, 6
  store i32 %92, i32* %30, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %28, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %28, align 4
  %96 = load i32, i32* %28, align 4
  %97 = call i32 @__msa_fill_w(i32 %96)
  store i32 %97, i32* %71, align 4
  %98 = load i32, i32* %29, align 4
  %99 = call i32 @__msa_fill_w(i32 %98)
  store i32 %99, i32* %70, align 4
  %100 = load i32, i32* %26, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i32 @__msa_fill_w(i32 %101)
  store i32 %102, i32* %72, align 4
  %103 = load i32*, i32** %20, align 8
  %104 = call i64 @LD_SH(i32* %103)
  store i64 %104, i64* %69, align 8
  %105 = load i64, i64* %69, align 8
  %106 = load i64, i64* %67, align 8
  %107 = load i64, i64* %68, align 8
  %108 = call i32 @SPLATI_H2_SH(i64 %105, i32 0, i32 1, i64 %106, i64 %107)
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %32, align 4
  %113 = load i32, i32* %33, align 4
  %114 = call i32 @LD_SB3(i32* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %31, align 4
  %116 = load i32, i32* %32, align 4
  %117 = load i32, i32* %33, align 4
  %118 = call i32 @XORI_B3_128_SB(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* %32, align 4
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %33, align 4
  %122 = load i32, i32* %32, align 4
  %123 = load i32, i32* %49, align 4
  %124 = load i32, i32* %57, align 4
  %125 = call i32 @ILVR_B2_SB(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %32, align 4
  %127 = load i32, i32* %31, align 4
  %128 = load i32, i32* %33, align 4
  %129 = load i32, i32* %32, align 4
  %130 = load i32, i32* %53, align 4
  %131 = load i32, i32* %55, align 4
  %132 = call i32 @ILVL_B2_SB(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32*, i32** %14, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 16
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %37, align 4
  %137 = load i32, i32* %38, align 4
  %138 = load i32, i32* %39, align 4
  %139 = call i32 @LD_SB3(i32* %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %15, align 4
  %141 = mul nsw i32 3, %140
  %142 = load i32*, i32** %14, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %14, align 8
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = call i32 @XORI_B3_128_SB(i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %38, align 4
  %150 = load i32, i32* %37, align 4
  %151 = load i32, i32* %39, align 4
  %152 = load i32, i32* %38, align 4
  %153 = load i32, i32* %51, align 4
  %154 = load i32, i32* %59, align 4
  %155 = call i32 @ILVR_B2_SB(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %21, align 4
  %157 = ashr i32 %156, 2
  store i32 %157, i32* %27, align 4
  br label %158

158:                                              ; preds = %162, %13
  %159 = load i32, i32* %27, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %27, align 4
  %161 = icmp ne i32 %159, 0
  br i1 %161, label %162, label %459

162:                                              ; preds = %158
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %34, align 4
  %166 = load i32, i32* %35, align 4
  %167 = call i32 @LD_SB2(i32* %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i64, i64* %43, align 8
  %171 = load i64, i64* %44, align 8
  %172 = call i32 @LD_SH2(i32* %168, i32 %169, i64 %170, i64 %171)
  %173 = load i32*, i32** %16, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 8
  %175 = load i32, i32* %17, align 4
  %176 = load i64, i64* %45, align 8
  %177 = load i64, i64* %46, align 8
  %178 = call i32 @LD_SH2(i32* %174, i32 %175, i64 %176, i64 %177)
  %179 = load i32, i32* %34, align 4
  %180 = load i32, i32* %35, align 4
  %181 = call i32 @XORI_B2_128_SB(i32 %179, i32 %180)
  %182 = load i32, i32* %34, align 4
  %183 = load i32, i32* %33, align 4
  %184 = load i32, i32* %35, align 4
  %185 = load i32, i32* %34, align 4
  %186 = load i32, i32* %50, align 4
  %187 = load i32, i32* %58, align 4
  %188 = call i32 @ILVR_B2_SB(i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %34, align 4
  %190 = load i32, i32* %33, align 4
  %191 = load i32, i32* %35, align 4
  %192 = load i32, i32* %34, align 4
  %193 = load i32, i32* %54, align 4
  %194 = load i32, i32* %56, align 4
  %195 = call i32 @ILVL_B2_SB(i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194)
  %196 = load i32*, i32** %14, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 16
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %40, align 4
  %200 = load i32, i32* %41, align 4
  %201 = call i32 @LD_SB2(i32* %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %15, align 4
  %203 = mul nsw i32 2, %202
  %204 = load i32*, i32** %14, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32* %206, i32** %14, align 8
  %207 = load i32*, i32** %16, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 16
  %209 = load i32, i32* %17, align 4
  %210 = load i64, i64* %47, align 8
  %211 = load i64, i64* %48, align 8
  %212 = call i32 @LD_SH2(i32* %208, i32 %209, i64 %210, i64 %211)
  %213 = load i32, i32* %17, align 4
  %214 = mul nsw i32 2, %213
  %215 = load i32*, i32** %16, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %16, align 8
  %218 = load i32, i32* %40, align 4
  %219 = load i32, i32* %41, align 4
  %220 = call i32 @XORI_B2_128_SB(i32 %218, i32 %219)
  %221 = load i32, i32* %40, align 4
  %222 = load i32, i32* %39, align 4
  %223 = load i32, i32* %41, align 4
  %224 = load i32, i32* %40, align 4
  %225 = load i32, i32* %52, align 4
  %226 = load i32, i32* %60, align 4
  %227 = call i32 @ILVR_B2_SB(i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226)
  %228 = load i32, i32* %49, align 4
  %229 = load i32, i32* %50, align 4
  %230 = load i64, i64* %67, align 8
  %231 = load i64, i64* %68, align 8
  %232 = call i64 @HEVC_FILT_4TAP_SH(i32 %228, i32 %229, i64 %230, i64 %231)
  store i64 %232, i64* %61, align 8
  %233 = load i32, i32* %53, align 4
  %234 = load i32, i32* %54, align 4
  %235 = load i64, i64* %67, align 8
  %236 = load i64, i64* %68, align 8
  %237 = call i64 @HEVC_FILT_4TAP_SH(i32 %233, i32 %234, i64 %235, i64 %236)
  store i64 %237, i64* %65, align 8
  %238 = load i32, i32* %57, align 4
  %239 = load i32, i32* %58, align 4
  %240 = load i64, i64* %67, align 8
  %241 = load i64, i64* %68, align 8
  %242 = call i64 @HEVC_FILT_4TAP_SH(i32 %238, i32 %239, i64 %240, i64 %241)
  store i64 %242, i64* %62, align 8
  %243 = load i32, i32* %55, align 4
  %244 = load i32, i32* %56, align 4
  %245 = load i64, i64* %67, align 8
  %246 = load i64, i64* %68, align 8
  %247 = call i64 @HEVC_FILT_4TAP_SH(i32 %243, i32 %244, i64 %245, i64 %246)
  store i64 %247, i64* %66, align 8
  %248 = load i32, i32* %51, align 4
  %249 = load i32, i32* %52, align 4
  %250 = load i64, i64* %67, align 8
  %251 = load i64, i64* %68, align 8
  %252 = call i64 @HEVC_FILT_4TAP_SH(i32 %248, i32 %249, i64 %250, i64 %251)
  store i64 %252, i64* %63, align 8
  %253 = load i32, i32* %59, align 4
  %254 = load i32, i32* %60, align 4
  %255 = load i64, i64* %67, align 8
  %256 = load i64, i64* %68, align 8
  %257 = call i64 @HEVC_FILT_4TAP_SH(i32 %253, i32 %254, i64 %255, i64 %256)
  store i64 %257, i64* %64, align 8
  %258 = load i64, i64* %61, align 8
  %259 = load i64, i64* %62, align 8
  %260 = load i64, i64* %65, align 8
  %261 = load i64, i64* %66, align 8
  %262 = load i64, i64* %43, align 8
  %263 = load i64, i64* %44, align 8
  %264 = load i64, i64* %45, align 8
  %265 = load i64, i64* %46, align 8
  %266 = load i32, i32* %70, align 4
  %267 = load i32, i32* %72, align 4
  %268 = load i32, i32* %71, align 4
  %269 = load i64, i64* %61, align 8
  %270 = load i64, i64* %62, align 8
  %271 = load i64, i64* %65, align 8
  %272 = load i64, i64* %66, align 8
  %273 = call i32 @HEVC_BIW_RND_CLIP4(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i32 %266, i32 %267, i32 %268, i64 %269, i64 %270, i64 %271, i64 %272)
  %274 = load i64, i64* %63, align 8
  %275 = load i64, i64* %64, align 8
  %276 = load i64, i64* %47, align 8
  %277 = load i64, i64* %48, align 8
  %278 = load i32, i32* %70, align 4
  %279 = load i32, i32* %72, align 4
  %280 = load i32, i32* %71, align 4
  %281 = load i64, i64* %63, align 8
  %282 = load i64, i64* %64, align 8
  %283 = call i32 @HEVC_BIW_RND_CLIP2(i64 %274, i64 %275, i64 %276, i64 %277, i32 %278, i32 %279, i32 %280, i64 %281, i64 %282)
  %284 = load i64, i64* %65, align 8
  %285 = load i64, i64* %61, align 8
  %286 = load i64, i64* %66, align 8
  %287 = load i64, i64* %62, align 8
  %288 = load i64, i64* %61, align 8
  %289 = load i64, i64* %62, align 8
  %290 = call i32 @PCKEV_B2_SH(i64 %284, i64 %285, i64 %286, i64 %287, i64 %288, i64 %289)
  %291 = load i64, i64* %64, align 8
  %292 = trunc i64 %291 to i32
  %293 = load i64, i64* %63, align 8
  %294 = trunc i64 %293 to i32
  %295 = call i64 @__msa_pckev_b(i32 %292, i32 %294)
  store i64 %295, i64* %63, align 8
  %296 = load i64, i64* %61, align 8
  %297 = load i64, i64* %62, align 8
  %298 = load i32*, i32** %18, align 8
  %299 = load i32, i32* %19, align 4
  %300 = call i32 @ST_SH2(i64 %296, i64 %297, i32* %298, i32 %299)
  %301 = load i64, i64* %63, align 8
  %302 = load i32*, i32** %18, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 16
  %304 = load i32, i32* %19, align 4
  %305 = call i32 @ST_D2(i64 %301, i32 0, i32 1, i32* %303, i32 %304)
  %306 = load i32, i32* %19, align 4
  %307 = mul nsw i32 2, %306
  %308 = load i32*, i32** %18, align 8
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  store i32* %310, i32** %18, align 8
  %311 = load i32*, i32** %14, align 8
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* %36, align 4
  %314 = load i32, i32* %33, align 4
  %315 = call i32 @LD_SB2(i32* %311, i32 %312, i32 %313, i32 %314)
  %316 = load i32*, i32** %16, align 8
  %317 = load i32, i32* %17, align 4
  %318 = load i64, i64* %43, align 8
  %319 = load i64, i64* %44, align 8
  %320 = call i32 @LD_SH2(i32* %316, i32 %317, i64 %318, i64 %319)
  %321 = load i32*, i32** %16, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 8
  %323 = load i32, i32* %17, align 4
  %324 = load i64, i64* %45, align 8
  %325 = load i64, i64* %46, align 8
  %326 = call i32 @LD_SH2(i32* %322, i32 %323, i64 %324, i64 %325)
  %327 = load i32, i32* %36, align 4
  %328 = load i32, i32* %33, align 4
  %329 = call i32 @XORI_B2_128_SB(i32 %327, i32 %328)
  %330 = load i32, i32* %36, align 4
  %331 = load i32, i32* %35, align 4
  %332 = load i32, i32* %33, align 4
  %333 = load i32, i32* %36, align 4
  %334 = load i32, i32* %49, align 4
  %335 = load i32, i32* %57, align 4
  %336 = call i32 @ILVR_B2_SB(i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %36, align 4
  %338 = load i32, i32* %35, align 4
  %339 = load i32, i32* %33, align 4
  %340 = load i32, i32* %36, align 4
  %341 = load i32, i32* %53, align 4
  %342 = load i32, i32* %55, align 4
  %343 = call i32 @ILVL_B2_SB(i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342)
  %344 = load i32*, i32** %14, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 16
  %346 = load i32, i32* %15, align 4
  %347 = load i32, i32* %42, align 4
  %348 = load i32, i32* %39, align 4
  %349 = call i32 @LD_SB2(i32* %345, i32 %346, i32 %347, i32 %348)
  %350 = load i32, i32* %15, align 4
  %351 = mul nsw i32 2, %350
  %352 = load i32*, i32** %14, align 8
  %353 = sext i32 %351 to i64
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  store i32* %354, i32** %14, align 8
  %355 = load i32*, i32** %16, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 16
  %357 = load i32, i32* %17, align 4
  %358 = load i64, i64* %47, align 8
  %359 = load i64, i64* %48, align 8
  %360 = call i32 @LD_SH2(i32* %356, i32 %357, i64 %358, i64 %359)
  %361 = load i32, i32* %17, align 4
  %362 = mul nsw i32 2, %361
  %363 = load i32*, i32** %16, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  store i32* %365, i32** %16, align 8
  %366 = load i32, i32* %42, align 4
  %367 = load i32, i32* %39, align 4
  %368 = call i32 @XORI_B2_128_SB(i32 %366, i32 %367)
  %369 = load i32, i32* %42, align 4
  %370 = load i32, i32* %41, align 4
  %371 = load i32, i32* %39, align 4
  %372 = load i32, i32* %42, align 4
  %373 = load i32, i32* %51, align 4
  %374 = load i32, i32* %59, align 4
  %375 = call i32 @ILVR_B2_SB(i32 %369, i32 %370, i32 %371, i32 %372, i32 %373, i32 %374)
  %376 = load i32, i32* %50, align 4
  %377 = load i32, i32* %49, align 4
  %378 = load i64, i64* %67, align 8
  %379 = load i64, i64* %68, align 8
  %380 = call i64 @HEVC_FILT_4TAP_SH(i32 %376, i32 %377, i64 %378, i64 %379)
  store i64 %380, i64* %61, align 8
  %381 = load i32, i32* %54, align 4
  %382 = load i32, i32* %53, align 4
  %383 = load i64, i64* %67, align 8
  %384 = load i64, i64* %68, align 8
  %385 = call i64 @HEVC_FILT_4TAP_SH(i32 %381, i32 %382, i64 %383, i64 %384)
  store i64 %385, i64* %65, align 8
  %386 = load i32, i32* %58, align 4
  %387 = load i32, i32* %57, align 4
  %388 = load i64, i64* %67, align 8
  %389 = load i64, i64* %68, align 8
  %390 = call i64 @HEVC_FILT_4TAP_SH(i32 %386, i32 %387, i64 %388, i64 %389)
  store i64 %390, i64* %62, align 8
  %391 = load i32, i32* %56, align 4
  %392 = load i32, i32* %55, align 4
  %393 = load i64, i64* %67, align 8
  %394 = load i64, i64* %68, align 8
  %395 = call i64 @HEVC_FILT_4TAP_SH(i32 %391, i32 %392, i64 %393, i64 %394)
  store i64 %395, i64* %66, align 8
  %396 = load i32, i32* %52, align 4
  %397 = load i32, i32* %51, align 4
  %398 = load i64, i64* %67, align 8
  %399 = load i64, i64* %68, align 8
  %400 = call i64 @HEVC_FILT_4TAP_SH(i32 %396, i32 %397, i64 %398, i64 %399)
  store i64 %400, i64* %63, align 8
  %401 = load i32, i32* %60, align 4
  %402 = load i32, i32* %59, align 4
  %403 = load i64, i64* %67, align 8
  %404 = load i64, i64* %68, align 8
  %405 = call i64 @HEVC_FILT_4TAP_SH(i32 %401, i32 %402, i64 %403, i64 %404)
  store i64 %405, i64* %64, align 8
  %406 = load i64, i64* %61, align 8
  %407 = load i64, i64* %62, align 8
  %408 = load i64, i64* %65, align 8
  %409 = load i64, i64* %66, align 8
  %410 = load i64, i64* %43, align 8
  %411 = load i64, i64* %44, align 8
  %412 = load i64, i64* %45, align 8
  %413 = load i64, i64* %46, align 8
  %414 = load i32, i32* %70, align 4
  %415 = load i32, i32* %72, align 4
  %416 = load i32, i32* %71, align 4
  %417 = load i64, i64* %61, align 8
  %418 = load i64, i64* %62, align 8
  %419 = load i64, i64* %65, align 8
  %420 = load i64, i64* %66, align 8
  %421 = call i32 @HEVC_BIW_RND_CLIP4(i64 %406, i64 %407, i64 %408, i64 %409, i64 %410, i64 %411, i64 %412, i64 %413, i32 %414, i32 %415, i32 %416, i64 %417, i64 %418, i64 %419, i64 %420)
  %422 = load i64, i64* %63, align 8
  %423 = load i64, i64* %64, align 8
  %424 = load i64, i64* %47, align 8
  %425 = load i64, i64* %48, align 8
  %426 = load i32, i32* %70, align 4
  %427 = load i32, i32* %72, align 4
  %428 = load i32, i32* %71, align 4
  %429 = load i64, i64* %63, align 8
  %430 = load i64, i64* %64, align 8
  %431 = call i32 @HEVC_BIW_RND_CLIP2(i64 %422, i64 %423, i64 %424, i64 %425, i32 %426, i32 %427, i32 %428, i64 %429, i64 %430)
  %432 = load i64, i64* %65, align 8
  %433 = load i64, i64* %61, align 8
  %434 = load i64, i64* %66, align 8
  %435 = load i64, i64* %62, align 8
  %436 = load i64, i64* %61, align 8
  %437 = load i64, i64* %62, align 8
  %438 = call i32 @PCKEV_B2_SH(i64 %432, i64 %433, i64 %434, i64 %435, i64 %436, i64 %437)
  %439 = load i64, i64* %64, align 8
  %440 = trunc i64 %439 to i32
  %441 = load i64, i64* %63, align 8
  %442 = trunc i64 %441 to i32
  %443 = call i64 @__msa_pckev_b(i32 %440, i32 %442)
  store i64 %443, i64* %63, align 8
  %444 = load i64, i64* %61, align 8
  %445 = load i64, i64* %62, align 8
  %446 = load i32*, i32** %18, align 8
  %447 = load i32, i32* %19, align 4
  %448 = call i32 @ST_SH2(i64 %444, i64 %445, i32* %446, i32 %447)
  %449 = load i64, i64* %63, align 8
  %450 = load i32*, i32** %18, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 16
  %452 = load i32, i32* %19, align 4
  %453 = call i32 @ST_D2(i64 %449, i32 0, i32 1, i32* %451, i32 %452)
  %454 = load i32, i32* %19, align 4
  %455 = mul nsw i32 2, %454
  %456 = load i32*, i32** %18, align 8
  %457 = sext i32 %455 to i64
  %458 = getelementptr inbounds i32, i32* %456, i64 %457
  store i32* %458, i32** %18, align 8
  br label %158

459:                                              ; preds = %158
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP2(i64, i64, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @PCKEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_SH2(i64, i64, i32*, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
