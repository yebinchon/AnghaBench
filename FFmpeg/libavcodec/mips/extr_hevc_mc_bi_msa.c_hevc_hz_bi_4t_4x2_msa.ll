; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %31 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 16
  %33 = call i64 @LD_SB(i32* %32)
  store i64 %33, i64* %26, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 -1
  store i32* %35, i32** %9, align 8
  %36 = call i32 @__msa_ldi_h(i32 128)
  store i32 %36, i32* %30, align 4
  %37 = load i32, i32* %30, align 4
  %38 = shl i32 %37, 6
  store i32 %38, i32* %30, align 4
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @LD_SH(i32* %39)
  store i32 %40, i32* %29, align 4
  %41 = load i32, i32* %29, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @SPLATI_H2_SH(i32 %41, i32 0, i32 1, i32 %42, i32 %43)
  %45 = load i64, i64* %26, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %27, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %20, align 8
  %51 = call i32 @LD_SB2(i32* %47, i32 %48, i64 %49, i64 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %24, align 4
  %55 = load i32, i32* %25, align 4
  %56 = call i32 @LD_SH2(i32* %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %25, align 4
  %58 = load i32, i32* %24, align 4
  %59 = call i64 @__msa_ilvr_d(i32 %57, i32 %58)
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %24, align 4
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %20, align 8
  %63 = call i32 @XORI_B2_128_SB(i64 %61, i64 %62)
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %26, align 8
  %69 = load i64, i64* %27, align 8
  %70 = load i64, i64* %22, align 8
  %71 = load i64, i64* %23, align 8
  %72 = call i32 @VSHF_B2_SB(i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i32, i32* %30, align 4
  store i32 %73, i32* %28, align 4
  %74 = load i64, i64* %22, align 8
  %75 = load i64, i64* %23, align 8
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %28, align 4
  %79 = load i32, i32* %28, align 4
  %80 = call i32 @DPADD_SB2_SH(i64 %74, i64 %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %28, align 4
  %82 = load i32, i32* %24, align 4
  %83 = call i32 @__msa_adds_s_h(i32 %81, i32 %82)
  store i32 %83, i32* %28, align 4
  %84 = load i32, i32* %28, align 4
  %85 = call i32 @__msa_srari_h(i32 %84, i32 7)
  store i32 %85, i32* %28, align 4
  %86 = load i32, i32* %28, align 4
  %87 = call i32 @CLIP_SH_0_255(i32 %86)
  %88 = load i32, i32* %28, align 4
  %89 = sext i32 %88 to i64
  %90 = load i32, i32* %28, align 4
  %91 = sext i32 %90 to i64
  %92 = call i64 @__msa_pckev_b(i64 %89, i64 %91)
  store i64 %92, i64* %21, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @ST_W2(i64 %93, i32 0, i32 1, i32* %94, i32 %95)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_adds_s_h(i32, i32) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @CLIP_SH_0_255(i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
