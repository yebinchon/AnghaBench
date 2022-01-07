; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h6v6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h6v6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_h6v6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %60 = load i32**, i32*** @subpel_filters_msa, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %60, i64 %63
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %16, align 8
  %66 = load i32**, i32*** @subpel_filters_msa, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %17, align 8
  %72 = load i32*, i32** @mc_filt_mask_arr, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i64 @LD_UB(i32* %73)
  store i64 %74, i64* %30, align 8
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 2, %76
  %78 = load i32*, i32** %10, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %10, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i64 @LD_SH(i32* %82)
  store i64 %83, i64* %35, align 8
  %84 = load i64, i64* %35, align 8
  %85 = load i32, i32* %27, align 4
  %86 = load i32, i32* %28, align 4
  %87 = load i32, i32* %29, align 4
  %88 = call i32 @SPLATI_H3_SB(i64 %84, i32 0, i32 1, i32 2, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %30, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %31, align 8
  %91 = load i64, i64* %30, align 8
  %92 = add nsw i64 %91, 4
  store i64 %92, i64* %32, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = call i32 @LD_SB5(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 5, %101
  %103 = load i32*, i32** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %10, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @XORI_B5_128_SB(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %18, align 4
  %114 = load i64, i64* %30, align 8
  %115 = load i64, i64* %31, align 8
  %116 = load i64, i64* %32, align 8
  %117 = load i32, i32* %27, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %29, align 4
  %120 = call i64 @HORIZ_6TAP_FILT(i32 %112, i32 %113, i64 %114, i64 %115, i64 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %39, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i64, i64* %30, align 8
  %124 = load i64, i64* %31, align 8
  %125 = load i64, i64* %32, align 8
  %126 = load i32, i32* %27, align 4
  %127 = load i32, i32* %28, align 4
  %128 = load i32, i32* %29, align 4
  %129 = call i64 @HORIZ_6TAP_FILT(i32 %121, i32 %122, i64 %123, i64 %124, i64 %125, i32 %126, i32 %127, i32 %128)
  store i64 %129, i64* %40, align 8
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %20, align 4
  %132 = load i64, i64* %30, align 8
  %133 = load i64, i64* %31, align 8
  %134 = load i64, i64* %32, align 8
  %135 = load i32, i32* %27, align 4
  %136 = load i32, i32* %28, align 4
  %137 = load i32, i32* %29, align 4
  %138 = call i64 @HORIZ_6TAP_FILT(i32 %130, i32 %131, i64 %132, i64 %133, i64 %134, i32 %135, i32 %136, i32 %137)
  store i64 %138, i64* %41, align 8
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i64, i64* %30, align 8
  %142 = load i64, i64* %31, align 8
  %143 = load i64, i64* %32, align 8
  %144 = load i32, i32* %27, align 4
  %145 = load i32, i32* %28, align 4
  %146 = load i32, i32* %29, align 4
  %147 = call i64 @HORIZ_6TAP_FILT(i32 %139, i32 %140, i64 %141, i64 %142, i64 %143, i32 %144, i32 %145, i32 %146)
  store i64 %147, i64* %42, align 8
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %22, align 4
  %150 = load i64, i64* %30, align 8
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i32, i32* %27, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %29, align 4
  %156 = call i64 @HORIZ_6TAP_FILT(i32 %148, i32 %149, i64 %150, i64 %151, i64 %152, i32 %153, i32 %154, i32 %155)
  store i64 %156, i64* %43, align 8
  %157 = load i32*, i32** %17, align 8
  %158 = call i64 @LD_SH(i32* %157)
  store i64 %158, i64* %35, align 8
  %159 = load i64, i64* %35, align 8
  %160 = load i64, i64* %36, align 8
  %161 = load i64, i64* %37, align 8
  %162 = load i64, i64* %38, align 8
  %163 = call i32 @SPLATI_H3_SH(i64 %159, i32 0, i32 1, i32 2, i64 %160, i64 %161, i64 %162)
  %164 = load i64, i64* %39, align 8
  %165 = load i64, i64* %40, align 8
  %166 = load i64, i64* %41, align 8
  %167 = load i64, i64* %42, align 8
  %168 = load i64, i64* %48, align 8
  %169 = load i64, i64* %49, align 8
  %170 = call i32 @ILVEV_B2_SH(i64 %164, i64 %165, i64 %166, i64 %167, i64 %168, i64 %169)
  %171 = load i64, i64* %40, align 8
  %172 = load i64, i64* %41, align 8
  %173 = load i64, i64* %42, align 8
  %174 = load i64, i64* %43, align 8
  %175 = load i64, i64* %51, align 8
  %176 = load i64, i64* %52, align 8
  %177 = call i32 @ILVEV_B2_SH(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176)
  %178 = load i32, i32* %12, align 4
  %179 = ashr i32 %178, 2
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %184, %7
  %181 = load i32, i32* %15, align 4
  %182 = add nsw i32 %181, -1
  store i32 %182, i32* %15, align 4
  %183 = icmp ne i32 %181, 0
  br i1 %183, label %184, label %317

184:                                              ; preds = %180
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %23, align 4
  %188 = load i32, i32* %24, align 4
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* %26, align 4
  %191 = call i32 @LD_SB4(i32* %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %11, align 4
  %193 = mul nsw i32 4, %192
  %194 = load i32*, i32** %10, align 8
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32* %196, i32** %10, align 8
  %197 = load i32, i32* %23, align 4
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %25, align 4
  %200 = load i32, i32* %26, align 4
  %201 = call i32 @XORI_B4_128_SB(i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %23, align 4
  %204 = load i64, i64* %30, align 8
  %205 = load i64, i64* %31, align 8
  %206 = load i64, i64* %32, align 8
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %29, align 4
  %210 = call i64 @HORIZ_6TAP_FILT(i32 %202, i32 %203, i64 %204, i64 %205, i64 %206, i32 %207, i32 %208, i32 %209)
  store i64 %210, i64* %44, align 8
  %211 = load i64, i64* %44, align 8
  %212 = trunc i64 %211 to i32
  %213 = load i64, i64* %43, align 8
  %214 = trunc i64 %213 to i32
  %215 = call i64 @__msa_ilvev_b(i32 %212, i32 %214)
  store i64 %215, i64* %50, align 8
  %216 = load i64, i64* %48, align 8
  %217 = load i64, i64* %49, align 8
  %218 = load i64, i64* %50, align 8
  %219 = load i64, i64* %36, align 8
  %220 = load i64, i64* %37, align 8
  %221 = load i64, i64* %38, align 8
  %222 = call i64 @DPADD_SH3_SH(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221)
  store i64 %222, i64* %56, align 8
  %223 = load i32, i32* %24, align 4
  %224 = load i32, i32* %24, align 4
  %225 = load i64, i64* %30, align 8
  %226 = load i64, i64* %31, align 8
  %227 = load i64, i64* %32, align 8
  %228 = load i32, i32* %27, align 4
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* %29, align 4
  %231 = call i64 @HORIZ_6TAP_FILT(i32 %223, i32 %224, i64 %225, i64 %226, i64 %227, i32 %228, i32 %229, i32 %230)
  store i64 %231, i64* %45, align 8
  %232 = load i64, i64* %45, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i64, i64* %44, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i64 @__msa_ilvev_b(i32 %233, i32 %235)
  store i64 %236, i64* %53, align 8
  %237 = load i64, i64* %51, align 8
  %238 = load i64, i64* %52, align 8
  %239 = load i64, i64* %53, align 8
  %240 = load i64, i64* %36, align 8
  %241 = load i64, i64* %37, align 8
  %242 = load i64, i64* %38, align 8
  %243 = call i64 @DPADD_SH3_SH(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242)
  store i64 %243, i64* %57, align 8
  %244 = load i32, i32* %25, align 4
  %245 = load i32, i32* %25, align 4
  %246 = load i64, i64* %30, align 8
  %247 = load i64, i64* %31, align 8
  %248 = load i64, i64* %32, align 8
  %249 = load i32, i32* %27, align 4
  %250 = load i32, i32* %28, align 4
  %251 = load i32, i32* %29, align 4
  %252 = call i64 @HORIZ_6TAP_FILT(i32 %244, i32 %245, i64 %246, i64 %247, i64 %248, i32 %249, i32 %250, i32 %251)
  store i64 %252, i64* %46, align 8
  %253 = load i64, i64* %46, align 8
  %254 = trunc i64 %253 to i32
  %255 = load i64, i64* %45, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i64 @__msa_ilvev_b(i32 %254, i32 %256)
  store i64 %257, i64* %55, align 8
  %258 = load i64, i64* %49, align 8
  %259 = load i64, i64* %50, align 8
  %260 = load i64, i64* %55, align 8
  %261 = load i64, i64* %36, align 8
  %262 = load i64, i64* %37, align 8
  %263 = load i64, i64* %38, align 8
  %264 = call i64 @DPADD_SH3_SH(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263)
  store i64 %264, i64* %58, align 8
  %265 = load i32, i32* %26, align 4
  %266 = load i32, i32* %26, align 4
  %267 = load i64, i64* %30, align 8
  %268 = load i64, i64* %31, align 8
  %269 = load i64, i64* %32, align 8
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* %28, align 4
  %272 = load i32, i32* %29, align 4
  %273 = call i64 @HORIZ_6TAP_FILT(i32 %265, i32 %266, i64 %267, i64 %268, i64 %269, i32 %270, i32 %271, i32 %272)
  store i64 %273, i64* %47, align 8
  %274 = load i64, i64* %47, align 8
  %275 = trunc i64 %274 to i32
  %276 = load i64, i64* %46, align 8
  %277 = trunc i64 %276 to i32
  %278 = call i64 @__msa_ilvev_b(i32 %275, i32 %277)
  store i64 %278, i64* %54, align 8
  %279 = load i64, i64* %52, align 8
  %280 = load i64, i64* %53, align 8
  %281 = load i64, i64* %54, align 8
  %282 = load i64, i64* %36, align 8
  %283 = load i64, i64* %37, align 8
  %284 = load i64, i64* %38, align 8
  %285 = call i64 @DPADD_SH3_SH(i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284)
  store i64 %285, i64* %59, align 8
  %286 = load i64, i64* %56, align 8
  %287 = load i64, i64* %57, align 8
  %288 = load i64, i64* %58, align 8
  %289 = load i64, i64* %59, align 8
  %290 = call i32 @SRARI_H4_SH(i64 %286, i64 %287, i64 %288, i64 %289, i32 7)
  %291 = load i64, i64* %56, align 8
  %292 = load i64, i64* %57, align 8
  %293 = load i64, i64* %58, align 8
  %294 = load i64, i64* %59, align 8
  %295 = call i32 @SAT_SH4_SH(i64 %291, i64 %292, i64 %293, i64 %294, i32 7)
  %296 = load i64, i64* %56, align 8
  %297 = load i64, i64* %57, align 8
  %298 = call i64 @PCKEV_XORI128_UB(i64 %296, i64 %297)
  store i64 %298, i64* %33, align 8
  %299 = load i64, i64* %58, align 8
  %300 = load i64, i64* %59, align 8
  %301 = call i64 @PCKEV_XORI128_UB(i64 %299, i64 %300)
  store i64 %301, i64* %34, align 8
  %302 = load i64, i64* %33, align 8
  %303 = load i64, i64* %34, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = load i32, i32* %9, align 4
  %306 = call i32 @ST_D4(i64 %302, i64 %303, i32 0, i32 1, i32 0, i32 1, i32* %304, i32 %305)
  %307 = load i32, i32* %9, align 4
  %308 = mul nsw i32 4, %307
  %309 = load i32*, i32** %8, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %309, i64 %310
  store i32* %311, i32** %8, align 8
  %312 = load i64, i64* %47, align 8
  store i64 %312, i64* %43, align 8
  %313 = load i64, i64* %50, align 8
  store i64 %313, i64* %48, align 8
  %314 = load i64, i64* %55, align 8
  store i64 %314, i64* %49, align 8
  %315 = load i64, i64* %53, align 8
  store i64 %315, i64* %51, align 8
  %316 = load i64, i64* %54, align 8
  store i64 %316, i64* %52, align 8
  br label %180

317:                                              ; preds = %180
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H3_SB(i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_6TAP_FILT(i32, i32, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @SPLATI_H3_SH(i64, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @DPADD_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
