; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32)* @hevc_hv_uniwgt_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %63 = load i64, i64* @ff_hevc_mask_arr, align 8
  %64 = add nsw i64 %63, 16
  %65 = call i64 @LD_SB(i64 %64)
  store i64 %65, i64* %34, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32*, i32** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i64 @LD_SH(i32* %72)
  store i64 %73, i64* %31, align 8
  %74 = load i64, i64* %31, align 8
  %75 = load i64, i64* %27, align 8
  %76 = load i64, i64* %28, align 8
  %77 = call i32 @SPLATI_H2_SH(i64 %74, i32 0, i32 1, i64 %75, i64 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i64 @LD_SH(i32* %78)
  store i64 %79, i64* %31, align 8
  %80 = load i64, i64* %31, align 8
  %81 = load i64, i64* %31, align 8
  %82 = call i32 @UNPCK_R_SB_SH(i64 %80, i64 %81)
  %83 = load i64, i64* %31, align 8
  %84 = load i64, i64* %29, align 8
  %85 = load i64, i64* %30, align 8
  %86 = call i32 @SPLATI_W2_SH(i64 %83, i32 0, i64 %84, i64 %85)
  %87 = load i64, i64* %34, align 8
  %88 = add nsw i64 %87, 2
  store i64 %88, i64* %35, align 8
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @__msa_fill_w(i32 %89)
  store i32 %90, i32* %61, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @__msa_fill_w(i32 %91)
  store i32 %92, i32* %62, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i64 @__msa_fill_h(i32 %93)
  store i64 %94, i64* %54, align 8
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 %95, 6
  %97 = call i64 @__msa_fill_h(i32 %96)
  store i64 %97, i64* %56, align 8
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 128, %98
  %100 = call i64 @__msa_fill_h(i32 %99)
  store i64 %100, i64* %55, align 8
  %101 = load i64, i64* %55, align 8
  %102 = load i64, i64* %56, align 8
  %103 = call i64 @__msa_srar_h(i64 %101, i64 %102)
  %104 = load i64, i64* %54, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %54, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i64, i64* %20, align 8
  %109 = load i64, i64* %21, align 8
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %23, align 8
  %112 = load i64, i64* %24, align 8
  %113 = load i64, i64* %25, align 8
  %114 = load i64, i64* %26, align 8
  %115 = call i32 @LD_SB7(i32* %106, i32 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %20, align 8
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* %22, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64, i64* %24, align 8
  %121 = load i64, i64* %25, align 8
  %122 = load i64, i64* %26, align 8
  %123 = call i32 @XORI_B7_128_SB(i64 %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %20, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i64, i64* %34, align 8
  %129 = load i64, i64* %35, align 8
  %130 = load i64, i64* %36, align 8
  %131 = load i64, i64* %37, align 8
  %132 = call i32 @VSHF_B2_SB(i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = load i64, i64* %21, align 8
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %21, align 8
  %136 = load i64, i64* %24, align 8
  %137 = load i64, i64* %34, align 8
  %138 = load i64, i64* %35, align 8
  %139 = load i64, i64* %38, align 8
  %140 = load i64, i64* %39, align 8
  %141 = call i32 @VSHF_B2_SB(i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138, i64 %139, i64 %140)
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %25, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* %25, align 8
  %146 = load i64, i64* %34, align 8
  %147 = load i64, i64* %35, align 8
  %148 = load i64, i64* %40, align 8
  %149 = load i64, i64* %41, align 8
  %150 = call i32 @VSHF_B2_SB(i64 %142, i64 %143, i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149)
  %151 = load i64, i64* %23, align 8
  %152 = load i64, i64* %26, align 8
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %26, align 8
  %155 = load i64, i64* %34, align 8
  %156 = load i64, i64* %35, align 8
  %157 = load i64, i64* %42, align 8
  %158 = load i64, i64* %43, align 8
  %159 = call i32 @VSHF_B2_SB(i64 %151, i64 %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157, i64 %158)
  %160 = load i64, i64* %36, align 8
  %161 = load i64, i64* %37, align 8
  %162 = load i64, i64* %27, align 8
  %163 = load i64, i64* %28, align 8
  %164 = call i64 @HEVC_FILT_4TAP_SH(i64 %160, i64 %161, i64 %162, i64 %163)
  store i64 %164, i64* %44, align 8
  %165 = load i64, i64* %38, align 8
  %166 = load i64, i64* %39, align 8
  %167 = load i64, i64* %27, align 8
  %168 = load i64, i64* %28, align 8
  %169 = call i64 @HEVC_FILT_4TAP_SH(i64 %165, i64 %166, i64 %167, i64 %168)
  store i64 %169, i64* %45, align 8
  %170 = load i64, i64* %40, align 8
  %171 = load i64, i64* %41, align 8
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %28, align 8
  %174 = call i64 @HEVC_FILT_4TAP_SH(i64 %170, i64 %171, i64 %172, i64 %173)
  store i64 %174, i64* %46, align 8
  %175 = load i64, i64* %42, align 8
  %176 = load i64, i64* %43, align 8
  %177 = load i64, i64* %27, align 8
  %178 = load i64, i64* %28, align 8
  %179 = call i64 @HEVC_FILT_4TAP_SH(i64 %175, i64 %176, i64 %177, i64 %178)
  store i64 %179, i64* %47, align 8
  %180 = load i64, i64* %45, align 8
  %181 = load i64, i64* %44, align 8
  %182 = load i64, i64* %48, align 8
  %183 = load i64, i64* %52, align 8
  %184 = call i32 @ILVRL_H2_SH(i64 %180, i64 %181, i64 %182, i64 %183)
  %185 = load i64, i64* %46, align 8
  %186 = load i64, i64* %45, align 8
  %187 = load i64, i64* %51, align 8
  %188 = load i64, i64* %50, align 8
  %189 = call i32 @ILVRL_H2_SH(i64 %185, i64 %186, i64 %187, i64 %188)
  %190 = load i64, i64* %47, align 8
  %191 = load i64, i64* %46, align 8
  %192 = load i64, i64* %49, align 8
  %193 = load i64, i64* %53, align 8
  %194 = call i32 @ILVRL_H2_SH(i64 %190, i64 %191, i64 %192, i64 %193)
  %195 = load i64, i64* %48, align 8
  %196 = load i64, i64* %49, align 8
  %197 = load i64, i64* %29, align 8
  %198 = load i64, i64* %30, align 8
  %199 = call i32 @HEVC_FILT_4TAP(i64 %195, i64 %196, i64 %197, i64 %198)
  store i32 %199, i32* %57, align 4
  %200 = load i64, i64* %51, align 8
  %201 = load i64, i64* %52, align 8
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* %30, align 8
  %204 = call i32 @HEVC_FILT_4TAP(i64 %200, i64 %201, i64 %202, i64 %203)
  store i32 %204, i32* %58, align 4
  %205 = load i64, i64* %49, align 8
  %206 = load i64, i64* %50, align 8
  %207 = load i64, i64* %29, align 8
  %208 = load i64, i64* %30, align 8
  %209 = call i32 @HEVC_FILT_4TAP(i64 %205, i64 %206, i64 %207, i64 %208)
  store i32 %209, i32* %59, align 4
  %210 = load i64, i64* %52, align 8
  %211 = load i64, i64* %53, align 8
  %212 = load i64, i64* %29, align 8
  %213 = load i64, i64* %30, align 8
  %214 = call i32 @HEVC_FILT_4TAP(i64 %210, i64 %211, i64 %212, i64 %213)
  store i32 %214, i32* %60, align 4
  %215 = load i32, i32* %57, align 4
  %216 = load i32, i32* %58, align 4
  %217 = load i32, i32* %59, align 4
  %218 = load i32, i32* %60, align 4
  %219 = call i32 @SRA_4V(i32 %215, i32 %216, i32 %217, i32 %218, i32 6)
  %220 = load i32, i32* %57, align 4
  %221 = load i32, i32* %61, align 4
  %222 = load i32, i32* %58, align 4
  %223 = load i32, i32* %61, align 4
  %224 = load i32, i32* %57, align 4
  %225 = load i32, i32* %58, align 4
  %226 = call i32 @MUL2(i32 %220, i32 %221, i32 %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %59, align 4
  %228 = load i32, i32* %61, align 4
  %229 = load i32, i32* %60, align 4
  %230 = load i32, i32* %61, align 4
  %231 = load i32, i32* %59, align 4
  %232 = load i32, i32* %60, align 4
  %233 = call i32 @MUL2(i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232)
  %234 = load i32, i32* %57, align 4
  %235 = load i32, i32* %58, align 4
  %236 = load i32, i32* %59, align 4
  %237 = load i32, i32* %60, align 4
  %238 = load i32, i32* %62, align 4
  %239 = call i32 @SRAR_W4_SW(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238)
  %240 = load i32, i32* %58, align 4
  %241 = load i32, i32* %57, align 4
  %242 = load i32, i32* %60, align 4
  %243 = load i32, i32* %59, align 4
  %244 = load i64, i64* %32, align 8
  %245 = load i64, i64* %33, align 8
  %246 = call i32 @PCKEV_H2_SH(i32 %240, i32 %241, i32 %242, i32 %243, i64 %244, i64 %245)
  %247 = load i64, i64* %32, align 8
  %248 = load i64, i64* %54, align 8
  %249 = load i64, i64* %33, align 8
  %250 = load i64, i64* %54, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* %33, align 8
  %253 = call i32 @ADD2(i64 %247, i64 %248, i64 %249, i64 %250, i64 %251, i64 %252)
  %254 = load i64, i64* %32, align 8
  %255 = load i64, i64* %33, align 8
  %256 = call i32 @CLIP_SH2_0_255(i64 %254, i64 %255)
  %257 = load i64, i64* %33, align 8
  %258 = load i64, i64* %32, align 8
  %259 = call i64 @__msa_pckev_b(i64 %257, i64 %258)
  store i64 %259, i64* %19, align 8
  %260 = load i64, i64* %19, align 8
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* %13, align 4
  %263 = call i32 @ST_W4(i64 %260, i32 0, i32 1, i32 2, i32 3, i32* %261, i32 %262)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @UNPCK_R_SB_SH(i64, i64) #1

declare dso_local i32 @SPLATI_W2_SH(i64, i32, i64, i64) #1

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

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

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
