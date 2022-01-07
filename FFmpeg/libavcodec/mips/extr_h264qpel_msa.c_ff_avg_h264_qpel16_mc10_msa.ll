; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc10_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_avg_h264_qpel16_mc10_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_avg_h264_qpel16_mc10_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
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
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %52 = call i64 @__msa_ldi_b(i32 -5)
  store i64 %52, i64* %50, align 8
  %53 = call i64 @__msa_ldi_b(i32 20)
  store i64 %53, i64* %51, align 8
  %54 = load i32*, i32** @luma_mask_arr, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i64, i64* %23, align 8
  %57 = load i64, i64* %24, align 8
  %58 = load i64, i64* %25, align 8
  %59 = call i32 @LD_SB3(i32* %55, i32 16, i64 %56, i64 %57, i64 %58)
  %60 = load i64, i64* %23, align 8
  %61 = add nsw i64 %60, 8
  store i64 %61, i64* %26, align 8
  %62 = load i64, i64* %24, align 8
  %63 = add nsw i64 %62, 8
  store i64 %63, i64* %27, align 8
  %64 = load i64, i64* %25, align 8
  %65 = add nsw i64 %64, 8
  store i64 %65, i64* %28, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -2
  store i32* %67, i32** %5, align 8
  store i32 4, i32* %7, align 4
  br label %68

68:                                               ; preds = %72, %3
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = icmp ne i32 %69, 0
  br i1 %71, label %72, label %389

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i32 @LD_SB2(i32* %73, i32 16, i64 %74, i64 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = call i32 @LD_SB2(i32* %81, i32 16, i64 %82, i64 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %5, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = call i32 @LD_SB2(i32* %89, i32 16, i64 %90, i64 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i64, i64* %22, align 8
  %99 = load i64, i64* %29, align 8
  %100 = call i32 @LD_SB2(i32* %97, i32 16, i64 %98, i64 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %5, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @LD_UB4(i32* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %29, align 8
  %120 = call i32 @XORI_B8_128_SB(i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %17, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %34, align 8
  %129 = call i32 @VSHF_B2_SB(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128)
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* %19, align 8
  %134 = load i64, i64* %23, align 8
  %135 = load i64, i64* %26, align 8
  %136 = load i64, i64* %37, align 8
  %137 = load i64, i64* %40, align 8
  %138 = call i32 @VSHF_B2_SB(i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %17, align 8
  %143 = load i64, i64* %24, align 8
  %144 = load i64, i64* %27, align 8
  %145 = load i64, i64* %32, align 8
  %146 = load i64, i64* %35, align 8
  %147 = call i32 @VSHF_B2_SB(i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146)
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %18, align 8
  %150 = load i64, i64* %18, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %24, align 8
  %153 = load i64, i64* %27, align 8
  %154 = load i64, i64* %38, align 8
  %155 = load i64, i64* %41, align 8
  %156 = call i32 @VSHF_B2_SB(i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %16, align 8
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i64, i64* %25, align 8
  %162 = load i64, i64* %28, align 8
  %163 = load i64, i64* %33, align 8
  %164 = load i64, i64* %36, align 8
  %165 = call i32 @VSHF_B2_SB(i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164)
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load i64, i64* %19, align 8
  %170 = load i64, i64* %25, align 8
  %171 = load i64, i64* %28, align 8
  %172 = load i64, i64* %39, align 8
  %173 = load i64, i64* %30, align 8
  %174 = call i32 @VSHF_B2_SB(i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172, i64 %173)
  %175 = load i64, i64* %31, align 8
  %176 = load i64, i64* %34, align 8
  %177 = load i64, i64* %37, align 8
  %178 = load i64, i64* %40, align 8
  %179 = load i32, i32* %42, align 4
  %180 = load i32, i32* %43, align 4
  %181 = load i32, i32* %44, align 4
  %182 = load i32, i32* %45, align 4
  %183 = call i32 @HADD_SB4_SH(i64 %175, i64 %176, i64 %177, i64 %178, i32 %179, i32 %180, i32 %181, i32 %182)
  %184 = load i64, i64* %32, align 8
  %185 = load i64, i64* %35, align 8
  %186 = load i64, i64* %38, align 8
  %187 = load i64, i64* %41, align 8
  %188 = load i64, i64* %50, align 8
  %189 = load i64, i64* %50, align 8
  %190 = load i64, i64* %50, align 8
  %191 = load i64, i64* %50, align 8
  %192 = load i32, i32* %42, align 4
  %193 = load i32, i32* %43, align 4
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* %45, align 4
  %196 = call i32 @DPADD_SB4_SH(i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  %197 = load i64, i64* %33, align 8
  %198 = load i64, i64* %36, align 8
  %199 = load i64, i64* %39, align 8
  %200 = load i64, i64* %30, align 8
  %201 = load i64, i64* %51, align 8
  %202 = load i64, i64* %51, align 8
  %203 = load i64, i64* %51, align 8
  %204 = load i64, i64* %51, align 8
  %205 = load i32, i32* %42, align 4
  %206 = load i32, i32* %43, align 4
  %207 = load i32, i32* %44, align 4
  %208 = load i32, i32* %45, align 4
  %209 = call i32 @DPADD_SB4_SH(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i32 %205, i32 %206, i32 %207, i32 %208)
  %210 = load i64, i64* %20, align 8
  %211 = load i64, i64* %20, align 8
  %212 = load i64, i64* %20, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* %23, align 8
  %215 = load i64, i64* %26, align 8
  %216 = load i64, i64* %31, align 8
  %217 = load i64, i64* %34, align 8
  %218 = call i32 @VSHF_B2_SB(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217)
  %219 = load i64, i64* %22, align 8
  %220 = load i64, i64* %22, align 8
  %221 = load i64, i64* %22, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %23, align 8
  %224 = load i64, i64* %26, align 8
  %225 = load i64, i64* %37, align 8
  %226 = load i64, i64* %40, align 8
  %227 = call i32 @VSHF_B2_SB(i64 %219, i64 %220, i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  %228 = load i64, i64* %20, align 8
  %229 = load i64, i64* %20, align 8
  %230 = load i64, i64* %20, align 8
  %231 = load i64, i64* %21, align 8
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* %27, align 8
  %234 = load i64, i64* %32, align 8
  %235 = load i64, i64* %35, align 8
  %236 = call i32 @VSHF_B2_SB(i64 %228, i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235)
  %237 = load i64, i64* %22, align 8
  %238 = load i64, i64* %22, align 8
  %239 = load i64, i64* %22, align 8
  %240 = load i64, i64* %29, align 8
  %241 = load i64, i64* %24, align 8
  %242 = load i64, i64* %27, align 8
  %243 = load i64, i64* %38, align 8
  %244 = load i64, i64* %41, align 8
  %245 = call i32 @VSHF_B2_SB(i64 %237, i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244)
  %246 = load i64, i64* %20, align 8
  %247 = load i64, i64* %20, align 8
  %248 = load i64, i64* %20, align 8
  %249 = load i64, i64* %21, align 8
  %250 = load i64, i64* %25, align 8
  %251 = load i64, i64* %28, align 8
  %252 = load i64, i64* %33, align 8
  %253 = load i64, i64* %36, align 8
  %254 = call i32 @VSHF_B2_SB(i64 %246, i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  %255 = load i64, i64* %22, align 8
  %256 = load i64, i64* %22, align 8
  %257 = load i64, i64* %22, align 8
  %258 = load i64, i64* %29, align 8
  %259 = load i64, i64* %25, align 8
  %260 = load i64, i64* %28, align 8
  %261 = load i64, i64* %39, align 8
  %262 = load i64, i64* %30, align 8
  %263 = call i32 @VSHF_B2_SB(i64 %255, i64 %256, i64 %257, i64 %258, i64 %259, i64 %260, i64 %261, i64 %262)
  %264 = load i64, i64* %31, align 8
  %265 = load i64, i64* %34, align 8
  %266 = load i64, i64* %37, align 8
  %267 = load i64, i64* %40, align 8
  %268 = load i32, i32* %46, align 4
  %269 = load i32, i32* %47, align 4
  %270 = load i32, i32* %48, align 4
  %271 = load i32, i32* %49, align 4
  %272 = call i32 @HADD_SB4_SH(i64 %264, i64 %265, i64 %266, i64 %267, i32 %268, i32 %269, i32 %270, i32 %271)
  %273 = load i64, i64* %32, align 8
  %274 = load i64, i64* %35, align 8
  %275 = load i64, i64* %38, align 8
  %276 = load i64, i64* %41, align 8
  %277 = load i64, i64* %50, align 8
  %278 = load i64, i64* %50, align 8
  %279 = load i64, i64* %50, align 8
  %280 = load i64, i64* %50, align 8
  %281 = load i32, i32* %46, align 4
  %282 = load i32, i32* %47, align 4
  %283 = load i32, i32* %48, align 4
  %284 = load i32, i32* %49, align 4
  %285 = call i32 @DPADD_SB4_SH(i64 %273, i64 %274, i64 %275, i64 %276, i64 %277, i64 %278, i64 %279, i64 %280, i32 %281, i32 %282, i32 %283, i32 %284)
  %286 = load i64, i64* %33, align 8
  %287 = load i64, i64* %36, align 8
  %288 = load i64, i64* %39, align 8
  %289 = load i64, i64* %30, align 8
  %290 = load i64, i64* %51, align 8
  %291 = load i64, i64* %51, align 8
  %292 = load i64, i64* %51, align 8
  %293 = load i64, i64* %51, align 8
  %294 = load i32, i32* %46, align 4
  %295 = load i32, i32* %47, align 4
  %296 = load i32, i32* %48, align 4
  %297 = load i32, i32* %49, align 4
  %298 = call i32 @DPADD_SB4_SH(i64 %286, i64 %287, i64 %288, i64 %289, i64 %290, i64 %291, i64 %292, i64 %293, i32 %294, i32 %295, i32 %296, i32 %297)
  %299 = load i64, i64* %17, align 8
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* %19, align 8
  %302 = load i64, i64* %18, align 8
  %303 = load i64, i64* %21, align 8
  %304 = load i64, i64* %20, align 8
  %305 = load i64, i64* %29, align 8
  %306 = load i64, i64* %22, align 8
  %307 = load i64, i64* %16, align 8
  %308 = load i64, i64* %18, align 8
  %309 = load i64, i64* %20, align 8
  %310 = load i64, i64* %22, align 8
  %311 = call i32 @SLDI_B4_SB(i64 %299, i64 %300, i64 %301, i64 %302, i64 %303, i64 %304, i64 %305, i64 %306, i32 2, i64 %307, i64 %308, i64 %309, i64 %310)
  %312 = load i32, i32* %42, align 4
  %313 = load i32, i32* %43, align 4
  %314 = load i32, i32* %44, align 4
  %315 = load i32, i32* %45, align 4
  %316 = call i32 @SRARI_H4_SH(i32 %312, i32 %313, i32 %314, i32 %315, i32 5)
  %317 = load i32, i32* %46, align 4
  %318 = load i32, i32* %47, align 4
  %319 = load i32, i32* %48, align 4
  %320 = load i32, i32* %49, align 4
  %321 = call i32 @SRARI_H4_SH(i32 %317, i32 %318, i32 %319, i32 %320, i32 5)
  %322 = load i32, i32* %42, align 4
  %323 = load i32, i32* %43, align 4
  %324 = load i32, i32* %44, align 4
  %325 = load i32, i32* %45, align 4
  %326 = call i32 @SAT_SH4_SH(i32 %322, i32 %323, i32 %324, i32 %325, i32 7)
  %327 = load i32, i32* %46, align 4
  %328 = load i32, i32* %47, align 4
  %329 = load i32, i32* %48, align 4
  %330 = load i32, i32* %49, align 4
  %331 = call i32 @SAT_SH4_SH(i32 %327, i32 %328, i32 %329, i32 %330, i32 7)
  %332 = load i32, i32* %43, align 4
  %333 = load i32, i32* %42, align 4
  %334 = load i32, i32* %45, align 4
  %335 = load i32, i32* %44, align 4
  %336 = load i64, i64* %12, align 8
  %337 = load i64, i64* %13, align 8
  %338 = call i32 @PCKEV_B2_SB(i32 %332, i32 %333, i32 %334, i32 %335, i64 %336, i64 %337)
  %339 = load i32, i32* %47, align 4
  %340 = load i32, i32* %46, align 4
  %341 = load i32, i32* %49, align 4
  %342 = load i32, i32* %48, align 4
  %343 = load i64, i64* %14, align 8
  %344 = load i64, i64* %15, align 8
  %345 = call i32 @PCKEV_B2_SB(i32 %339, i32 %340, i32 %341, i32 %342, i64 %343, i64 %344)
  %346 = load i64, i64* %12, align 8
  %347 = load i64, i64* %16, align 8
  %348 = call i64 @__msa_aver_s_b(i64 %346, i64 %347)
  store i64 %348, i64* %12, align 8
  %349 = load i64, i64* %13, align 8
  %350 = load i64, i64* %18, align 8
  %351 = call i64 @__msa_aver_s_b(i64 %349, i64 %350)
  store i64 %351, i64* %13, align 8
  %352 = load i64, i64* %14, align 8
  %353 = load i64, i64* %20, align 8
  %354 = call i64 @__msa_aver_s_b(i64 %352, i64 %353)
  store i64 %354, i64* %14, align 8
  %355 = load i64, i64* %15, align 8
  %356 = load i64, i64* %22, align 8
  %357 = call i64 @__msa_aver_s_b(i64 %355, i64 %356)
  store i64 %357, i64* %15, align 8
  %358 = load i64, i64* %12, align 8
  %359 = load i64, i64* %13, align 8
  %360 = load i64, i64* %14, align 8
  %361 = load i64, i64* %15, align 8
  %362 = call i32 @XORI_B4_128_SB(i64 %358, i64 %359, i64 %360, i64 %361)
  %363 = load i64, i64* %12, align 8
  %364 = load i32, i32* %8, align 4
  %365 = load i64, i64* %13, align 8
  %366 = load i32, i32* %9, align 4
  %367 = load i32, i32* %8, align 4
  %368 = load i32, i32* %9, align 4
  %369 = call i32 @AVER_UB2_UB(i64 %363, i32 %364, i64 %365, i32 %366, i32 %367, i32 %368)
  %370 = load i64, i64* %14, align 8
  %371 = load i32, i32* %10, align 4
  %372 = load i64, i64* %15, align 8
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* %10, align 4
  %375 = load i32, i32* %11, align 4
  %376 = call i32 @AVER_UB2_UB(i64 %370, i32 %371, i64 %372, i32 %373, i32 %374, i32 %375)
  %377 = load i32, i32* %8, align 4
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* %10, align 4
  %380 = load i32, i32* %11, align 4
  %381 = load i32*, i32** %4, align 8
  %382 = load i32, i32* %6, align 4
  %383 = call i32 @ST_UB4(i32 %377, i32 %378, i32 %379, i32 %380, i32* %381, i32 %382)
  %384 = load i32, i32* %6, align 4
  %385 = mul nsw i32 4, %384
  %386 = load i32*, i32** %4, align 8
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i32, i32* %386, i64 %387
  store i32* %388, i32** %4, align 8
  br label %68

389:                                              ; preds = %68
  ret void
}

declare dso_local i64 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SLDI_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__msa_aver_s_b(i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @AVER_UB2_UB(i64, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
