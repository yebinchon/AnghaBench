; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc22_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc22_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel16_mc22_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -327679, i32* %7, align 4
  store i32 1310740, i32* %8, align 4
  store i32 131067, i32* %9, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 2, %59
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = getelementptr inbounds i32, i32* %63, i64 -2
  store i32* %64, i32** %10, align 8
  %65 = load i32*, i32** %4, align 8
  store i32* %65, i32** %11, align 8
  %66 = call i64 @__msa_fill_w(i32 -327679)
  store i64 %66, i64* %53, align 8
  %67 = call i64 @__msa_fill_w(i32 1310740)
  store i64 %67, i64* %54, align 8
  %68 = call i64 @__msa_fill_w(i32 131067)
  store i64 %68, i64* %55, align 8
  %69 = load i32*, i32** @luma_mask_arr, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @LD_SB3(i32* %70, i32 16, i32 %71, i32 %72, i32 %73)
  store i32 2, i32* %12, align 4
  br label %75

75:                                               ; preds = %318, %3
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %12, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %323

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %11, align 8
  store i32* %81, i32** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @LD_SB5(i32* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @XORI_B5_128_SB(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = mul nsw i32 5, %96
  %98 = load i32*, i32** %5, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %5, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %22, align 4
  %105 = load i32, i32* %23, align 4
  %106 = call i64 @AVC_HORZ_FILTER_SH(i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i64 %106, i64* %24, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %23, align 4
  %112 = call i64 @AVC_HORZ_FILTER_SH(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  store i64 %112, i64* %25, align 8
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* %22, align 4
  %117 = load i32, i32* %23, align 4
  %118 = call i64 @AVC_HORZ_FILTER_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117)
  store i64 %118, i64* %26, align 8
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %23, align 4
  %124 = call i64 @AVC_HORZ_FILTER_SH(i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  store i64 %124, i64* %27, align 8
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %23, align 4
  %130 = call i64 @AVC_HORZ_FILTER_SH(i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  store i64 %130, i64* %28, align 8
  store i32 4, i32* %13, align 4
  br label %131

131:                                              ; preds = %135, %79
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %13, align 4
  %134 = icmp ne i32 %132, 0
  br i1 %134, label %135, label %318

135:                                              ; preds = %131
  %136 = load i32*, i32** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %16, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @LD_SB4(i32* %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @XORI_B4_128_SB(i32 %143, i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 4, %148
  %150 = load i32*, i32** %5, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %5, align 8
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %23, align 4
  %158 = call i64 @AVC_HORZ_FILTER_SH(i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  store i64 %158, i64* %29, align 8
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %23, align 4
  %164 = call i64 @AVC_HORZ_FILTER_SH(i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  store i64 %164, i64* %30, align 8
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* %22, align 4
  %169 = load i32, i32* %23, align 4
  %170 = call i64 @AVC_HORZ_FILTER_SH(i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  store i64 %170, i64* %31, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %23, align 4
  %176 = call i64 @AVC_HORZ_FILTER_SH(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  store i64 %176, i64* %32, align 8
  %177 = load i64, i64* %25, align 8
  %178 = load i64, i64* %24, align 8
  %179 = load i64, i64* %26, align 8
  %180 = load i64, i64* %25, align 8
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* %26, align 8
  %183 = load i64, i64* %28, align 8
  %184 = load i64, i64* %27, align 8
  %185 = load i64, i64* %37, align 8
  %186 = load i64, i64* %38, align 8
  %187 = load i64, i64* %39, align 8
  %188 = load i64, i64* %40, align 8
  %189 = call i32 @ILVR_H4_SH(i64 %177, i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %25, align 8
  %191 = load i64, i64* %24, align 8
  %192 = load i64, i64* %26, align 8
  %193 = load i64, i64* %25, align 8
  %194 = load i64, i64* %27, align 8
  %195 = load i64, i64* %26, align 8
  %196 = load i64, i64* %28, align 8
  %197 = load i64, i64* %27, align 8
  %198 = load i64, i64* %45, align 8
  %199 = load i64, i64* %46, align 8
  %200 = load i64, i64* %47, align 8
  %201 = load i64, i64* %48, align 8
  %202 = call i32 @ILVL_H4_SH(i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %203 = load i64, i64* %29, align 8
  %204 = load i64, i64* %28, align 8
  %205 = load i64, i64* %30, align 8
  %206 = load i64, i64* %29, align 8
  %207 = load i64, i64* %31, align 8
  %208 = load i64, i64* %30, align 8
  %209 = load i64, i64* %32, align 8
  %210 = load i64, i64* %31, align 8
  %211 = load i64, i64* %41, align 8
  %212 = load i64, i64* %42, align 8
  %213 = load i64, i64* %43, align 8
  %214 = load i64, i64* %44, align 8
  %215 = call i32 @ILVR_H4_SH(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214)
  %216 = load i64, i64* %29, align 8
  %217 = load i64, i64* %28, align 8
  %218 = load i64, i64* %30, align 8
  %219 = load i64, i64* %29, align 8
  %220 = load i64, i64* %31, align 8
  %221 = load i64, i64* %30, align 8
  %222 = load i64, i64* %32, align 8
  %223 = load i64, i64* %31, align 8
  %224 = load i64, i64* %49, align 8
  %225 = load i64, i64* %50, align 8
  %226 = load i64, i64* %51, align 8
  %227 = load i64, i64* %52, align 8
  %228 = call i32 @ILVL_H4_SH(i64 %216, i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226, i64 %227)
  %229 = load i64, i64* %37, align 8
  %230 = load i64, i64* %39, align 8
  %231 = load i64, i64* %41, align 8
  %232 = load i64, i64* %53, align 8
  %233 = load i64, i64* %54, align 8
  %234 = load i64, i64* %55, align 8
  %235 = call i64 @AVC_DOT_SW3_SW(i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234)
  store i64 %235, i64* %56, align 8
  %236 = load i64, i64* %45, align 8
  %237 = load i64, i64* %47, align 8
  %238 = load i64, i64* %49, align 8
  %239 = load i64, i64* %53, align 8
  %240 = load i64, i64* %54, align 8
  %241 = load i64, i64* %55, align 8
  %242 = call i64 @AVC_DOT_SW3_SW(i64 %236, i64 %237, i64 %238, i64 %239, i64 %240, i64 %241)
  store i64 %242, i64* %57, align 8
  %243 = load i64, i64* %57, align 8
  %244 = load i64, i64* %56, align 8
  %245 = call i64 @__msa_pckev_h(i64 %243, i64 %244)
  store i64 %245, i64* %33, align 8
  %246 = load i64, i64* %38, align 8
  %247 = load i64, i64* %40, align 8
  %248 = load i64, i64* %42, align 8
  %249 = load i64, i64* %53, align 8
  %250 = load i64, i64* %54, align 8
  %251 = load i64, i64* %55, align 8
  %252 = call i64 @AVC_DOT_SW3_SW(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251)
  store i64 %252, i64* %56, align 8
  %253 = load i64, i64* %46, align 8
  %254 = load i64, i64* %48, align 8
  %255 = load i64, i64* %50, align 8
  %256 = load i64, i64* %53, align 8
  %257 = load i64, i64* %54, align 8
  %258 = load i64, i64* %55, align 8
  %259 = call i64 @AVC_DOT_SW3_SW(i64 %253, i64 %254, i64 %255, i64 %256, i64 %257, i64 %258)
  store i64 %259, i64* %57, align 8
  %260 = load i64, i64* %57, align 8
  %261 = load i64, i64* %56, align 8
  %262 = call i64 @__msa_pckev_h(i64 %260, i64 %261)
  store i64 %262, i64* %34, align 8
  %263 = load i64, i64* %39, align 8
  %264 = load i64, i64* %41, align 8
  %265 = load i64, i64* %43, align 8
  %266 = load i64, i64* %53, align 8
  %267 = load i64, i64* %54, align 8
  %268 = load i64, i64* %55, align 8
  %269 = call i64 @AVC_DOT_SW3_SW(i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268)
  store i64 %269, i64* %56, align 8
  %270 = load i64, i64* %47, align 8
  %271 = load i64, i64* %49, align 8
  %272 = load i64, i64* %51, align 8
  %273 = load i64, i64* %53, align 8
  %274 = load i64, i64* %54, align 8
  %275 = load i64, i64* %55, align 8
  %276 = call i64 @AVC_DOT_SW3_SW(i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275)
  store i64 %276, i64* %57, align 8
  %277 = load i64, i64* %57, align 8
  %278 = load i64, i64* %56, align 8
  %279 = call i64 @__msa_pckev_h(i64 %277, i64 %278)
  store i64 %279, i64* %35, align 8
  %280 = load i64, i64* %40, align 8
  %281 = load i64, i64* %42, align 8
  %282 = load i64, i64* %44, align 8
  %283 = load i64, i64* %53, align 8
  %284 = load i64, i64* %54, align 8
  %285 = load i64, i64* %55, align 8
  %286 = call i64 @AVC_DOT_SW3_SW(i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285)
  store i64 %286, i64* %56, align 8
  %287 = load i64, i64* %48, align 8
  %288 = load i64, i64* %50, align 8
  %289 = load i64, i64* %52, align 8
  %290 = load i64, i64* %53, align 8
  %291 = load i64, i64* %54, align 8
  %292 = load i64, i64* %55, align 8
  %293 = call i64 @AVC_DOT_SW3_SW(i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292)
  store i64 %293, i64* %57, align 8
  %294 = load i64, i64* %57, align 8
  %295 = load i64, i64* %56, align 8
  %296 = call i64 @__msa_pckev_h(i64 %294, i64 %295)
  store i64 %296, i64* %36, align 8
  %297 = load i64, i64* %33, align 8
  %298 = load i64, i64* %34, align 8
  %299 = call i32 @PCKEV_XORI128_UB(i64 %297, i64 %298)
  store i32 %299, i32* %14, align 4
  %300 = load i64, i64* %35, align 8
  %301 = load i64, i64* %36, align 8
  %302 = call i32 @PCKEV_XORI128_UB(i64 %300, i64 %301)
  store i32 %302, i32* %15, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %15, align 4
  %305 = load i32*, i32** %4, align 8
  %306 = load i32, i32* %6, align 4
  %307 = call i32 @ST_D4(i32 %303, i32 %304, i32 0, i32 1, i32 0, i32 1, i32* %305, i32 %306)
  %308 = load i32, i32* %6, align 4
  %309 = mul nsw i32 4, %308
  %310 = load i32*, i32** %4, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32* %312, i32** %4, align 8
  %313 = load i64, i64* %28, align 8
  store i64 %313, i64* %24, align 8
  %314 = load i64, i64* %29, align 8
  store i64 %314, i64* %25, align 8
  %315 = load i64, i64* %30, align 8
  store i64 %315, i64* %26, align 8
  %316 = load i64, i64* %31, align 8
  store i64 %316, i64* %27, align 8
  %317 = load i64, i64* %32, align 8
  store i64 %317, i64* %28, align 8
  br label %131

318:                                              ; preds = %131
  %319 = load i32*, i32** %10, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 8
  store i32* %320, i32** %10, align 8
  %321 = load i32*, i32** %11, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 8
  store i32* %322, i32** %11, align 8
  br label %75

323:                                              ; preds = %75
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
