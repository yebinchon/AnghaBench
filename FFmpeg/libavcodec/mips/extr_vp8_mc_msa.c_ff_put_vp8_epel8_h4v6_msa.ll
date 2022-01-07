; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4v6_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4v6_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_h4v6_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
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
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %58 = load i32**, i32*** @subpel_filters_msa, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %58, i64 %61
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %16, align 8
  %64 = load i32**, i32*** @subpel_filters_msa, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %17, align 8
  %70 = load i32*, i32** @mc_filt_mask_arr, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = call i64 @LD_SB(i32* %71)
  store i64 %72, i64* %29, align 8
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 2, %73
  %75 = add nsw i32 1, %74
  %76 = load i32*, i32** %10, align 8
  %77 = sext i32 %75 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32* %79, i32** %10, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = call i64 @LD_SH(i32* %80)
  store i64 %81, i64* %31, align 8
  %82 = load i64, i64* %31, align 8
  %83 = load i64, i64* %27, align 8
  %84 = load i64, i64* %28, align 8
  %85 = call i32 @SPLATI_H2_SB(i64 %82, i32 0, i32 1, i64 %83, i64 %84)
  %86 = load i64, i64* %29, align 8
  %87 = add nsw i64 %86, 2
  store i64 %87, i64* %30, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %22, align 8
  %95 = call i32 @LD_SB5(i32* %88, i32 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i32, i32* %11, align 4
  %97 = mul nsw i32 5, %96
  %98 = load i32*, i32** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32* %100, i32** %10, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %22, align 8
  %106 = call i32 @XORI_B5_128_SB(i64 %101, i64 %102, i64 %103, i64 %104, i64 %105)
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %29, align 8
  %110 = load i64, i64* %30, align 8
  %111 = load i64, i64* %27, align 8
  %112 = load i64, i64* %28, align 8
  %113 = call i64 @HORIZ_4TAP_FILT(i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112)
  store i64 %113, i64* %39, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %29, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* %27, align 8
  %119 = load i64, i64* %28, align 8
  %120 = call i64 @HORIZ_4TAP_FILT(i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119)
  store i64 %120, i64* %40, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %29, align 8
  %124 = load i64, i64* %30, align 8
  %125 = load i64, i64* %27, align 8
  %126 = load i64, i64* %28, align 8
  %127 = call i64 @HORIZ_4TAP_FILT(i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  store i64 %127, i64* %41, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %21, align 8
  %130 = load i64, i64* %29, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %28, align 8
  %134 = call i64 @HORIZ_4TAP_FILT(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133)
  store i64 %134, i64* %42, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* %29, align 8
  %138 = load i64, i64* %30, align 8
  %139 = load i64, i64* %27, align 8
  %140 = load i64, i64* %28, align 8
  %141 = call i64 @HORIZ_4TAP_FILT(i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %43, align 8
  %142 = load i64, i64* %39, align 8
  %143 = load i64, i64* %40, align 8
  %144 = load i64, i64* %41, align 8
  %145 = load i64, i64* %42, align 8
  %146 = load i64, i64* %48, align 8
  %147 = load i64, i64* %49, align 8
  %148 = call i32 @ILVEV_B2_SH(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %40, align 8
  %150 = load i64, i64* %41, align 8
  %151 = load i64, i64* %42, align 8
  %152 = load i64, i64* %43, align 8
  %153 = load i64, i64* %51, align 8
  %154 = load i64, i64* %52, align 8
  %155 = call i32 @ILVEV_B2_SH(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i32*, i32** %17, align 8
  %157 = call i64 @LD_SH(i32* %156)
  store i64 %157, i64* %31, align 8
  %158 = load i64, i64* %31, align 8
  %159 = load i64, i64* %32, align 8
  %160 = load i64, i64* %33, align 8
  %161 = load i64, i64* %34, align 8
  %162 = call i32 @SPLATI_H3_SH(i64 %158, i32 0, i32 1, i32 2, i64 %159, i64 %160, i64 %161)
  %163 = load i32, i32* %12, align 4
  %164 = ashr i32 %163, 2
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %169, %7
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %15, align 4
  %168 = icmp ne i32 %166, 0
  br i1 %168, label %169, label %286

169:                                              ; preds = %165
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %11, align 4
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* %24, align 8
  %174 = load i64, i64* %25, align 8
  %175 = load i64, i64* %26, align 8
  %176 = call i32 @LD_SB4(i32* %170, i32 %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 4, %177
  %179 = load i32*, i32** %10, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %10, align 8
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %24, align 8
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %26, align 8
  %186 = call i32 @XORI_B4_128_SB(i64 %182, i64 %183, i64 %184, i64 %185)
  %187 = load i64, i64* %23, align 8
  %188 = load i64, i64* %23, align 8
  %189 = load i64, i64* %29, align 8
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* %27, align 8
  %192 = load i64, i64* %28, align 8
  %193 = call i64 @HORIZ_4TAP_FILT(i64 %187, i64 %188, i64 %189, i64 %190, i64 %191, i64 %192)
  store i64 %193, i64* %44, align 8
  %194 = load i64, i64* %44, align 8
  %195 = load i64, i64* %43, align 8
  %196 = call i64 @__msa_ilvev_b(i64 %194, i64 %195)
  store i64 %196, i64* %50, align 8
  %197 = load i64, i64* %48, align 8
  %198 = load i64, i64* %49, align 8
  %199 = load i64, i64* %50, align 8
  %200 = load i64, i64* %32, align 8
  %201 = load i64, i64* %33, align 8
  %202 = load i64, i64* %34, align 8
  %203 = call i64 @DPADD_SH3_SH(i64 %197, i64 %198, i64 %199, i64 %200, i64 %201, i64 %202)
  store i64 %203, i64* %35, align 8
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %24, align 8
  %206 = load i64, i64* %29, align 8
  %207 = load i64, i64* %30, align 8
  %208 = load i64, i64* %27, align 8
  %209 = load i64, i64* %28, align 8
  %210 = call i64 @HORIZ_4TAP_FILT(i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  store i64 %210, i64* %45, align 8
  %211 = load i64, i64* %45, align 8
  %212 = load i64, i64* %44, align 8
  %213 = call i64 @__msa_ilvev_b(i64 %211, i64 %212)
  store i64 %213, i64* %53, align 8
  %214 = load i64, i64* %51, align 8
  %215 = load i64, i64* %52, align 8
  %216 = load i64, i64* %53, align 8
  %217 = load i64, i64* %32, align 8
  %218 = load i64, i64* %33, align 8
  %219 = load i64, i64* %34, align 8
  %220 = call i64 @DPADD_SH3_SH(i64 %214, i64 %215, i64 %216, i64 %217, i64 %218, i64 %219)
  store i64 %220, i64* %36, align 8
  %221 = load i64, i64* %25, align 8
  %222 = load i64, i64* %25, align 8
  %223 = load i64, i64* %29, align 8
  %224 = load i64, i64* %30, align 8
  %225 = load i64, i64* %27, align 8
  %226 = load i64, i64* %28, align 8
  %227 = call i64 @HORIZ_4TAP_FILT(i64 %221, i64 %222, i64 %223, i64 %224, i64 %225, i64 %226)
  store i64 %227, i64* %46, align 8
  %228 = load i64, i64* %46, align 8
  %229 = load i64, i64* %45, align 8
  %230 = call i64 @__msa_ilvev_b(i64 %228, i64 %229)
  store i64 %230, i64* %54, align 8
  %231 = load i64, i64* %49, align 8
  %232 = load i64, i64* %50, align 8
  %233 = load i64, i64* %54, align 8
  %234 = load i64, i64* %32, align 8
  %235 = load i64, i64* %33, align 8
  %236 = load i64, i64* %34, align 8
  %237 = call i64 @DPADD_SH3_SH(i64 %231, i64 %232, i64 %233, i64 %234, i64 %235, i64 %236)
  store i64 %237, i64* %37, align 8
  %238 = load i64, i64* %26, align 8
  %239 = load i64, i64* %26, align 8
  %240 = load i64, i64* %29, align 8
  %241 = load i64, i64* %30, align 8
  %242 = load i64, i64* %27, align 8
  %243 = load i64, i64* %28, align 8
  %244 = call i64 @HORIZ_4TAP_FILT(i64 %238, i64 %239, i64 %240, i64 %241, i64 %242, i64 %243)
  store i64 %244, i64* %47, align 8
  %245 = load i64, i64* %47, align 8
  %246 = load i64, i64* %46, align 8
  %247 = call i64 @__msa_ilvev_b(i64 %245, i64 %246)
  store i64 %247, i64* %55, align 8
  %248 = load i64, i64* %52, align 8
  %249 = load i64, i64* %53, align 8
  %250 = load i64, i64* %55, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* %33, align 8
  %253 = load i64, i64* %34, align 8
  %254 = call i64 @DPADD_SH3_SH(i64 %248, i64 %249, i64 %250, i64 %251, i64 %252, i64 %253)
  store i64 %254, i64* %38, align 8
  %255 = load i64, i64* %35, align 8
  %256 = load i64, i64* %36, align 8
  %257 = load i64, i64* %37, align 8
  %258 = load i64, i64* %38, align 8
  %259 = call i32 @SRARI_H4_SH(i64 %255, i64 %256, i64 %257, i64 %258, i32 7)
  %260 = load i64, i64* %35, align 8
  %261 = load i64, i64* %36, align 8
  %262 = load i64, i64* %37, align 8
  %263 = load i64, i64* %38, align 8
  %264 = call i32 @SAT_SH4_SH(i64 %260, i64 %261, i64 %262, i64 %263, i32 7)
  %265 = load i64, i64* %35, align 8
  %266 = load i64, i64* %36, align 8
  %267 = call i32 @PCKEV_XORI128_UB(i64 %265, i64 %266)
  store i32 %267, i32* %56, align 4
  %268 = load i64, i64* %37, align 8
  %269 = load i64, i64* %38, align 8
  %270 = call i32 @PCKEV_XORI128_UB(i64 %268, i64 %269)
  store i32 %270, i32* %57, align 4
  %271 = load i32, i32* %56, align 4
  %272 = load i32, i32* %57, align 4
  %273 = load i32*, i32** %8, align 8
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @ST_D4(i32 %271, i32 %272, i32 0, i32 1, i32 0, i32 1, i32* %273, i32 %274)
  %276 = load i32, i32* %9, align 4
  %277 = mul nsw i32 4, %276
  %278 = load i32*, i32** %8, align 8
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  store i32* %280, i32** %8, align 8
  %281 = load i64, i64* %47, align 8
  store i64 %281, i64* %43, align 8
  %282 = load i64, i64* %50, align 8
  store i64 %282, i64* %48, align 8
  %283 = load i64, i64* %54, align 8
  store i64 %283, i64* %49, align 8
  %284 = load i64, i64* %53, align 8
  store i64 %284, i64* %51, align 8
  %285 = load i64, i64* %55, align 8
  store i64 %285, i64* %52, align 8
  br label %165

286:                                              ; preds = %165
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i64 @HORIZ_4TAP_FILT(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVEV_B2_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SPLATI_H3_SH(i64, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvev_b(i64, i64) #1

declare dso_local i64 @DPADD_SH3_SH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_SH4_SH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i64, i64) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
