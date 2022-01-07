; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_24w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_24w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_24w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_24w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  store i32* %38, i32** %14, align 8
  %39 = load i32, i32* @ff_hevc_mask_arr, align 4
  %40 = call i64 @LD_SB(i32 %39)
  store i64 %40, i64* %25, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %35, align 4
  %45 = load i32, i32* %35, align 4
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %24, align 4
  %48 = call i32 @SPLATI_H2_SH(i32 %45, i32 0, i32 1, i32 %46, i32 %47)
  %49 = load i64, i64* %25, align 8
  %50 = add nsw i64 %49, 2
  store i64 %50, i64* %26, align 8
  %51 = load i64, i64* %25, align 8
  %52 = add nsw i64 %51, 8
  store i64 %52, i64* %27, align 8
  %53 = load i64, i64* %25, align 8
  %54 = add nsw i64 %53, 10
  store i64 %54, i64* %28, align 8
  %55 = call i32 @__msa_ldi_h(i32 128)
  store i32 %55, i32* %36, align 4
  %56 = load i32, i32* %36, align 4
  %57 = shl i32 %56, 6
  store i32 %57, i32* %36, align 4
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 2
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %64, %6
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %342

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %21, align 8
  %71 = call i32 @LD_SB4(i32* %65, i32 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %22, align 8
  %79 = call i32 @LD_SB4(i32* %73, i32 %74, i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = mul nsw i32 4, %80
  %82 = load i32*, i32** %7, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %7, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %22, align 8
  %93 = call i32 @XORI_B8_128_SB(i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load i64, i64* %25, align 8
  %99 = load i64, i64* %26, align 8
  %100 = load i64, i64* %29, align 8
  %101 = load i64, i64* %30, align 8
  %102 = call i32 @VSHF_B2_SB(i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32, i32* %36, align 4
  store i32 %103, i32* %31, align 4
  %104 = load i64, i64* %29, align 8
  %105 = load i64, i64* %30, align 8
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %24, align 4
  %108 = load i32, i32* %31, align 4
  %109 = load i32, i32* %31, align 4
  %110 = call i32 @DPADD_SB2_SH(i64 %104, i64 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %27, align 8
  %116 = load i64, i64* %28, align 8
  %117 = load i64, i64* %29, align 8
  %118 = load i64, i64* %30, align 8
  %119 = call i32 @VSHF_B2_SB(i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %120 = load i32, i32* %36, align 4
  store i32 %120, i32* %32, align 4
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %30, align 8
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %24, align 4
  %125 = load i32, i32* %32, align 4
  %126 = load i32, i32* %32, align 4
  %127 = call i32 @DPADD_SB2_SH(i64 %121, i64 %122, i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i64, i64* %17, align 8
  %129 = load i64, i64* %17, align 8
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %25, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %29, align 8
  %135 = load i64, i64* %30, align 8
  %136 = call i32 @VSHF_B2_SB(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i32, i32* %36, align 4
  store i32 %137, i32* %33, align 4
  %138 = load i64, i64* %29, align 8
  %139 = load i64, i64* %30, align 8
  %140 = load i32, i32* %23, align 4
  %141 = load i32, i32* %24, align 4
  %142 = load i32, i32* %33, align 4
  %143 = load i32, i32* %33, align 4
  %144 = call i32 @DPADD_SB2_SH(i64 %138, i64 %139, i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %17, align 8
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* %27, align 8
  %150 = load i64, i64* %28, align 8
  %151 = load i64, i64* %29, align 8
  %152 = load i64, i64* %30, align 8
  %153 = call i32 @VSHF_B2_SB(i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  %154 = load i32, i32* %36, align 4
  store i32 %154, i32* %34, align 4
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %30, align 8
  %157 = load i32, i32* %23, align 4
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %34, align 4
  %160 = load i32, i32* %34, align 4
  %161 = call i32 @DPADD_SB2_SH(i64 %155, i64 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %31, align 4
  %163 = load i32, i32* %32, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = call i32 @ST_SH2(i32 %162, i32 %163, i32* %164, i32 8)
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %9, align 8
  %170 = load i32, i32* %33, align 4
  %171 = load i32, i32* %34, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @ST_SH2(i32 %170, i32 %171, i32* %172, i32 8)
  %174 = load i32, i32* %10, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %9, align 8
  %178 = load i64, i64* %19, align 8
  %179 = load i64, i64* %19, align 8
  %180 = load i64, i64* %19, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load i64, i64* %25, align 8
  %183 = load i64, i64* %26, align 8
  %184 = load i64, i64* %29, align 8
  %185 = load i64, i64* %30, align 8
  %186 = call i32 @VSHF_B2_SB(i64 %178, i64 %179, i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185)
  %187 = load i32, i32* %36, align 4
  store i32 %187, i32* %31, align 4
  %188 = load i64, i64* %29, align 8
  %189 = load i64, i64* %30, align 8
  %190 = load i32, i32* %23, align 4
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %31, align 4
  %193 = load i32, i32* %31, align 4
  %194 = call i32 @DPADD_SB2_SH(i64 %188, i64 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i64, i64* %19, align 8
  %196 = load i64, i64* %20, align 8
  %197 = load i64, i64* %19, align 8
  %198 = load i64, i64* %20, align 8
  %199 = load i64, i64* %27, align 8
  %200 = load i64, i64* %28, align 8
  %201 = load i64, i64* %29, align 8
  %202 = load i64, i64* %30, align 8
  %203 = call i32 @VSHF_B2_SB(i64 %195, i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  %204 = load i32, i32* %36, align 4
  store i32 %204, i32* %32, align 4
  %205 = load i64, i64* %29, align 8
  %206 = load i64, i64* %30, align 8
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %32, align 4
  %210 = load i32, i32* %32, align 4
  %211 = call i32 @DPADD_SB2_SH(i64 %205, i64 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i64, i64* %21, align 8
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* %21, align 8
  %215 = load i64, i64* %21, align 8
  %216 = load i64, i64* %25, align 8
  %217 = load i64, i64* %26, align 8
  %218 = load i64, i64* %29, align 8
  %219 = load i64, i64* %30, align 8
  %220 = call i32 @VSHF_B2_SB(i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219)
  %221 = load i32, i32* %36, align 4
  store i32 %221, i32* %33, align 4
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %30, align 8
  %224 = load i32, i32* %23, align 4
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* %33, align 4
  %227 = load i32, i32* %33, align 4
  %228 = call i32 @DPADD_SB2_SH(i64 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  %229 = load i64, i64* %21, align 8
  %230 = load i64, i64* %22, align 8
  %231 = load i64, i64* %21, align 8
  %232 = load i64, i64* %22, align 8
  %233 = load i64, i64* %27, align 8
  %234 = load i64, i64* %28, align 8
  %235 = load i64, i64* %29, align 8
  %236 = load i64, i64* %30, align 8
  %237 = call i32 @VSHF_B2_SB(i64 %229, i64 %230, i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  %238 = load i32, i32* %36, align 4
  store i32 %238, i32* %34, align 4
  %239 = load i64, i64* %29, align 8
  %240 = load i64, i64* %30, align 8
  %241 = load i32, i32* %23, align 4
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %34, align 4
  %244 = load i32, i32* %34, align 4
  %245 = call i32 @DPADD_SB2_SH(i64 %239, i64 %240, i32 %241, i32 %242, i32 %243, i32 %244)
  %246 = load i32, i32* %31, align 4
  %247 = load i32, i32* %32, align 4
  %248 = load i32*, i32** %9, align 8
  %249 = call i32 @ST_SH2(i32 %246, i32 %247, i32* %248, i32 8)
  %250 = load i32, i32* %10, align 4
  %251 = load i32*, i32** %9, align 8
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32* %253, i32** %9, align 8
  %254 = load i32, i32* %33, align 4
  %255 = load i32, i32* %34, align 4
  %256 = load i32*, i32** %9, align 8
  %257 = call i32 @ST_SH2(i32 %254, i32 %255, i32* %256, i32 8)
  %258 = load i32, i32* %10, align 4
  %259 = load i32*, i32** %9, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i32, i32* %259, i64 %260
  store i32* %261, i32** %9, align 8
  %262 = load i64, i64* %16, align 8
  %263 = load i64, i64* %16, align 8
  %264 = load i64, i64* %16, align 8
  %265 = load i64, i64* %16, align 8
  %266 = load i64, i64* %25, align 8
  %267 = load i64, i64* %26, align 8
  %268 = load i64, i64* %29, align 8
  %269 = load i64, i64* %30, align 8
  %270 = call i32 @VSHF_B2_SB(i64 %262, i64 %263, i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  %271 = load i32, i32* %36, align 4
  store i32 %271, i32* %31, align 4
  %272 = load i64, i64* %29, align 8
  %273 = load i64, i64* %30, align 8
  %274 = load i32, i32* %23, align 4
  %275 = load i32, i32* %24, align 4
  %276 = load i32, i32* %31, align 4
  %277 = load i32, i32* %31, align 4
  %278 = call i32 @DPADD_SB2_SH(i64 %272, i64 %273, i32 %274, i32 %275, i32 %276, i32 %277)
  %279 = load i64, i64* %18, align 8
  %280 = load i64, i64* %18, align 8
  %281 = load i64, i64* %18, align 8
  %282 = load i64, i64* %18, align 8
  %283 = load i64, i64* %25, align 8
  %284 = load i64, i64* %26, align 8
  %285 = load i64, i64* %29, align 8
  %286 = load i64, i64* %30, align 8
  %287 = call i32 @VSHF_B2_SB(i64 %279, i64 %280, i64 %281, i64 %282, i64 %283, i64 %284, i64 %285, i64 %286)
  %288 = load i32, i32* %36, align 4
  store i32 %288, i32* %32, align 4
  %289 = load i64, i64* %29, align 8
  %290 = load i64, i64* %30, align 8
  %291 = load i32, i32* %23, align 4
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %32, align 4
  %294 = load i32, i32* %32, align 4
  %295 = call i32 @DPADD_SB2_SH(i64 %289, i64 %290, i32 %291, i32 %292, i32 %293, i32 %294)
  %296 = load i64, i64* %20, align 8
  %297 = load i64, i64* %20, align 8
  %298 = load i64, i64* %20, align 8
  %299 = load i64, i64* %20, align 8
  %300 = load i64, i64* %25, align 8
  %301 = load i64, i64* %26, align 8
  %302 = load i64, i64* %29, align 8
  %303 = load i64, i64* %30, align 8
  %304 = call i32 @VSHF_B2_SB(i64 %296, i64 %297, i64 %298, i64 %299, i64 %300, i64 %301, i64 %302, i64 %303)
  %305 = load i32, i32* %36, align 4
  store i32 %305, i32* %33, align 4
  %306 = load i64, i64* %29, align 8
  %307 = load i64, i64* %30, align 8
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* %24, align 4
  %310 = load i32, i32* %33, align 4
  %311 = load i32, i32* %33, align 4
  %312 = call i32 @DPADD_SB2_SH(i64 %306, i64 %307, i32 %308, i32 %309, i32 %310, i32 %311)
  %313 = load i64, i64* %22, align 8
  %314 = load i64, i64* %22, align 8
  %315 = load i64, i64* %22, align 8
  %316 = load i64, i64* %22, align 8
  %317 = load i64, i64* %25, align 8
  %318 = load i64, i64* %26, align 8
  %319 = load i64, i64* %29, align 8
  %320 = load i64, i64* %30, align 8
  %321 = call i32 @VSHF_B2_SB(i64 %313, i64 %314, i64 %315, i64 %316, i64 %317, i64 %318, i64 %319, i64 %320)
  %322 = load i32, i32* %36, align 4
  store i32 %322, i32* %34, align 4
  %323 = load i64, i64* %29, align 8
  %324 = load i64, i64* %30, align 8
  %325 = load i32, i32* %23, align 4
  %326 = load i32, i32* %24, align 4
  %327 = load i32, i32* %34, align 4
  %328 = load i32, i32* %34, align 4
  %329 = call i32 @DPADD_SB2_SH(i64 %323, i64 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  %330 = load i32, i32* %31, align 4
  %331 = load i32, i32* %32, align 4
  %332 = load i32, i32* %33, align 4
  %333 = load i32, i32* %34, align 4
  %334 = load i32*, i32** %14, align 8
  %335 = load i32, i32* %10, align 4
  %336 = call i32 @ST_SH4(i32 %330, i32 %331, i32 %332, i32 %333, i32* %334, i32 %335)
  %337 = load i32, i32* %10, align 4
  %338 = mul nsw i32 4, %337
  %339 = load i32*, i32** %14, align 8
  %340 = sext i32 %338 to i64
  %341 = getelementptr inbounds i32, i32* %339, i64 %340
  store i32* %341, i32** %14, align 8
  br label %60

342:                                              ; preds = %60
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

declare dso_local i32 @ST_SH4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
