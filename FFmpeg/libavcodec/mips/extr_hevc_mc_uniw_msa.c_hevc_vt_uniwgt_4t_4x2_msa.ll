; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_vt_uniwgt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %45, 65535
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @__msa_fill_w(i32 %47)
  store i64 %48, i64* %38, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i64 @__msa_fill_w(i32 %49)
  store i64 %50, i64* %39, align 8
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %51, 128
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sub nsw i32 %53, 6
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @__msa_fill_h(i32 %55)
  store i64 %56, i64* %35, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @__msa_fill_h(i32 %57)
  store i64 %58, i64* %36, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i64 @__msa_fill_h(i32 %59)
  store i64 %60, i64* %37, align 8
  %61 = load i64, i64* %35, align 8
  %62 = load i64, i64* %37, align 8
  %63 = call i64 @__msa_srar_h(i64 %61, i64 %62)
  store i64 %63, i64* %35, align 8
  %64 = load i64, i64* %36, align 8
  %65 = load i64, i64* %35, align 8
  %66 = call i64 @__msa_adds_s_h(i64 %64, i64 %65)
  store i64 %66, i64* %36, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i64 @LD_SH(i32* %67)
  store i64 %68, i64* %34, align 8
  %69 = load i64, i64* %34, align 8
  %70 = load i64, i64* %32, align 8
  %71 = load i64, i64* %33, align 8
  %72 = call i32 @SPLATI_H2_SH(i64 %69, i32 0, i32 1, i64 %70, i64 %71)
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %19, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @LD_SB5(i32* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %25, align 4
  %87 = call i32 @ILVR_B2_SB(i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %26, align 4
  %94 = call i32 @ILVR_B2_SB(i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* %28, align 4
  %101 = call i32 @ILVR_D2_SB(i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %27, align 4
  %103 = load i32, i32* %28, align 4
  %104 = call i32 @XORI_B2_128_SB(i32 %102, i32 %103)
  %105 = load i32, i32* %27, align 4
  %106 = load i32, i32* %28, align 4
  %107 = load i64, i64* %32, align 8
  %108 = load i64, i64* %33, align 8
  %109 = call i64 @HEVC_FILT_4TAP_SH(i32 %105, i32 %106, i64 %107, i64 %108)
  store i64 %109, i64* %29, align 8
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %29, align 8
  %112 = load i64, i64* %30, align 8
  %113 = load i64, i64* %31, align 8
  %114 = call i32 @ILVRL_H2_SW(i64 %110, i64 %111, i64 %112, i64 %113)
  %115 = load i64, i64* %30, align 8
  %116 = load i64, i64* %31, align 8
  %117 = load i64, i64* %38, align 8
  %118 = load i64, i64* %38, align 8
  %119 = load i64, i64* %30, align 8
  %120 = load i64, i64* %31, align 8
  %121 = call i32 @DOTP_SH2_SW(i64 %115, i64 %116, i64 %117, i64 %118, i64 %119, i64 %120)
  %122 = load i64, i64* %30, align 8
  %123 = load i64, i64* %31, align 8
  %124 = load i64, i64* %39, align 8
  %125 = call i32 @SRAR_W2_SW(i64 %122, i64 %123, i64 %124)
  %126 = load i64, i64* %31, align 8
  %127 = load i64, i64* %30, align 8
  %128 = call i64 @__msa_pckev_h(i64 %126, i64 %127)
  store i64 %128, i64* %29, align 8
  %129 = load i64, i64* %29, align 8
  %130 = load i64, i64* %36, align 8
  %131 = call i64 @__msa_adds_s_h(i64 %129, i64 %130)
  store i64 %131, i64* %29, align 8
  %132 = load i64, i64* %29, align 8
  %133 = call i32 @CLIP_SH_0_255(i64 %132)
  %134 = load i64, i64* %29, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i64, i64* %29, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i64 @__msa_pckev_b(i32 %135, i32 %137)
  store i64 %138, i64* %17, align 8
  %139 = load i64, i64* %17, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @ST_W2(i64 %139, i32 0, i32 1, i32* %140, i32 %141)
  ret void
}

declare dso_local i64 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i64 @__msa_adds_s_h(i64, i64) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @ILVRL_H2_SW(i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_SH2_SW(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRAR_W2_SW(i64, i64, i64) #1

declare dso_local i64 @__msa_pckev_h(i64, i64) #1

declare dso_local i32 @CLIP_SH_0_255(i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
