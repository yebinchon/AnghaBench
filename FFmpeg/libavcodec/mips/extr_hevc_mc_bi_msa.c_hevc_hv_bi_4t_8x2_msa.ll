; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32*, i64, i32*, i32*)* @hevc_hv_bi_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_8x2_msa(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
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
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %62 = load i32, i32* @ff_hevc_mask_arr, align 4
  %63 = call i64 @LD_SB(i32 %62)
  store i64 %63, i64* %27, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  %66 = load i32*, i32** %9, align 8
  %67 = sub i64 0, %65
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @LD_SH(i32* %69)
  store i32 %70, i32* %29, align 4
  %71 = load i32, i32* %29, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %24, align 4
  %74 = call i32 @SPLATI_H2_SH(i32 %71, i32 0, i32 1, i32 %72, i32 %73)
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @LD_SH(i32* %75)
  store i32 %76, i32* %29, align 4
  %77 = load i32, i32* %29, align 4
  %78 = load i32, i32* %29, align 4
  %79 = call i32 @UNPCK_R_SB_SH(i32 %77, i32 %78)
  %80 = load i32, i32* %29, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* %26, align 4
  %83 = call i32 @SPLATI_W2_SH(i32 %80, i32 0, i32 %81, i32 %82)
  %84 = load i64, i64* %27, align 8
  %85 = add nsw i64 %84, 2
  store i64 %85, i64* %28, align 8
  %86 = call i32 @__msa_ldi_h(i32 128)
  store i32 %86, i32* %30, align 4
  %87 = load i32, i32* %30, align 4
  %88 = shl i32 %87, 6
  store i32 %88, i32* %30, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %20, align 8
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %22, align 8
  %96 = call i32 @LD_SB5(i32* %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95)
  %97 = load i64, i64* %18, align 8
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %21, align 8
  %101 = load i64, i64* %22, align 8
  %102 = call i32 @XORI_B5_128_SB(i64 %97, i64 %98, i64 %99, i64 %100, i64 %101)
  %103 = load i32*, i32** %11, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %60, align 4
  %106 = load i32, i32* %61, align 4
  %107 = call i32 @LD_SH2(i32* %103, i64 %104, i32 %105, i32 %106)
  %108 = load i32, i32* %60, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %61, align 4
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* %60, align 4
  %113 = load i32, i32* %61, align 4
  %114 = call i32 @ADDS_SH2_SH(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i64, i64* %18, align 8
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %28, align 8
  %121 = load i64, i64* %31, align 8
  %122 = load i64, i64* %32, align 8
  %123 = call i32 @VSHF_B2_SB(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %19, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %27, align 8
  %129 = load i64, i64* %28, align 8
  %130 = load i64, i64* %33, align 8
  %131 = load i64, i64* %34, align 8
  %132 = call i32 @VSHF_B2_SB(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %20, align 8
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* %20, align 8
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* %27, align 8
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %35, align 8
  %140 = load i64, i64* %36, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %21, align 8
  %143 = load i64, i64* %21, align 8
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* %27, align 8
  %147 = load i64, i64* %28, align 8
  %148 = load i64, i64* %37, align 8
  %149 = load i64, i64* %38, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %22, align 8
  %152 = load i64, i64* %22, align 8
  %153 = load i64, i64* %22, align 8
  %154 = load i64, i64* %22, align 8
  %155 = load i64, i64* %27, align 8
  %156 = load i64, i64* %28, align 8
  %157 = load i64, i64* %39, align 8
  %158 = load i64, i64* %40, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %32, align 8
  %162 = load i32, i32* %23, align 4
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @HEVC_FILT_4TAP_SH(i64 %160, i64 %161, i32 %162, i32 %163)
  store i32 %164, i32* %41, align 4
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %34, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* %24, align 4
  %169 = call i32 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i32 %167, i32 %168)
  store i32 %169, i32* %42, align 4
  %170 = load i64, i64* %35, align 8
  %171 = load i64, i64* %36, align 8
  %172 = load i32, i32* %23, align 4
  %173 = load i32, i32* %24, align 4
  %174 = call i32 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i32 %172, i32 %173)
  store i32 %174, i32* %43, align 4
  %175 = load i64, i64* %37, align 8
  %176 = load i64, i64* %38, align 8
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* %24, align 4
  %179 = call i32 @HEVC_FILT_4TAP_SH(i64 %175, i64 %176, i32 %177, i32 %178)
  store i32 %179, i32* %44, align 4
  %180 = load i64, i64* %39, align 8
  %181 = load i64, i64* %40, align 8
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* %24, align 4
  %184 = call i32 @HEVC_FILT_4TAP_SH(i64 %180, i64 %181, i32 %182, i32 %183)
  store i32 %184, i32* %45, align 4
  %185 = load i32, i32* %42, align 4
  %186 = load i32, i32* %41, align 4
  %187 = load i32, i32* %50, align 4
  %188 = load i32, i32* %54, align 4
  %189 = call i32 @ILVRL_H2_SH(i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %43, align 4
  %191 = load i32, i32* %42, align 4
  %192 = load i32, i32* %52, align 4
  %193 = load i32, i32* %56, align 4
  %194 = call i32 @ILVRL_H2_SH(i32 %190, i32 %191, i32 %192, i32 %193)
  %195 = load i32, i32* %44, align 4
  %196 = load i32, i32* %43, align 4
  %197 = load i32, i32* %51, align 4
  %198 = load i32, i32* %55, align 4
  %199 = call i32 @ILVRL_H2_SH(i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %45, align 4
  %201 = load i32, i32* %44, align 4
  %202 = load i32, i32* %53, align 4
  %203 = load i32, i32* %57, align 4
  %204 = call i32 @ILVRL_H2_SH(i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load i32, i32* %50, align 4
  %206 = load i32, i32* %51, align 4
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* %26, align 4
  %209 = call i32 @HEVC_FILT_4TAP(i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 %209, i32* %46, align 4
  %210 = load i32, i32* %54, align 4
  %211 = load i32, i32* %55, align 4
  %212 = load i32, i32* %25, align 4
  %213 = load i32, i32* %26, align 4
  %214 = call i32 @HEVC_FILT_4TAP(i32 %210, i32 %211, i32 %212, i32 %213)
  store i32 %214, i32* %47, align 4
  %215 = load i32, i32* %52, align 4
  %216 = load i32, i32* %53, align 4
  %217 = load i32, i32* %25, align 4
  %218 = load i32, i32* %26, align 4
  %219 = call i32 @HEVC_FILT_4TAP(i32 %215, i32 %216, i32 %217, i32 %218)
  store i32 %219, i32* %48, align 4
  %220 = load i32, i32* %56, align 4
  %221 = load i32, i32* %57, align 4
  %222 = load i32, i32* %25, align 4
  %223 = load i32, i32* %26, align 4
  %224 = call i32 @HEVC_FILT_4TAP(i32 %220, i32 %221, i32 %222, i32 %223)
  store i32 %224, i32* %49, align 4
  %225 = load i32, i32* %46, align 4
  %226 = load i32, i32* %47, align 4
  %227 = load i32, i32* %48, align 4
  %228 = load i32, i32* %49, align 4
  %229 = call i32 @SRA_4V(i32 %225, i32 %226, i32 %227, i32 %228, i32 6)
  %230 = load i32, i32* %47, align 4
  %231 = load i32, i32* %46, align 4
  %232 = load i32, i32* %49, align 4
  %233 = load i32, i32* %48, align 4
  %234 = load i32, i32* %58, align 4
  %235 = load i32, i32* %59, align 4
  %236 = call i32 @PCKEV_H2_SH(i32 %230, i32 %231, i32 %232, i32 %233, i32 %234, i32 %235)
  %237 = load i32, i32* %60, align 4
  %238 = load i32, i32* %58, align 4
  %239 = load i32, i32* %61, align 4
  %240 = load i32, i32* %59, align 4
  %241 = load i32, i32* %58, align 4
  %242 = load i32, i32* %59, align 4
  %243 = call i32 @ADDS_SH2_SH(i32 %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* %58, align 4
  %245 = load i32, i32* %59, align 4
  %246 = call i32 @SRARI_H2_SH(i32 %244, i32 %245, i32 7)
  %247 = load i32, i32* %58, align 4
  %248 = load i32, i32* %59, align 4
  %249 = call i32 @CLIP_SH2_0_255(i32 %247, i32 %248)
  %250 = load i32, i32* %59, align 4
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %58, align 4
  %253 = sext i32 %252 to i64
  %254 = call i64 @__msa_pckev_b(i64 %251, i64 %253)
  store i64 %254, i64* %17, align 8
  %255 = load i64, i64* %17, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = load i64, i64* %14, align 8
  %258 = call i32 @ST_D2(i64 %255, i32 0, i32 1, i32* %256, i64 %257)
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i64, i32, i32) #1

declare dso_local i32 @ADDS_SH2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @SRA_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_H2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
