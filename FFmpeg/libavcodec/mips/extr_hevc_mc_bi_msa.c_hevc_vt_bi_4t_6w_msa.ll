; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_6w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_6w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_6w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_6w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = sub i64 0, %48
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %9, align 8
  %51 = call i32 @__msa_ldi_h(i32 128)
  store i32 %51, i32* %45, align 4
  %52 = load i32, i32* %45, align 4
  %53 = shl i32 %52, 6
  store i32 %53, i32* %45, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @LD_SH(i32* %54)
  store i32 %55, i32* %44, align 4
  %56 = load i32, i32* %44, align 4
  %57 = load i32, i32* %42, align 4
  %58 = load i32, i32* %43, align 4
  %59 = call i32 @SPLATI_H2_SH(i32 %56, i32 0, i32 1, i32 %57, i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @LD_SB3(i32* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = mul nsw i32 3, %66
  %68 = load i32*, i32** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = call i32 @LD_SB2(i32* %71, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 2, %76
  %78 = load i32*, i32** %9, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %9, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = call i32 @LD_SB2(i32* %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 2, %86
  %88 = load i32*, i32** %9, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %25, align 4
  %95 = call i32 @LD_SB2(i32* %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 2, %96
  %98 = load i32*, i32** %9, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %9, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %26, align 4
  %104 = load i32, i32* %27, align 4
  %105 = call i32 @LD_SB2(i32* %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 2, %106
  %108 = load i32*, i32** %9, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %9, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %28, align 4
  %114 = load i32, i32* %29, align 4
  %115 = load i32, i32* %30, align 4
  %116 = load i32, i32* %31, align 4
  %117 = call i32 @LD_SH4(i32* %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = mul nsw i32 4, %118
  %120 = load i32*, i32** %11, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %11, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %19, align 4
  %126 = call i32 @XORI_B3_128_SB(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %21, align 4
  %129 = call i32 @XORI_B2_128_SB(i32 %127, i32 %128)
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %23, align 4
  %132 = call i32 @XORI_B2_128_SB(i32 %130, i32 %131)
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* %25, align 4
  %135 = call i32 @XORI_B2_128_SB(i32 %133, i32 %134)
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = call i32 @XORI_B2_128_SB(i32 %136, i32 %137)
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %32, align 4
  %144 = load i32, i32* %34, align 4
  %145 = call i32 @ILVR_B2_SB(i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %33, align 4
  %151 = load i32, i32* %35, align 4
  %152 = call i32 @ILVR_B2_SB(i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %45, align 4
  store i32 %153, i32* %38, align 4
  %154 = load i32, i32* %32, align 4
  %155 = load i32, i32* %33, align 4
  %156 = load i32, i32* %42, align 4
  %157 = load i32, i32* %43, align 4
  %158 = load i32, i32* %38, align 4
  %159 = load i32, i32* %38, align 4
  %160 = call i32 @DPADD_SB2_SH(i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %45, align 4
  store i32 %161, i32* %39, align 4
  %162 = load i32, i32* %34, align 4
  %163 = load i32, i32* %35, align 4
  %164 = load i32, i32* %42, align 4
  %165 = load i32, i32* %43, align 4
  %166 = load i32, i32* %39, align 4
  %167 = load i32, i32* %39, align 4
  %168 = call i32 @DPADD_SB2_SH(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %36, align 4
  %174 = load i32, i32* %37, align 4
  %175 = call i32 @ILVR_B2_SB(i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %45, align 4
  store i32 %176, i32* %40, align 4
  %177 = load i32, i32* %33, align 4
  %178 = load i32, i32* %36, align 4
  %179 = load i32, i32* %42, align 4
  %180 = load i32, i32* %43, align 4
  %181 = load i32, i32* %40, align 4
  %182 = load i32, i32* %40, align 4
  %183 = call i32 @DPADD_SB2_SH(i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i32, i32* %45, align 4
  store i32 %184, i32* %41, align 4
  %185 = load i32, i32* %35, align 4
  %186 = load i32, i32* %37, align 4
  %187 = load i32, i32* %42, align 4
  %188 = load i32, i32* %43, align 4
  %189 = load i32, i32* %41, align 4
  %190 = load i32, i32* %41, align 4
  %191 = call i32 @DPADD_SB2_SH(i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %29, align 4
  %194 = load i32, i32* %30, align 4
  %195 = load i32, i32* %31, align 4
  %196 = load i32, i32* %38, align 4
  %197 = load i32, i32* %39, align 4
  %198 = load i32, i32* %40, align 4
  %199 = load i32, i32* %41, align 4
  %200 = load i32, i32* %38, align 4
  %201 = load i32, i32* %39, align 4
  %202 = load i32, i32* %40, align 4
  %203 = load i32, i32* %41, align 4
  %204 = call i32 @HEVC_BI_RND_CLIP4(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 7, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %39, align 4
  %206 = load i32, i32* %38, align 4
  %207 = load i32, i32* %41, align 4
  %208 = load i32, i32* %40, align 4
  %209 = load i32, i32* %38, align 4
  %210 = load i32, i32* %39, align 4
  %211 = call i32 @PCKEV_B2_SH(i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %38, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @ST_W2(i32 %212, i32 0, i32 2, i32* %213, i32 %214)
  %216 = load i32, i32* %38, align 4
  %217 = load i32*, i32** %13, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 4
  %219 = load i32, i32* %14, align 4
  %220 = call i32 @ST_H2(i32 %216, i32 2, i32 6, i32* %218, i32 %219)
  %221 = load i32, i32* %39, align 4
  %222 = load i32*, i32** %13, align 8
  %223 = load i32, i32* %14, align 4
  %224 = mul nsw i32 2, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @ST_W2(i32 %221, i32 0, i32 2, i32* %226, i32 %227)
  %229 = load i32, i32* %39, align 4
  %230 = load i32*, i32** %13, align 8
  %231 = load i32, i32* %14, align 4
  %232 = mul nsw i32 2, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = getelementptr inbounds i32, i32* %234, i64 4
  %236 = load i32, i32* %14, align 4
  %237 = call i32 @ST_H2(i32 %229, i32 2, i32 6, i32* %235, i32 %236)
  %238 = load i32, i32* %14, align 4
  %239 = mul nsw i32 4, %238
  %240 = load i32*, i32** %13, align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32* %242, i32** %13, align 8
  %243 = load i32*, i32** %11, align 8
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %28, align 4
  %246 = load i32, i32* %29, align 4
  %247 = load i32, i32* %30, align 4
  %248 = load i32, i32* %31, align 4
  %249 = call i32 @LD_SH4(i32* %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248)
  %250 = load i32, i32* %12, align 4
  %251 = mul nsw i32 4, %250
  %252 = load i32*, i32** %11, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %11, align 8
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* %23, align 4
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %24, align 4
  %259 = load i32, i32* %33, align 4
  %260 = load i32, i32* %35, align 4
  %261 = call i32 @ILVR_B2_SB(i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %45, align 4
  store i32 %262, i32* %38, align 4
  %263 = load i32, i32* %36, align 4
  %264 = load i32, i32* %33, align 4
  %265 = load i32, i32* %42, align 4
  %266 = load i32, i32* %43, align 4
  %267 = load i32, i32* %38, align 4
  %268 = load i32, i32* %38, align 4
  %269 = call i32 @DPADD_SB2_SH(i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  %270 = load i32, i32* %45, align 4
  store i32 %270, i32* %39, align 4
  %271 = load i32, i32* %37, align 4
  %272 = load i32, i32* %35, align 4
  %273 = load i32, i32* %42, align 4
  %274 = load i32, i32* %43, align 4
  %275 = load i32, i32* %39, align 4
  %276 = load i32, i32* %39, align 4
  %277 = call i32 @DPADD_SB2_SH(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* %26, align 4
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %27, align 4
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %36, align 4
  %283 = load i32, i32* %37, align 4
  %284 = call i32 @ILVR_B2_SB(i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32, i32* %45, align 4
  store i32 %285, i32* %40, align 4
  %286 = load i32, i32* %33, align 4
  %287 = load i32, i32* %36, align 4
  %288 = load i32, i32* %42, align 4
  %289 = load i32, i32* %43, align 4
  %290 = load i32, i32* %40, align 4
  %291 = load i32, i32* %40, align 4
  %292 = call i32 @DPADD_SB2_SH(i32 %286, i32 %287, i32 %288, i32 %289, i32 %290, i32 %291)
  %293 = load i32, i32* %45, align 4
  store i32 %293, i32* %41, align 4
  %294 = load i32, i32* %35, align 4
  %295 = load i32, i32* %37, align 4
  %296 = load i32, i32* %42, align 4
  %297 = load i32, i32* %43, align 4
  %298 = load i32, i32* %41, align 4
  %299 = load i32, i32* %41, align 4
  %300 = call i32 @DPADD_SB2_SH(i32 %294, i32 %295, i32 %296, i32 %297, i32 %298, i32 %299)
  %301 = load i32, i32* %28, align 4
  %302 = load i32, i32* %29, align 4
  %303 = load i32, i32* %30, align 4
  %304 = load i32, i32* %31, align 4
  %305 = load i32, i32* %38, align 4
  %306 = load i32, i32* %39, align 4
  %307 = load i32, i32* %40, align 4
  %308 = load i32, i32* %41, align 4
  %309 = load i32, i32* %38, align 4
  %310 = load i32, i32* %39, align 4
  %311 = load i32, i32* %40, align 4
  %312 = load i32, i32* %41, align 4
  %313 = call i32 @HEVC_BI_RND_CLIP4(i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306, i32 %307, i32 %308, i32 7, i32 %309, i32 %310, i32 %311, i32 %312)
  %314 = load i32, i32* %39, align 4
  %315 = load i32, i32* %38, align 4
  %316 = load i32, i32* %41, align 4
  %317 = load i32, i32* %40, align 4
  %318 = load i32, i32* %38, align 4
  %319 = load i32, i32* %39, align 4
  %320 = call i32 @PCKEV_B2_SH(i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* %38, align 4
  %322 = load i32*, i32** %13, align 8
  %323 = load i32, i32* %14, align 4
  %324 = call i32 @ST_W2(i32 %321, i32 0, i32 2, i32* %322, i32 %323)
  %325 = load i32, i32* %38, align 4
  %326 = load i32*, i32** %13, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 4
  %328 = load i32, i32* %14, align 4
  %329 = call i32 @ST_H2(i32 %325, i32 2, i32 6, i32* %327, i32 %328)
  %330 = load i32, i32* %39, align 4
  %331 = load i32*, i32** %13, align 8
  %332 = load i32, i32* %14, align 4
  %333 = mul nsw i32 2, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %14, align 4
  %337 = call i32 @ST_W2(i32 %330, i32 0, i32 2, i32* %335, i32 %336)
  %338 = load i32, i32* %39, align 4
  %339 = load i32*, i32** %13, align 8
  %340 = load i32, i32* %14, align 4
  %341 = mul nsw i32 2, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = load i32, i32* %14, align 4
  %346 = call i32 @ST_H2(i32 %338, i32 2, i32 6, i32* %344, i32 %345)
  %347 = load i32, i32* %14, align 4
  %348 = mul nsw i32 4, %347
  %349 = load i32*, i32** %13, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  store i32* %351, i32** %13, align 8
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_H2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
