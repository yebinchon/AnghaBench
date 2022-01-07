; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uniw_msa.c_hevc_vt_uniwgt_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32)* @hevc_vt_uniwgt_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_uniwgt_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = and i32 %49, 65535
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i32 @__msa_fill_w(i32 %51)
  store i32 %52, i32* %42, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @__msa_fill_w(i32 %53)
  store i32 %54, i32* %43, align 4
  %55 = load i32, i32* %14, align 4
  %56 = mul nsw i32 %55, 128
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, 6
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i64 @__msa_fill_h(i32 %59)
  store i64 %60, i64* %39, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i64 @__msa_fill_h(i32 %61)
  store i64 %62, i64* %40, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i64 @__msa_fill_h(i32 %63)
  store i64 %64, i64* %41, align 8
  %65 = load i64, i64* %39, align 8
  %66 = load i64, i64* %41, align 8
  %67 = call i64 @__msa_srar_h(i64 %65, i64 %66)
  store i64 %67, i64* %39, align 8
  %68 = load i64, i64* %40, align 8
  %69 = load i64, i64* %39, align 8
  %70 = call i64 @__msa_adds_s_h(i64 %68, i64 %69)
  store i64 %70, i64* %40, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i64 @LD_SH(i32* %71)
  store i64 %72, i64* %38, align 8
  %73 = load i64, i64* %38, align 8
  %74 = load i64, i64* %36, align 8
  %75 = load i64, i64* %37, align 8
  %76 = call i32 @SPLATI_H2_SH(i64 %73, i32 0, i32 1, i64 %74, i64 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %24, align 4
  %86 = call i32 @LD_SB7(i32* %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %28, align 4
  %93 = call i32 @ILVR_B2_SB(i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %24, align 4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %30, align 4
  %106 = call i32 @ILVR_B4_SB(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %28, align 4
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %29, align 4
  %110 = load i32, i32* %26, align 4
  %111 = load i32, i32* %30, align 4
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %31, align 4
  %114 = load i32, i32* %32, align 4
  %115 = load i32, i32* %33, align 4
  %116 = call i32 @ILVR_D3_SB(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %31, align 4
  %118 = load i32, i32* %32, align 4
  %119 = load i32, i32* %33, align 4
  %120 = call i32 @XORI_B3_128_SB(i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %32, align 4
  %123 = load i64, i64* %36, align 8
  %124 = load i64, i64* %37, align 8
  %125 = call i64 @HEVC_FILT_4TAP_SH(i32 %121, i32 %122, i64 %123, i64 %124)
  store i64 %125, i64* %34, align 8
  %126 = load i32, i32* %32, align 4
  %127 = load i32, i32* %33, align 4
  %128 = load i64, i64* %36, align 8
  %129 = load i64, i64* %37, align 8
  %130 = call i64 @HEVC_FILT_4TAP_SH(i32 %126, i32 %127, i64 %128, i64 %129)
  store i64 %130, i64* %35, align 8
  %131 = load i64, i64* %34, align 8
  %132 = load i64, i64* %35, align 8
  %133 = load i32, i32* %42, align 4
  %134 = load i64, i64* %40, align 8
  %135 = load i32, i32* %43, align 4
  %136 = load i64, i64* %34, align 8
  %137 = load i64, i64* %35, align 8
  %138 = call i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64 %131, i64 %132, i32 %133, i64 %134, i32 %135, i64 %136, i64 %137)
  %139 = load i64, i64* %35, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i64, i64* %34, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i64 @__msa_pckev_b(i32 %140, i32 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @ST_W4(i64 %144, i32 0, i32 1, i32 2, i32 3, i32* %145, i32 %146)
  ret void
}

declare dso_local i32 @__msa_fill_w(i32) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i64 @__msa_srar_h(i64, i64) #1

declare dso_local i64 @__msa_adds_s_h(i64, i64) #1

declare dso_local i64 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i64, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB7(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D3_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B3_128_SB(i32, i32, i32) #1

declare dso_local i64 @HEVC_FILT_4TAP_SH(i32, i32, i64, i64) #1

declare dso_local i32 @HEVC_UNIW_RND_CLIP2_MAX_SATU_H(i64, i64, i32, i64, i32, i64, i64) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
