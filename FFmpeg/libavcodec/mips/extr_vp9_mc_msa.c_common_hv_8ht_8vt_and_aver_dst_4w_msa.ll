; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_and_aver_dst_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_8ht_8vt_and_aver_dst_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32)* @common_hv_8ht_8vt_and_aver_dst_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_8ht_8vt_and_aver_dst_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
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
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %63 = load i32*, i32** @mc_filt_mask_arr, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 16
  %65 = call i64 @LD_UB(i32* %64)
  store i64 %65, i64* %33, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 3, %66
  %68 = add nsw i32 3, %67
  %69 = load i32*, i32** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32* %72, i32** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i64 @LD_SH(i32* %73)
  store i64 %74, i64* %58, align 8
  %75 = load i64, i64* %58, align 8
  %76 = load i32, i32* %37, align 4
  %77 = load i32, i32* %38, align 4
  %78 = load i32, i32* %39, align 4
  %79 = load i32, i32* %40, align 4
  %80 = call i32 @SPLATI_H4_SB(i64 %75, i32 0, i32 1, i32 2, i32 3, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i64, i64* %33, align 8
  %82 = add nsw i64 %81, 2
  store i64 %82, i64* %34, align 8
  %83 = load i64, i64* %33, align 8
  %84 = add nsw i64 %83, 4
  store i64 %84, i64* %35, align 8
  %85 = load i64, i64* %33, align 8
  %86 = add nsw i64 %85, 6
  store i64 %86, i64* %36, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %26, align 4
  %96 = call i32 @LD_SB7(i32* %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @XORI_B7_128_SB(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 7, %105
  %107 = load i32*, i32** %8, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %8, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i64, i64* %33, align 8
  %113 = load i64, i64* %34, align 8
  %114 = load i64, i64* %35, align 8
  %115 = load i64, i64* %36, align 8
  %116 = load i32, i32* %37, align 4
  %117 = load i32, i32* %38, align 4
  %118 = load i32, i32* %39, align 4
  %119 = load i32, i32* %40, align 4
  %120 = call i64 @HORIZ_8TAP_FILT(i32 %110, i32 %111, i64 %112, i64 %113, i64 %114, i64 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  store i64 %120, i64* %41, align 8
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %23, align 4
  %123 = load i64, i64* %33, align 8
  %124 = load i64, i64* %34, align 8
  %125 = load i64, i64* %35, align 8
  %126 = load i64, i64* %36, align 8
  %127 = load i32, i32* %37, align 4
  %128 = load i32, i32* %38, align 4
  %129 = load i32, i32* %39, align 4
  %130 = load i32, i32* %40, align 4
  %131 = call i64 @HORIZ_8TAP_FILT(i32 %121, i32 %122, i64 %123, i64 %124, i64 %125, i64 %126, i32 %127, i32 %128, i32 %129, i32 %130)
  store i64 %131, i64* %43, align 8
  %132 = load i32, i32* %24, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i64, i64* %33, align 8
  %135 = load i64, i64* %34, align 8
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %36, align 8
  %138 = load i32, i32* %37, align 4
  %139 = load i32, i32* %38, align 4
  %140 = load i32, i32* %39, align 4
  %141 = load i32, i32* %40, align 4
  %142 = call i64 @HORIZ_8TAP_FILT(i32 %132, i32 %133, i64 %134, i64 %135, i64 %136, i64 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  store i64 %142, i64* %45, align 8
  %143 = load i32, i32* %25, align 4
  %144 = load i32, i32* %26, align 4
  %145 = load i64, i64* %33, align 8
  %146 = load i64, i64* %34, align 8
  %147 = load i64, i64* %35, align 8
  %148 = load i64, i64* %36, align 8
  %149 = load i32, i32* %37, align 4
  %150 = load i32, i32* %38, align 4
  %151 = load i32, i32* %39, align 4
  %152 = load i32, i32* %40, align 4
  %153 = call i64 @HORIZ_8TAP_FILT(i32 %143, i32 %144, i64 %145, i64 %146, i64 %147, i64 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  store i64 %153, i64* %46, align 8
  %154 = load i64, i64* %43, align 8
  %155 = load i64, i64* %41, align 8
  %156 = load i64, i64* %45, align 8
  %157 = load i64, i64* %43, align 8
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %44, align 8
  %160 = call i32 @SLDI_B2_SH(i64 %154, i64 %155, i64 %156, i64 %157, i32 8, i64 %158, i64 %159)
  %161 = load i32*, i32** %13, align 8
  %162 = call i64 @LD_SH(i32* %161)
  store i64 %162, i64* %58, align 8
  %163 = load i64, i64* %58, align 8
  %164 = load i64, i64* %59, align 8
  %165 = load i64, i64* %60, align 8
  %166 = load i64, i64* %61, align 8
  %167 = load i64, i64* %62, align 8
  %168 = call i32 @SPLATI_H4_SH(i64 %163, i32 0, i32 1, i32 2, i32 3, i64 %164, i64 %165, i64 %166, i64 %167)
  %169 = load i64, i64* %41, align 8
  %170 = load i64, i64* %42, align 8
  %171 = load i64, i64* %43, align 8
  %172 = load i64, i64* %44, align 8
  %173 = load i64, i64* %53, align 8
  %174 = load i64, i64* %54, align 8
  %175 = call i32 @ILVEV_B2_SH(i64 %169, i64 %170, i64 %171, i64 %172, i64 %173, i64 %174)
  %176 = load i64, i64* %46, align 8
  %177 = trunc i64 %176 to i32
  %178 = load i64, i64* %45, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i64 @__msa_ilvev_b(i32 %177, i32 %179)
  store i64 %180, i64* %55, align 8
  %181 = load i32, i32* %14, align 4
  %182 = ashr i32 %181, 2
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %187, %7
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %15, align 4
  %186 = icmp ne i32 %184, 0
  br i1 %186, label %187, label %303

187:                                              ; preds = %183
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %27, align 4
  %191 = load i32, i32* %28, align 4
  %192 = load i32, i32* %29, align 4
  %193 = load i32, i32* %30, align 4
  %194 = call i32 @LD_SB4(i32* %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %29, align 4
  %198 = load i32, i32* %30, align 4
  %199 = call i32 @XORI_B4_128_SB(i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = mul nsw i32 4, %200
  %202 = load i32*, i32** %8, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32* %204, i32** %8, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @LW4(i32* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i64, i64* %31, align 8
  %217 = call i32 @INSERT_W4_UB(i32 %212, i32 %213, i32 %214, i32 %215, i64 %216)
  %218 = load i32, i32* %27, align 4
  %219 = load i32, i32* %28, align 4
  %220 = load i64, i64* %33, align 8
  %221 = load i64, i64* %34, align 8
  %222 = load i64, i64* %35, align 8
  %223 = load i64, i64* %36, align 8
  %224 = load i32, i32* %37, align 4
  %225 = load i32, i32* %38, align 4
  %226 = load i32, i32* %39, align 4
  %227 = load i32, i32* %40, align 4
  %228 = call i64 @HORIZ_8TAP_FILT(i32 %218, i32 %219, i64 %220, i64 %221, i64 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %227)
  store i64 %228, i64* %48, align 8
  %229 = load i64, i64* %48, align 8
  %230 = trunc i64 %229 to i32
  %231 = load i64, i64* %46, align 8
  %232 = trunc i64 %231 to i32
  %233 = call i64 @__msa_sldi_b(i32 %230, i32 %232, i32 8)
  store i64 %233, i64* %47, align 8
  %234 = load i64, i64* %48, align 8
  %235 = trunc i64 %234 to i32
  %236 = load i64, i64* %47, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i64 @__msa_ilvev_b(i32 %235, i32 %237)
  store i64 %238, i64* %56, align 8
  %239 = load i64, i64* %53, align 8
  %240 = load i64, i64* %54, align 8
  %241 = load i64, i64* %55, align 8
  %242 = load i64, i64* %56, align 8
  %243 = load i64, i64* %59, align 8
  %244 = load i64, i64* %60, align 8
  %245 = load i64, i64* %61, align 8
  %246 = load i64, i64* %62, align 8
  %247 = call i64 @FILT_8TAP_DPADD_S_H(i64 %239, i64 %240, i64 %241, i64 %242, i64 %243, i64 %244, i64 %245, i64 %246)
  store i64 %247, i64* %51, align 8
  %248 = load i32, i32* %29, align 4
  %249 = load i32, i32* %30, align 4
  %250 = load i64, i64* %33, align 8
  %251 = load i64, i64* %34, align 8
  %252 = load i64, i64* %35, align 8
  %253 = load i64, i64* %36, align 8
  %254 = load i32, i32* %37, align 4
  %255 = load i32, i32* %38, align 4
  %256 = load i32, i32* %39, align 4
  %257 = load i32, i32* %40, align 4
  %258 = call i64 @HORIZ_8TAP_FILT(i32 %248, i32 %249, i64 %250, i64 %251, i64 %252, i64 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  store i64 %258, i64* %50, align 8
  %259 = load i64, i64* %50, align 8
  %260 = trunc i64 %259 to i32
  %261 = load i64, i64* %48, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i64 @__msa_sldi_b(i32 %260, i32 %262, i32 8)
  store i64 %263, i64* %49, align 8
  %264 = load i64, i64* %50, align 8
  %265 = trunc i64 %264 to i32
  %266 = load i64, i64* %49, align 8
  %267 = trunc i64 %266 to i32
  %268 = call i64 @__msa_ilvev_b(i32 %265, i32 %267)
  store i64 %268, i64* %57, align 8
  %269 = load i64, i64* %54, align 8
  %270 = load i64, i64* %55, align 8
  %271 = load i64, i64* %56, align 8
  %272 = load i64, i64* %57, align 8
  %273 = load i64, i64* %59, align 8
  %274 = load i64, i64* %60, align 8
  %275 = load i64, i64* %61, align 8
  %276 = load i64, i64* %62, align 8
  %277 = call i64 @FILT_8TAP_DPADD_S_H(i64 %269, i64 %270, i64 %271, i64 %272, i64 %273, i64 %274, i64 %275, i64 %276)
  store i64 %277, i64* %52, align 8
  %278 = load i64, i64* %51, align 8
  %279 = load i64, i64* %52, align 8
  %280 = call i32 @SRARI_H2_SH(i64 %278, i64 %279, i32 7)
  %281 = load i64, i64* %51, align 8
  %282 = load i64, i64* %52, align 8
  %283 = call i32 @SAT_SH2_SH(i64 %281, i64 %282, i32 7)
  %284 = load i64, i64* %51, align 8
  %285 = load i64, i64* %52, align 8
  %286 = call i64 @PCKEV_XORI128_UB(i64 %284, i64 %285)
  store i64 %286, i64* %32, align 8
  %287 = load i64, i64* %32, align 8
  %288 = load i64, i64* %31, align 8
  %289 = call i64 @__msa_aver_u_b(i64 %287, i64 %288)
  store i64 %289, i64* %32, align 8
  %290 = load i64, i64* %32, align 8
  %291 = load i32*, i32** %10, align 8
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @ST_W4(i64 %290, i32 0, i32 1, i32 2, i32 3, i32* %291, i32 %292)
  %294 = load i32, i32* %11, align 4
  %295 = mul nsw i32 4, %294
  %296 = load i32*, i32** %10, align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32* %298, i32** %10, align 8
  %299 = load i64, i64* %50, align 8
  store i64 %299, i64* %46, align 8
  %300 = load i64, i64* %55, align 8
  store i64 %300, i64* %53, align 8
  %301 = load i64, i64* %56, align 8
  store i64 %301, i64* %54, align 8
  %302 = load i64, i64* %57, align 8
  store i64 %302, i64* %55, align 8
  br label %183

303:                                              ; preds = %183
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B7_128_SB(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_8TAP_FILT(i32, i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SLDI_B2_SH(i64, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @SPLATI_H4_SH(i64, i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i64 @FILT_8TAP_DPADD_S_H(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_SH(i64, i64, i32) #1

declare dso_local i32 @SAT_SH2_SH(i64, i64, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i64 @__msa_aver_u_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
