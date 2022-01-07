; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc10_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_ff_put_h264_qpel8_mc10_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_h264_qpel8_mc10_msa(i32* %0, i32* %1, i32 %2) #0 {
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
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %44 = call i32 @__msa_ldi_b(i32 -5)
  store i32 %44, i32* %42, align 4
  %45 = call i32 @__msa_ldi_b(i32 20)
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** @luma_mask_arr, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 @LD_SB3(i32* %47, i32 16, i32 %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 -2
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @LD_SB8(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @XORI_B8_128_SB(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = call i32 @VSHF_B2_SB(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* %26, align 4
  %90 = call i32 @VSHF_B2_SB(i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %34, align 4
  %96 = load i32, i32* %35, align 4
  %97 = load i32, i32* %36, align 4
  %98 = load i32, i32* %37, align 4
  %99 = call i32 @HADD_SB4_SH(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %28, align 4
  %108 = call i32 @VSHF_B2_SB(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %29, align 4
  %116 = load i32, i32* %30, align 4
  %117 = call i32 @VSHF_B2_SB(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %27, align 4
  %119 = load i32, i32* %28, align 4
  %120 = load i32, i32* %29, align 4
  %121 = load i32, i32* %30, align 4
  %122 = load i32, i32* %42, align 4
  %123 = load i32, i32* %42, align 4
  %124 = load i32, i32* %42, align 4
  %125 = load i32, i32* %42, align 4
  %126 = load i32, i32* %34, align 4
  %127 = load i32, i32* %35, align 4
  %128 = load i32, i32* %36, align 4
  %129 = load i32, i32* %37, align 4
  %130 = call i32 @DPADD_SB4_SH(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %31, align 4
  %138 = load i32, i32* %32, align 4
  %139 = call i32 @VSHF_B2_SB(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138)
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %33, align 4
  %147 = load i32, i32* %22, align 4
  %148 = call i32 @VSHF_B2_SB(i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  %149 = load i32, i32* %31, align 4
  %150 = load i32, i32* %32, align 4
  %151 = load i32, i32* %33, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %43, align 4
  %154 = load i32, i32* %43, align 4
  %155 = load i32, i32* %43, align 4
  %156 = load i32, i32* %43, align 4
  %157 = load i32, i32* %34, align 4
  %158 = load i32, i32* %35, align 4
  %159 = load i32, i32* %36, align 4
  %160 = load i32, i32* %37, align 4
  %161 = call i32 @DPADD_SB4_SH(i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* %23, align 4
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @VSHF_B2_SB(i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %26, align 4
  %179 = call i32 @VSHF_B2_SB(i32 %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* %26, align 4
  %184 = load i32, i32* %38, align 4
  %185 = load i32, i32* %39, align 4
  %186 = load i32, i32* %40, align 4
  %187 = load i32, i32* %41, align 4
  %188 = call i32 @HADD_SB4_SH(i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %16, align 4
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* %28, align 4
  %197 = call i32 @VSHF_B2_SB(i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = load i32, i32* %29, align 4
  %205 = load i32, i32* %30, align 4
  %206 = call i32 @VSHF_B2_SB(i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %27, align 4
  %208 = load i32, i32* %28, align 4
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %30, align 4
  %211 = load i32, i32* %42, align 4
  %212 = load i32, i32* %42, align 4
  %213 = load i32, i32* %42, align 4
  %214 = load i32, i32* %42, align 4
  %215 = load i32, i32* %38, align 4
  %216 = load i32, i32* %39, align 4
  %217 = load i32, i32* %40, align 4
  %218 = load i32, i32* %41, align 4
  %219 = call i32 @DPADD_SB4_SH(i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %17, align 4
  %226 = load i32, i32* %31, align 4
  %227 = load i32, i32* %32, align 4
  %228 = call i32 @VSHF_B2_SB(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %13, align 4
  %231 = load i32, i32* %14, align 4
  %232 = load i32, i32* %14, align 4
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %33, align 4
  %236 = load i32, i32* %22, align 4
  %237 = call i32 @VSHF_B2_SB(i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236)
  %238 = load i32, i32* %31, align 4
  %239 = load i32, i32* %32, align 4
  %240 = load i32, i32* %33, align 4
  %241 = load i32, i32* %22, align 4
  %242 = load i32, i32* %43, align 4
  %243 = load i32, i32* %43, align 4
  %244 = load i32, i32* %43, align 4
  %245 = load i32, i32* %43, align 4
  %246 = load i32, i32* %38, align 4
  %247 = load i32, i32* %39, align 4
  %248 = load i32, i32* %40, align 4
  %249 = load i32, i32* %41, align 4
  %250 = call i32 @DPADD_SB4_SH(i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @SLDI_B4_SB(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 2, i32 %259, i32 %260, i32 %261, i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %12, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %12, align 4
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @SLDI_B4_SB(i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 2, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %8, align 4
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @PCKEV_D2_SB(i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %12, align 4
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* %14, align 4
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* %12, align 4
  %290 = call i32 @PCKEV_D2_SB(i32 %284, i32 %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32, i32* %34, align 4
  %292 = load i32, i32* %35, align 4
  %293 = load i32, i32* %36, align 4
  %294 = load i32, i32* %37, align 4
  %295 = call i32 @SRARI_H4_SH(i32 %291, i32 %292, i32 %293, i32 %294, i32 5)
  %296 = load i32, i32* %38, align 4
  %297 = load i32, i32* %39, align 4
  %298 = load i32, i32* %40, align 4
  %299 = load i32, i32* %41, align 4
  %300 = call i32 @SRARI_H4_SH(i32 %296, i32 %297, i32 %298, i32 %299, i32 5)
  %301 = load i32, i32* %34, align 4
  %302 = load i32, i32* %35, align 4
  %303 = load i32, i32* %36, align 4
  %304 = load i32, i32* %37, align 4
  %305 = call i32 @SAT_SH4_SH(i32 %301, i32 %302, i32 %303, i32 %304, i32 7)
  %306 = load i32, i32* %38, align 4
  %307 = load i32, i32* %39, align 4
  %308 = load i32, i32* %40, align 4
  %309 = load i32, i32* %41, align 4
  %310 = call i32 @SAT_SH4_SH(i32 %306, i32 %307, i32 %308, i32 %309, i32 7)
  %311 = load i32, i32* %35, align 4
  %312 = load i32, i32* %34, align 4
  %313 = load i32, i32* %37, align 4
  %314 = load i32, i32* %36, align 4
  %315 = load i32, i32* %18, align 4
  %316 = load i32, i32* %19, align 4
  %317 = call i32 @PCKEV_B2_SB(i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = load i32, i32* %39, align 4
  %319 = load i32, i32* %38, align 4
  %320 = load i32, i32* %41, align 4
  %321 = load i32, i32* %40, align 4
  %322 = load i32, i32* %20, align 4
  %323 = load i32, i32* %21, align 4
  %324 = call i32 @PCKEV_B2_SB(i32 %318, i32 %319, i32 %320, i32 %321, i32 %322, i32 %323)
  %325 = load i32, i32* %18, align 4
  %326 = load i32, i32* %7, align 4
  %327 = call i32 @__msa_aver_s_b(i32 %325, i32 %326)
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %8, align 4
  %330 = call i32 @__msa_aver_s_b(i32 %328, i32 %329)
  store i32 %330, i32* %19, align 4
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @__msa_aver_s_b(i32 %331, i32 %332)
  store i32 %333, i32* %20, align 4
  %334 = load i32, i32* %21, align 4
  %335 = load i32, i32* %12, align 4
  %336 = call i32 @__msa_aver_s_b(i32 %334, i32 %335)
  store i32 %336, i32* %21, align 4
  %337 = load i32, i32* %18, align 4
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* %20, align 4
  %340 = load i32, i32* %21, align 4
  %341 = call i32 @XORI_B4_128_SB(i32 %337, i32 %338, i32 %339, i32 %340)
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* %19, align 4
  %344 = load i32, i32* %20, align 4
  %345 = load i32, i32* %21, align 4
  %346 = load i32*, i32** %4, align 8
  %347 = load i32, i32* %6, align 4
  %348 = call i32 @ST_D8(i32 %342, i32 %343, i32 %344, i32 %345, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %346, i32 %347)
  ret void
}

declare dso_local i32 @__msa_ldi_b(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLDI_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_D2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_aver_s_b(i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
