; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_biw_msa.c_hevc_vt_biwgt_4t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32)* @hevc_vt_biwgt_4t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_biwgt_4t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
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
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = sext i32 %59 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %14, align 8
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %25, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %26, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %28, align 4
  %69 = load i32, i32* %22, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %23, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %71, %73
  store i32 %74, i32* %29, align 4
  %75 = load i32, i32* %23, align 4
  %76 = mul nsw i32 128, %75
  store i32 %76, i32* %30, align 4
  %77 = load i32, i32* %30, align 4
  %78 = shl i32 %77, 6
  store i32 %78, i32* %30, align 4
  %79 = load i32, i32* %30, align 4
  %80 = load i32, i32* %28, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %28, align 4
  %82 = load i32, i32* %28, align 4
  %83 = call i32 @__msa_fill_w(i32 %82)
  store i32 %83, i32* %57, align 4
  %84 = load i32, i32* %29, align 4
  %85 = call i32 @__msa_fill_w(i32 %84)
  store i32 %85, i32* %56, align 4
  %86 = load i32, i32* %26, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @__msa_fill_w(i32 %87)
  store i32 %88, i32* %58, align 4
  %89 = load i32*, i32** %20, align 8
  %90 = call i32 @LD_SH(i32* %89)
  store i32 %90, i32* %55, align 4
  %91 = load i32, i32* %55, align 4
  %92 = load i32, i32* %53, align 4
  %93 = load i32, i32* %54, align 4
  %94 = call i32 @SPLATI_H2_SH(i32 %91, i32 0, i32 1, i32 %92, i32 %93)
  %95 = load i32*, i32** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* %32, align 4
  %99 = load i32, i32* %33, align 4
  %100 = call i32 @LD_SB3(i32* %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %15, align 4
  %102 = mul nsw i32 3, %101
  %103 = load i32*, i32** %14, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %14, align 8
  %106 = load i32, i32* %31, align 4
  %107 = load i32, i32* %32, align 4
  %108 = load i32, i32* %33, align 4
  %109 = call i32 @XORI_B3_128_SB(i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %32, align 4
  %111 = load i32, i32* %31, align 4
  %112 = load i32, i32* %33, align 4
  %113 = load i32, i32* %32, align 4
  %114 = load i32, i32* %41, align 4
  %115 = load i32, i32* %43, align 4
  %116 = call i32 @ILVR_B2_SB(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %32, align 4
  %118 = load i32, i32* %31, align 4
  %119 = load i32, i32* %33, align 4
  %120 = load i32, i32* %32, align 4
  %121 = load i32, i32* %45, align 4
  %122 = load i32, i32* %47, align 4
  %123 = call i32 @ILVL_B2_SB(i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %21, align 4
  %125 = ashr i32 %124, 2
  store i32 %125, i32* %27, align 4
  br label %126

126:                                              ; preds = %130, %13
  %127 = load i32, i32* %27, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %27, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %323

130:                                              ; preds = %126
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %34, align 4
  %134 = load i32, i32* %35, align 4
  %135 = call i32 @LD_SB2(i32* %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 2, %136
  %138 = load i32*, i32** %14, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %14, align 8
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load i32, i32* %37, align 4
  %144 = load i32, i32* %38, align 4
  %145 = call i32 @LD_SH2(i32* %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32*, i32** %16, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %39, align 4
  %150 = load i32, i32* %40, align 4
  %151 = call i32 @LD_SH2(i32* %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %17, align 4
  %153 = mul nsw i32 2, %152
  %154 = load i32*, i32** %16, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32* %156, i32** %16, align 8
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %35, align 4
  %159 = call i32 @XORI_B2_128_SB(i32 %157, i32 %158)
  %160 = load i32, i32* %34, align 4
  %161 = load i32, i32* %33, align 4
  %162 = load i32, i32* %35, align 4
  %163 = load i32, i32* %34, align 4
  %164 = load i32, i32* %42, align 4
  %165 = load i32, i32* %44, align 4
  %166 = call i32 @ILVR_B2_SB(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %34, align 4
  %168 = load i32, i32* %33, align 4
  %169 = load i32, i32* %35, align 4
  %170 = load i32, i32* %34, align 4
  %171 = load i32, i32* %46, align 4
  %172 = load i32, i32* %48, align 4
  %173 = call i32 @ILVL_B2_SB(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %41, align 4
  %175 = load i32, i32* %42, align 4
  %176 = load i32, i32* %53, align 4
  %177 = load i32, i32* %54, align 4
  %178 = call i32 @HEVC_FILT_4TAP_SH(i32 %174, i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %49, align 4
  %179 = load i32, i32* %43, align 4
  %180 = load i32, i32* %44, align 4
  %181 = load i32, i32* %53, align 4
  %182 = load i32, i32* %54, align 4
  %183 = call i32 @HEVC_FILT_4TAP_SH(i32 %179, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %50, align 4
  %184 = load i32, i32* %45, align 4
  %185 = load i32, i32* %46, align 4
  %186 = load i32, i32* %53, align 4
  %187 = load i32, i32* %54, align 4
  %188 = call i32 @HEVC_FILT_4TAP_SH(i32 %184, i32 %185, i32 %186, i32 %187)
  store i32 %188, i32* %51, align 4
  %189 = load i32, i32* %47, align 4
  %190 = load i32, i32* %48, align 4
  %191 = load i32, i32* %53, align 4
  %192 = load i32, i32* %54, align 4
  %193 = call i32 @HEVC_FILT_4TAP_SH(i32 %189, i32 %190, i32 %191, i32 %192)
  store i32 %193, i32* %52, align 4
  %194 = load i32, i32* %49, align 4
  %195 = load i32, i32* %50, align 4
  %196 = load i32, i32* %51, align 4
  %197 = load i32, i32* %52, align 4
  %198 = load i32, i32* %37, align 4
  %199 = load i32, i32* %38, align 4
  %200 = load i32, i32* %39, align 4
  %201 = load i32, i32* %40, align 4
  %202 = load i32, i32* %56, align 4
  %203 = load i32, i32* %58, align 4
  %204 = load i32, i32* %57, align 4
  %205 = load i32, i32* %49, align 4
  %206 = load i32, i32* %50, align 4
  %207 = load i32, i32* %51, align 4
  %208 = load i32, i32* %52, align 4
  %209 = call i32 @HEVC_BIW_RND_CLIP4(i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i32, i32* %51, align 4
  %211 = load i32, i32* %49, align 4
  %212 = load i32, i32* %52, align 4
  %213 = load i32, i32* %50, align 4
  %214 = load i32, i32* %49, align 4
  %215 = load i32, i32* %50, align 4
  %216 = call i32 @PCKEV_B2_SH(i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %49, align 4
  %218 = load i32, i32* %50, align 4
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* %19, align 4
  %221 = call i32 @ST_SH2(i32 %217, i32 %218, i32* %219, i32 %220)
  %222 = load i32, i32* %19, align 4
  %223 = mul nsw i32 2, %222
  %224 = load i32*, i32** %18, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32* %226, i32** %18, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %36, align 4
  %230 = load i32, i32* %33, align 4
  %231 = call i32 @LD_SB2(i32* %227, i32 %228, i32 %229, i32 %230)
  %232 = load i32, i32* %15, align 4
  %233 = mul nsw i32 2, %232
  %234 = load i32*, i32** %14, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %14, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load i32, i32* %37, align 4
  %240 = load i32, i32* %38, align 4
  %241 = call i32 @LD_SH2(i32* %237, i32 %238, i32 %239, i32 %240)
  %242 = load i32*, i32** %16, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 8
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %39, align 4
  %246 = load i32, i32* %40, align 4
  %247 = call i32 @LD_SH2(i32* %243, i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %17, align 4
  %249 = mul nsw i32 2, %248
  %250 = load i32*, i32** %16, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %16, align 8
  %253 = load i32, i32* %36, align 4
  %254 = load i32, i32* %33, align 4
  %255 = call i32 @XORI_B2_128_SB(i32 %253, i32 %254)
  %256 = load i32, i32* %36, align 4
  %257 = load i32, i32* %35, align 4
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %36, align 4
  %260 = load i32, i32* %41, align 4
  %261 = load i32, i32* %43, align 4
  %262 = call i32 @ILVR_B2_SB(i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %36, align 4
  %264 = load i32, i32* %35, align 4
  %265 = load i32, i32* %33, align 4
  %266 = load i32, i32* %36, align 4
  %267 = load i32, i32* %45, align 4
  %268 = load i32, i32* %47, align 4
  %269 = call i32 @ILVL_B2_SB(i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %42, align 4
  %271 = load i32, i32* %41, align 4
  %272 = load i32, i32* %53, align 4
  %273 = load i32, i32* %54, align 4
  %274 = call i32 @HEVC_FILT_4TAP_SH(i32 %270, i32 %271, i32 %272, i32 %273)
  store i32 %274, i32* %49, align 4
  %275 = load i32, i32* %44, align 4
  %276 = load i32, i32* %43, align 4
  %277 = load i32, i32* %53, align 4
  %278 = load i32, i32* %54, align 4
  %279 = call i32 @HEVC_FILT_4TAP_SH(i32 %275, i32 %276, i32 %277, i32 %278)
  store i32 %279, i32* %50, align 4
  %280 = load i32, i32* %46, align 4
  %281 = load i32, i32* %45, align 4
  %282 = load i32, i32* %53, align 4
  %283 = load i32, i32* %54, align 4
  %284 = call i32 @HEVC_FILT_4TAP_SH(i32 %280, i32 %281, i32 %282, i32 %283)
  store i32 %284, i32* %51, align 4
  %285 = load i32, i32* %48, align 4
  %286 = load i32, i32* %47, align 4
  %287 = load i32, i32* %53, align 4
  %288 = load i32, i32* %54, align 4
  %289 = call i32 @HEVC_FILT_4TAP_SH(i32 %285, i32 %286, i32 %287, i32 %288)
  store i32 %289, i32* %52, align 4
  %290 = load i32, i32* %49, align 4
  %291 = load i32, i32* %50, align 4
  %292 = load i32, i32* %51, align 4
  %293 = load i32, i32* %52, align 4
  %294 = load i32, i32* %37, align 4
  %295 = load i32, i32* %38, align 4
  %296 = load i32, i32* %39, align 4
  %297 = load i32, i32* %40, align 4
  %298 = load i32, i32* %56, align 4
  %299 = load i32, i32* %58, align 4
  %300 = load i32, i32* %57, align 4
  %301 = load i32, i32* %49, align 4
  %302 = load i32, i32* %50, align 4
  %303 = load i32, i32* %51, align 4
  %304 = load i32, i32* %52, align 4
  %305 = call i32 @HEVC_BIW_RND_CLIP4(i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %51, align 4
  %307 = load i32, i32* %49, align 4
  %308 = load i32, i32* %52, align 4
  %309 = load i32, i32* %50, align 4
  %310 = load i32, i32* %49, align 4
  %311 = load i32, i32* %50, align 4
  %312 = call i32 @PCKEV_B2_SH(i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311)
  %313 = load i32, i32* %49, align 4
  %314 = load i32, i32* %50, align 4
  %315 = load i32*, i32** %18, align 8
  %316 = load i32, i32* %19, align 4
  %317 = call i32 @ST_SH2(i32 %313, i32 %314, i32* %315, i32 %316)
  %318 = load i32, i32* %19, align 4
  %319 = mul nsw i32 2, %318
  %320 = load i32*, i32** %18, align 8
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %320, i64 %321
  store i32* %322, i32** %18, align 8
  br label %126

323:                                              ; preds = %126
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
