; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc20_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel16_mc20_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel16_mc20_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %41 = call i32 @__msa_ldi_b(i32 -5)
  store i32 %41, i32* %39, align 4
  %42 = call i32 @__msa_ldi_b(i32 20)
  store i32 %42, i32* %40, align 4
  %43 = load i32*, i32** @luma_mask_arr, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @LD_SB3(i32* %44, i32 16, i32 %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 -2
  store i32* %50, i32** %5, align 8
  store i32 4, i32* %7, align 4
  br label %51

51:                                               ; preds = %55, %3
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %325

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @LD_SB2(i32* %56, i32 8, i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @LD_SB2(i32* %64, i32 8, i32 %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @LD_SB2(i32* %72, i32 8, i32 %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %5, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @LD_SB2(i32* %80, i32 8, i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @XORI_B8_128_SB(i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %22, align 4
  %105 = call i32 @VSHF_B2_SB(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %28, align 4
  %114 = call i32 @VSHF_B2_SB(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @VSHF_B2_SB(i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* %26, align 4
  %131 = load i32, i32* %29, align 4
  %132 = call i32 @VSHF_B2_SB(i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %24, align 4
  %141 = call i32 @VSHF_B2_SB(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %27, align 4
  %149 = load i32, i32* %30, align 4
  %150 = call i32 @VSHF_B2_SB(i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %28, align 4
  %155 = load i32, i32* %31, align 4
  %156 = load i32, i32* %32, align 4
  %157 = load i32, i32* %33, align 4
  %158 = load i32, i32* %34, align 4
  %159 = call i32 @HADD_SB4_SH(i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %23, align 4
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %29, align 4
  %164 = load i32, i32* %39, align 4
  %165 = load i32, i32* %39, align 4
  %166 = load i32, i32* %39, align 4
  %167 = load i32, i32* %39, align 4
  %168 = load i32, i32* %31, align 4
  %169 = load i32, i32* %32, align 4
  %170 = load i32, i32* %33, align 4
  %171 = load i32, i32* %34, align 4
  %172 = call i32 @DPADD_SB4_SH(i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load i32, i32* %21, align 4
  %174 = load i32, i32* %24, align 4
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %30, align 4
  %177 = load i32, i32* %40, align 4
  %178 = load i32, i32* %40, align 4
  %179 = load i32, i32* %40, align 4
  %180 = load i32, i32* %40, align 4
  %181 = load i32, i32* %31, align 4
  %182 = load i32, i32* %32, align 4
  %183 = load i32, i32* %33, align 4
  %184 = load i32, i32* %34, align 4
  %185 = call i32 @DPADD_SB4_SH(i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %22, align 4
  %194 = call i32 @VSHF_B2_SB(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %25, align 4
  %202 = load i32, i32* %28, align 4
  %203 = call i32 @VSHF_B2_SB(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %23, align 4
  %212 = call i32 @VSHF_B2_SB(i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* %29, align 4
  %221 = call i32 @VSHF_B2_SB(i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220)
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = load i32, i32* %18, align 4
  %227 = load i32, i32* %18, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i32, i32* %24, align 4
  %230 = call i32 @VSHF_B2_SB(i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i32, i32* %27, align 4
  %238 = load i32, i32* %30, align 4
  %239 = call i32 @VSHF_B2_SB(i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %25, align 4
  %243 = load i32, i32* %28, align 4
  %244 = load i32, i32* %35, align 4
  %245 = load i32, i32* %36, align 4
  %246 = load i32, i32* %37, align 4
  %247 = load i32, i32* %38, align 4
  %248 = call i32 @HADD_SB4_SH(i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %20, align 4
  %250 = load i32, i32* %23, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* %29, align 4
  %253 = load i32, i32* %39, align 4
  %254 = load i32, i32* %39, align 4
  %255 = load i32, i32* %39, align 4
  %256 = load i32, i32* %39, align 4
  %257 = load i32, i32* %35, align 4
  %258 = load i32, i32* %36, align 4
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %38, align 4
  %261 = call i32 @DPADD_SB4_SH(i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260)
  %262 = load i32, i32* %21, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %27, align 4
  %265 = load i32, i32* %30, align 4
  %266 = load i32, i32* %40, align 4
  %267 = load i32, i32* %40, align 4
  %268 = load i32, i32* %40, align 4
  %269 = load i32, i32* %40, align 4
  %270 = load i32, i32* %35, align 4
  %271 = load i32, i32* %36, align 4
  %272 = load i32, i32* %37, align 4
  %273 = load i32, i32* %38, align 4
  %274 = call i32 @DPADD_SB4_SH(i32 %262, i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %31, align 4
  %276 = load i32, i32* %32, align 4
  %277 = load i32, i32* %33, align 4
  %278 = load i32, i32* %34, align 4
  %279 = call i32 @SRARI_H4_SH(i32 %275, i32 %276, i32 %277, i32 %278, i32 5)
  %280 = load i32, i32* %35, align 4
  %281 = load i32, i32* %36, align 4
  %282 = load i32, i32* %37, align 4
  %283 = load i32, i32* %38, align 4
  %284 = call i32 @SRARI_H4_SH(i32 %280, i32 %281, i32 %282, i32 %283, i32 5)
  %285 = load i32, i32* %31, align 4
  %286 = load i32, i32* %32, align 4
  %287 = load i32, i32* %33, align 4
  %288 = load i32, i32* %34, align 4
  %289 = call i32 @SAT_SH4_SH(i32 %285, i32 %286, i32 %287, i32 %288, i32 7)
  %290 = load i32, i32* %35, align 4
  %291 = load i32, i32* %36, align 4
  %292 = load i32, i32* %37, align 4
  %293 = load i32, i32* %38, align 4
  %294 = call i32 @SAT_SH4_SH(i32 %290, i32 %291, i32 %292, i32 %293, i32 7)
  %295 = load i32, i32* %32, align 4
  %296 = load i32, i32* %31, align 4
  %297 = load i32, i32* %34, align 4
  %298 = load i32, i32* %33, align 4
  %299 = load i32, i32* %36, align 4
  %300 = load i32, i32* %35, align 4
  %301 = load i32, i32* %38, align 4
  %302 = load i32, i32* %37, align 4
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* %21, align 4
  %306 = load i32, i32* %22, align 4
  %307 = call i32 @PCKEV_B4_SB(i32 %295, i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301, i32 %302, i32 %303, i32 %304, i32 %305, i32 %306)
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %21, align 4
  %311 = load i32, i32* %22, align 4
  %312 = call i32 @XORI_B4_128_SB(i32 %308, i32 %309, i32 %310, i32 %311)
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* %20, align 4
  %315 = load i32, i32* %21, align 4
  %316 = load i32, i32* %22, align 4
  %317 = load i32*, i32** %4, align 8
  %318 = load i32, i32* %6, align 4
  %319 = call i32 @ST_SB4(i32 %313, i32 %314, i32 %315, i32 %316, i32* %317, i32 %318)
  %320 = load i32, i32* %6, align 4
  %321 = mul nsw i32 4, %320
  %322 = load i32*, i32** %4, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %4, align 8
  br label %51

325:                                              ; preds = %51
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ST_SB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
