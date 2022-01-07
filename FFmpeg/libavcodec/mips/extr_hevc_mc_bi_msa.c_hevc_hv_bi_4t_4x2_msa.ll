; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hv_bi_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i64, i32*, i64, i32*, i32*)* @hevc_hv_bi_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hv_bi_4t_4x2_msa(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
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
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %20, align 4
  %50 = load i64, i64* @ff_hevc_mask_arr, align 8
  %51 = add nsw i64 %50, 16
  %52 = call i64 @LD_SB(i64 %51)
  store i64 %52, i64* %30, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %53, 1
  %55 = load i32*, i32** %9, align 8
  %56 = sub i64 0, %54
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @LD_SH(i32* %58)
  store i32 %59, i32* %32, align 4
  %60 = load i32, i32* %32, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i32, i32* %27, align 4
  %63 = call i32 @SPLATI_H2_SH(i32 %60, i32 0, i32 1, i32 %61, i32 %62)
  %64 = load i32*, i32** %16, align 8
  %65 = call i32 @LD_SH(i32* %64)
  store i32 %65, i32* %32, align 4
  %66 = load i32, i32* %32, align 4
  %67 = load i32, i32* %32, align 4
  %68 = call i32 @UNPCK_R_SB_SH(i32 %66, i32 %67)
  %69 = load i32, i32* %32, align 4
  %70 = load i32, i32* %28, align 4
  %71 = load i32, i32* %29, align 4
  %72 = call i32 @SPLATI_W2_SH(i32 %69, i32 0, i32 %70, i32 %71)
  %73 = load i64, i64* %30, align 8
  %74 = add nsw i64 %73, 2
  store i64 %74, i64* %31, align 8
  %75 = call i32 @__msa_ldi_h(i32 128)
  store i32 %75, i32* %33, align 4
  %76 = load i32, i32* %33, align 4
  %77 = shl i32 %76, 6
  store i32 %77, i32* %33, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %22, align 8
  %82 = load i64, i64* %23, align 8
  %83 = load i64, i64* %24, align 8
  %84 = load i64, i64* %25, align 8
  %85 = call i32 @LD_SB5(i32* %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %23, align 8
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %25, align 8
  %91 = call i32 @XORI_B5_128_SB(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %92 = load i32*, i32** %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @LD2(i32* %92, i64 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @INSERT_D2_SH(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %33, align 4
  %103 = call i32 @__msa_adds_s_h(i32 %101, i32 %102)
  store i32 %103, i32* %20, align 4
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %23, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %23, align 8
  %108 = load i64, i64* %30, align 8
  %109 = load i64, i64* %31, align 8
  %110 = load i64, i64* %34, align 8
  %111 = load i64, i64* %35, align 8
  %112 = call i32 @VSHF_B2_SB(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %113 = load i64, i64* %22, align 8
  %114 = load i64, i64* %24, align 8
  %115 = load i64, i64* %22, align 8
  %116 = load i64, i64* %24, align 8
  %117 = load i64, i64* %30, align 8
  %118 = load i64, i64* %31, align 8
  %119 = load i64, i64* %36, align 8
  %120 = load i64, i64* %37, align 8
  %121 = call i32 @VSHF_B2_SB(i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %23, align 8
  %123 = load i64, i64* %25, align 8
  %124 = load i64, i64* %23, align 8
  %125 = load i64, i64* %25, align 8
  %126 = load i64, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i64, i64* %38, align 8
  %129 = load i64, i64* %39, align 8
  %130 = call i32 @VSHF_B2_SB(i64 %122, i64 %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, i64 %129)
  %131 = load i64, i64* %34, align 8
  %132 = load i64, i64* %35, align 8
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %27, align 4
  %135 = call i32 @HEVC_FILT_4TAP_SH(i64 %131, i64 %132, i32 %133, i32 %134)
  store i32 %135, i32* %40, align 4
  %136 = load i64, i64* %36, align 8
  %137 = load i64, i64* %37, align 8
  %138 = load i32, i32* %26, align 4
  %139 = load i32, i32* %27, align 4
  %140 = call i32 @HEVC_FILT_4TAP_SH(i64 %136, i64 %137, i32 %138, i32 %139)
  store i32 %140, i32* %41, align 4
  %141 = load i64, i64* %38, align 8
  %142 = load i64, i64* %39, align 8
  %143 = load i32, i32* %26, align 4
  %144 = load i32, i32* %27, align 4
  %145 = call i32 @HEVC_FILT_4TAP_SH(i64 %141, i64 %142, i32 %143, i32 %144)
  store i32 %145, i32* %42, align 4
  %146 = load i32, i32* %41, align 4
  %147 = load i32, i32* %40, align 4
  %148 = load i32, i32* %43, align 4
  %149 = load i32, i32* %44, align 4
  %150 = call i32 @ILVRL_H2_SH(i32 %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %42, align 4
  %152 = load i32, i32* %41, align 4
  %153 = load i32, i32* %45, align 4
  %154 = load i32, i32* %46, align 4
  %155 = call i32 @ILVRL_H2_SH(i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load i32, i32* %43, align 4
  %157 = load i32, i32* %44, align 4
  %158 = load i32, i32* %28, align 4
  %159 = load i32, i32* %29, align 4
  %160 = call i32 @HEVC_FILT_4TAP(i32 %156, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %48, align 4
  %161 = load i32, i32* %45, align 4
  %162 = load i32, i32* %46, align 4
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %29, align 4
  %165 = call i32 @HEVC_FILT_4TAP(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %49, align 4
  %166 = load i32, i32* %48, align 4
  %167 = ashr i32 %166, 6
  store i32 %167, i32* %48, align 4
  %168 = load i32, i32* %49, align 4
  %169 = ashr i32 %168, 6
  store i32 %169, i32* %49, align 4
  %170 = load i32, i32* %49, align 4
  %171 = load i32, i32* %48, align 4
  %172 = call i32 @__msa_pckev_h(i32 %170, i32 %171)
  store i32 %172, i32* %47, align 4
  %173 = load i32, i32* %47, align 4
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @__msa_adds_s_h(i32 %173, i32 %174)
  store i32 %175, i32* %47, align 4
  %176 = load i32, i32* %47, align 4
  %177 = call i32 @__msa_srari_h(i32 %176, i32 7)
  store i32 %177, i32* %47, align 4
  %178 = load i32, i32* %47, align 4
  %179 = call i32 @CLIP_SH_0_255(i32 %178)
  %180 = load i32, i32* %47, align 4
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %47, align 4
  %183 = sext i32 %182 to i64
  %184 = call i64 @__msa_pckev_b(i64 %181, i64 %183)
  store i64 %184, i64* %19, align 8
  %185 = load i64, i64* %19, align 8
  %186 = load i32*, i32** %13, align 8
  %187 = load i64, i64* %14, align 8
  %188 = call i32 @ST_W2(i64 %185, i32 0, i32 1, i32* %186, i64 %187)
  ret void
}

declare dso_local i64 @LD_SB(i64) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_R_SB_SH(i32, i32) #1

declare dso_local i32 @SPLATI_W2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB5(i32*, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B5_128_SB(i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD2(i32*, i64, i32, i32) #1

declare dso_local i32 @INSERT_D2_SH(i32, i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i32, i32) #1

declare dso_local i32 @ILVRL_H2_SH(i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_FILT_4TAP(i32, i32, i32, i32) #1

declare dso_local i32 @__msa_pckev_h(i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
