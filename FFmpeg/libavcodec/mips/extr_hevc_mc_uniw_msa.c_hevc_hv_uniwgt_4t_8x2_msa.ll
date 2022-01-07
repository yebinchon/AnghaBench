; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32)* @hevc_hv_uniwgt_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
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
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
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
  %63 = alloca i64, align 8
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %66 = load i32, i32* @ff_hevc_mask_arr, align 4
  %67 = call i64 @LD_SB(i32 %66)
  store i64 %67, i64* %30, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32*, i32** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = call i64 @LD_SH(i32* %74)
  store i64 %75, i64* %29, align 8
  %76 = load i64, i64* %29, align 8
  %77 = load i64, i64* %25, align 8
  %78 = load i64, i64* %26, align 8
  %79 = call i32 @SPLATI_H2_SH(i64 %76, i32 0, i32 1, i64 %77, i64 %78)
  %80 = load i32*, i32** %15, align 8
  %81 = call i64 @LD_SH(i32* %80)
  store i64 %81, i64* %29, align 8
  %82 = load i64, i64* %29, align 8
  %83 = load i64, i64* %29, align 8
  %84 = call i32 @UNPCK_R_SB_SH(i64 %82, i64 %83)
  %85 = load i64, i64* %29, align 8
  %86 = load i64, i64* %27, align 8
  %87 = load i64, i64* %28, align 8
  %88 = call i32 @SPLATI_W2_SH(i64 %85, i32 0, i64 %86, i64 %87)
  %89 = load i64, i64* %30, align 8
  %90 = add nsw i64 %89, 2
  store i64 %90, i64* %31, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %64, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @__msa_fill_w(i32 %93)
  store i32 %94, i32* %65, align 4
  %95 = load i32, i32* %17, align 4
  %96 = call i64 @__msa_fill_h(i32 %95)
  store i64 %96, i64* %61, align 8
  %97 = load i32, i32* %18, align 4
  %98 = sub nsw i32 %97, 6
  %99 = call i64 @__msa_fill_h(i32 %98)
  store i64 %99, i64* %63, align 8
  %100 = load i32, i32* %16, align 4
  %101 = mul nsw i32 128, %100
  %102 = call i64 @__msa_fill_h(i32 %101)
  store i64 %102, i64* %62, align 8
  %103 = load i64, i64* %62, align 8
  %104 = load i64, i64* %63, align 8
  %105 = call i64 @__msa_srar_h(i64 %103, i64 %104)
  %106 = load i64, i64* %61, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %61, align 8
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %22, align 8
  %113 = load i64, i64* %23, align 8
  %114 = load i64, i64* %24, align 8
  %115 = call i32 @LD_SB5(i32* %108, i32 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %24, align 8
  %121 = call i32 @XORI_B5_128_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %20, align 8
  %123 = load i64, i64* %20, align 8
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %20, align 8
  %126 = load i64, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %32, align 8
  %129 = load i64, i64* %33, align 8
  %130 = call i32 @VSHF_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %21, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %21, align 8
  %135 = load i64, i64* %30, align 8
  %136 = load i64, i64* %31, align 8
  %137 = load i64, i64* %34, align 8
  %138 = load i64, i64* %35, align 8
  %139 = call i32 @VSHF_B2_SB(i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* %22, align 8
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %22, align 8
  %144 = load i64, i64* %30, align 8
  %145 = load i64, i64* %31, align 8
  %146 = load i64, i64* %36, align 8
  %147 = load i64, i64* %37, align 8
  %148 = call i32 @VSHF_B2_SB(i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147)
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* %23, align 8
  %151 = load i64, i64* %23, align 8
  %152 = load i64, i64* %23, align 8
  %153 = load i64, i64* %30, align 8
  %154 = load i64, i64* %31, align 8
  %155 = load i64, i64* %38, align 8
  %156 = load i64, i64* %39, align 8
  %157 = call i32 @VSHF_B2_SB(i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156)
  %158 = load i64, i64* %24, align 8
  %159 = load i64, i64* %24, align 8
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %24, align 8
  %162 = load i64, i64* %30, align 8
  %163 = load i64, i64* %31, align 8
  %164 = load i64, i64* %40, align 8
  %165 = load i64, i64* %41, align 8
  %166 = call i32 @VSHF_B2_SB(i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163, i64 %164, i64 %165)
  %167 = load i64, i64* %32, align 8
  %168 = load i64, i64* %33, align 8
  %169 = load i64, i64* %25, align 8
  %170 = load i64, i64* %26, align 8
  %171 = call i64 @HEVC_FILT_4TAP_SH(i64 %167, i64 %168, i64 %169, i64 %170)
  store i64 %171, i64* %42, align 8
  %172 = load i64, i64* %34, align 8
  %173 = load i64, i64* %35, align 8
  %174 = load i64, i64* %25, align 8
  %175 = load i64, i64* %26, align 8
  %176 = call i64 @HEVC_FILT_4TAP_SH(i64 %172, i64 %173, i64 %174, i64 %175)
  store i64 %176, i64* %43, align 8
  %177 = load i64, i64* %36, align 8
  %178 = load i64, i64* %37, align 8
  %179 = load i64, i64* %25, align 8
  %180 = load i64, i64* %26, align 8
  %181 = call i64 @HEVC_FILT_4TAP_SH(i64 %177, i64 %178, i64 %179, i64 %180)
  store i64 %181, i64* %44, align 8
  %182 = load i64, i64* %38, align 8
  %183 = load i64, i64* %39, align 8
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %26, align 8
  %186 = call i64 @HEVC_FILT_4TAP_SH(i64 %182, i64 %183, i64 %184, i64 %185)
  store i64 %186, i64* %45, align 8
  %187 = load i64, i64* %40, align 8
  %188 = load i64, i64* %41, align 8
  %189 = load i64, i64* %25, align 8
  %190 = load i64, i64* %26, align 8
  %191 = call i64 @HEVC_FILT_4TAP_SH(i64 %187, i64 %188, i64 %189, i64 %190)
  store i64 %191, i64* %46, align 8
  %192 = load i64, i64* %43, align 8
  %193 = load i64, i64* %42, align 8
  %194 = load i64, i64* %51, align 8
  %195 = load i64, i64* %55, align 8
  %196 = call i32 @ILVRL_H2_SH(i64 %192, i64 %193, i64 %194, i64 %195)
  %197 = load i64, i64* %44, align 8
  %198 = load i64, i64* %43, align 8
  %199 = load i64, i64* %53, align 8
  %200 = load i64, i64* %57, align 8
  %201 = call i32 @ILVRL_H2_SH(i64 %197, i64 %198, i64 %199, i64 %200)
  %202 = load i64, i64* %45, align 8
  %203 = load i64, i64* %44, align 8
  %204 = load i64, i64* %52, align 8
  %205 = load i64, i64* %56, align 8
  %206 = call i32 @ILVRL_H2_SH(i64 %202, i64 %203, i64 %204, i64 %205)
  %207 = load i64, i64* %46, align 8
  %208 = load i64, i64* %45, align 8
  %209 = load i64, i64* %54, align 8
  %210 = load i64, i64* %58, align 8
  %211 = call i32 @ILVRL_H2_SH(i64 %207, i64 %208, i64 %209, i64 %210)
  %212 = load i64, i64* %51, align 8
  %213 = load i64, i64* %52, align 8
  %214 = load i64, i64* %27, align 8
  %215 = load i64, i64* %28, align 8
  %216 = call i32 @HEVC_FILT_4TAP(i64 %212, i64 %213, i64 %214, i64 %215)
  store i32 %216, i32* %47, align 4
  %217 = load i64, i64* %55, align 8
  %218 = load i64, i64* %56, align 8
  %219 = load i64, i64* %27, align 8
  %220 = load i64, i64* %28, align 8
  %221 = call i32 @HEVC_FILT_4TAP(i64 %217, i64 %218, i64 %219, i64 %220)
  store i32 %221, i32* %48, align 4
  %222 = load i64, i64* %53, align 8
  %223 = load i64, i64* %54, align 8
  %224 = load i64, i64* %27, align 8
  %225 = load i64, i64* %28, align 8
  %226 = call i32 @HEVC_FILT_4TAP(i64 %222, i64 %223, i64 %224, i64 %225)
  store i32 %226, i32* %49, align 4
  %227 = load i64, i64* %57, align 8
  %228 = load i64, i64* %58, align 8
  %229 = load i64, i64* %27, align 8
  %230 = load i64, i64* %28, align 8
  %231 = call i32 @HEVC_FILT_4TAP(i64 %227, i64 %228, i64 %229, i64 %230)
  store i32 %231, i32* %50, align 4
  %232 = load i32, i32* %47, align 4
  %233 = load i32, i32* %48, align 4
  %234 = load i32, i32* %49, align 4
  %235 = load i32, i32* %50, align 4
  %236 = call i32 @SRA_4V(i32 %232, i32 %233, i32 %234, i32 %235, i32 6)
  %237 = load i32, i32* %47, align 4
  %238 = load i32, i32* %64, align 4
  %239 = load i32, i32* %49, align 4
  %240 = load i32, i32* %64, align 4
  %241 = load i32, i32* %47, align 4
  %242 = load i32, i32* %49, align 4
  %243 = call i32 @MUL2(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %48, align 4
  %245 = load i32, i32* %64, align 4
  %246 = load i32, i32* %50, align 4
  %247 = load i32, i32* %64, align 4
  %248 = load i32, i32* %48, align 4
  %249 = load i32, i32* %50, align 4
  %250 = call i32 @MUL2(i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  %251 = load i32, i32* %47, align 4
  %252 = load i32, i32* %48, align 4
  %253 = load i32, i32* %49, align 4
  %254 = load i32, i32* %50, align 4
  %255 = load i32, i32* %65, align 4
  %256 = call i32 @SRAR_W4_SW(i32 %251, i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %48, align 4
  %258 = load i32, i32* %47, align 4
  %259 = load i32, i32* %50, align 4
  %260 = load i32, i32* %49, align 4
  %261 = load i64, i64* %59, align 8
  %262 = load i64, i64* %60, align 8
  %263 = call i32 @PCKEV_H2_SH(i32 %257, i32 %258, i32 %259, i32 %260, i64 %261, i64 %262)
  %264 = load i64, i64* %59, align 8
  %265 = load i64, i64* %61, align 8
  %266 = load i64, i64* %60, align 8
  %267 = load i64, i64* %61, align 8
  %268 = load i64, i64* %59, align 8
  %269 = load i64, i64* %60, align 8
  %270 = call i32 @ADD2(i64 %264, i64 %265, i64 %266, i64 %267, i64 %268, i64 %269)
  %271 = load i64, i64* %59, align 8
  %272 = load i64, i64* %60, align 8
  %273 = call i32 @CLIP_SH2_0_255(i64 %271, i64 %272)
  %274 = load i64, i64* %60, align 8
  %275 = load i64, i64* %59, align 8
  %276 = call i64 @__msa_pckev_b(i64 %274, i64 %275)
  store i64 %276, i64* %19, align 8
  %277 = load i64, i64* %19, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = load i32, i32* %13, align 4
  %280 = call i32 @ST_D2(i64 %277, i32 0, i32 1, i32* %278, i32 %279)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W4_SW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @ADD2(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @CLIP_SH2_0_255(i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
