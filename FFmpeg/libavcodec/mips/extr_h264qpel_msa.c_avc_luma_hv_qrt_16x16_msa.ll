; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264qpel_msa.c_avc_luma_hv_qrt_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @avc_luma_hv_qrt_16x16_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_luma_hv_qrt_16x16_msa(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 64257, i32* %9, align 4
  store i32 5140, i32* %10, align 4
  store i32 507, i32* %11, align 4
  %58 = load i32*, i32** %5, align 8
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %6, align 8
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %7, align 8
  store i32* %60, i32** %14, align 8
  %61 = call i64 @__msa_fill_h(i32 64257)
  store i64 %61, i64* %43, align 8
  %62 = call i64 @__msa_fill_h(i32 5140)
  store i64 %62, i64* %44, align 8
  %63 = call i64 @__msa_fill_h(i32 507)
  store i64 %63, i64* %45, align 8
  %64 = load i32*, i32** @luma_mask_arr, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i64, i64* %23, align 8
  %67 = load i64, i64* %24, align 8
  %68 = load i64, i64* %25, align 8
  %69 = call i32 @LD_SB3(i32* %65, i32 16, i64 %66, i64 %67, i64 %68)
  store i32 2, i32* %15, align 4
  br label %70

70:                                               ; preds = %276, %4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %15, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %283

74:                                               ; preds = %70
  %75 = load i32*, i32** %12, align 8
  store i32* %75, i32** %5, align 8
  %76 = load i32*, i32** %13, align 8
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %14, align 8
  store i32* %77, i32** %7, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i64, i64* %26, align 8
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* %29, align 8
  %84 = load i64, i64* %30, align 8
  %85 = call i32 @LD_SB5(i32* %78, i32 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 5, %86
  %88 = load i32*, i32** %6, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %6, align 8
  %91 = load i64, i64* %26, align 8
  %92 = load i64, i64* %27, align 8
  %93 = load i64, i64* %28, align 8
  %94 = load i64, i64* %29, align 8
  %95 = load i64, i64* %30, align 8
  %96 = call i32 @XORI_B5_128_SB(i64 %91, i64 %92, i64 %93, i64 %94, i64 %95)
  store i32 4, i32* %16, align 4
  br label %97

97:                                               ; preds = %101, %74
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %16, align 4
  %100 = icmp ne i32 %98, 0
  br i1 %100, label %101, label %276

101:                                              ; preds = %97
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %22, align 8
  %108 = call i32 @LD_SB4(i32* %102, i32 %103, i64 %104, i64 %105, i64 %106, i64 %107)
  %109 = load i64, i64* %19, align 8
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %22, align 8
  %113 = call i32 @XORI_B4_128_SB(i64 %109, i64 %110, i64 %111, i64 %112)
  %114 = load i32, i32* %8, align 4
  %115 = mul nsw i32 4, %114
  %116 = load i32*, i32** %5, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %5, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %24, align 8
  %123 = load i64, i64* %25, align 8
  %124 = call i64 @AVC_HORZ_FILTER_SH(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  store i64 %124, i64* %46, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %25, align 8
  %130 = call i64 @AVC_HORZ_FILTER_SH(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  store i64 %130, i64* %47, align 8
  %131 = load i64, i64* %21, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %23, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %25, align 8
  %136 = call i64 @AVC_HORZ_FILTER_SH(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  store i64 %136, i64* %48, align 8
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* %22, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %25, align 8
  %142 = call i64 @AVC_HORZ_FILTER_SH(i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  store i64 %142, i64* %49, align 8
  %143 = load i64, i64* %46, align 8
  %144 = load i64, i64* %47, align 8
  %145 = load i64, i64* %48, align 8
  %146 = load i64, i64* %49, align 8
  %147 = call i32 @SRARI_H4_SH(i64 %143, i64 %144, i64 %145, i64 %146, i32 5)
  %148 = load i64, i64* %46, align 8
  %149 = load i64, i64* %47, align 8
  %150 = load i64, i64* %48, align 8
  %151 = load i64, i64* %49, align 8
  %152 = call i32 @SAT_SH4_SH(i64 %148, i64 %149, i64 %150, i64 %151, i32 7)
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i64, i64* %31, align 8
  %156 = load i64, i64* %32, align 8
  %157 = load i64, i64* %33, align 8
  %158 = load i64, i64* %34, align 8
  %159 = call i32 @LD_SB4(i32* %153, i32 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i32, i32* %8, align 4
  %161 = mul nsw i32 4, %160
  %162 = load i32*, i32** %6, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %6, align 8
  %165 = load i64, i64* %31, align 8
  %166 = load i64, i64* %32, align 8
  %167 = load i64, i64* %33, align 8
  %168 = load i64, i64* %34, align 8
  %169 = call i32 @XORI_B4_128_SB(i64 %165, i64 %166, i64 %167, i64 %168)
  %170 = load i64, i64* %27, align 8
  %171 = load i64, i64* %26, align 8
  %172 = load i64, i64* %28, align 8
  %173 = load i64, i64* %27, align 8
  %174 = load i64, i64* %29, align 8
  %175 = load i64, i64* %28, align 8
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* %29, align 8
  %178 = load i64, i64* %35, align 8
  %179 = load i64, i64* %36, align 8
  %180 = load i64, i64* %37, align 8
  %181 = load i64, i64* %38, align 8
  %182 = call i32 @ILVR_B4_SB(i64 %170, i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178, i64 %179, i64 %180, i64 %181)
  %183 = load i64, i64* %31, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %32, align 8
  %186 = load i64, i64* %31, align 8
  %187 = load i64, i64* %33, align 8
  %188 = load i64, i64* %32, align 8
  %189 = load i64, i64* %34, align 8
  %190 = load i64, i64* %33, align 8
  %191 = load i64, i64* %39, align 8
  %192 = load i64, i64* %40, align 8
  %193 = load i64, i64* %41, align 8
  %194 = load i64, i64* %42, align 8
  %195 = call i32 @ILVR_B4_SB(i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %196 = load i64, i64* %35, align 8
  %197 = load i64, i64* %37, align 8
  %198 = load i64, i64* %39, align 8
  %199 = load i64, i64* %43, align 8
  %200 = load i64, i64* %44, align 8
  %201 = load i64, i64* %45, align 8
  %202 = call i64 @AVC_DOT_SH3_SH(i64 %196, i64 %197, i64 %198, i64 %199, i64 %200, i64 %201)
  store i64 %202, i64* %50, align 8
  %203 = load i64, i64* %36, align 8
  %204 = load i64, i64* %38, align 8
  %205 = load i64, i64* %40, align 8
  %206 = load i64, i64* %43, align 8
  %207 = load i64, i64* %44, align 8
  %208 = load i64, i64* %45, align 8
  %209 = call i64 @AVC_DOT_SH3_SH(i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208)
  store i64 %209, i64* %51, align 8
  %210 = load i64, i64* %37, align 8
  %211 = load i64, i64* %39, align 8
  %212 = load i64, i64* %41, align 8
  %213 = load i64, i64* %43, align 8
  %214 = load i64, i64* %44, align 8
  %215 = load i64, i64* %45, align 8
  %216 = call i64 @AVC_DOT_SH3_SH(i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  store i64 %216, i64* %52, align 8
  %217 = load i64, i64* %38, align 8
  %218 = load i64, i64* %40, align 8
  %219 = load i64, i64* %42, align 8
  %220 = load i64, i64* %43, align 8
  %221 = load i64, i64* %44, align 8
  %222 = load i64, i64* %45, align 8
  %223 = call i64 @AVC_DOT_SH3_SH(i64 %217, i64 %218, i64 %219, i64 %220, i64 %221, i64 %222)
  store i64 %223, i64* %53, align 8
  %224 = load i64, i64* %50, align 8
  %225 = load i64, i64* %51, align 8
  %226 = load i64, i64* %52, align 8
  %227 = load i64, i64* %53, align 8
  %228 = call i32 @SRARI_H4_SH(i64 %224, i64 %225, i64 %226, i64 %227, i32 5)
  %229 = load i64, i64* %50, align 8
  %230 = load i64, i64* %51, align 8
  %231 = load i64, i64* %52, align 8
  %232 = load i64, i64* %53, align 8
  %233 = call i32 @SAT_SH4_SH(i64 %229, i64 %230, i64 %231, i64 %232, i32 7)
  %234 = load i64, i64* %46, align 8
  %235 = load i64, i64* %50, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i64 @__msa_srari_h(i64 %236, i32 1)
  store i64 %237, i64* %54, align 8
  %238 = load i64, i64* %47, align 8
  %239 = load i64, i64* %51, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i64 @__msa_srari_h(i64 %240, i32 1)
  store i64 %241, i64* %55, align 8
  %242 = load i64, i64* %48, align 8
  %243 = load i64, i64* %52, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i64 @__msa_srari_h(i64 %244, i32 1)
  store i64 %245, i64* %56, align 8
  %246 = load i64, i64* %49, align 8
  %247 = load i64, i64* %53, align 8
  %248 = add nsw i64 %246, %247
  %249 = call i64 @__msa_srari_h(i64 %248, i32 1)
  store i64 %249, i64* %57, align 8
  %250 = load i64, i64* %54, align 8
  %251 = load i64, i64* %55, align 8
  %252 = load i64, i64* %56, align 8
  %253 = load i64, i64* %57, align 8
  %254 = call i32 @SAT_SH4_SH(i64 %250, i64 %251, i64 %252, i64 %253, i32 7)
  %255 = load i64, i64* %54, align 8
  %256 = load i64, i64* %55, align 8
  %257 = call i32 @PCKEV_XORI128_UB(i64 %255, i64 %256)
  store i32 %257, i32* %17, align 4
  %258 = load i64, i64* %56, align 8
  %259 = load i64, i64* %57, align 8
  %260 = call i32 @PCKEV_XORI128_UB(i64 %258, i64 %259)
  store i32 %260, i32* %18, align 4
  %261 = load i32, i32* %17, align 4
  %262 = load i32, i32* %18, align 4
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @ST_D4(i32 %261, i32 %262, i32 0, i32 1, i32 0, i32 1, i32* %263, i32 %264)
  %266 = load i32, i32* %8, align 4
  %267 = mul nsw i32 4, %266
  %268 = load i32*, i32** %7, align 8
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32* %270, i32** %7, align 8
  %271 = load i64, i64* %30, align 8
  store i64 %271, i64* %26, align 8
  %272 = load i64, i64* %31, align 8
  store i64 %272, i64* %27, align 8
  %273 = load i64, i64* %32, align 8
  store i64 %273, i64* %28, align 8
  %274 = load i64, i64* %33, align 8
  store i64 %274, i64* %29, align 8
  %275 = load i64, i64* %34, align 8
  store i64 %275, i64* %30, align 8
  br label %97

276:                                              ; preds = %97
  %277 = load i32*, i32** %12, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 8
  store i32* %278, i32** %12, align 8
  %279 = load i32*, i32** %13, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 8
  store i32* %280, i32** %13, align 8
  %281 = load i32*, i32** %14, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 8
  store i32* %282, i32** %14, align 8
  br label %70

283:                                              ; preds = %70
  ret void
}

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @AVC_HORZ_FILTER_SH(i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @AVC_DOT_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_srari_h(i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
