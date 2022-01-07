; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %28 = alloca i32*, align 8
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
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
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
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  store i32* %81, i32** %28, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32* %86, i32** %14, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %25, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %26, align 4
  %91 = shl i32 %89, %90
  store i32 %91, i32* %29, align 4
  %92 = load i32, i32* %22, align 4
  %93 = and i32 %92, 65535
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %23, align 4
  %96 = shl i32 %95, 16
  %97 = or i32 %94, %96
  store i32 %97, i32* %30, align 4
  %98 = load i32, i32* %23, align 4
  %99 = mul nsw i32 128, %98
  store i32 %99, i32* %31, align 4
  %100 = load i32, i32* %31, align 4
  %101 = shl i32 %100, 6
  store i32 %101, i32* %31, align 4
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* %29, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %29, align 4
  %105 = load i32, i32* %29, align 4
  %106 = call i32 @__msa_fill_w(i32 %105)
  store i32 %106, i32* %78, align 4
  %107 = load i32, i32* %30, align 4
  %108 = call i32 @__msa_fill_w(i32 %107)
  store i32 %108, i32* %77, align 4
  %109 = load i32, i32* %26, align 4
  %110 = add nsw i32 %109, 1
  %111 = call i32 @__msa_fill_w(i32 %110)
  store i32 %111, i32* %79, align 4
  %112 = load i32*, i32** %20, align 8
  %113 = call i32 @LD_SH(i32* %112)
  store i32 %113, i32* %76, align 4
  %114 = load i32, i32* %76, align 4
  %115 = load i32, i32* %74, align 4
  %116 = load i32, i32* %75, align 4
  %117 = call i32 @SPLATI_H2_SH(i32 %114, i32 0, i32 1, i32 %115, i32 %116)
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %33, align 4
  %122 = load i32, i32* %34, align 4
  %123 = call i32 @LD_SB3(i32* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %32, align 4
  %125 = load i32, i32* %33, align 4
  %126 = load i32, i32* %34, align 4
  %127 = call i32 @XORI_B3_128_SB(i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* %33, align 4
  %129 = load i32, i32* %32, align 4
  %130 = load i32, i32* %34, align 4
  %131 = load i32, i32* %33, align 4
  %132 = load i32, i32* %50, align 4
  %133 = load i32, i32* %54, align 4
  %134 = call i32 @ILVR_B2_SB(i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %33, align 4
  %136 = load i32, i32* %32, align 4
  %137 = load i32, i32* %34, align 4
  %138 = load i32, i32* %33, align 4
  %139 = load i32, i32* %66, align 4
  %140 = load i32, i32* %70, align 4
  %141 = call i32 @ILVL_B2_SB(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 16
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %39, align 4
  %148 = call i32 @LD_SB3(i32* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = mul nsw i32 3, %149
  %151 = load i32*, i32** %14, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32* %153, i32** %14, align 8
  %154 = load i32, i32* %37, align 4
  %155 = load i32, i32* %38, align 4
  %156 = load i32, i32* %39, align 4
  %157 = call i32 @XORI_B3_128_SB(i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %38, align 4
  %159 = load i32, i32* %37, align 4
  %160 = load i32, i32* %39, align 4
  %161 = load i32, i32* %38, align 4
  %162 = load i32, i32* %52, align 4
  %163 = load i32, i32* %56, align 4
  %164 = call i32 @ILVR_B2_SB(i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load i32, i32* %38, align 4
  %166 = load i32, i32* %37, align 4
  %167 = load i32, i32* %39, align 4
  %168 = load i32, i32* %38, align 4
  %169 = load i32, i32* %68, align 4
  %170 = load i32, i32* %72, align 4
  %171 = call i32 @ILVL_B2_SB(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %21, align 4
  %173 = ashr i32 %172, 1
  store i32 %173, i32* %27, align 4
  br label %174

174:                                              ; preds = %178, %13
  %175 = load i32, i32* %27, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %27, align 4
  %177 = icmp ne i32 %175, 0
  br i1 %177, label %178, label %373

178:                                              ; preds = %174
  %179 = load i32*, i32** %14, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %35, align 4
  %182 = load i32, i32* %36, align 4
  %183 = call i32 @LD_SB2(i32* %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %42, align 4
  %187 = load i32, i32* %43, align 4
  %188 = call i32 @LD_SH2(i32* %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32*, i32** %16, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 8
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %44, align 4
  %193 = load i32, i32* %45, align 4
  %194 = call i32 @LD_SH2(i32* %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %35, align 4
  %196 = load i32, i32* %36, align 4
  %197 = call i32 @XORI_B2_128_SB(i32 %195, i32 %196)
  %198 = load i32, i32* %35, align 4
  %199 = load i32, i32* %34, align 4
  %200 = load i32, i32* %36, align 4
  %201 = load i32, i32* %35, align 4
  %202 = load i32, i32* %51, align 4
  %203 = load i32, i32* %55, align 4
  %204 = call i32 @ILVR_B2_SB(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* %34, align 4
  %207 = load i32, i32* %36, align 4
  %208 = load i32, i32* %35, align 4
  %209 = load i32, i32* %67, align 4
  %210 = load i32, i32* %71, align 4
  %211 = call i32 @ILVL_B2_SB(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %50, align 4
  %213 = load i32, i32* %51, align 4
  %214 = load i32, i32* %74, align 4
  %215 = load i32, i32* %75, align 4
  %216 = call i32 @HEVC_FILT_4TAP_SH(i32 %212, i32 %213, i32 %214, i32 %215)
  store i32 %216, i32* %58, align 4
  %217 = load i32, i32* %66, align 4
  %218 = load i32, i32* %67, align 4
  %219 = load i32, i32* %74, align 4
  %220 = load i32, i32* %75, align 4
  %221 = call i32 @HEVC_FILT_4TAP_SH(i32 %217, i32 %218, i32 %219, i32 %220)
  store i32 %221, i32* %62, align 4
  %222 = load i32, i32* %54, align 4
  %223 = load i32, i32* %55, align 4
  %224 = load i32, i32* %74, align 4
  %225 = load i32, i32* %75, align 4
  %226 = call i32 @HEVC_FILT_4TAP_SH(i32 %222, i32 %223, i32 %224, i32 %225)
  store i32 %226, i32* %59, align 4
  %227 = load i32, i32* %70, align 4
  %228 = load i32, i32* %71, align 4
  %229 = load i32, i32* %74, align 4
  %230 = load i32, i32* %75, align 4
  %231 = call i32 @HEVC_FILT_4TAP_SH(i32 %227, i32 %228, i32 %229, i32 %230)
  store i32 %231, i32* %63, align 4
  %232 = load i32, i32* %58, align 4
  %233 = load i32, i32* %59, align 4
  %234 = load i32, i32* %62, align 4
  %235 = load i32, i32* %63, align 4
  %236 = load i32, i32* %42, align 4
  %237 = load i32, i32* %43, align 4
  %238 = load i32, i32* %44, align 4
  %239 = load i32, i32* %45, align 4
  %240 = load i32, i32* %77, align 4
  %241 = load i32, i32* %79, align 4
  %242 = load i32, i32* %78, align 4
  %243 = load i32, i32* %58, align 4
  %244 = load i32, i32* %59, align 4
  %245 = load i32, i32* %62, align 4
  %246 = load i32, i32* %63, align 4
  %247 = call i32 @HEVC_BIW_RND_CLIP4(i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %62, align 4
  %249 = load i32, i32* %58, align 4
  %250 = load i32, i32* %63, align 4
  %251 = load i32, i32* %59, align 4
  %252 = load i32, i32* %58, align 4
  %253 = load i32, i32* %59, align 4
  %254 = call i32 @PCKEV_B2_SH(i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %58, align 4
  %256 = load i32, i32* %59, align 4
  %257 = load i32*, i32** %18, align 8
  %258 = load i32, i32* %19, align 4
  %259 = call i32 @ST_SH2(i32 %255, i32 %256, i32* %257, i32 %258)
  %260 = load i32, i32* %19, align 4
  %261 = mul nsw i32 2, %260
  %262 = load i32*, i32** %18, align 8
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  store i32* %264, i32** %18, align 8
  %265 = load i32, i32* %51, align 4
  store i32 %265, i32* %50, align 4
  %266 = load i32, i32* %55, align 4
  store i32 %266, i32* %54, align 4
  %267 = load i32, i32* %67, align 4
  store i32 %267, i32* %66, align 4
  %268 = load i32, i32* %71, align 4
  store i32 %268, i32* %70, align 4
  %269 = load i32, i32* %36, align 4
  store i32 %269, i32* %34, align 4
  %270 = load i32*, i32** %14, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 16
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* %40, align 4
  %274 = load i32, i32* %41, align 4
  %275 = call i32 @LD_SB2(i32* %271, i32 %272, i32 %273, i32 %274)
  %276 = load i32, i32* %15, align 4
  %277 = mul nsw i32 2, %276
  %278 = load i32*, i32** %14, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %14, align 8
  %281 = load i32*, i32** %16, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 16
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* %46, align 4
  %285 = load i32, i32* %47, align 4
  %286 = call i32 @LD_SH2(i32* %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32*, i32** %16, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 24
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %48, align 4
  %291 = load i32, i32* %49, align 4
  %292 = call i32 @LD_SH2(i32* %288, i32 %289, i32 %290, i32 %291)
  %293 = load i32, i32* %17, align 4
  %294 = mul nsw i32 2, %293
  %295 = load i32*, i32** %16, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32* %297, i32** %16, align 8
  %298 = load i32, i32* %40, align 4
  %299 = load i32, i32* %41, align 4
  %300 = call i32 @XORI_B2_128_SB(i32 %298, i32 %299)
  %301 = load i32, i32* %40, align 4
  %302 = load i32, i32* %39, align 4
  %303 = load i32, i32* %41, align 4
  %304 = load i32, i32* %40, align 4
  %305 = load i32, i32* %53, align 4
  %306 = load i32, i32* %57, align 4
  %307 = call i32 @ILVR_B2_SB(i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306)
  %308 = load i32, i32* %40, align 4
  %309 = load i32, i32* %39, align 4
  %310 = load i32, i32* %41, align 4
  %311 = load i32, i32* %40, align 4
  %312 = load i32, i32* %69, align 4
  %313 = load i32, i32* %73, align 4
  %314 = call i32 @ILVL_B2_SB(i32 %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313)
  %315 = load i32, i32* %52, align 4
  %316 = load i32, i32* %53, align 4
  %317 = load i32, i32* %74, align 4
  %318 = load i32, i32* %75, align 4
  %319 = call i32 @HEVC_FILT_4TAP_SH(i32 %315, i32 %316, i32 %317, i32 %318)
  store i32 %319, i32* %60, align 4
  %320 = load i32, i32* %68, align 4
  %321 = load i32, i32* %69, align 4
  %322 = load i32, i32* %74, align 4
  %323 = load i32, i32* %75, align 4
  %324 = call i32 @HEVC_FILT_4TAP_SH(i32 %320, i32 %321, i32 %322, i32 %323)
  store i32 %324, i32* %64, align 4
  %325 = load i32, i32* %56, align 4
  %326 = load i32, i32* %57, align 4
  %327 = load i32, i32* %74, align 4
  %328 = load i32, i32* %75, align 4
  %329 = call i32 @HEVC_FILT_4TAP_SH(i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %61, align 4
  %330 = load i32, i32* %72, align 4
  %331 = load i32, i32* %73, align 4
  %332 = load i32, i32* %74, align 4
  %333 = load i32, i32* %75, align 4
  %334 = call i32 @HEVC_FILT_4TAP_SH(i32 %330, i32 %331, i32 %332, i32 %333)
  store i32 %334, i32* %65, align 4
  %335 = load i32, i32* %60, align 4
  %336 = load i32, i32* %61, align 4
  %337 = load i32, i32* %64, align 4
  %338 = load i32, i32* %65, align 4
  %339 = load i32, i32* %46, align 4
  %340 = load i32, i32* %47, align 4
  %341 = load i32, i32* %48, align 4
  %342 = load i32, i32* %49, align 4
  %343 = load i32, i32* %77, align 4
  %344 = load i32, i32* %79, align 4
  %345 = load i32, i32* %78, align 4
  %346 = load i32, i32* %60, align 4
  %347 = load i32, i32* %61, align 4
  %348 = load i32, i32* %64, align 4
  %349 = load i32, i32* %65, align 4
  %350 = call i32 @HEVC_BIW_RND_CLIP4(i32 %335, i32 %336, i32 %337, i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343, i32 %344, i32 %345, i32 %346, i32 %347, i32 %348, i32 %349)
  %351 = load i32, i32* %64, align 4
  %352 = load i32, i32* %60, align 4
  %353 = load i32, i32* %65, align 4
  %354 = load i32, i32* %61, align 4
  %355 = load i32, i32* %60, align 4
  %356 = load i32, i32* %61, align 4
  %357 = call i32 @PCKEV_B2_SH(i32 %351, i32 %352, i32 %353, i32 %354, i32 %355, i32 %356)
  %358 = load i32, i32* %60, align 4
  %359 = load i32, i32* %61, align 4
  %360 = load i32*, i32** %28, align 8
  %361 = load i32, i32* %19, align 4
  %362 = call i32 @ST_SH2(i32 %358, i32 %359, i32* %360, i32 %361)
  %363 = load i32, i32* %19, align 4
  %364 = mul nsw i32 2, %363
  %365 = load i32*, i32** %28, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  store i32* %367, i32** %28, align 8
  %368 = load i32, i32* %53, align 4
  store i32 %368, i32* %52, align 4
  %369 = load i32, i32* %57, align 4
  store i32 %369, i32* %56, align 4
  %370 = load i32, i32* %69, align 4
  store i32 %370, i32* %68, align 4
  %371 = load i32, i32* %73, align 4
  store i32 %371, i32* %72, align 4
  %372 = load i32, i32* %41, align 4
  store i32 %372, i32* %39, align 4
  br label %174

373:                                              ; preds = %174
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BIW_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
