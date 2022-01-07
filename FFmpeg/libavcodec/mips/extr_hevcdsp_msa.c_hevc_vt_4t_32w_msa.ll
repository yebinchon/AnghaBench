; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_32w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_32w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_4t_32w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_32w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32* %58, i32** %7, align 8
  %59 = call i32 @__msa_ldi_h(i32 128)
  store i32 %59, i32* %53, align 4
  %60 = load i32, i32* %53, align 4
  %61 = shl i32 %60, 6
  store i32 %61, i32* %53, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @LD_SH(i32* %62)
  store i32 %63, i32* %52, align 4
  %64 = load i32, i32* %52, align 4
  %65 = load i32, i32* %50, align 4
  %66 = load i32, i32* %51, align 4
  %67 = call i32 @SPLATI_H2_SH(i32 %64, i32 0, i32 1, i32 %65, i32 %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @LD_SB3(i32* %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @XORI_B3_128_SB(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %26, align 4
  %83 = load i32, i32* %30, align 4
  %84 = call i32 @ILVR_B2_SB(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %38, align 4
  %90 = load i32, i32* %42, align 4
  %91 = call i32 @ILVL_B2_SB(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 16
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %22, align 4
  %98 = call i32 @LD_SB3(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 3, %99
  %101 = load i32*, i32** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %7, align 8
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @XORI_B3_128_SB(i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %28, align 4
  %113 = load i32, i32* %32, align 4
  %114 = call i32 @ILVR_B2_SB(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %40, align 4
  %120 = load i32, i32* %44, align 4
  %121 = call i32 @ILVL_B2_SB(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = ashr i32 %122, 2
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %128, %6
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %13, align 4
  %127 = icmp ne i32 %125, 0
  br i1 %127, label %128, label %397

128:                                              ; preds = %124
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @LD_SB2(i32* %129, i32 %130, i32 %131, i32 %132)
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @XORI_B2_128_SB(i32 %134, i32 %135)
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %31, align 4
  %143 = call i32 @ILVR_B2_SB(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142)
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %39, align 4
  %149 = load i32, i32* %43, align 4
  %150 = call i32 @ILVL_B2_SB(i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 16
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %23, align 4
  %155 = load i32, i32* %24, align 4
  %156 = call i32 @LD_SB2(i32* %152, i32 %153, i32 %154, i32 %155)
  %157 = load i32, i32* %8, align 4
  %158 = mul nsw i32 2, %157
  %159 = load i32*, i32** %7, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %7, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @XORI_B2_128_SB(i32 %162, i32 %163)
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* %24, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %29, align 4
  %170 = load i32, i32* %33, align 4
  %171 = call i32 @ILVR_B2_SB(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %41, align 4
  %177 = load i32, i32* %45, align 4
  %178 = call i32 @ILVL_B2_SB(i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = load i32, i32* %53, align 4
  store i32 %179, i32* %34, align 4
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %50, align 4
  %183 = load i32, i32* %51, align 4
  %184 = load i32, i32* %34, align 4
  %185 = load i32, i32* %34, align 4
  %186 = call i32 @DPADD_SB2_SH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %53, align 4
  store i32 %187, i32* %46, align 4
  %188 = load i32, i32* %38, align 4
  %189 = load i32, i32* %39, align 4
  %190 = load i32, i32* %50, align 4
  %191 = load i32, i32* %51, align 4
  %192 = load i32, i32* %46, align 4
  %193 = load i32, i32* %46, align 4
  %194 = call i32 @DPADD_SB2_SH(i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %53, align 4
  store i32 %195, i32* %35, align 4
  %196 = load i32, i32* %30, align 4
  %197 = load i32, i32* %31, align 4
  %198 = load i32, i32* %50, align 4
  %199 = load i32, i32* %51, align 4
  %200 = load i32, i32* %35, align 4
  %201 = load i32, i32* %35, align 4
  %202 = call i32 @DPADD_SB2_SH(i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* %53, align 4
  store i32 %203, i32* %47, align 4
  %204 = load i32, i32* %42, align 4
  %205 = load i32, i32* %43, align 4
  %206 = load i32, i32* %50, align 4
  %207 = load i32, i32* %51, align 4
  %208 = load i32, i32* %47, align 4
  %209 = load i32, i32* %47, align 4
  %210 = call i32 @DPADD_SB2_SH(i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209)
  %211 = load i32, i32* %53, align 4
  store i32 %211, i32* %36, align 4
  %212 = load i32, i32* %28, align 4
  %213 = load i32, i32* %29, align 4
  %214 = load i32, i32* %50, align 4
  %215 = load i32, i32* %51, align 4
  %216 = load i32, i32* %36, align 4
  %217 = load i32, i32* %36, align 4
  %218 = call i32 @DPADD_SB2_SH(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* %53, align 4
  store i32 %219, i32* %48, align 4
  %220 = load i32, i32* %40, align 4
  %221 = load i32, i32* %41, align 4
  %222 = load i32, i32* %50, align 4
  %223 = load i32, i32* %51, align 4
  %224 = load i32, i32* %48, align 4
  %225 = load i32, i32* %48, align 4
  %226 = call i32 @DPADD_SB2_SH(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %53, align 4
  store i32 %227, i32* %37, align 4
  %228 = load i32, i32* %32, align 4
  %229 = load i32, i32* %33, align 4
  %230 = load i32, i32* %50, align 4
  %231 = load i32, i32* %51, align 4
  %232 = load i32, i32* %37, align 4
  %233 = load i32, i32* %37, align 4
  %234 = call i32 @DPADD_SB2_SH(i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233)
  %235 = load i32, i32* %53, align 4
  store i32 %235, i32* %49, align 4
  %236 = load i32, i32* %44, align 4
  %237 = load i32, i32* %45, align 4
  %238 = load i32, i32* %50, align 4
  %239 = load i32, i32* %51, align 4
  %240 = load i32, i32* %49, align 4
  %241 = load i32, i32* %49, align 4
  %242 = call i32 @DPADD_SB2_SH(i32 %236, i32 %237, i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %46, align 4
  %245 = load i32, i32* %36, align 4
  %246 = load i32, i32* %48, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 @ST_SH4(i32 %243, i32 %244, i32 %245, i32 %246, i32* %247, i32 8)
  %249 = load i32, i32* %10, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i32, i32* %250, i64 %251
  store i32* %252, i32** %9, align 8
  %253 = load i32, i32* %35, align 4
  %254 = load i32, i32* %47, align 4
  %255 = load i32, i32* %37, align 4
  %256 = load i32, i32* %49, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = call i32 @ST_SH4(i32 %253, i32 %254, i32 %255, i32 %256, i32* %257, i32 8)
  %259 = load i32, i32* %10, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = sext i32 %259 to i64
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32* %262, i32** %9, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @LD_SB2(i32* %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %19, align 4
  %269 = load i32, i32* %16, align 4
  %270 = call i32 @XORI_B2_128_SB(i32 %268, i32 %269)
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* %30, align 4
  %277 = call i32 @ILVR_B2_SB(i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 %276)
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %16, align 4
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* %38, align 4
  %283 = load i32, i32* %42, align 4
  %284 = call i32 @ILVL_B2_SB(i32 %278, i32 %279, i32 %280, i32 %281, i32 %282, i32 %283)
  %285 = load i32*, i32** %7, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 16
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %25, align 4
  %289 = load i32, i32* %22, align 4
  %290 = call i32 @LD_SB2(i32* %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %8, align 4
  %292 = mul nsw i32 2, %291
  %293 = load i32*, i32** %7, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32* %295, i32** %7, align 8
  %296 = load i32, i32* %25, align 4
  %297 = load i32, i32* %22, align 4
  %298 = call i32 @XORI_B2_128_SB(i32 %296, i32 %297)
  %299 = load i32, i32* %25, align 4
  %300 = load i32, i32* %24, align 4
  %301 = load i32, i32* %22, align 4
  %302 = load i32, i32* %25, align 4
  %303 = load i32, i32* %28, align 4
  %304 = load i32, i32* %32, align 4
  %305 = call i32 @ILVR_B2_SB(i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304)
  %306 = load i32, i32* %25, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %22, align 4
  %309 = load i32, i32* %25, align 4
  %310 = load i32, i32* %40, align 4
  %311 = load i32, i32* %44, align 4
  %312 = call i32 @ILVL_B2_SB(i32 %306, i32 %307, i32 %308, i32 %309, i32 %310, i32 %311)
  %313 = load i32, i32* %53, align 4
  store i32 %313, i32* %34, align 4
  %314 = load i32, i32* %27, align 4
  %315 = load i32, i32* %26, align 4
  %316 = load i32, i32* %50, align 4
  %317 = load i32, i32* %51, align 4
  %318 = load i32, i32* %34, align 4
  %319 = load i32, i32* %34, align 4
  %320 = call i32 @DPADD_SB2_SH(i32 %314, i32 %315, i32 %316, i32 %317, i32 %318, i32 %319)
  %321 = load i32, i32* %53, align 4
  store i32 %321, i32* %46, align 4
  %322 = load i32, i32* %39, align 4
  %323 = load i32, i32* %38, align 4
  %324 = load i32, i32* %50, align 4
  %325 = load i32, i32* %51, align 4
  %326 = load i32, i32* %46, align 4
  %327 = load i32, i32* %46, align 4
  %328 = call i32 @DPADD_SB2_SH(i32 %322, i32 %323, i32 %324, i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* %53, align 4
  store i32 %329, i32* %35, align 4
  %330 = load i32, i32* %31, align 4
  %331 = load i32, i32* %30, align 4
  %332 = load i32, i32* %50, align 4
  %333 = load i32, i32* %51, align 4
  %334 = load i32, i32* %35, align 4
  %335 = load i32, i32* %35, align 4
  %336 = call i32 @DPADD_SB2_SH(i32 %330, i32 %331, i32 %332, i32 %333, i32 %334, i32 %335)
  %337 = load i32, i32* %53, align 4
  store i32 %337, i32* %47, align 4
  %338 = load i32, i32* %43, align 4
  %339 = load i32, i32* %42, align 4
  %340 = load i32, i32* %50, align 4
  %341 = load i32, i32* %51, align 4
  %342 = load i32, i32* %47, align 4
  %343 = load i32, i32* %47, align 4
  %344 = call i32 @DPADD_SB2_SH(i32 %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  %345 = load i32, i32* %53, align 4
  store i32 %345, i32* %36, align 4
  %346 = load i32, i32* %29, align 4
  %347 = load i32, i32* %28, align 4
  %348 = load i32, i32* %50, align 4
  %349 = load i32, i32* %51, align 4
  %350 = load i32, i32* %36, align 4
  %351 = load i32, i32* %36, align 4
  %352 = call i32 @DPADD_SB2_SH(i32 %346, i32 %347, i32 %348, i32 %349, i32 %350, i32 %351)
  %353 = load i32, i32* %53, align 4
  store i32 %353, i32* %48, align 4
  %354 = load i32, i32* %41, align 4
  %355 = load i32, i32* %40, align 4
  %356 = load i32, i32* %50, align 4
  %357 = load i32, i32* %51, align 4
  %358 = load i32, i32* %48, align 4
  %359 = load i32, i32* %48, align 4
  %360 = call i32 @DPADD_SB2_SH(i32 %354, i32 %355, i32 %356, i32 %357, i32 %358, i32 %359)
  %361 = load i32, i32* %53, align 4
  store i32 %361, i32* %37, align 4
  %362 = load i32, i32* %33, align 4
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %50, align 4
  %365 = load i32, i32* %51, align 4
  %366 = load i32, i32* %37, align 4
  %367 = load i32, i32* %37, align 4
  %368 = call i32 @DPADD_SB2_SH(i32 %362, i32 %363, i32 %364, i32 %365, i32 %366, i32 %367)
  %369 = load i32, i32* %53, align 4
  store i32 %369, i32* %49, align 4
  %370 = load i32, i32* %45, align 4
  %371 = load i32, i32* %44, align 4
  %372 = load i32, i32* %50, align 4
  %373 = load i32, i32* %51, align 4
  %374 = load i32, i32* %49, align 4
  %375 = load i32, i32* %49, align 4
  %376 = call i32 @DPADD_SB2_SH(i32 %370, i32 %371, i32 %372, i32 %373, i32 %374, i32 %375)
  %377 = load i32, i32* %34, align 4
  %378 = load i32, i32* %46, align 4
  %379 = load i32, i32* %36, align 4
  %380 = load i32, i32* %48, align 4
  %381 = load i32*, i32** %9, align 8
  %382 = call i32 @ST_SH4(i32 %377, i32 %378, i32 %379, i32 %380, i32* %381, i32 8)
  %383 = load i32, i32* %10, align 4
  %384 = load i32*, i32** %9, align 8
  %385 = sext i32 %383 to i64
  %386 = getelementptr inbounds i32, i32* %384, i64 %385
  store i32* %386, i32** %9, align 8
  %387 = load i32, i32* %35, align 4
  %388 = load i32, i32* %47, align 4
  %389 = load i32, i32* %37, align 4
  %390 = load i32, i32* %49, align 4
  %391 = load i32*, i32** %9, align 8
  %392 = call i32 @ST_SH4(i32 %387, i32 %388, i32 %389, i32 %390, i32* %391, i32 8)
  %393 = load i32, i32* %10, align 4
  %394 = load i32*, i32** %9, align 8
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i32, i32* %394, i64 %395
  store i32* %396, i32** %9, align 8
  br label %124

397:                                              ; preds = %124
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

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
