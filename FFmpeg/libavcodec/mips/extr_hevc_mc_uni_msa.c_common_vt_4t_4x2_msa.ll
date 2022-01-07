; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_vt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_vt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @LD_SH(i32* %32)
  store i32 %33, i32* %25, align 4
  %34 = load i32, i32* %25, align 4
  %35 = load i64, i64* %22, align 8
  %36 = load i64, i64* %23, align 8
  %37 = call i32 @SPLATI_H2_SB(i32 %34, i32 0, i32 1, i64 %35, i64 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @LD_SB3(i32* %38, i32 %39, i64 %40, i64 %41, i64 %42)
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 3, %44
  %46 = load i32*, i32** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i32 @ILVR_B2_SB(i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54)
  %56 = load i64, i64* %18, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %16, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @__msa_ilvr_d(i32 %57, i32 %59)
  store i64 %60, i64* %20, align 8
  %61 = load i64, i64* %20, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @__msa_xori_b(i32 %62, i32 128)
  store i64 %63, i64* %20, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @LD_SB2(i32* %64, i32 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %19, align 8
  %75 = call i32 @ILVR_B2_SB(i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = load i64, i64* %19, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %17, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @__msa_ilvr_d(i32 %77, i32 %79)
  store i64 %80, i64* %21, align 8
  %81 = load i64, i64* %21, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @__msa_xori_b(i32 %82, i32 128)
  store i64 %83, i64* %21, align 8
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %21, align 8
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %23, align 8
  %88 = call i32 @HEVC_FILT_4TAP_SH(i64 %84, i64 %85, i64 %86, i64 %87)
  store i32 %88, i32* %26, align 4
  %89 = load i32, i32* %26, align 4
  %90 = call i32 @__msa_srari_h(i32 %89, i32 6)
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %26, align 4
  %92 = call i32 @__msa_sat_s_h(i32 %91, i32 7)
  store i32 %92, i32* %26, align 4
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* %26, align 4
  %95 = call i32 @PCKEV_XORI128_UB(i32 %93, i32 %94)
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %24, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ST_W2(i32 %96, i32 0, i32 1, i32* %97, i32 %98)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @HEVC_FILT_4TAP_SH(i64, i64, i64, i64) #1

declare dso_local i32 @__msa_srari_h(i32, i32) #1

declare dso_local i32 @__msa_sat_s_h(i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
