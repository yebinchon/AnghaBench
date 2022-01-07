; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc23_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc23_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel8_mc23_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  %66 = alloca i64, align 8
  %67 = alloca i64, align 8
  %68 = alloca i64, align 8
  %69 = alloca i64, align 8
  %70 = alloca i64, align 8
  %71 = alloca i64, align 8
  %72 = alloca i64, align 8
  %73 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %74 = load i32*, i32** @luma_mask_arr, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = load i32, i32* %27, align 4
  %79 = call i32 @LD_SB3(i32* %75, i32 16, i32 %76, i32 %77, i32 %78)
  %80 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %80, i64* %69, align 8
  %81 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %81, i64* %70, align 8
  %82 = call i64 @__msa_fill_w(i32 131067)
  store i64 %82, i64* %71, align 8
  %83 = load i32, i32* %6, align 4
  %84 = mul nsw i32 2, %83
  %85 = add nsw i32 %84, 2
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = sub i64 0, %87
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32* %89, i32** %5, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @LD_SB5(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @XORI_B5_128_SB(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %6, align 4
  %105 = mul nsw i32 5, %104
  %106 = load i32*, i32** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %5, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %25, align 4
  %112 = load i32, i32* %26, align 4
  %113 = load i32, i32* %27, align 4
  %114 = call i64 @AVC_HORZ_FILTER_SH(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  store i64 %114, i64* %28, align 8
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i32, i32* %27, align 4
  %120 = call i64 @AVC_HORZ_FILTER_SH(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %29, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* %27, align 4
  %126 = call i64 @AVC_HORZ_FILTER_SH(i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  store i64 %126, i64* %30, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %27, align 4
  %132 = call i64 @AVC_HORZ_FILTER_SH(i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  store i64 %132, i64* %31, align 8
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %27, align 4
  %138 = call i64 @AVC_HORZ_FILTER_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137)
  store i64 %138, i64* %32, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %20, align 4
  %145 = call i32 @LD_SB4(i32* %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 4, %146
  %148 = load i32*, i32** %5, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %5, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = call i32 @XORI_B4_128_SB(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %25, align 4
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %27, align 4
  %161 = call i64 @AVC_HORZ_FILTER_SH(i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  store i64 %161, i64* %33, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %25, align 4
  %165 = load i32, i32* %26, align 4
  %166 = load i32, i32* %27, align 4
  %167 = call i64 @AVC_HORZ_FILTER_SH(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  store i64 %167, i64* %34, align 8
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %25, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %27, align 4
  %173 = call i64 @AVC_HORZ_FILTER_SH(i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  store i64 %173, i64* %35, align 8
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %25, align 4
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* %27, align 4
  %179 = call i64 @AVC_HORZ_FILTER_SH(i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  store i64 %179, i64* %36, align 8
  %180 = load i64, i64* %29, align 8
  %181 = load i64, i64* %28, align 8
  %182 = load i64, i64* %30, align 8
  %183 = load i64, i64* %29, align 8
  %184 = load i64, i64* %31, align 8
  %185 = load i64, i64* %30, align 8
  %186 = load i64, i64* %32, align 8
  %187 = load i64, i64* %31, align 8
  %188 = load i64, i64* %41, align 8
  %189 = load i64, i64* %42, align 8
  %190 = load i64, i64* %43, align 8
  %191 = load i64, i64* %44, align 8
  %192 = call i32 @ILVR_H4_SH(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191)
  %193 = load i64, i64* %29, align 8
  %194 = load i64, i64* %28, align 8
  %195 = load i64, i64* %30, align 8
  %196 = load i64, i64* %29, align 8
  %197 = load i64, i64* %31, align 8
  %198 = load i64, i64* %30, align 8
  %199 = load i64, i64* %32, align 8
  %200 = load i64, i64* %31, align 8
  %201 = load i64, i64* %57, align 8
  %202 = load i64, i64* %58, align 8
  %203 = load i64, i64* %59, align 8
  %204 = load i64, i64* %60, align 8
  %205 = call i32 @ILVL_H4_SH(i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204)
  %206 = load i64, i64* %33, align 8
  %207 = load i64, i64* %32, align 8
  %208 = load i64, i64* %34, align 8
  %209 = load i64, i64* %33, align 8
  %210 = load i64, i64* %35, align 8
  %211 = load i64, i64* %34, align 8
  %212 = load i64, i64* %36, align 8
  %213 = load i64, i64* %35, align 8
  %214 = load i64, i64* %45, align 8
  %215 = load i64, i64* %46, align 8
  %216 = load i64, i64* %47, align 8
  %217 = load i64, i64* %48, align 8
  %218 = call i32 @ILVR_H4_SH(i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %33, align 8
  %220 = load i64, i64* %32, align 8
  %221 = load i64, i64* %34, align 8
  %222 = load i64, i64* %33, align 8
  %223 = load i64, i64* %35, align 8
  %224 = load i64, i64* %34, align 8
  %225 = load i64, i64* %36, align 8
  %226 = load i64, i64* %35, align 8
  %227 = load i64, i64* %61, align 8
  %228 = load i64, i64* %62, align 8
  %229 = load i64, i64* %63, align 8
  %230 = load i64, i64* %64, align 8
  %231 = call i32 @ILVL_H4_SH(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227, i64 %228, i64 %229, i64 %230)
  %232 = load i64, i64* %41, align 8
  %233 = load i64, i64* %43, align 8
  %234 = load i64, i64* %45, align 8
  %235 = load i64, i64* %69, align 8
  %236 = load i64, i64* %70, align 8
  %237 = load i64, i64* %71, align 8
  %238 = call i64 @AVC_DOT_SW3_SW(i64 %232, i64 %233, i64 %234, i64 %235, i64 %236, i64 %237)
  store i64 %238, i64* %72, align 8
  %239 = load i64, i64* %57, align 8
  %240 = load i64, i64* %59, align 8
  %241 = load i64, i64* %61, align 8
  %242 = load i64, i64* %69, align 8
  %243 = load i64, i64* %70, align 8
  %244 = load i64, i64* %71, align 8
  %245 = call i64 @AVC_DOT_SW3_SW(i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  store i64 %245, i64* %73, align 8
  %246 = load i64, i64* %73, align 8
  %247 = load i64, i64* %72, align 8
  %248 = call i64 @__msa_pckev_h(i64 %246, i64 %247)
  store i64 %248, i64* %53, align 8
  %249 = load i64, i64* %42, align 8
  %250 = load i64, i64* %44, align 8
  %251 = load i64, i64* %46, align 8
  %252 = load i64, i64* %69, align 8
  %253 = load i64, i64* %70, align 8
  %254 = load i64, i64* %71, align 8
  %255 = call i64 @AVC_DOT_SW3_SW(i64 %249, i64 %250, i64 %251, i64 %252, i64 %253, i64 %254)
  store i64 %255, i64* %72, align 8
  %256 = load i64, i64* %58, align 8
  %257 = load i64, i64* %60, align 8
  %258 = load i64, i64* %62, align 8
  %259 = load i64, i64* %69, align 8
  %260 = load i64, i64* %70, align 8
  %261 = load i64, i64* %71, align 8
  %262 = call i64 @AVC_DOT_SW3_SW(i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261)
  store i64 %262, i64* %73, align 8
  %263 = load i64, i64* %73, align 8
  %264 = load i64, i64* %72, align 8
  %265 = call i64 @__msa_pckev_h(i64 %263, i64 %264)
  store i64 %265, i64* %54, align 8
  %266 = load i64, i64* %43, align 8
  %267 = load i64, i64* %45, align 8
  %268 = load i64, i64* %47, align 8
  %269 = load i64, i64* %69, align 8
  %270 = load i64, i64* %70, align 8
  %271 = load i64, i64* %71, align 8
  %272 = call i64 @AVC_DOT_SW3_SW(i64 %266, i64 %267, i64 %268, i64 %269, i64 %270, i64 %271)
  store i64 %272, i64* %72, align 8
  %273 = load i64, i64* %59, align 8
  %274 = load i64, i64* %61, align 8
  %275 = load i64, i64* %63, align 8
  %276 = load i64, i64* %69, align 8
  %277 = load i64, i64* %70, align 8
  %278 = load i64, i64* %71, align 8
  %279 = call i64 @AVC_DOT_SW3_SW(i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278)
  store i64 %279, i64* %73, align 8
  %280 = load i64, i64* %73, align 8
  %281 = load i64, i64* %72, align 8
  %282 = call i64 @__msa_pckev_h(i64 %280, i64 %281)
  store i64 %282, i64* %55, align 8
  %283 = load i64, i64* %44, align 8
  %284 = load i64, i64* %46, align 8
  %285 = load i64, i64* %48, align 8
  %286 = load i64, i64* %69, align 8
  %287 = load i64, i64* %70, align 8
  %288 = load i64, i64* %71, align 8
  %289 = call i64 @AVC_DOT_SW3_SW(i64 %283, i64 %284, i64 %285, i64 %286, i64 %287, i64 %288)
  store i64 %289, i64* %72, align 8
  %290 = load i64, i64* %60, align 8
  %291 = load i64, i64* %62, align 8
  %292 = load i64, i64* %64, align 8
  %293 = load i64, i64* %69, align 8
  %294 = load i64, i64* %70, align 8
  %295 = load i64, i64* %71, align 8
  %296 = call i64 @AVC_DOT_SW3_SW(i64 %290, i64 %291, i64 %292, i64 %293, i64 %294, i64 %295)
  store i64 %296, i64* %73, align 8
  %297 = load i64, i64* %73, align 8
  %298 = load i64, i64* %72, align 8
  %299 = call i64 @__msa_pckev_h(i64 %297, i64 %298)
  store i64 %299, i64* %56, align 8
  %300 = load i64, i64* %31, align 8
  %301 = load i64, i64* %32, align 8
  %302 = load i64, i64* %33, align 8
  %303 = load i64, i64* %34, align 8
  %304 = call i32 @SRARI_H4_SH(i64 %300, i64 %301, i64 %302, i64 %303, i32 5)
  %305 = load i64, i64* %31, align 8
  %306 = load i64, i64* %32, align 8
  %307 = load i64, i64* %33, align 8
  %308 = load i64, i64* %34, align 8
  %309 = call i32 @SAT_SH4_SH(i64 %305, i64 %306, i64 %307, i64 %308, i32 7)
  %310 = load i64, i64* %53, align 8
  %311 = load i64, i64* %31, align 8
  %312 = call i64 @__msa_aver_s_h(i64 %310, i64 %311)
  store i64 %312, i64* %53, align 8
  %313 = load i64, i64* %54, align 8
  %314 = load i64, i64* %32, align 8
  %315 = call i64 @__msa_aver_s_h(i64 %313, i64 %314)
  store i64 %315, i64* %54, align 8
  %316 = load i64, i64* %55, align 8
  %317 = load i64, i64* %33, align 8
  %318 = call i64 @__msa_aver_s_h(i64 %316, i64 %317)
  store i64 %318, i64* %55, align 8
  %319 = load i64, i64* %56, align 8
  %320 = load i64, i64* %34, align 8
  %321 = call i64 @__msa_aver_s_h(i64 %319, i64 %320)
  store i64 %321, i64* %56, align 8
  %322 = load i64, i64* %53, align 8
  %323 = load i64, i64* %54, align 8
  %324 = call i32 @PCKEV_XORI128_UB(i64 %322, i64 %323)
  store i32 %324, i32* %10, align 4
  %325 = load i64, i64* %55, align 8
  %326 = load i64, i64* %56, align 8
  %327 = call i32 @PCKEV_XORI128_UB(i64 %325, i64 %326)
  store i32 %327, i32* %11, align 4
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load i32*, i32** %4, align 8
  %331 = load i32, i32* %6, align 4
  %332 = call i32 @ST_D4(i32 %328, i32 %329, i32 0, i32 1, i32 0, i32 1, i32* %330, i32 %331)
  %333 = load i32, i32* %6, align 4
  %334 = mul nsw i32 4, %333
  %335 = load i32*, i32** %4, align 8
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** %4, align 8
  %338 = load i32*, i32** %5, align 8
  %339 = load i32, i32* %6, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* %22, align 4
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %24, align 4
  %344 = call i32 @LD_SB4(i32* %338, i32 %339, i32 %340, i32 %341, i32 %342, i32 %343)
  %345 = load i32, i32* %21, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %24, align 4
  %349 = call i32 @XORI_B4_128_SB(i32 %345, i32 %346, i32 %347, i32 %348)
  %350 = load i32, i32* %21, align 4
  %351 = load i32, i32* %21, align 4
  %352 = load i32, i32* %25, align 4
  %353 = load i32, i32* %26, align 4
  %354 = load i32, i32* %27, align 4
  %355 = call i64 @AVC_HORZ_FILTER_SH(i32 %350, i32 %351, i32 %352, i32 %353, i32 %354)
  store i64 %355, i64* %37, align 8
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* %22, align 4
  %358 = load i32, i32* %25, align 4
  %359 = load i32, i32* %26, align 4
  %360 = load i32, i32* %27, align 4
  %361 = call i64 @AVC_HORZ_FILTER_SH(i32 %356, i32 %357, i32 %358, i32 %359, i32 %360)
  store i64 %361, i64* %38, align 8
  %362 = load i32, i32* %23, align 4
  %363 = load i32, i32* %23, align 4
  %364 = load i32, i32* %25, align 4
  %365 = load i32, i32* %26, align 4
  %366 = load i32, i32* %27, align 4
  %367 = call i64 @AVC_HORZ_FILTER_SH(i32 %362, i32 %363, i32 %364, i32 %365, i32 %366)
  store i64 %367, i64* %39, align 8
  %368 = load i32, i32* %24, align 4
  %369 = load i32, i32* %24, align 4
  %370 = load i32, i32* %25, align 4
  %371 = load i32, i32* %26, align 4
  %372 = load i32, i32* %27, align 4
  %373 = call i64 @AVC_HORZ_FILTER_SH(i32 %368, i32 %369, i32 %370, i32 %371, i32 %372)
  store i64 %373, i64* %40, align 8
  %374 = load i64, i64* %37, align 8
  %375 = load i64, i64* %36, align 8
  %376 = load i64, i64* %38, align 8
  %377 = load i64, i64* %37, align 8
  %378 = load i64, i64* %39, align 8
  %379 = load i64, i64* %38, align 8
  %380 = load i64, i64* %40, align 8
  %381 = load i64, i64* %39, align 8
  %382 = load i64, i64* %49, align 8
  %383 = load i64, i64* %50, align 8
  %384 = load i64, i64* %51, align 8
  %385 = load i64, i64* %52, align 8
  %386 = call i32 @ILVR_H4_SH(i64 %374, i64 %375, i64 %376, i64 %377, i64 %378, i64 %379, i64 %380, i64 %381, i64 %382, i64 %383, i64 %384, i64 %385)
  %387 = load i64, i64* %37, align 8
  %388 = load i64, i64* %36, align 8
  %389 = load i64, i64* %38, align 8
  %390 = load i64, i64* %37, align 8
  %391 = load i64, i64* %39, align 8
  %392 = load i64, i64* %38, align 8
  %393 = load i64, i64* %40, align 8
  %394 = load i64, i64* %39, align 8
  %395 = load i64, i64* %65, align 8
  %396 = load i64, i64* %66, align 8
  %397 = load i64, i64* %67, align 8
  %398 = load i64, i64* %68, align 8
  %399 = call i32 @ILVL_H4_SH(i64 %387, i64 %388, i64 %389, i64 %390, i64 %391, i64 %392, i64 %393, i64 %394, i64 %395, i64 %396, i64 %397, i64 %398)
  %400 = load i64, i64* %45, align 8
  %401 = load i64, i64* %47, align 8
  %402 = load i64, i64* %49, align 8
  %403 = load i64, i64* %69, align 8
  %404 = load i64, i64* %70, align 8
  %405 = load i64, i64* %71, align 8
  %406 = call i64 @AVC_DOT_SW3_SW(i64 %400, i64 %401, i64 %402, i64 %403, i64 %404, i64 %405)
  store i64 %406, i64* %72, align 8
  %407 = load i64, i64* %61, align 8
  %408 = load i64, i64* %63, align 8
  %409 = load i64, i64* %65, align 8
  %410 = load i64, i64* %69, align 8
  %411 = load i64, i64* %70, align 8
  %412 = load i64, i64* %71, align 8
  %413 = call i64 @AVC_DOT_SW3_SW(i64 %407, i64 %408, i64 %409, i64 %410, i64 %411, i64 %412)
  store i64 %413, i64* %73, align 8
  %414 = load i64, i64* %73, align 8
  %415 = load i64, i64* %72, align 8
  %416 = call i64 @__msa_pckev_h(i64 %414, i64 %415)
  store i64 %416, i64* %53, align 8
  %417 = load i64, i64* %46, align 8
  %418 = load i64, i64* %48, align 8
  %419 = load i64, i64* %50, align 8
  %420 = load i64, i64* %69, align 8
  %421 = load i64, i64* %70, align 8
  %422 = load i64, i64* %71, align 8
  %423 = call i64 @AVC_DOT_SW3_SW(i64 %417, i64 %418, i64 %419, i64 %420, i64 %421, i64 %422)
  store i64 %423, i64* %72, align 8
  %424 = load i64, i64* %62, align 8
  %425 = load i64, i64* %64, align 8
  %426 = load i64, i64* %66, align 8
  %427 = load i64, i64* %69, align 8
  %428 = load i64, i64* %70, align 8
  %429 = load i64, i64* %71, align 8
  %430 = call i64 @AVC_DOT_SW3_SW(i64 %424, i64 %425, i64 %426, i64 %427, i64 %428, i64 %429)
  store i64 %430, i64* %73, align 8
  %431 = load i64, i64* %73, align 8
  %432 = load i64, i64* %72, align 8
  %433 = call i64 @__msa_pckev_h(i64 %431, i64 %432)
  store i64 %433, i64* %54, align 8
  %434 = load i64, i64* %47, align 8
  %435 = load i64, i64* %49, align 8
  %436 = load i64, i64* %51, align 8
  %437 = load i64, i64* %69, align 8
  %438 = load i64, i64* %70, align 8
  %439 = load i64, i64* %71, align 8
  %440 = call i64 @AVC_DOT_SW3_SW(i64 %434, i64 %435, i64 %436, i64 %437, i64 %438, i64 %439)
  store i64 %440, i64* %72, align 8
  %441 = load i64, i64* %63, align 8
  %442 = load i64, i64* %65, align 8
  %443 = load i64, i64* %67, align 8
  %444 = load i64, i64* %69, align 8
  %445 = load i64, i64* %70, align 8
  %446 = load i64, i64* %71, align 8
  %447 = call i64 @AVC_DOT_SW3_SW(i64 %441, i64 %442, i64 %443, i64 %444, i64 %445, i64 %446)
  store i64 %447, i64* %73, align 8
  %448 = load i64, i64* %73, align 8
  %449 = load i64, i64* %72, align 8
  %450 = call i64 @__msa_pckev_h(i64 %448, i64 %449)
  store i64 %450, i64* %55, align 8
  %451 = load i64, i64* %48, align 8
  %452 = load i64, i64* %50, align 8
  %453 = load i64, i64* %52, align 8
  %454 = load i64, i64* %69, align 8
  %455 = load i64, i64* %70, align 8
  %456 = load i64, i64* %71, align 8
  %457 = call i64 @AVC_DOT_SW3_SW(i64 %451, i64 %452, i64 %453, i64 %454, i64 %455, i64 %456)
  store i64 %457, i64* %72, align 8
  %458 = load i64, i64* %64, align 8
  %459 = load i64, i64* %66, align 8
  %460 = load i64, i64* %68, align 8
  %461 = load i64, i64* %69, align 8
  %462 = load i64, i64* %70, align 8
  %463 = load i64, i64* %71, align 8
  %464 = call i64 @AVC_DOT_SW3_SW(i64 %458, i64 %459, i64 %460, i64 %461, i64 %462, i64 %463)
  store i64 %464, i64* %73, align 8
  %465 = load i64, i64* %73, align 8
  %466 = load i64, i64* %72, align 8
  %467 = call i64 @__msa_pckev_h(i64 %465, i64 %466)
  store i64 %467, i64* %56, align 8
  %468 = load i64, i64* %35, align 8
  %469 = load i64, i64* %36, align 8
  %470 = load i64, i64* %37, align 8
  %471 = load i64, i64* %38, align 8
  %472 = call i32 @SRARI_H4_SH(i64 %468, i64 %469, i64 %470, i64 %471, i32 5)
  %473 = load i64, i64* %35, align 8
  %474 = load i64, i64* %36, align 8
  %475 = load i64, i64* %37, align 8
  %476 = load i64, i64* %38, align 8
  %477 = call i32 @SAT_SH4_SH(i64 %473, i64 %474, i64 %475, i64 %476, i32 7)
  %478 = load i64, i64* %53, align 8
  %479 = load i64, i64* %35, align 8
  %480 = call i64 @__msa_aver_s_h(i64 %478, i64 %479)
  store i64 %480, i64* %53, align 8
  %481 = load i64, i64* %54, align 8
  %482 = load i64, i64* %36, align 8
  %483 = call i64 @__msa_aver_s_h(i64 %481, i64 %482)
  store i64 %483, i64* %54, align 8
  %484 = load i64, i64* %55, align 8
  %485 = load i64, i64* %37, align 8
  %486 = call i64 @__msa_aver_s_h(i64 %484, i64 %485)
  store i64 %486, i64* %55, align 8
  %487 = load i64, i64* %56, align 8
  %488 = load i64, i64* %38, align 8
  %489 = call i64 @__msa_aver_s_h(i64 %487, i64 %488)
  store i64 %489, i64* %56, align 8
  %490 = load i64, i64* %53, align 8
  %491 = load i64, i64* %54, align 8
  %492 = call i32 @PCKEV_XORI128_UB(i64 %490, i64 %491)
  store i32 %492, i32* %10, align 4
  %493 = load i64, i64* %55, align 8
  %494 = load i64, i64* %56, align 8
  %495 = call i32 @PCKEV_XORI128_UB(i64 %493, i64 %494)
  store i32 %495, i32* %11, align 4
  %496 = load i32, i32* %10, align 4
  %497 = load i32, i32* %11, align 4
  %498 = load i32*, i32** %4, align 8
  %499 = load i32, i32* %6, align 4
  %500 = call i32 @ST_D4(i32 %496, i32 %497, i32 0, i32 1, i32 0, i32 1, i32* %498, i32 %499)
  ret void
}

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVL_H4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SW3_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

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
