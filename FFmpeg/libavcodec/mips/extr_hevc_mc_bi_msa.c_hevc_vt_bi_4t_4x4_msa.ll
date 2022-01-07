; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_vt_bi_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_vt_bi_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_bi_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %9, align 8
  %48 = call i32 @__msa_ldi_h(i32 128)
  store i32 %48, i32* %42, align 4
  %49 = load i32, i32* %42, align 4
  %50 = shl i32 %49, 6
  store i32 %50, i32* %42, align 4
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @LD_SH(i32* %51)
  store i32 %52, i32* %41, align 4
  %53 = load i32, i32* %41, align 4
  %54 = load i32, i32* %39, align 4
  %55 = load i32, i32* %40, align 4
  %56 = call i32 @SPLATI_H2_SH(i32 %53, i32 0, i32 1, i32 %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i32 @LD_SB3(i32* %57, i32 %58, i64 %59, i64 %60, i64 %61)
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 3, %63
  %65 = load i32*, i32** %9, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %9, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %28, align 8
  %73 = load i64, i64* %31, align 8
  %74 = call i32 @ILVR_B2_SB(i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %31, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %28, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @__msa_ilvr_d(i32 %76, i32 %78)
  store i64 %79, i64* %34, align 8
  %80 = load i64, i64* %34, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @__msa_xori_b(i32 %81, i32 128)
  store i64 %82, i64* %34, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i64, i64* %20, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %23, align 8
  %89 = call i32 @LD_SB4(i32* %83, i32 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %24, align 4
  %93 = load i32, i32* %25, align 4
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %27, align 4
  %96 = call i32 @LD_SH4(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = call i32 @ILVR_D2_SH(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i64, i64* %21, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* %22, align 8
  %109 = load i64, i64* %21, align 8
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %22, align 8
  %112 = load i64, i64* %29, align 8
  %113 = load i64, i64* %32, align 8
  %114 = load i64, i64* %30, align 8
  %115 = load i64, i64* %33, align 8
  %116 = call i32 @ILVR_B4_SB(i64 %104, i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = load i64, i64* %32, align 8
  %118 = load i64, i64* %29, align 8
  %119 = load i64, i64* %33, align 8
  %120 = load i64, i64* %30, align 8
  %121 = load i64, i64* %35, align 8
  %122 = load i64, i64* %36, align 8
  %123 = call i32 @ILVR_D2_SB(i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, i64 %122)
  %124 = load i64, i64* %35, align 8
  %125 = load i64, i64* %36, align 8
  %126 = call i32 @XORI_B2_128_SB(i64 %124, i64 %125)
  %127 = load i32, i32* %42, align 4
  store i32 %127, i32* %37, align 4
  %128 = load i64, i64* %34, align 8
  %129 = load i64, i64* %35, align 8
  %130 = load i32, i32* %39, align 4
  %131 = load i32, i32* %40, align 4
  %132 = load i32, i32* %37, align 4
  %133 = load i32, i32* %37, align 4
  %134 = call i32 @DPADD_SB2_SH(i64 %128, i64 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %42, align 4
  store i32 %135, i32* %38, align 4
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %36, align 8
  %138 = load i32, i32* %39, align 4
  %139 = load i32, i32* %40, align 4
  %140 = load i32, i32* %38, align 4
  %141 = load i32, i32* %38, align 4
  %142 = call i32 @DPADD_SB2_SH(i64 %136, i64 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load i32, i32* %24, align 4
  %144 = load i32, i32* %25, align 4
  %145 = load i32, i32* %37, align 4
  %146 = load i32, i32* %38, align 4
  %147 = load i32, i32* %37, align 4
  %148 = load i32, i32* %38, align 4
  %149 = call i32 @HEVC_BI_RND_CLIP2(i32 %143, i32 %144, i32 %145, i32 %146, i32 7, i32 %147, i32 %148)
  %150 = load i32, i32* %38, align 4
  %151 = sext i32 %150 to i64
  %152 = load i32, i32* %37, align 4
  %153 = sext i32 %152 to i64
  %154 = call i64 @__msa_pckev_b(i64 %151, i64 %153)
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %37, align 4
  %156 = load i32, i32* %37, align 4
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %14, align 4
  %159 = call i32 @ST_W4(i32 %156, i32 0, i32 1, i32 2, i32 3, i32* %157, i32 %158)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB3(i32*, i32, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i64 @__msa_xori_b(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_D2_SB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
