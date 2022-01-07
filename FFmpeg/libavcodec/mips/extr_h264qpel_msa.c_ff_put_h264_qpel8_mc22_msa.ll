; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc22_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc22_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel8_mc22_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
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
  %60 = alloca i64, align 8
  %61 = alloca i64, align 8
  %62 = alloca i64, align 8
  %63 = alloca i64, align 8
  %64 = alloca i64, align 8
  %65 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %66 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %66, i64* %61, align 8
  %67 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %67, i64* %62, align 8
  %68 = call i64 @__msa_fill_w(i32 131067)
  store i64 %68, i64* %63, align 8
  %69 = load i32*, i32** @luma_mask_arr, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i32 @LD_SB3(i32* %70, i32 16, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 %76, 2
  %78 = load i32*, i32** %5, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @LD_SB5(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @XORI_B5_128_SB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 5, %96
  %98 = load i32*, i32** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i64 @AVC_HORZ_FILTER_SH(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %20, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i64 @AVC_HORZ_FILTER_SH(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i64 %112, i64* %21, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = call i64 @AVC_HORZ_FILTER_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i64 %118, i64* %22, align 8
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i64 @AVC_HORZ_FILTER_SH(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  store i64 %124, i64* %23, align 8
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %19, align 4
  %130 = call i64 @AVC_HORZ_FILTER_SH(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store i64 %130, i64* %24, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @LD_SB4(i32* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @XORI_B4_128_SB(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %6, align 4
  %144 = mul nsw i32 4, %143
  %145 = load i32*, i32** %5, align 8
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %5, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* %19, align 4
  %153 = call i64 @AVC_HORZ_FILTER_SH(i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  store i64 %153, i64* %25, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %18, align 4
  %158 = load i32, i32* %19, align 4
  %159 = call i64 @AVC_HORZ_FILTER_SH(i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  store i64 %159, i64* %26, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %19, align 4
  %165 = call i64 @AVC_HORZ_FILTER_SH(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  store i64 %165, i64* %27, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %19, align 4
  %171 = call i64 @AVC_HORZ_FILTER_SH(i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  store i64 %171, i64* %28, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i64, i64* %20, align 8
  %174 = load i64, i64* %22, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i64, i64* %23, align 8
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %23, align 8
  %180 = load i64, i64* %33, align 8
  %181 = load i64, i64* %34, align 8
  %182 = load i64, i64* %35, align 8
  %183 = load i64, i64* %36, align 8
  %184 = call i32 @ILVR_H4_SH(i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %21, align 8
  %186 = load i64, i64* %20, align 8
  %187 = load i64, i64* %22, align 8
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %23, align 8
  %190 = load i64, i64* %22, align 8
  %191 = load i64, i64* %24, align 8
  %192 = load i64, i64* %23, align 8
  %193 = load i64, i64* %49, align 8
  %194 = load i64, i64* %50, align 8
  %195 = load i64, i64* %51, align 8
  %196 = load i64, i64* %52, align 8
  %197 = call i32 @ILVL_H4_SH(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %25, align 8
  %199 = load i64, i64* %24, align 8
  %200 = load i64, i64* %26, align 8
  %201 = load i64, i64* %25, align 8
  %202 = load i64, i64* %27, align 8
  %203 = load i64, i64* %26, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load i64, i64* %27, align 8
  %206 = load i64, i64* %37, align 8
  %207 = load i64, i64* %38, align 8
  %208 = load i64, i64* %39, align 8
  %209 = load i64, i64* %40, align 8
  %210 = call i32 @ILVR_H4_SH(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  %211 = load i64, i64* %25, align 8
  %212 = load i64, i64* %24, align 8
  %213 = load i64, i64* %26, align 8
  %214 = load i64, i64* %25, align 8
  %215 = load i64, i64* %27, align 8
  %216 = load i64, i64* %26, align 8
  %217 = load i64, i64* %28, align 8
  %218 = load i64, i64* %27, align 8
  %219 = load i64, i64* %53, align 8
  %220 = load i64, i64* %54, align 8
  %221 = load i64, i64* %55, align 8
  %222 = load i64, i64* %56, align 8
  %223 = call i32 @ILVL_H4_SH(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i64, i64* %33, align 8
  %225 = load i64, i64* %35, align 8
  %226 = load i64, i64* %37, align 8
  %227 = load i64, i64* %61, align 8
  %228 = load i64, i64* %62, align 8
  %229 = load i64, i64* %63, align 8
  %230 = call i64 @AVC_DOT_SW3_SW(i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229)
  store i64 %230, i64* %64, align 8
  %231 = load i64, i64* %49, align 8
  %232 = load i64, i64* %51, align 8
  %233 = load i64, i64* %53, align 8
  %234 = load i64, i64* %61, align 8
  %235 = load i64, i64* %62, align 8
  %236 = load i64, i64* %63, align 8
  %237 = call i64 @AVC_DOT_SW3_SW(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  store i64 %237, i64* %65, align 8
  %238 = load i64, i64* %65, align 8
  %239 = load i64, i64* %64, align 8
  %240 = call i64 @__msa_pckev_h(i64 %238, i64 %239)
  store i64 %240, i64* %45, align 8
  %241 = load i64, i64* %34, align 8
  %242 = load i64, i64* %36, align 8
  %243 = load i64, i64* %38, align 8
  %244 = load i64, i64* %61, align 8
  %245 = load i64, i64* %62, align 8
  %246 = load i64, i64* %63, align 8
  %247 = call i64 @AVC_DOT_SW3_SW(i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246)
  store i64 %247, i64* %64, align 8
  %248 = load i64, i64* %50, align 8
  %249 = load i64, i64* %52, align 8
  %250 = load i64, i64* %54, align 8
  %251 = load i64, i64* %61, align 8
  %252 = load i64, i64* %62, align 8
  %253 = load i64, i64* %63, align 8
  %254 = call i64 @AVC_DOT_SW3_SW(i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  store i64 %254, i64* %65, align 8
  %255 = load i64, i64* %65, align 8
  %256 = load i64, i64* %64, align 8
  %257 = call i64 @__msa_pckev_h(i64 %255, i64 %256)
  store i64 %257, i64* %46, align 8
  %258 = load i64, i64* %35, align 8
  %259 = load i64, i64* %37, align 8
  %260 = load i64, i64* %39, align 8
  %261 = load i64, i64* %61, align 8
  %262 = load i64, i64* %62, align 8
  %263 = load i64, i64* %63, align 8
  %264 = call i64 @AVC_DOT_SW3_SW(i64 %258, i64 %259, i64 %260, i64 %261, i64 %262, i64 %263)
  store i64 %264, i64* %64, align 8
  %265 = load i64, i64* %51, align 8
  %266 = load i64, i64* %53, align 8
  %267 = load i64, i64* %55, align 8
  %268 = load i64, i64* %61, align 8
  %269 = load i64, i64* %62, align 8
  %270 = load i64, i64* %63, align 8
  %271 = call i64 @AVC_DOT_SW3_SW(i64 %265, i64 %266, i64 %267, i64 %268, i64 %269, i64 %270)
  store i64 %271, i64* %65, align 8
  %272 = load i64, i64* %65, align 8
  %273 = load i64, i64* %64, align 8
  %274 = call i64 @__msa_pckev_h(i64 %272, i64 %273)
  store i64 %274, i64* %47, align 8
  %275 = load i64, i64* %36, align 8
  %276 = load i64, i64* %38, align 8
  %277 = load i64, i64* %40, align 8
  %278 = load i64, i64* %61, align 8
  %279 = load i64, i64* %62, align 8
  %280 = load i64, i64* %63, align 8
  %281 = call i64 @AVC_DOT_SW3_SW(i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280)
  store i64 %281, i64* %64, align 8
  %282 = load i64, i64* %52, align 8
  %283 = load i64, i64* %54, align 8
  %284 = load i64, i64* %56, align 8
  %285 = load i64, i64* %61, align 8
  %286 = load i64, i64* %62, align 8
  %287 = load i64, i64* %63, align 8
  %288 = call i64 @AVC_DOT_SW3_SW(i64 %282, i64 %283, i64 %284, i64 %285, i64 %286, i64 %287)
  store i64 %288, i64* %65, align 8
  %289 = load i64, i64* %65, align 8
  %290 = load i64, i64* %64, align 8
  %291 = call i64 @__msa_pckev_h(i64 %289, i64 %290)
  store i64 %291, i64* %48, align 8
  %292 = load i64, i64* %45, align 8
  %293 = load i64, i64* %46, align 8
  %294 = call i32 @PCKEV_XORI128_UB(i64 %292, i64 %293)
  store i32 %294, i32* %10, align 4
  %295 = load i64, i64* %47, align 8
  %296 = load i64, i64* %48, align 8
  %297 = call i32 @PCKEV_XORI128_UB(i64 %295, i64 %296)
  store i32 %297, i32* %11, align 4
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load i32*, i32** %4, align 8
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @ST_D4(i32 %298, i32 %299, i32 0, i32 1, i32 0, i32 1, i32* %300, i32 %301)
  %303 = load i32, i32* %6, align 4
  %304 = mul nsw i32 4, %303
  %305 = load i32*, i32** %4, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32* %307, i32** %4, align 8
  %308 = load i32*, i32** %5, align 8
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %13, align 4
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %15, align 4
  %314 = call i32 @LD_SB4(i32* %308, i32 %309, i32 %310, i32 %311, i32 %312, i32 %313)
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call i32 @XORI_B4_128_SB(i32 %315, i32 %316, i32 %317, i32 %318)
  %320 = load i32, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = load i32, i32* %17, align 4
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %19, align 4
  %325 = call i64 @AVC_HORZ_FILTER_SH(i32 %320, i32 %321, i32 %322, i32 %323, i32 %324)
  store i64 %325, i64* %29, align 8
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %13, align 4
  %328 = load i32, i32* %17, align 4
  %329 = load i32, i32* %18, align 4
  %330 = load i32, i32* %19, align 4
  %331 = call i64 @AVC_HORZ_FILTER_SH(i32 %326, i32 %327, i32 %328, i32 %329, i32 %330)
  store i64 %331, i64* %30, align 8
  %332 = load i32, i32* %14, align 4
  %333 = load i32, i32* %14, align 4
  %334 = load i32, i32* %17, align 4
  %335 = load i32, i32* %18, align 4
  %336 = load i32, i32* %19, align 4
  %337 = call i64 @AVC_HORZ_FILTER_SH(i32 %332, i32 %333, i32 %334, i32 %335, i32 %336)
  store i64 %337, i64* %31, align 8
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %17, align 4
  %341 = load i32, i32* %18, align 4
  %342 = load i32, i32* %19, align 4
  %343 = call i64 @AVC_HORZ_FILTER_SH(i32 %338, i32 %339, i32 %340, i32 %341, i32 %342)
  store i64 %343, i64* %32, align 8
  %344 = load i64, i64* %29, align 8
  %345 = load i64, i64* %28, align 8
  %346 = load i64, i64* %30, align 8
  %347 = load i64, i64* %29, align 8
  %348 = load i64, i64* %31, align 8
  %349 = load i64, i64* %30, align 8
  %350 = load i64, i64* %32, align 8
  %351 = load i64, i64* %31, align 8
  %352 = load i64, i64* %41, align 8
  %353 = load i64, i64* %42, align 8
  %354 = load i64, i64* %43, align 8
  %355 = load i64, i64* %44, align 8
  %356 = call i32 @ILVR_H4_SH(i64 %344, i64 %345, i64 %346, i64 %347, i64 %348, i64 %349, i64 %350, i64 %351, i64 %352, i64 %353, i64 %354, i64 %355)
  %357 = load i64, i64* %29, align 8
  %358 = load i64, i64* %28, align 8
  %359 = load i64, i64* %30, align 8
  %360 = load i64, i64* %29, align 8
  %361 = load i64, i64* %31, align 8
  %362 = load i64, i64* %30, align 8
  %363 = load i64, i64* %32, align 8
  %364 = load i64, i64* %31, align 8
  %365 = load i64, i64* %57, align 8
  %366 = load i64, i64* %58, align 8
  %367 = load i64, i64* %59, align 8
  %368 = load i64, i64* %60, align 8
  %369 = call i32 @ILVL_H4_SH(i64 %357, i64 %358, i64 %359, i64 %360, i64 %361, i64 %362, i64 %363, i64 %364, i64 %365, i64 %366, i64 %367, i64 %368)
  %370 = load i64, i64* %37, align 8
  %371 = load i64, i64* %39, align 8
  %372 = load i64, i64* %41, align 8
  %373 = load i64, i64* %61, align 8
  %374 = load i64, i64* %62, align 8
  %375 = load i64, i64* %63, align 8
  %376 = call i64 @AVC_DOT_SW3_SW(i64 %370, i64 %371, i64 %372, i64 %373, i64 %374, i64 %375)
  store i64 %376, i64* %64, align 8
  %377 = load i64, i64* %53, align 8
  %378 = load i64, i64* %55, align 8
  %379 = load i64, i64* %57, align 8
  %380 = load i64, i64* %61, align 8
  %381 = load i64, i64* %62, align 8
  %382 = load i64, i64* %63, align 8
  %383 = call i64 @AVC_DOT_SW3_SW(i64 %377, i64 %378, i64 %379, i64 %380, i64 %381, i64 %382)
  store i64 %383, i64* %65, align 8
  %384 = load i64, i64* %65, align 8
  %385 = load i64, i64* %64, align 8
  %386 = call i64 @__msa_pckev_h(i64 %384, i64 %385)
  store i64 %386, i64* %45, align 8
  %387 = load i64, i64* %38, align 8
  %388 = load i64, i64* %40, align 8
  %389 = load i64, i64* %42, align 8
  %390 = load i64, i64* %61, align 8
  %391 = load i64, i64* %62, align 8
  %392 = load i64, i64* %63, align 8
  %393 = call i64 @AVC_DOT_SW3_SW(i64 %387, i64 %388, i64 %389, i64 %390, i64 %391, i64 %392)
  store i64 %393, i64* %64, align 8
  %394 = load i64, i64* %54, align 8
  %395 = load i64, i64* %56, align 8
  %396 = load i64, i64* %58, align 8
  %397 = load i64, i64* %61, align 8
  %398 = load i64, i64* %62, align 8
  %399 = load i64, i64* %63, align 8
  %400 = call i64 @AVC_DOT_SW3_SW(i64 %394, i64 %395, i64 %396, i64 %397, i64 %398, i64 %399)
  store i64 %400, i64* %65, align 8
  %401 = load i64, i64* %65, align 8
  %402 = load i64, i64* %64, align 8
  %403 = call i64 @__msa_pckev_h(i64 %401, i64 %402)
  store i64 %403, i64* %46, align 8
  %404 = load i64, i64* %39, align 8
  %405 = load i64, i64* %41, align 8
  %406 = load i64, i64* %43, align 8
  %407 = load i64, i64* %61, align 8
  %408 = load i64, i64* %62, align 8
  %409 = load i64, i64* %63, align 8
  %410 = call i64 @AVC_DOT_SW3_SW(i64 %404, i64 %405, i64 %406, i64 %407, i64 %408, i64 %409)
  store i64 %410, i64* %64, align 8
  %411 = load i64, i64* %55, align 8
  %412 = load i64, i64* %57, align 8
  %413 = load i64, i64* %59, align 8
  %414 = load i64, i64* %61, align 8
  %415 = load i64, i64* %62, align 8
  %416 = load i64, i64* %63, align 8
  %417 = call i64 @AVC_DOT_SW3_SW(i64 %411, i64 %412, i64 %413, i64 %414, i64 %415, i64 %416)
  store i64 %417, i64* %65, align 8
  %418 = load i64, i64* %65, align 8
  %419 = load i64, i64* %64, align 8
  %420 = call i64 @__msa_pckev_h(i64 %418, i64 %419)
  store i64 %420, i64* %47, align 8
  %421 = load i64, i64* %40, align 8
  %422 = load i64, i64* %42, align 8
  %423 = load i64, i64* %44, align 8
  %424 = load i64, i64* %61, align 8
  %425 = load i64, i64* %62, align 8
  %426 = load i64, i64* %63, align 8
  %427 = call i64 @AVC_DOT_SW3_SW(i64 %421, i64 %422, i64 %423, i64 %424, i64 %425, i64 %426)
  store i64 %427, i64* %64, align 8
  %428 = load i64, i64* %56, align 8
  %429 = load i64, i64* %58, align 8
  %430 = load i64, i64* %60, align 8
  %431 = load i64, i64* %61, align 8
  %432 = load i64, i64* %62, align 8
  %433 = load i64, i64* %63, align 8
  %434 = call i64 @AVC_DOT_SW3_SW(i64 %428, i64 %429, i64 %430, i64 %431, i64 %432, i64 %433)
  store i64 %434, i64* %65, align 8
  %435 = load i64, i64* %65, align 8
  %436 = load i64, i64* %64, align 8
  %437 = call i64 @__msa_pckev_h(i64 %435, i64 %436)
  store i64 %437, i64* %48, align 8
  %438 = load i64, i64* %45, align 8
  %439 = load i64, i64* %46, align 8
  %440 = call i32 @PCKEV_XORI128_UB(i64 %438, i64 %439)
  store i32 %440, i32* %10, align 4
  %441 = load i64, i64* %47, align 8
  %442 = load i64, i64* %48, align 8
  %443 = call i32 @PCKEV_XORI128_UB(i64 %441, i64 %442)
  store i32 %443, i32* %11, align 4
  %444 = load i32, i32* %10, align 4
  %445 = load i32, i32* %11, align 4
  %446 = load i32*, i32** %4, align 8
  %447 = load i32, i32* %6, align 4
  %448 = call i32 @ST_D4(i32 %444, i32 %445, i32 0, i32 1, i32 0, i32 1, i32* %446, i32 %447)
  ret void
}

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
