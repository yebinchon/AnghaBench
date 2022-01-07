; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc21_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc21_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel16_mc21_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
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
  %66 = load i32*, i32** %4, align 8
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 2, %68
  %70 = sext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = getelementptr inbounds i32, i32* %72, i64 -2
  store i32* %73, i32** %8, align 8
  store i32 -327679, i32* %11, align 4
  store i32 1310740, i32* %12, align 4
  store i32 131067, i32* %13, align 4
  %74 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %74, i64* %61, align 8
  %75 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %75, i64* %62, align 8
  %76 = call i64 @__msa_fill_w(i32 131067)
  store i64 %76, i64* %63, align 8
  %77 = load i32*, i32** @luma_mask_arr, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = call i32 @LD_SB3(i32* %78, i32 16, i32 %79, i32 %80, i32 %81)
  store i32 2, i32* %9, align 4
  br label %83

83:                                               ; preds = %351, %3
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  %86 = icmp ne i32 %84, 0
  br i1 %86, label %87, label %356

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  store i32* %88, i32** %4, align 8
  %89 = load i32*, i32** %8, align 8
  store i32* %89, i32** %5, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @LD_SB5(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @XORI_B5_128_SB(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 5, %104
  %106 = load i32*, i32** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %5, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %26, align 4
  %113 = load i32, i32* %27, align 4
  %114 = call i64 @AVC_HORZ_FILTER_SH(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i64 %114, i64* %28, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %27, align 4
  %120 = call i64 @AVC_HORZ_FILTER_SH(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %29, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* %27, align 4
  %126 = call i64 @AVC_HORZ_FILTER_SH(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  store i64 %126, i64* %30, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %27, align 4
  %132 = call i64 @AVC_HORZ_FILTER_SH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i64 %132, i64* %31, align 8
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = call i64 @AVC_HORZ_FILTER_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i64 %138, i64* %32, align 8
  store i32 4, i32* %10, align 4
  br label %139

139:                                              ; preds = %143, %87
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %10, align 4
  %142 = icmp ne i32 %140, 0
  br i1 %142, label %143, label %351

143:                                              ; preds = %139
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %21, align 4
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %24, align 4
  %150 = call i32 @LD_SB4(i32* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 4, %151
  %153 = load i32*, i32** %5, align 8
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** %5, align 8
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %22, align 4
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i32 @XORI_B4_128_SB(i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %25, align 4
  %164 = load i32, i32* %26, align 4
  %165 = load i32, i32* %27, align 4
  %166 = call i64 @AVC_HORZ_FILTER_SH(i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  store i64 %166, i64* %33, align 8
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* %26, align 4
  %171 = load i32, i32* %27, align 4
  %172 = call i64 @AVC_HORZ_FILTER_SH(i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  store i64 %172, i64* %34, align 8
  %173 = load i32, i32* %23, align 4
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %25, align 4
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %27, align 4
  %178 = call i64 @AVC_HORZ_FILTER_SH(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  store i64 %178, i64* %35, align 8
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %24, align 4
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %26, align 4
  %183 = load i32, i32* %27, align 4
  %184 = call i64 @AVC_HORZ_FILTER_SH(i32 %179, i32 %180, i32 %181, i32 %182, i32 %183)
  store i64 %184, i64* %36, align 8
  %185 = load i64, i64* %29, align 8
  %186 = load i64, i64* %28, align 8
  %187 = load i64, i64* %30, align 8
  %188 = load i64, i64* %29, align 8
  %189 = load i64, i64* %31, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* %32, align 8
  %192 = load i64, i64* %31, align 8
  %193 = load i64, i64* %45, align 8
  %194 = load i64, i64* %46, align 8
  %195 = load i64, i64* %47, align 8
  %196 = load i64, i64* %48, align 8
  %197 = call i32 @ILVR_H4_SH(i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196)
  %198 = load i64, i64* %29, align 8
  %199 = load i64, i64* %28, align 8
  %200 = load i64, i64* %30, align 8
  %201 = load i64, i64* %29, align 8
  %202 = load i64, i64* %31, align 8
  %203 = load i64, i64* %30, align 8
  %204 = load i64, i64* %32, align 8
  %205 = load i64, i64* %31, align 8
  %206 = load i64, i64* %53, align 8
  %207 = load i64, i64* %54, align 8
  %208 = load i64, i64* %55, align 8
  %209 = load i64, i64* %56, align 8
  %210 = call i32 @ILVL_H4_SH(i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  %211 = load i64, i64* %33, align 8
  %212 = load i64, i64* %32, align 8
  %213 = load i64, i64* %34, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* %35, align 8
  %216 = load i64, i64* %34, align 8
  %217 = load i64, i64* %36, align 8
  %218 = load i64, i64* %35, align 8
  %219 = load i64, i64* %49, align 8
  %220 = load i64, i64* %50, align 8
  %221 = load i64, i64* %51, align 8
  %222 = load i64, i64* %52, align 8
  %223 = call i32 @ILVR_H4_SH(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  %224 = load i64, i64* %33, align 8
  %225 = load i64, i64* %32, align 8
  %226 = load i64, i64* %34, align 8
  %227 = load i64, i64* %33, align 8
  %228 = load i64, i64* %35, align 8
  %229 = load i64, i64* %34, align 8
  %230 = load i64, i64* %36, align 8
  %231 = load i64, i64* %35, align 8
  %232 = load i64, i64* %57, align 8
  %233 = load i64, i64* %58, align 8
  %234 = load i64, i64* %59, align 8
  %235 = load i64, i64* %60, align 8
  %236 = call i32 @ILVL_H4_SH(i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %45, align 8
  %238 = load i64, i64* %47, align 8
  %239 = load i64, i64* %49, align 8
  %240 = load i64, i64* %61, align 8
  %241 = load i64, i64* %62, align 8
  %242 = load i64, i64* %63, align 8
  %243 = call i64 @AVC_DOT_SW3_SW(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242)
  store i64 %243, i64* %64, align 8
  %244 = load i64, i64* %53, align 8
  %245 = load i64, i64* %55, align 8
  %246 = load i64, i64* %57, align 8
  %247 = load i64, i64* %61, align 8
  %248 = load i64, i64* %62, align 8
  %249 = load i64, i64* %63, align 8
  %250 = call i64 @AVC_DOT_SW3_SW(i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249)
  store i64 %250, i64* %65, align 8
  %251 = load i64, i64* %65, align 8
  %252 = load i64, i64* %64, align 8
  %253 = call i64 @__msa_pckev_h(i64 %251, i64 %252)
  store i64 %253, i64* %37, align 8
  %254 = load i64, i64* %46, align 8
  %255 = load i64, i64* %48, align 8
  %256 = load i64, i64* %50, align 8
  %257 = load i64, i64* %61, align 8
  %258 = load i64, i64* %62, align 8
  %259 = load i64, i64* %63, align 8
  %260 = call i64 @AVC_DOT_SW3_SW(i64 %254, i64 %255, i64 %256, i64 %257, i64 %258, i64 %259)
  store i64 %260, i64* %64, align 8
  %261 = load i64, i64* %54, align 8
  %262 = load i64, i64* %56, align 8
  %263 = load i64, i64* %58, align 8
  %264 = load i64, i64* %61, align 8
  %265 = load i64, i64* %62, align 8
  %266 = load i64, i64* %63, align 8
  %267 = call i64 @AVC_DOT_SW3_SW(i64 %261, i64 %262, i64 %263, i64 %264, i64 %265, i64 %266)
  store i64 %267, i64* %65, align 8
  %268 = load i64, i64* %65, align 8
  %269 = load i64, i64* %64, align 8
  %270 = call i64 @__msa_pckev_h(i64 %268, i64 %269)
  store i64 %270, i64* %39, align 8
  %271 = load i64, i64* %47, align 8
  %272 = load i64, i64* %49, align 8
  %273 = load i64, i64* %51, align 8
  %274 = load i64, i64* %61, align 8
  %275 = load i64, i64* %62, align 8
  %276 = load i64, i64* %63, align 8
  %277 = call i64 @AVC_DOT_SW3_SW(i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276)
  store i64 %277, i64* %64, align 8
  %278 = load i64, i64* %55, align 8
  %279 = load i64, i64* %57, align 8
  %280 = load i64, i64* %59, align 8
  %281 = load i64, i64* %61, align 8
  %282 = load i64, i64* %62, align 8
  %283 = load i64, i64* %63, align 8
  %284 = call i64 @AVC_DOT_SW3_SW(i64 %278, i64 %279, i64 %280, i64 %281, i64 %282, i64 %283)
  store i64 %284, i64* %65, align 8
  %285 = load i64, i64* %65, align 8
  %286 = load i64, i64* %64, align 8
  %287 = call i64 @__msa_pckev_h(i64 %285, i64 %286)
  store i64 %287, i64* %41, align 8
  %288 = load i64, i64* %48, align 8
  %289 = load i64, i64* %50, align 8
  %290 = load i64, i64* %52, align 8
  %291 = load i64, i64* %61, align 8
  %292 = load i64, i64* %62, align 8
  %293 = load i64, i64* %63, align 8
  %294 = call i64 @AVC_DOT_SW3_SW(i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293)
  store i64 %294, i64* %64, align 8
  %295 = load i64, i64* %56, align 8
  %296 = load i64, i64* %58, align 8
  %297 = load i64, i64* %60, align 8
  %298 = load i64, i64* %61, align 8
  %299 = load i64, i64* %62, align 8
  %300 = load i64, i64* %63, align 8
  %301 = call i64 @AVC_DOT_SW3_SW(i64 %295, i64 %296, i64 %297, i64 %298, i64 %299, i64 %300)
  store i64 %301, i64* %65, align 8
  %302 = load i64, i64* %65, align 8
  %303 = load i64, i64* %64, align 8
  %304 = call i64 @__msa_pckev_h(i64 %302, i64 %303)
  store i64 %304, i64* %43, align 8
  %305 = load i64, i64* %30, align 8
  %306 = call i64 @__msa_srari_h(i64 %305, i32 5)
  store i64 %306, i64* %38, align 8
  %307 = load i64, i64* %31, align 8
  %308 = call i64 @__msa_srari_h(i64 %307, i32 5)
  store i64 %308, i64* %40, align 8
  %309 = load i64, i64* %32, align 8
  %310 = call i64 @__msa_srari_h(i64 %309, i32 5)
  store i64 %310, i64* %42, align 8
  %311 = load i64, i64* %33, align 8
  %312 = call i64 @__msa_srari_h(i64 %311, i32 5)
  store i64 %312, i64* %44, align 8
  %313 = load i64, i64* %38, align 8
  %314 = load i64, i64* %40, align 8
  %315 = load i64, i64* %42, align 8
  %316 = load i64, i64* %44, align 8
  %317 = call i32 @SAT_SH4_SH(i64 %313, i64 %314, i64 %315, i64 %316, i32 7)
  %318 = load i64, i64* %37, align 8
  %319 = load i64, i64* %38, align 8
  %320 = call i64 @__msa_aver_s_h(i64 %318, i64 %319)
  store i64 %320, i64* %37, align 8
  %321 = load i64, i64* %39, align 8
  %322 = load i64, i64* %40, align 8
  %323 = call i64 @__msa_aver_s_h(i64 %321, i64 %322)
  store i64 %323, i64* %38, align 8
  %324 = load i64, i64* %41, align 8
  %325 = load i64, i64* %42, align 8
  %326 = call i64 @__msa_aver_s_h(i64 %324, i64 %325)
  store i64 %326, i64* %39, align 8
  %327 = load i64, i64* %43, align 8
  %328 = load i64, i64* %44, align 8
  %329 = call i64 @__msa_aver_s_h(i64 %327, i64 %328)
  store i64 %329, i64* %40, align 8
  %330 = load i64, i64* %37, align 8
  %331 = load i64, i64* %38, align 8
  %332 = call i32 @PCKEV_XORI128_UB(i64 %330, i64 %331)
  store i32 %332, i32* %14, align 4
  %333 = load i64, i64* %39, align 8
  %334 = load i64, i64* %40, align 8
  %335 = call i32 @PCKEV_XORI128_UB(i64 %333, i64 %334)
  store i32 %335, i32* %15, align 4
  %336 = load i32, i32* %14, align 4
  %337 = load i32, i32* %15, align 4
  %338 = load i32*, i32** %4, align 8
  %339 = load i32, i32* %6, align 4
  %340 = call i32 @ST_D4(i32 %336, i32 %337, i32 0, i32 1, i32 0, i32 1, i32* %338, i32 %339)
  %341 = load i32, i32* %6, align 4
  %342 = mul nsw i32 4, %341
  %343 = load i32*, i32** %4, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** %4, align 8
  %346 = load i64, i64* %32, align 8
  store i64 %346, i64* %28, align 8
  %347 = load i64, i64* %33, align 8
  store i64 %347, i64* %29, align 8
  %348 = load i64, i64* %34, align 8
  store i64 %348, i64* %30, align 8
  %349 = load i64, i64* %35, align 8
  store i64 %349, i64* %31, align 8
  %350 = load i64, i64* %36, align 8
  store i64 %350, i64* %32, align 8
  br label %139

351:                                              ; preds = %139
  %352 = load i32*, i32** %8, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 8
  store i32* %353, i32** %8, align 8
  %354 = load i32*, i32** %7, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 8
  store i32* %355, i32** %7, align 8
  br label %83

356:                                              ; preds = %83
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

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i64 @__msa_aver_s_h(i64, i64) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
