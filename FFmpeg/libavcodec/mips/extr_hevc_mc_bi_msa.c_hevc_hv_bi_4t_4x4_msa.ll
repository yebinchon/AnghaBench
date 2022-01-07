; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32*)* @hevc_hv_bi_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %61 = load i64, i64* @ff_hevc_mask_arr, align 8
  %62 = add nsw i64 %61, 16
  %63 = call i64 @LD_SB(i64 %62)
  store i64 %63, i64* %31, align 8
  store i32 0, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32*, i32** %9, align 8
  %67 = sext i32 %65 to i64
  %68 = sub i64 0, %67
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @LD_SH(i32* %70)
  store i32 %71, i32* %33, align 4
  %72 = load i32, i32* %33, align 4
  %73 = load i32, i32* %27, align 4
  %74 = load i32, i32* %28, align 4
  %75 = call i32 @SPLATI_H2_SH(i32 %72, i32 0, i32 1, i32 %73, i32 %74)
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @LD_SH(i32* %76)
  store i32 %77, i32* %33, align 4
  %78 = load i32, i32* %33, align 4
  %79 = load i32, i32* %33, align 4
  %80 = call i32 @UNPCK_R_SB_SH(i32 %78, i32 %79)
  %81 = load i32, i32* %33, align 4
  %82 = load i32, i32* %29, align 4
  %83 = load i32, i32* %30, align 4
  %84 = call i32 @SPLATI_W2_SH(i32 %81, i32 0, i32 %82, i32 %83)
  %85 = load i64, i64* %31, align 8
  %86 = add nsw i64 %85, 2
  store i64 %86, i64* %32, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %23, align 8
  %93 = load i64, i64* %24, align 8
  %94 = load i64, i64* %25, align 8
  %95 = load i64, i64* %26, align 8
  %96 = call i32 @LD_SB7(i32* %87, i32 %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95)
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i64, i64* %23, align 8
  %101 = load i64, i64* %24, align 8
  %102 = load i64, i64* %25, align 8
  %103 = load i64, i64* %26, align 8
  %104 = call i32 @XORI_B7_128_SB(i64 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, i64 %103)
  %105 = call i32 @__msa_ldi_h(i32 128)
  store i32 %105, i32* %34, align 4
  %106 = load i32, i32* %34, align 4
  %107 = shl i32 %106, 6
  store i32 %107, i32* %34, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @LD2(i32* %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 2, %113
  %115 = load i32*, i32** %11, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %45, align 4
  %121 = call i32 @INSERT_D2_SH(i32 %118, i32 %119, i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i32 @LD2(i32* %122, i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %46, align 4
  %130 = call i32 @INSERT_D2_SH(i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %45, align 4
  %132 = load i32, i32* %34, align 4
  %133 = load i32, i32* %46, align 4
  %134 = load i32, i32* %34, align 4
  %135 = load i32, i32* %45, align 4
  %136 = load i32, i32* %46, align 4
  %137 = call i32 @ADDS_SH2_SH(i32 %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136)
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* %23, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i64, i64* %23, align 8
  %142 = load i64, i64* %31, align 8
  %143 = load i64, i64* %32, align 8
  %144 = load i64, i64* %35, align 8
  %145 = load i64, i64* %36, align 8
  %146 = call i32 @VSHF_B2_SB(i64 %138, i64 %139, i64 %140, i64 %141, i64 %142, i64 %143, i64 %144, i64 %145)
  %147 = load i64, i64* %21, align 8
  %148 = load i64, i64* %24, align 8
  %149 = load i64, i64* %21, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %31, align 8
  %152 = load i64, i64* %32, align 8
  %153 = load i64, i64* %37, align 8
  %154 = load i64, i64* %38, align 8
  %155 = call i32 @VSHF_B2_SB(i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, i64 %153, i64 %154)
  %156 = load i64, i64* %22, align 8
  %157 = load i64, i64* %25, align 8
  %158 = load i64, i64* %22, align 8
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %31, align 8
  %161 = load i64, i64* %32, align 8
  %162 = load i64, i64* %39, align 8
  %163 = load i64, i64* %40, align 8
  %164 = call i32 @VSHF_B2_SB(i64 %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* %26, align 8
  %167 = load i64, i64* %23, align 8
  %168 = load i64, i64* %26, align 8
  %169 = load i64, i64* %31, align 8
  %170 = load i64, i64* %32, align 8
  %171 = load i64, i64* %41, align 8
  %172 = load i64, i64* %42, align 8
  %173 = call i32 @VSHF_B2_SB(i64 %165, i64 %166, i64 %167, i64 %168, i64 %169, i64 %170, i64 %171, i64 %172)
  %174 = load i64, i64* %35, align 8
  %175 = load i64, i64* %36, align 8
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* %28, align 4
  %178 = call i32 @HEVC_FILT_4TAP_SH(i64 %174, i64 %175, i32 %176, i32 %177)
  store i32 %178, i32* %47, align 4
  %179 = load i64, i64* %37, align 8
  %180 = load i64, i64* %38, align 8
  %181 = load i32, i32* %27, align 4
  %182 = load i32, i32* %28, align 4
  %183 = call i32 @HEVC_FILT_4TAP_SH(i64 %179, i64 %180, i32 %181, i32 %182)
  store i32 %183, i32* %48, align 4
  %184 = load i64, i64* %39, align 8
  %185 = load i64, i64* %40, align 8
  %186 = load i32, i32* %27, align 4
  %187 = load i32, i32* %28, align 4
  %188 = call i32 @HEVC_FILT_4TAP_SH(i64 %184, i64 %185, i32 %186, i32 %187)
  store i32 %188, i32* %49, align 4
  %189 = load i64, i64* %41, align 8
  %190 = load i64, i64* %42, align 8
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %28, align 4
  %193 = call i32 @HEVC_FILT_4TAP_SH(i64 %189, i64 %190, i32 %191, i32 %192)
  store i32 %193, i32* %50, align 4
  %194 = load i32, i32* %48, align 4
  %195 = load i32, i32* %47, align 4
  %196 = load i32, i32* %51, align 4
  %197 = load i32, i32* %55, align 4
  %198 = call i32 @ILVRL_H2_SH(i32 %194, i32 %195, i32 %196, i32 %197)
  %199 = load i32, i32* %49, align 4
  %200 = load i32, i32* %48, align 4
  %201 = load i32, i32* %54, align 4
  %202 = load i32, i32* %53, align 4
  %203 = call i32 @ILVRL_H2_SH(i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %50, align 4
  %205 = load i32, i32* %49, align 4
  %206 = load i32, i32* %52, align 4
  %207 = load i32, i32* %56, align 4
  %208 = call i32 @ILVRL_H2_SH(i32 %204, i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* %51, align 4
  %210 = load i32, i32* %52, align 4
  %211 = load i32, i32* %29, align 4
  %212 = load i32, i32* %30, align 4
  %213 = call i32 @HEVC_FILT_4TAP(i32 %209, i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %57, align 4
  %214 = load i32, i32* %54, align 4
  %215 = load i32, i32* %55, align 4
  %216 = load i32, i32* %29, align 4
  %217 = load i32, i32* %30, align 4
  %218 = call i32 @HEVC_FILT_4TAP(i32 %214, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %58, align 4
  %219 = load i32, i32* %52, align 4
  %220 = load i32, i32* %53, align 4
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %30, align 4
  %223 = call i32 @HEVC_FILT_4TAP(i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %59, align 4
  %224 = load i32, i32* %55, align 4
  %225 = load i32, i32* %56, align 4
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %30, align 4
  %228 = call i32 @HEVC_FILT_4TAP(i32 %224, i32 %225, i32 %226, i32 %227)
  store i32 %228, i32* %60, align 4
  %229 = load i32, i32* %57, align 4
  %230 = load i32, i32* %58, align 4
  %231 = load i32, i32* %59, align 4
  %232 = load i32, i32* %60, align 4
  %233 = call i32 @SRA_4V(i32 %229, i32 %230, i32 %231, i32 %232, i32 6)
  %234 = load i32, i32* %58, align 4
  %235 = load i32, i32* %57, align 4
  %236 = load i32, i32* %60, align 4
  %237 = load i32, i32* %59, align 4
  %238 = load i32, i32* %43, align 4
  %239 = load i32, i32* %44, align 4
  %240 = call i32 @PCKEV_H2_SH(i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  %241 = load i32, i32* %43, align 4
  %242 = load i32, i32* %45, align 4
  %243 = load i32, i32* %44, align 4
  %244 = load i32, i32* %46, align 4
  %245 = load i32, i32* %43, align 4
  %246 = load i32, i32* %44, align 4
  %247 = call i32 @ADDS_SH2_SH(i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246)
  %248 = load i32, i32* %43, align 4
  %249 = load i32, i32* %44, align 4
  %250 = call i32 @SRARI_H2_SH(i32 %248, i32 %249, i32 7)
  %251 = load i32, i32* %43, align 4
  %252 = load i32, i32* %44, align 4
  %253 = call i32 @CLIP_SH2_0_255(i32 %251, i32 %252)
  %254 = load i32, i32* %44, align 4
  %255 = sext i32 %254 to i64
  %256 = load i32, i32* %43, align 4
  %257 = sext i32 %256 to i64
  %258 = call i64 @__msa_pckev_b(i64 %255, i64 %257)
  store i64 %258, i64* %19, align 8
  %259 = load i64, i64* %19, align 8
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* %14, align 4
  %262 = call i32 @ST_W4(i64 %259, i32 0, i32 1, i32 2, i32 3, i32* %260, i32 %261)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB7(i32*, i32, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B7_128_SB(i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD2(i32*, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_SH(i32, i32, i32) #1

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

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
