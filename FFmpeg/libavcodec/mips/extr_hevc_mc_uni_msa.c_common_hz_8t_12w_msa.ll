; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_12w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_12w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_12w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_12w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %52 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = call i64 @LD_UB(i32* %53)
  store i64 %54, i64* %21, align 8
  %55 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 16
  %57 = call i64 @LD_UB(i32* %56)
  store i64 %57, i64* %14, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -3
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @LD_SH(i32* %60)
  store i32 %61, i32* %45, align 4
  %62 = load i32, i32* %45, align 4
  %63 = load i32, i32* %41, align 4
  %64 = load i32, i32* %42, align 4
  %65 = load i32, i32* %43, align 4
  %66 = load i32, i32* %44, align 4
  %67 = call i32 @SPLATI_H4_SB(i32 %62, i32 0, i32 1, i32 2, i32 3, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i64, i64* %21, align 8
  %69 = add nsw i64 %68, 2
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %21, align 8
  %71 = add nsw i64 %70, 4
  store i64 %71, i64* %16, align 8
  %72 = load i64, i64* %21, align 8
  %73 = add nsw i64 %72, 6
  store i64 %73, i64* %17, align 8
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, 2
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* %14, align 8
  %77 = add nsw i64 %76, 4
  store i64 %77, i64* %19, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, 6
  store i64 %79, i64* %20, align 8
  store i32 4, i32* %13, align 4
  br label %80

80:                                               ; preds = %84, %6
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %13, align 4
  %83 = icmp ne i32 %81, 0
  br i1 %83, label %84, label %343

84:                                               ; preds = %80
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %28, align 4
  %91 = call i32 @LD_SB4(i32* %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %29, align 4
  %96 = load i32, i32* %30, align 4
  %97 = load i32, i32* %31, align 4
  %98 = load i32, i32* %32, align 4
  %99 = call i32 @LD_SB4(i32* %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %25, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %28, align 4
  %104 = call i32 @XORI_B4_128_SB(i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %29, align 4
  %106 = load i32, i32* %30, align 4
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %32, align 4
  %109 = call i32 @XORI_B4_128_SB(i32 %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 4, %110
  %112 = load i32*, i32** %7, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %7, align 8
  %115 = load i32, i32* %25, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %26, align 4
  %118 = load i32, i32* %26, align 4
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* %21, align 8
  %121 = load i32, i32* %33, align 4
  %122 = load i32, i32* %34, align 4
  %123 = call i32 @VSHF_B2_SB(i32 %115, i32 %116, i32 %117, i32 %118, i64 %119, i64 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %27, align 4
  %126 = load i32, i32* %28, align 4
  %127 = load i32, i32* %28, align 4
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %21, align 8
  %130 = load i32, i32* %35, align 4
  %131 = load i32, i32* %36, align 4
  %132 = call i32 @VSHF_B2_SB(i32 %124, i32 %125, i32 %126, i32 %127, i64 %128, i64 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %33, align 4
  %134 = load i32, i32* %34, align 4
  %135 = load i32, i32* %35, align 4
  %136 = load i32, i32* %36, align 4
  %137 = load i32, i32* %41, align 4
  %138 = load i32, i32* %41, align 4
  %139 = load i32, i32* %41, align 4
  %140 = load i32, i32* %41, align 4
  %141 = load i32, i32* %46, align 4
  %142 = load i32, i32* %47, align 4
  %143 = load i32, i32* %48, align 4
  %144 = load i32, i32* %49, align 4
  %145 = call i32 @DOTP_SB4_SH(i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i64, i64* %16, align 8
  %151 = load i64, i64* %16, align 8
  %152 = load i32, i32* %33, align 4
  %153 = load i32, i32* %34, align 4
  %154 = call i32 @VSHF_B2_SB(i32 %146, i32 %147, i32 %148, i32 %149, i64 %150, i64 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %27, align 4
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %28, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i64, i64* %16, align 8
  %160 = load i64, i64* %16, align 8
  %161 = load i32, i32* %35, align 4
  %162 = load i32, i32* %36, align 4
  %163 = call i32 @VSHF_B2_SB(i32 %155, i32 %156, i32 %157, i32 %158, i64 %159, i64 %160, i32 %161, i32 %162)
  %164 = load i32, i32* %33, align 4
  %165 = load i32, i32* %34, align 4
  %166 = load i32, i32* %35, align 4
  %167 = load i32, i32* %36, align 4
  %168 = load i32, i32* %43, align 4
  %169 = load i32, i32* %43, align 4
  %170 = load i32, i32* %43, align 4
  %171 = load i32, i32* %43, align 4
  %172 = load i32, i32* %46, align 4
  %173 = load i32, i32* %47, align 4
  %174 = load i32, i32* %48, align 4
  %175 = load i32, i32* %49, align 4
  %176 = call i32 @DPADD_SB4_SH(i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %25, align 4
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %26, align 4
  %181 = load i64, i64* %15, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i32, i32* %37, align 4
  %184 = load i32, i32* %38, align 4
  %185 = call i32 @VSHF_B2_SB(i32 %177, i32 %178, i32 %179, i32 %180, i64 %181, i64 %182, i32 %183, i32 %184)
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %27, align 4
  %188 = load i32, i32* %28, align 4
  %189 = load i32, i32* %28, align 4
  %190 = load i64, i64* %15, align 8
  %191 = load i64, i64* %15, align 8
  %192 = load i32, i32* %39, align 4
  %193 = load i32, i32* %40, align 4
  %194 = call i32 @VSHF_B2_SB(i32 %186, i32 %187, i32 %188, i32 %189, i64 %190, i64 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %37, align 4
  %196 = load i32, i32* %38, align 4
  %197 = load i32, i32* %39, align 4
  %198 = load i32, i32* %40, align 4
  %199 = load i32, i32* %42, align 4
  %200 = load i32, i32* %42, align 4
  %201 = load i32, i32* %42, align 4
  %202 = load i32, i32* %42, align 4
  %203 = load i32, i32* %46, align 4
  %204 = load i32, i32* %47, align 4
  %205 = load i32, i32* %48, align 4
  %206 = load i32, i32* %49, align 4
  %207 = call i32 @DPADD_SB4_SH(i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %25, align 4
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %26, align 4
  %212 = load i64, i64* %17, align 8
  %213 = load i64, i64* %17, align 8
  %214 = load i32, i32* %37, align 4
  %215 = load i32, i32* %38, align 4
  %216 = call i32 @VSHF_B2_SB(i32 %208, i32 %209, i32 %210, i32 %211, i64 %212, i64 %213, i32 %214, i32 %215)
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %27, align 4
  %219 = load i32, i32* %28, align 4
  %220 = load i32, i32* %28, align 4
  %221 = load i64, i64* %17, align 8
  %222 = load i64, i64* %17, align 8
  %223 = load i32, i32* %39, align 4
  %224 = load i32, i32* %40, align 4
  %225 = call i32 @VSHF_B2_SB(i32 %217, i32 %218, i32 %219, i32 %220, i64 %221, i64 %222, i32 %223, i32 %224)
  %226 = load i32, i32* %37, align 4
  %227 = load i32, i32* %38, align 4
  %228 = load i32, i32* %39, align 4
  %229 = load i32, i32* %40, align 4
  %230 = load i32, i32* %44, align 4
  %231 = load i32, i32* %44, align 4
  %232 = load i32, i32* %44, align 4
  %233 = load i32, i32* %44, align 4
  %234 = load i32, i32* %46, align 4
  %235 = load i32, i32* %47, align 4
  %236 = load i32, i32* %48, align 4
  %237 = load i32, i32* %49, align 4
  %238 = call i32 @DPADD_SB4_SH(i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237)
  %239 = load i32, i32* %29, align 4
  %240 = load i32, i32* %30, align 4
  %241 = load i32, i32* %31, align 4
  %242 = load i32, i32* %32, align 4
  %243 = load i64, i64* %14, align 8
  %244 = load i64, i64* %14, align 8
  %245 = load i32, i32* %33, align 4
  %246 = load i32, i32* %34, align 4
  %247 = call i32 @VSHF_B2_SB(i32 %239, i32 %240, i32 %241, i32 %242, i64 %243, i64 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %33, align 4
  %249 = load i32, i32* %34, align 4
  %250 = load i32, i32* %41, align 4
  %251 = load i32, i32* %41, align 4
  %252 = load i32, i32* %50, align 4
  %253 = load i32, i32* %51, align 4
  %254 = call i32 @DOTP_SB2_SH(i32 %248, i32 %249, i32 %250, i32 %251, i32 %252, i32 %253)
  %255 = load i32, i32* %29, align 4
  %256 = load i32, i32* %30, align 4
  %257 = load i32, i32* %31, align 4
  %258 = load i32, i32* %32, align 4
  %259 = load i64, i64* %18, align 8
  %260 = load i64, i64* %18, align 8
  %261 = load i32, i32* %35, align 4
  %262 = load i32, i32* %36, align 4
  %263 = call i32 @VSHF_B2_SB(i32 %255, i32 %256, i32 %257, i32 %258, i64 %259, i64 %260, i32 %261, i32 %262)
  %264 = load i32, i32* %35, align 4
  %265 = load i32, i32* %36, align 4
  %266 = load i32, i32* %42, align 4
  %267 = load i32, i32* %42, align 4
  %268 = load i32, i32* %50, align 4
  %269 = load i32, i32* %51, align 4
  %270 = call i32 @DPADD_SB2_SH(i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269)
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %30, align 4
  %273 = load i32, i32* %31, align 4
  %274 = load i32, i32* %32, align 4
  %275 = load i64, i64* %19, align 8
  %276 = load i64, i64* %19, align 8
  %277 = load i32, i32* %37, align 4
  %278 = load i32, i32* %38, align 4
  %279 = call i32 @VSHF_B2_SB(i32 %271, i32 %272, i32 %273, i32 %274, i64 %275, i64 %276, i32 %277, i32 %278)
  %280 = load i32, i32* %37, align 4
  %281 = load i32, i32* %38, align 4
  %282 = load i32, i32* %43, align 4
  %283 = load i32, i32* %43, align 4
  %284 = load i32, i32* %50, align 4
  %285 = load i32, i32* %51, align 4
  %286 = call i32 @DPADD_SB2_SH(i32 %280, i32 %281, i32 %282, i32 %283, i32 %284, i32 %285)
  %287 = load i32, i32* %29, align 4
  %288 = load i32, i32* %30, align 4
  %289 = load i32, i32* %31, align 4
  %290 = load i32, i32* %32, align 4
  %291 = load i64, i64* %20, align 8
  %292 = load i64, i64* %20, align 8
  %293 = load i32, i32* %39, align 4
  %294 = load i32, i32* %40, align 4
  %295 = call i32 @VSHF_B2_SB(i32 %287, i32 %288, i32 %289, i32 %290, i64 %291, i64 %292, i32 %293, i32 %294)
  %296 = load i32, i32* %39, align 4
  %297 = load i32, i32* %40, align 4
  %298 = load i32, i32* %44, align 4
  %299 = load i32, i32* %44, align 4
  %300 = load i32, i32* %50, align 4
  %301 = load i32, i32* %51, align 4
  %302 = call i32 @DPADD_SB2_SH(i32 %296, i32 %297, i32 %298, i32 %299, i32 %300, i32 %301)
  %303 = load i32, i32* %46, align 4
  %304 = load i32, i32* %47, align 4
  %305 = load i32, i32* %48, align 4
  %306 = load i32, i32* %49, align 4
  %307 = call i32 @SRARI_H4_SH(i32 %303, i32 %304, i32 %305, i32 %306, i32 6)
  %308 = load i32, i32* %50, align 4
  %309 = load i32, i32* %51, align 4
  %310 = call i32 @SRARI_H2_SH(i32 %308, i32 %309, i32 6)
  %311 = load i32, i32* %46, align 4
  %312 = load i32, i32* %47, align 4
  %313 = load i32, i32* %48, align 4
  %314 = load i32, i32* %49, align 4
  %315 = call i32 @SAT_SH4_SH(i32 %311, i32 %312, i32 %313, i32 %314, i32 7)
  %316 = load i32, i32* %50, align 4
  %317 = load i32, i32* %51, align 4
  %318 = call i32 @SAT_SH2_SH(i32 %316, i32 %317, i32 7)
  %319 = load i32, i32* %46, align 4
  %320 = load i32, i32* %47, align 4
  %321 = call i64 @PCKEV_XORI128_UB(i32 %319, i32 %320)
  store i64 %321, i64* %22, align 8
  %322 = load i32, i32* %48, align 4
  %323 = load i32, i32* %49, align 4
  %324 = call i64 @PCKEV_XORI128_UB(i32 %322, i32 %323)
  store i64 %324, i64* %23, align 8
  %325 = load i32, i32* %50, align 4
  %326 = load i32, i32* %51, align 4
  %327 = call i64 @PCKEV_XORI128_UB(i32 %325, i32 %326)
  store i64 %327, i64* %24, align 8
  %328 = load i64, i64* %22, align 8
  %329 = load i64, i64* %23, align 8
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* %10, align 4
  %332 = call i32 @ST_D4(i64 %328, i64 %329, i32 0, i32 1, i32 0, i32 1, i32* %330, i32 %331)
  %333 = load i64, i64* %24, align 8
  %334 = load i32*, i32** %9, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 8
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @ST_W4(i64 %333, i32 0, i32 1, i32 2, i32 3, i32* %335, i32 %336)
  %338 = load i32, i32* %10, align 4
  %339 = mul nsw i32 4, %338
  %340 = load i32*, i32** %9, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %340, i64 %341
  store i32* %342, i32** %9, align 8
  br label %80

343:                                              ; preds = %80
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i32, i32, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @DOTP_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
