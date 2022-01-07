; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32* %52, i32** %7, align 8
  %53 = call i32 @__msa_ldi_h(i32 128)
  store i32 %53, i32* %47, align 4
  %54 = load i32, i32* %47, align 4
  %55 = shl i32 %54, 6
  store i32 %55, i32* %47, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @LD_SH(i32* %56)
  store i32 %57, i32* %46, align 4
  %58 = load i32, i32* %46, align 4
  %59 = load i32, i32* %44, align 4
  %60 = load i32, i32* %45, align 4
  %61 = call i32 @SPLATI_H2_SH(i32 %58, i32 0, i32 1, i32 %59, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @LD_SB3(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @XORI_B3_128_SB(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* %30, align 4
  %78 = call i32 @ILVR_B2_SB(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %38, align 4
  %84 = load i32, i32* %40, align 4
  %85 = call i32 @ILVL_B2_SB(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 16
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @LD_SB3(i32* %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 3, %93
  %95 = load i32*, i32** %7, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %7, align 8
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @XORI_B3_128_SB(i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %32, align 4
  %108 = call i32 @ILVR_B2_SB(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = ashr i32 %109, 2
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %115, %6
  %112 = load i32, i32* %13, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %13, align 4
  %114 = icmp ne i32 %112, 0
  br i1 %114, label %115, label %346

115:                                              ; preds = %111
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @LD_SB2(i32* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @XORI_B2_128_SB(i32 %121, i32 %122)
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %27, align 4
  %129 = load i32, i32* %31, align 4
  %130 = call i32 @ILVR_B2_SB(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %39, align 4
  %136 = load i32, i32* %41, align 4
  %137 = call i32 @ILVL_B2_SB(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 16
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %24, align 4
  %143 = call i32 @LD_SB2(i32* %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = mul nsw i32 2, %144
  %146 = load i32*, i32** %7, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32* %148, i32** %7, align 8
  %149 = load i32, i32* %23, align 4
  %150 = load i32, i32* %24, align 4
  %151 = call i32 @XORI_B2_128_SB(i32 %149, i32 %150)
  %152 = load i32, i32* %23, align 4
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %23, align 4
  %156 = load i32, i32* %29, align 4
  %157 = load i32, i32* %33, align 4
  %158 = call i32 @ILVR_B2_SB(i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %47, align 4
  store i32 %159, i32* %34, align 4
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* %27, align 4
  %162 = load i32, i32* %44, align 4
  %163 = load i32, i32* %45, align 4
  %164 = load i32, i32* %34, align 4
  %165 = load i32, i32* %34, align 4
  %166 = call i32 @DPADD_SB2_SH(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* %47, align 4
  store i32 %167, i32* %42, align 4
  %168 = load i32, i32* %38, align 4
  %169 = load i32, i32* %39, align 4
  %170 = load i32, i32* %44, align 4
  %171 = load i32, i32* %45, align 4
  %172 = load i32, i32* %42, align 4
  %173 = load i32, i32* %42, align 4
  %174 = call i32 @DPADD_SB2_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* %47, align 4
  store i32 %175, i32* %35, align 4
  %176 = load i32, i32* %30, align 4
  %177 = load i32, i32* %31, align 4
  %178 = load i32, i32* %44, align 4
  %179 = load i32, i32* %45, align 4
  %180 = load i32, i32* %35, align 4
  %181 = load i32, i32* %35, align 4
  %182 = call i32 @DPADD_SB2_SH(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %47, align 4
  store i32 %183, i32* %43, align 4
  %184 = load i32, i32* %40, align 4
  %185 = load i32, i32* %41, align 4
  %186 = load i32, i32* %44, align 4
  %187 = load i32, i32* %45, align 4
  %188 = load i32, i32* %43, align 4
  %189 = load i32, i32* %43, align 4
  %190 = call i32 @DPADD_SB2_SH(i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, i32 %189)
  %191 = load i32, i32* %47, align 4
  store i32 %191, i32* %36, align 4
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %29, align 4
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* %45, align 4
  %196 = load i32, i32* %36, align 4
  %197 = load i32, i32* %36, align 4
  %198 = call i32 @DPADD_SB2_SH(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %47, align 4
  store i32 %199, i32* %37, align 4
  %200 = load i32, i32* %32, align 4
  %201 = load i32, i32* %33, align 4
  %202 = load i32, i32* %44, align 4
  %203 = load i32, i32* %45, align 4
  %204 = load i32, i32* %37, align 4
  %205 = load i32, i32* %37, align 4
  %206 = call i32 @DPADD_SB2_SH(i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %34, align 4
  %208 = load i32, i32* %42, align 4
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @ST_SH2(i32 %207, i32 %208, i32* %209, i32 8)
  %211 = load i32, i32* %36, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 16
  %214 = call i32 @ST_SH(i32 %211, i32* %213)
  %215 = load i32, i32* %10, align 4
  %216 = load i32*, i32** %9, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32* %218, i32** %9, align 8
  %219 = load i32, i32* %35, align 4
  %220 = load i32, i32* %43, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = call i32 @ST_SH2(i32 %219, i32 %220, i32* %221, i32 8)
  %223 = load i32, i32* %37, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 16
  %226 = call i32 @ST_SH(i32 %223, i32* %225)
  %227 = load i32, i32* %10, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32* %230, i32** %9, align 8
  %231 = load i32*, i32** %7, align 8
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* %19, align 4
  %234 = load i32, i32* %16, align 4
  %235 = call i32 @LD_SB2(i32* %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* %19, align 4
  %237 = load i32, i32* %16, align 4
  %238 = call i32 @XORI_B2_128_SB(i32 %236, i32 %237)
  %239 = load i32, i32* %19, align 4
  %240 = load i32, i32* %18, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %19, align 4
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %30, align 4
  %245 = call i32 @ILVR_B2_SB(i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %19, align 4
  %250 = load i32, i32* %38, align 4
  %251 = load i32, i32* %40, align 4
  %252 = call i32 @ILVL_B2_SB(i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  %253 = load i32*, i32** %7, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 16
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %25, align 4
  %257 = load i32, i32* %22, align 4
  %258 = call i32 @LD_SB2(i32* %254, i32 %255, i32 %256, i32 %257)
  %259 = load i32, i32* %8, align 4
  %260 = mul nsw i32 2, %259
  %261 = load i32*, i32** %7, align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  store i32* %263, i32** %7, align 8
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %22, align 4
  %266 = call i32 @XORI_B2_128_SB(i32 %264, i32 %265)
  %267 = load i32, i32* %25, align 4
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %22, align 4
  %270 = load i32, i32* %25, align 4
  %271 = load i32, i32* %28, align 4
  %272 = load i32, i32* %32, align 4
  %273 = call i32 @ILVR_B2_SB(i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272)
  %274 = load i32, i32* %47, align 4
  store i32 %274, i32* %34, align 4
  %275 = load i32, i32* %27, align 4
  %276 = load i32, i32* %26, align 4
  %277 = load i32, i32* %44, align 4
  %278 = load i32, i32* %45, align 4
  %279 = load i32, i32* %34, align 4
  %280 = load i32, i32* %34, align 4
  %281 = call i32 @DPADD_SB2_SH(i32 %275, i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load i32, i32* %47, align 4
  store i32 %282, i32* %42, align 4
  %283 = load i32, i32* %39, align 4
  %284 = load i32, i32* %38, align 4
  %285 = load i32, i32* %44, align 4
  %286 = load i32, i32* %45, align 4
  %287 = load i32, i32* %42, align 4
  %288 = load i32, i32* %42, align 4
  %289 = call i32 @DPADD_SB2_SH(i32 %283, i32 %284, i32 %285, i32 %286, i32 %287, i32 %288)
  %290 = load i32, i32* %47, align 4
  store i32 %290, i32* %35, align 4
  %291 = load i32, i32* %31, align 4
  %292 = load i32, i32* %30, align 4
  %293 = load i32, i32* %44, align 4
  %294 = load i32, i32* %45, align 4
  %295 = load i32, i32* %35, align 4
  %296 = load i32, i32* %35, align 4
  %297 = call i32 @DPADD_SB2_SH(i32 %291, i32 %292, i32 %293, i32 %294, i32 %295, i32 %296)
  %298 = load i32, i32* %47, align 4
  store i32 %298, i32* %43, align 4
  %299 = load i32, i32* %41, align 4
  %300 = load i32, i32* %40, align 4
  %301 = load i32, i32* %44, align 4
  %302 = load i32, i32* %45, align 4
  %303 = load i32, i32* %43, align 4
  %304 = load i32, i32* %43, align 4
  %305 = call i32 @DPADD_SB2_SH(i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %47, align 4
  store i32 %306, i32* %36, align 4
  %307 = load i32, i32* %29, align 4
  %308 = load i32, i32* %28, align 4
  %309 = load i32, i32* %44, align 4
  %310 = load i32, i32* %45, align 4
  %311 = load i32, i32* %36, align 4
  %312 = load i32, i32* %36, align 4
  %313 = call i32 @DPADD_SB2_SH(i32 %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* %47, align 4
  store i32 %314, i32* %37, align 4
  %315 = load i32, i32* %33, align 4
  %316 = load i32, i32* %32, align 4
  %317 = load i32, i32* %44, align 4
  %318 = load i32, i32* %45, align 4
  %319 = load i32, i32* %37, align 4
  %320 = load i32, i32* %37, align 4
  %321 = call i32 @DPADD_SB2_SH(i32 %315, i32 %316, i32 %317, i32 %318, i32 %319, i32 %320)
  %322 = load i32, i32* %34, align 4
  %323 = load i32, i32* %42, align 4
  %324 = load i32*, i32** %9, align 8
  %325 = call i32 @ST_SH2(i32 %322, i32 %323, i32* %324, i32 8)
  %326 = load i32, i32* %36, align 4
  %327 = load i32*, i32** %9, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 16
  %329 = call i32 @ST_SH(i32 %326, i32* %328)
  %330 = load i32, i32* %10, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %331, i64 %332
  store i32* %333, i32** %9, align 8
  %334 = load i32, i32* %35, align 4
  %335 = load i32, i32* %43, align 4
  %336 = load i32*, i32** %9, align 8
  %337 = call i32 @ST_SH2(i32 %334, i32 %335, i32* %336, i32 8)
  %338 = load i32, i32* %37, align 4
  %339 = load i32*, i32** %9, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 16
  %341 = call i32 @ST_SH(i32 %338, i32* %340)
  %342 = load i32, i32* %10, align 4
  %343 = load i32*, i32** %9, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** %9, align 8
  br label %111

346:                                              ; preds = %111
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVL_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

declare dso_local i32 @ST_SH(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
