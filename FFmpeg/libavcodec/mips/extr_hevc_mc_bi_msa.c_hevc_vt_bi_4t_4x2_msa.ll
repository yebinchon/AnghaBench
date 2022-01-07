; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = sext i32 %35 to i64
  %38 = sub i64 0, %37
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %9, align 8
  %40 = call i32 @__msa_ldi_h(i32 128)
  store i32 %40, i32* %34, align 4
  %41 = load i32, i32* %34, align 4
  %42 = shl i32 %41, 6
  store i32 %42, i32* %34, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %33, align 4
  %45 = load i32, i32* %33, align 4
  %46 = load i32, i32* %31, align 4
  %47 = load i32, i32* %32, align 4
  %48 = call i32 @SPLATI_H2_SH(i32 %45, i32 0, i32 1, i32 %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %19, align 8
  %54 = call i32 @LD_SB3(i32* %49, i32 %50, i64 %51, i64 %52, i64 %53)
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 3, %55
  %57 = load i32*, i32** %9, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %9, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* %26, align 8
  %66 = call i32 @ILVR_B2_SB(i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65)
  %67 = load i64, i64* %26, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i64, i64* %24, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i64 @__msa_ilvr_d(i32 %68, i32 %70)
  store i64 %71, i64* %28, align 8
  %72 = load i64, i64* %28, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @__msa_xori_b(i32 %73, i32 128)
  store i64 %74, i64* %28, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %21, align 8
  %79 = call i32 @LD_SB2(i32* %75, i32 %76, i64 %77, i64 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %23, align 4
  %84 = call i32 @LD_SH2(i32* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %22, align 4
  %87 = call i64 @__msa_ilvr_d(i32 %85, i32 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %22, align 4
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %21, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %25, align 8
  %94 = load i64, i64* %27, align 8
  %95 = call i32 @ILVR_B2_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94)
  %96 = load i64, i64* %27, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* %25, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i64 @__msa_ilvr_d(i32 %97, i32 %99)
  store i64 %100, i64* %29, align 8
  %101 = load i64, i64* %29, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i64 @__msa_xori_b(i32 %102, i32 128)
  store i64 %103, i64* %29, align 8
  %104 = load i32, i32* %34, align 4
  store i32 %104, i32* %30, align 4
  %105 = load i64, i64* %28, align 8
  %106 = load i64, i64* %29, align 8
  %107 = load i32, i32* %31, align 4
  %108 = load i32, i32* %32, align 4
  %109 = load i32, i32* %30, align 4
  %110 = load i32, i32* %30, align 4
  %111 = call i32 @DPADD_SB2_SH(i64 %105, i64 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* %30, align 4
  %113 = load i32, i32* %22, align 4
  %114 = call i32 @__msa_adds_s_h(i32 %112, i32 %113)
  store i32 %114, i32* %30, align 4
  %115 = load i32, i32* %30, align 4
  %116 = call i32 @__msa_srari_h(i32 %115, i32 7)
  store i32 %116, i32* %30, align 4
  %117 = load i32, i32* %30, align 4
  %118 = call i32 @CLIP_SH_0_255(i32 %117)
  %119 = load i32, i32* %30, align 4
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* %30, align 4
  %122 = sext i32 %121 to i64
  %123 = call i64 @__msa_pckev_b(i64 %120, i64 %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %30, align 4
  %125 = load i32, i32* %30, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @ST_W2(i32 %125, i32 0, i32 1, i32* %126, i32 %127)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
