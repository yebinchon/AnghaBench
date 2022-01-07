; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_4w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_8t_4w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_8t_4w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_8t_4w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
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
  %51 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %52 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 16
  %54 = call i64 @LD_SB(i32* %53)
  store i64 %54, i64* %51, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -3
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @LD_SH(i32* %57)
  store i32 %58, i32* %49, align 4
  %59 = load i32, i32* %49, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @SPLATI_H4_SH(i32 %59, i32 0, i32 1, i32 2, i32 3, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i64, i64* %51, align 8
  %66 = add nsw i64 %65, 2
  store i64 %66, i64* %30, align 8
  %67 = load i64, i64* %51, align 8
  %68 = add nsw i64 %67, 4
  store i64 %68, i64* %31, align 8
  %69 = load i64, i64* %51, align 8
  %70 = add nsw i64 %69, 6
  store i64 %70, i64* %32, align 8
  %71 = call i32 @__msa_ldi_h(i32 128)
  store i32 %71, i32* %50, align 4
  %72 = load i32, i32* %50, align 4
  %73 = shl i32 %72, 6
  store i32 %73, i32* %50, align 4
  %74 = load i32, i32* %16, align 4
  %75 = ashr i32 %74, 3
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %80, %8
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %17, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %294

80:                                               ; preds = %76
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* %24, align 8
  %86 = load i64, i64* %25, align 8
  %87 = load i64, i64* %26, align 8
  %88 = load i64, i64* %27, align 8
  %89 = load i64, i64* %28, align 8
  %90 = load i64, i64* %29, align 8
  %91 = call i32 @LD_SB8(i32* %81, i32 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 8, %92
  %94 = load i32*, i32** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %9, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %41, align 4
  %100 = load i32, i32* %42, align 4
  %101 = load i32, i32* %43, align 4
  %102 = load i32, i32* %44, align 4
  %103 = load i32, i32* %45, align 4
  %104 = load i32, i32* %46, align 4
  %105 = load i32, i32* %47, align 4
  %106 = load i32, i32* %48, align 4
  %107 = call i32 @LD_SH8(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = mul nsw i32 8, %108
  %110 = load i32*, i32** %11, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32* %112, i32** %11, align 8
  %113 = load i32, i32* %42, align 4
  %114 = load i32, i32* %41, align 4
  %115 = load i32, i32* %44, align 4
  %116 = load i32, i32* %43, align 4
  %117 = load i32, i32* %41, align 4
  %118 = load i32, i32* %42, align 4
  %119 = call i32 @ILVR_D2_SH(i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %46, align 4
  %121 = load i32, i32* %45, align 4
  %122 = load i32, i32* %48, align 4
  %123 = load i32, i32* %47, align 4
  %124 = load i32, i32* %43, align 4
  %125 = load i32, i32* %44, align 4
  %126 = call i32 @ILVR_D2_SH(i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load i64, i64* %22, align 8
  %128 = load i64, i64* %23, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %25, align 8
  %131 = load i64, i64* %26, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %29, align 8
  %135 = call i32 @XORI_B8_128_SB(i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  %136 = load i32, i32* %50, align 4
  store i32 %136, i32* %37, align 4
  %137 = load i32, i32* %50, align 4
  store i32 %137, i32* %38, align 4
  %138 = load i32, i32* %50, align 4
  store i32 %138, i32* %39, align 4
  %139 = load i32, i32* %50, align 4
  store i32 %139, i32* %40, align 4
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %24, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %51, align 8
  %145 = load i64, i64* %51, align 8
  %146 = load i64, i64* %33, align 8
  %147 = load i64, i64* %34, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %26, align 8
  %150 = load i64, i64* %27, align 8
  %151 = load i64, i64* %28, align 8
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %51, align 8
  %154 = load i64, i64* %51, align 8
  %155 = load i64, i64* %35, align 8
  %156 = load i64, i64* %36, align 8
  %157 = call i32 @VSHF_B2_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %33, align 8
  %159 = load i64, i64* %34, align 8
  %160 = load i64, i64* %35, align 8
  %161 = load i64, i64* %36, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %37, align 4
  %167 = load i32, i32* %38, align 4
  %168 = load i32, i32* %39, align 4
  %169 = load i32, i32* %40, align 4
  %170 = call i32 @DPADD_SB4_SH(i64 %158, i64 %159, i64 %160, i64 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167, i32 %168, i32 %169)
  %171 = load i64, i64* %22, align 8
  %172 = load i64, i64* %23, align 8
  %173 = load i64, i64* %24, align 8
  %174 = load i64, i64* %25, align 8
  %175 = load i64, i64* %30, align 8
  %176 = load i64, i64* %30, align 8
  %177 = load i64, i64* %33, align 8
  %178 = load i64, i64* %34, align 8
  %179 = call i32 @VSHF_B2_SB(i64 %171, i64 %172, i64 %173, i64 %174, i64 %175, i64 %176, i64 %177, i64 %178)
  %180 = load i64, i64* %26, align 8
  %181 = load i64, i64* %27, align 8
  %182 = load i64, i64* %28, align 8
  %183 = load i64, i64* %29, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %30, align 8
  %186 = load i64, i64* %35, align 8
  %187 = load i64, i64* %36, align 8
  %188 = call i32 @VSHF_B2_SB(i64 %180, i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %189 = load i64, i64* %33, align 8
  %190 = load i64, i64* %34, align 8
  %191 = load i64, i64* %35, align 8
  %192 = load i64, i64* %36, align 8
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %19, align 4
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %37, align 4
  %198 = load i32, i32* %38, align 4
  %199 = load i32, i32* %39, align 4
  %200 = load i32, i32* %40, align 4
  %201 = call i32 @DPADD_SB4_SH(i64 %189, i64 %190, i64 %191, i64 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* %23, align 8
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %31, align 8
  %207 = load i64, i64* %31, align 8
  %208 = load i64, i64* %33, align 8
  %209 = load i64, i64* %34, align 8
  %210 = call i32 @VSHF_B2_SB(i64 %202, i64 %203, i64 %204, i64 %205, i64 %206, i64 %207, i64 %208, i64 %209)
  %211 = load i64, i64* %26, align 8
  %212 = load i64, i64* %27, align 8
  %213 = load i64, i64* %28, align 8
  %214 = load i64, i64* %29, align 8
  %215 = load i64, i64* %31, align 8
  %216 = load i64, i64* %31, align 8
  %217 = load i64, i64* %35, align 8
  %218 = load i64, i64* %36, align 8
  %219 = call i32 @VSHF_B2_SB(i64 %211, i64 %212, i64 %213, i64 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %33, align 8
  %221 = load i64, i64* %34, align 8
  %222 = load i64, i64* %35, align 8
  %223 = load i64, i64* %36, align 8
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %37, align 4
  %229 = load i32, i32* %38, align 4
  %230 = load i32, i32* %39, align 4
  %231 = load i32, i32* %40, align 4
  %232 = call i32 @DPADD_SB4_SH(i64 %220, i64 %221, i64 %222, i64 %223, i32 %224, i32 %225, i32 %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231)
  %233 = load i64, i64* %22, align 8
  %234 = load i64, i64* %23, align 8
  %235 = load i64, i64* %24, align 8
  %236 = load i64, i64* %25, align 8
  %237 = load i64, i64* %32, align 8
  %238 = load i64, i64* %32, align 8
  %239 = load i64, i64* %33, align 8
  %240 = load i64, i64* %34, align 8
  %241 = call i32 @VSHF_B2_SB(i64 %233, i64 %234, i64 %235, i64 %236, i64 %237, i64 %238, i64 %239, i64 %240)
  %242 = load i64, i64* %26, align 8
  %243 = load i64, i64* %27, align 8
  %244 = load i64, i64* %28, align 8
  %245 = load i64, i64* %29, align 8
  %246 = load i64, i64* %32, align 8
  %247 = load i64, i64* %32, align 8
  %248 = load i64, i64* %35, align 8
  %249 = load i64, i64* %36, align 8
  %250 = call i32 @VSHF_B2_SB(i64 %242, i64 %243, i64 %244, i64 %245, i64 %246, i64 %247, i64 %248, i64 %249)
  %251 = load i64, i64* %33, align 8
  %252 = load i64, i64* %34, align 8
  %253 = load i64, i64* %35, align 8
  %254 = load i64, i64* %36, align 8
  %255 = load i32, i32* %21, align 4
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %38, align 4
  %261 = load i32, i32* %39, align 4
  %262 = load i32, i32* %40, align 4
  %263 = call i32 @DPADD_SB4_SH(i64 %251, i64 %252, i64 %253, i64 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  %264 = load i32, i32* %41, align 4
  %265 = load i32, i32* %42, align 4
  %266 = load i32, i32* %43, align 4
  %267 = load i32, i32* %44, align 4
  %268 = load i32, i32* %37, align 4
  %269 = load i32, i32* %38, align 4
  %270 = load i32, i32* %39, align 4
  %271 = load i32, i32* %40, align 4
  %272 = load i32, i32* %37, align 4
  %273 = load i32, i32* %38, align 4
  %274 = load i32, i32* %39, align 4
  %275 = load i32, i32* %40, align 4
  %276 = call i32 @HEVC_BI_RND_CLIP4(i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270, i32 %271, i32 7, i32 %272, i32 %273, i32 %274, i32 %275)
  %277 = load i32, i32* %38, align 4
  %278 = load i32, i32* %37, align 4
  %279 = load i32, i32* %40, align 4
  %280 = load i32, i32* %39, align 4
  %281 = load i32, i32* %37, align 4
  %282 = load i32, i32* %38, align 4
  %283 = call i32 @PCKEV_B2_SH(i32 %277, i32 %278, i32 %279, i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %37, align 4
  %285 = load i32, i32* %38, align 4
  %286 = load i32*, i32** %13, align 8
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @ST_W8(i32 %284, i32 %285, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32* %286, i32 %287)
  %289 = load i32, i32* %14, align 4
  %290 = mul nsw i32 8, %289
  %291 = load i32*, i32** %13, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %13, align 8
  br label %76

294:                                              ; preds = %76
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SH(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
