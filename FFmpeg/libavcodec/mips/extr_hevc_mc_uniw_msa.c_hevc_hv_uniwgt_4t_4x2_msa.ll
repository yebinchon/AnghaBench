; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_hv_uniwgt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*, i32, i32, i32)* @hevc_hv_uniwgt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_uniwgt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %53 = load i64, i64* @ff_hevc_mask_arr, align 8
  %54 = add nsw i64 %53, 16
  %55 = call i64 @LD_SB(i64 %54)
  store i64 %55, i64* %27, align 8
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32*, i32** %10, align 8
  %59 = sext i32 %57 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %10, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call i64 @LD_SH(i32* %62)
  store i64 %63, i64* %31, align 8
  %64 = load i64, i64* %31, align 8
  %65 = load i64, i64* %25, align 8
  %66 = load i64, i64* %26, align 8
  %67 = call i32 @SPLATI_H2_SH(i64 %64, i32 0, i32 1, i64 %65, i64 %66)
  %68 = load i32*, i32** %15, align 8
  %69 = call i64 @LD_SH(i32* %68)
  store i64 %69, i64* %31, align 8
  %70 = load i64, i64* %31, align 8
  %71 = load i64, i64* %31, align 8
  %72 = call i32 @UNPCK_R_SB_SH(i64 %70, i64 %71)
  %73 = load i64, i64* %31, align 8
  %74 = load i64, i64* %29, align 8
  %75 = load i64, i64* %30, align 8
  %76 = call i32 @SPLATI_W2_SH(i64 %73, i32 0, i64 %74, i64 %75)
  %77 = load i64, i64* %27, align 8
  %78 = add nsw i64 %77, 2
  store i64 %78, i64* %28, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @__msa_fill_w(i32 %79)
  store i32 %80, i32* %51, align 4
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @__msa_fill_w(i32 %81)
  store i32 %82, i32* %52, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i64 @__msa_fill_h(i32 %83)
  store i64 %84, i64* %46, align 8
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %85, 6
  %87 = call i64 @__msa_fill_h(i32 %86)
  store i64 %87, i64* %48, align 8
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 128, %88
  %90 = call i64 @__msa_fill_h(i32 %89)
  store i64 %90, i64* %47, align 8
  %91 = load i64, i64* %47, align 8
  %92 = load i64, i64* %48, align 8
  %93 = call i64 @__msa_srar_h(i64 %91, i64 %92)
  %94 = load i64, i64* %46, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %46, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %23, align 8
  %102 = load i64, i64* %24, align 8
  %103 = call i32 @LD_SB5(i32* %96, i32 %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %22, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %24, align 8
  %109 = call i32 @XORI_B5_128_SB(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %20, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* %27, align 8
  %115 = load i64, i64* %28, align 8
  %116 = load i64, i64* %33, align 8
  %117 = load i64, i64* %34, align 8
  %118 = call i32 @VSHF_B2_SB(i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117)
  %119 = load i64, i64* %21, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i64, i64* %21, align 8
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %27, align 8
  %124 = load i64, i64* %28, align 8
  %125 = load i64, i64* %35, align 8
  %126 = load i64, i64* %36, align 8
  %127 = call i32 @VSHF_B2_SB(i64 %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  %128 = load i64, i64* %22, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %22, align 8
  %131 = load i64, i64* %24, align 8
  %132 = load i64, i64* %27, align 8
  %133 = load i64, i64* %28, align 8
  %134 = load i64, i64* %37, align 8
  %135 = load i64, i64* %38, align 8
  %136 = call i32 @VSHF_B2_SB(i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135)
  %137 = load i64, i64* %33, align 8
  %138 = load i64, i64* %34, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load i64, i64* %26, align 8
  %141 = call i64 @HEVC_FILT_4TAP_SH(i64 %137, i64 %138, i64 %139, i64 %140)
  store i64 %141, i64* %39, align 8
  %142 = load i64, i64* %35, align 8
  %143 = load i64, i64* %36, align 8
  %144 = load i64, i64* %25, align 8
  %145 = load i64, i64* %26, align 8
  %146 = call i64 @HEVC_FILT_4TAP_SH(i64 %142, i64 %143, i64 %144, i64 %145)
  store i64 %146, i64* %40, align 8
  %147 = load i64, i64* %37, align 8
  %148 = load i64, i64* %38, align 8
  %149 = load i64, i64* %25, align 8
  %150 = load i64, i64* %26, align 8
  %151 = call i64 @HEVC_FILT_4TAP_SH(i64 %147, i64 %148, i64 %149, i64 %150)
  store i64 %151, i64* %41, align 8
  %152 = load i64, i64* %40, align 8
  %153 = load i64, i64* %39, align 8
  %154 = load i64, i64* %42, align 8
  %155 = load i64, i64* %43, align 8
  %156 = call i32 @ILVRL_H2_SH(i64 %152, i64 %153, i64 %154, i64 %155)
  %157 = load i64, i64* %41, align 8
  %158 = load i64, i64* %40, align 8
  %159 = load i64, i64* %44, align 8
  %160 = load i64, i64* %45, align 8
  %161 = call i32 @ILVRL_H2_SH(i64 %157, i64 %158, i64 %159, i64 %160)
  %162 = load i64, i64* %42, align 8
  %163 = load i64, i64* %43, align 8
  %164 = load i64, i64* %29, align 8
  %165 = load i64, i64* %30, align 8
  %166 = call i32 @HEVC_FILT_4TAP(i64 %162, i64 %163, i64 %164, i64 %165)
  store i32 %166, i32* %49, align 4
  %167 = load i64, i64* %44, align 8
  %168 = load i64, i64* %45, align 8
  %169 = load i64, i64* %29, align 8
  %170 = load i64, i64* %30, align 8
  %171 = call i32 @HEVC_FILT_4TAP(i64 %167, i64 %168, i64 %169, i64 %170)
  store i32 %171, i32* %50, align 4
  %172 = load i32, i32* %49, align 4
  %173 = ashr i32 %172, 6
  store i32 %173, i32* %49, align 4
  %174 = load i32, i32* %50, align 4
  %175 = ashr i32 %174, 6
  store i32 %175, i32* %50, align 4
  %176 = load i32, i32* %49, align 4
  %177 = load i32, i32* %51, align 4
  %178 = load i32, i32* %50, align 4
  %179 = load i32, i32* %51, align 4
  %180 = load i32, i32* %49, align 4
  %181 = load i32, i32* %50, align 4
  %182 = call i32 @MUL2(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  %183 = load i32, i32* %49, align 4
  %184 = load i32, i32* %50, align 4
  %185 = load i32, i32* %52, align 4
  %186 = call i32 @SRAR_W2_SW(i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %50, align 4
  %188 = sext i32 %187 to i64
  %189 = load i32, i32* %49, align 4
  %190 = sext i32 %189 to i64
  %191 = call i64 @__msa_pckev_h(i64 %188, i64 %190)
  store i64 %191, i64* %32, align 8
  %192 = load i64, i64* %46, align 8
  %193 = load i64, i64* %32, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %32, align 8
  %195 = load i64, i64* %32, align 8
  %196 = call i32 @CLIP_SH_0_255(i64 %195)
  %197 = load i64, i64* %32, align 8
  %198 = load i64, i64* %32, align 8
  %199 = call i64 @__msa_pckev_b(i64 %197, i64 %198)
  store i64 %199, i64* %19, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = call i32 @ST_W2(i64 %200, i32 0, i32 1, i32* %201, i32 %202)
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

declare dso_local i32 @LD_SB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SH(i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP(i64, i64, i64, i64) #1

declare dso_local i32 @MUL2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRAR_W2_SW(i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @CLIP_SH_0_255(i64) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
