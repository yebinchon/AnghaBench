; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x8multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hz_uniwgt_4t_8x8multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, i32)* @hevc_hz_uniwgt_4t_8x8multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_uniwgt_4t_8x8multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %58 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i64 @LD_SB(i32* %59)
  store i64 %60, i64* %34, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 -1
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @LD_SH(i32* %63)
  store i32 %64, i32* %52, align 4
  %65 = load i32, i32* %52, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @SPLATI_H2_SH(i32 %65, i32 0, i32 1, i32 %66, i32 %67)
  %69 = load i32, i32* %16, align 4
  %70 = and i32 %69, 65535
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @__msa_fill_w(i32 %71)
  store i32 %72, i32* %56, align 4
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @__msa_fill_w(i32 %73)
  store i32 %74, i32* %57, align 4
  %75 = load i32, i32* %16, align 4
  %76 = mul nsw i32 %75, 128
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %77, 6
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @__msa_fill_h(i32 %79)
  store i32 %80, i32* %53, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @__msa_fill_h(i32 %81)
  store i32 %82, i32* %54, align 4
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @__msa_fill_h(i32 %83)
  store i32 %84, i32* %55, align 4
  %85 = load i32, i32* %53, align 4
  %86 = load i32, i32* %55, align 4
  %87 = call i32 @__msa_srar_h(i32 %85, i32 %86)
  store i32 %87, i32* %53, align 4
  %88 = load i32, i32* %54, align 4
  %89 = load i32, i32* %53, align 4
  %90 = call i32 @__msa_adds_s_h(i32 %88, i32 %89)
  store i32 %90, i32* %54, align 4
  %91 = load i64, i64* %34, align 8
  %92 = add nsw i64 %91, 2
  store i64 %92, i64* %35, align 8
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 3
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %99, %9
  %96 = load i32, i32* %19, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %19, align 4
  %98 = icmp ne i32 %96, 0
  br i1 %98, label %99, label %287

99:                                               ; preds = %95
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load i64, i64* %26, align 8
  %103 = load i64, i64* %27, align 8
  %104 = load i64, i64* %28, align 8
  %105 = load i64, i64* %29, align 8
  %106 = load i64, i64* %30, align 8
  %107 = load i64, i64* %31, align 8
  %108 = load i64, i64* %32, align 8
  %109 = load i64, i64* %33, align 8
  %110 = call i32 @LD_SB8(i32* %100, i32 %101, i64 %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 8, %111
  %113 = load i32*, i32** %10, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %10, align 8
  %116 = load i64, i64* %26, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %28, align 8
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %30, align 8
  %121 = load i64, i64* %31, align 8
  %122 = load i64, i64* %32, align 8
  %123 = load i64, i64* %33, align 8
  %124 = call i32 @XORI_B8_128_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = load i64, i64* %26, align 8
  %126 = load i64, i64* %26, align 8
  %127 = load i64, i64* %26, align 8
  %128 = load i64, i64* %26, align 8
  %129 = load i64, i64* %34, align 8
  %130 = load i64, i64* %35, align 8
  %131 = load i64, i64* %36, align 8
  %132 = load i64, i64* %37, align 8
  %133 = call i32 @VSHF_B2_SB(i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132)
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %27, align 8
  %136 = load i64, i64* %27, align 8
  %137 = load i64, i64* %27, align 8
  %138 = load i64, i64* %34, align 8
  %139 = load i64, i64* %35, align 8
  %140 = load i64, i64* %38, align 8
  %141 = load i64, i64* %39, align 8
  %142 = call i32 @VSHF_B2_SB(i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140, i64 %141)
  %143 = load i64, i64* %28, align 8
  %144 = load i64, i64* %28, align 8
  %145 = load i64, i64* %28, align 8
  %146 = load i64, i64* %28, align 8
  %147 = load i64, i64* %34, align 8
  %148 = load i64, i64* %35, align 8
  %149 = load i64, i64* %40, align 8
  %150 = load i64, i64* %41, align 8
  %151 = call i32 @VSHF_B2_SB(i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150)
  %152 = load i64, i64* %29, align 8
  %153 = load i64, i64* %29, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64, i64* %29, align 8
  %156 = load i64, i64* %34, align 8
  %157 = load i64, i64* %35, align 8
  %158 = load i64, i64* %42, align 8
  %159 = load i64, i64* %43, align 8
  %160 = call i32 @VSHF_B2_SB(i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158, i64 %159)
  %161 = load i64, i64* %36, align 8
  %162 = load i64, i64* %37, align 8
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %21, align 4
  %165 = call i32 @HEVC_FILT_4TAP_SH(i64 %161, i64 %162, i32 %163, i32 %164)
  store i32 %165, i32* %44, align 4
  %166 = load i64, i64* %38, align 8
  %167 = load i64, i64* %39, align 8
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %21, align 4
  %170 = call i32 @HEVC_FILT_4TAP_SH(i64 %166, i64 %167, i32 %168, i32 %169)
  store i32 %170, i32* %45, align 4
  %171 = load i64, i64* %40, align 8
  %172 = load i64, i64* %41, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %21, align 4
  %175 = call i32 @HEVC_FILT_4TAP_SH(i64 %171, i64 %172, i32 %173, i32 %174)
  store i32 %175, i32* %46, align 4
  %176 = load i64, i64* %42, align 8
  %177 = load i64, i64* %43, align 8
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* %21, align 4
  %180 = call i32 @HEVC_FILT_4TAP_SH(i64 %176, i64 %177, i32 %178, i32 %179)
  store i32 %180, i32* %47, align 4
  %181 = load i64, i64* %30, align 8
  %182 = load i64, i64* %30, align 8
  %183 = load i64, i64* %30, align 8
  %184 = load i64, i64* %30, align 8
  %185 = load i64, i64* %34, align 8
  %186 = load i64, i64* %35, align 8
  %187 = load i64, i64* %36, align 8
  %188 = load i64, i64* %37, align 8
  %189 = call i32 @VSHF_B2_SB(i64 %181, i64 %182, i64 %183, i64 %184, i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %31, align 8
  %191 = load i64, i64* %31, align 8
  %192 = load i64, i64* %31, align 8
  %193 = load i64, i64* %31, align 8
  %194 = load i64, i64* %34, align 8
  %195 = load i64, i64* %35, align 8
  %196 = load i64, i64* %38, align 8
  %197 = load i64, i64* %39, align 8
  %198 = call i32 @VSHF_B2_SB(i64 %190, i64 %191, i64 %192, i64 %193, i64 %194, i64 %195, i64 %196, i64 %197)
  %199 = load i64, i64* %32, align 8
  %200 = load i64, i64* %32, align 8
  %201 = load i64, i64* %32, align 8
  %202 = load i64, i64* %32, align 8
  %203 = load i64, i64* %34, align 8
  %204 = load i64, i64* %35, align 8
  %205 = load i64, i64* %40, align 8
  %206 = load i64, i64* %41, align 8
  %207 = call i32 @VSHF_B2_SB(i64 %199, i64 %200, i64 %201, i64 %202, i64 %203, i64 %204, i64 %205, i64 %206)
  %208 = load i64, i64* %33, align 8
  %209 = load i64, i64* %33, align 8
  %210 = load i64, i64* %33, align 8
  %211 = load i64, i64* %33, align 8
  %212 = load i64, i64* %34, align 8
  %213 = load i64, i64* %35, align 8
  %214 = load i64, i64* %42, align 8
  %215 = load i64, i64* %43, align 8
  %216 = call i32 @VSHF_B2_SB(i64 %208, i64 %209, i64 %210, i64 %211, i64 %212, i64 %213, i64 %214, i64 %215)
  %217 = load i64, i64* %36, align 8
  %218 = load i64, i64* %37, align 8
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %21, align 4
  %221 = call i32 @HEVC_FILT_4TAP_SH(i64 %217, i64 %218, i32 %219, i32 %220)
  store i32 %221, i32* %48, align 4
  %222 = load i64, i64* %38, align 8
  %223 = load i64, i64* %39, align 8
  %224 = load i32, i32* %20, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @HEVC_FILT_4TAP_SH(i64 %222, i64 %223, i32 %224, i32 %225)
  store i32 %226, i32* %49, align 4
  %227 = load i64, i64* %40, align 8
  %228 = load i64, i64* %41, align 8
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @HEVC_FILT_4TAP_SH(i64 %227, i64 %228, i32 %229, i32 %230)
  store i32 %231, i32* %50, align 4
  %232 = load i64, i64* %42, align 8
  %233 = load i64, i64* %43, align 8
  %234 = load i32, i32* %20, align 4
  %235 = load i32, i32* %21, align 4
  %236 = call i32 @HEVC_FILT_4TAP_SH(i64 %232, i64 %233, i32 %234, i32 %235)
  store i32 %236, i32* %51, align 4
  %237 = load i32, i32* %44, align 4
  %238 = load i32, i32* %45, align 4
  %239 = load i32, i32* %46, align 4
  %240 = load i32, i32* %47, align 4
  %241 = load i32, i32* %56, align 4
  %242 = load i32, i32* %54, align 4
  %243 = load i32, i32* %57, align 4
  %244 = load i32, i32* %44, align 4
  %245 = load i32, i32* %45, align 4
  %246 = load i32, i32* %46, align 4
  %247 = load i32, i32* %47, align 4
  %248 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247)
  %249 = load i32, i32* %48, align 4
  %250 = load i32, i32* %49, align 4
  %251 = load i32, i32* %50, align 4
  %252 = load i32, i32* %51, align 4
  %253 = load i32, i32* %56, align 4
  %254 = load i32, i32* %54, align 4
  %255 = load i32, i32* %57, align 4
  %256 = load i32, i32* %48, align 4
  %257 = load i32, i32* %49, align 4
  %258 = load i32, i32* %50, align 4
  %259 = load i32, i32* %51, align 4
  %260 = call i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32 %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i32 %257, i32 %258, i32 %259)
  %261 = load i32, i32* %45, align 4
  %262 = load i32, i32* %44, align 4
  %263 = load i32, i32* %47, align 4
  %264 = load i32, i32* %46, align 4
  %265 = load i32, i32* %22, align 4
  %266 = load i32, i32* %23, align 4
  %267 = call i32 @PCKEV_B2_UB(i32 %261, i32 %262, i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %49, align 4
  %269 = load i32, i32* %48, align 4
  %270 = load i32, i32* %51, align 4
  %271 = load i32, i32* %50, align 4
  %272 = load i32, i32* %24, align 4
  %273 = load i32, i32* %25, align 4
  %274 = call i32 @PCKEV_B2_UB(i32 %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %273)
  %275 = load i32, i32* %22, align 4
  %276 = load i32, i32* %23, align 4
  %277 = load i32, i32* %24, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load i32*, i32** %12, align 8
  %280 = load i32, i32* %13, align 4
  %281 = call i32 @ST_D8(i32 %275, i32 %276, i32 %277, i32 %278, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32* %279, i32 %280)
  %282 = load i32, i32* %13, align 4
  %283 = mul nsw i32 8, %282
  %284 = load i32*, i32** %12, align 8
  %285 = sext i32 %283 to i64
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32* %286, i32** %12, align 8
  br label %95

287:                                              ; preds = %95
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_srar_h(i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B8_128_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP4_MAX_SATU_H(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
