; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_vt_uniwgt_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = sext i32 %37 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* %14, align 4
  %43 = and i32 %42, 65535
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @__msa_fill_w(i32 %44)
  store i32 %45, i32* %35, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @__msa_fill_w(i32 %46)
  store i32 %47, i32* %36, align 4
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %48, 128
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sub nsw i32 %50, 6
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i64 @__msa_fill_h(i32 %52)
  store i64 %53, i64* %32, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i64 @__msa_fill_h(i32 %54)
  store i64 %55, i64* %33, align 8
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @__msa_fill_h(i32 %56)
  store i64 %57, i64* %34, align 8
  %58 = load i64, i64* %32, align 8
  %59 = load i64, i64* %34, align 8
  %60 = call i64 @__msa_srar_h(i64 %58, i64 %59)
  store i64 %60, i64* %32, align 8
  %61 = load i64, i64* %33, align 8
  %62 = load i64, i64* %32, align 8
  %63 = call i64 @__msa_adds_s_h(i64 %61, i64 %62)
  store i64 %63, i64* %33, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = call i64 @LD_SH(i32* %64)
  store i64 %65, i64* %31, align 8
  %66 = load i64, i64* %31, align 8
  %67 = load i64, i64* %29, align 8
  %68 = load i64, i64* %30, align 8
  %69 = call i32 @SPLATI_H2_SH(i64 %66, i32 0, i32 1, i64 %67, i64 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = call i32 @LD_SB5(i32* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @XORI_B5_128_SB(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %25, align 4
  %90 = call i32 @ILVR_B2_SB(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %24, align 4
  %96 = load i32, i32* %26, align 4
  %97 = call i32 @ILVR_B2_SB(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %24, align 4
  %100 = load i64, i64* %29, align 8
  %101 = load i64, i64* %30, align 8
  %102 = call i64 @HEVC_FILT_4TAP_SH(i32 %98, i32 %99, i64 %100, i64 %101)
  store i64 %102, i64* %27, align 8
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* %26, align 4
  %105 = load i64, i64* %29, align 8
  %106 = load i64, i64* %30, align 8
  %107 = call i64 @HEVC_FILT_4TAP_SH(i32 %103, i32 %104, i64 %105, i64 %106)
  store i64 %107, i64* %28, align 8
  %108 = load i64, i64* %27, align 8
  %109 = load i64, i64* %28, align 8
  %110 = load i32, i32* %35, align 4
  %111 = load i64, i64* %33, align 8
  %112 = load i32, i32* %36, align 4
  %113 = load i64, i64* %27, align 8
  %114 = load i64, i64* %28, align 8
  %115 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64 %108, i64 %109, i32 %110, i64 %111, i32 %112, i64 %113, i64 %114)
  %116 = load i64, i64* %28, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %27, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @__msa_pckev_b(i32 %117, i32 %119)
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @ST_D2(i64 %121, i32 0, i32 1, i32* %122, i32 %123)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i64 @__msa_adds_s_h(i64, i64) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B5_128_SB(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64, i64, i32, i64, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_D2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
