; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_8x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_8x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_8x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_8x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %33 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i64 @LD_SB(i32* %34)
  store i64 %35, i64* %23, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -1
  store i32* %37, i32** %9, align 8
  %38 = call i32 @__msa_ldi_h(i32 128)
  store i32 %38, i32* %32, align 4
  %39 = load i32, i32* %32, align 4
  %40 = shl i32 %39, 6
  store i32 %40, i32* %32, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @LD_SH(i32* %41)
  store i32 %42, i32* %31, align 4
  %43 = load i32, i32* %31, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = call i32 @SPLATI_H2_SH(i32 %43, i32 0, i32 1, i32 %44, i32 %45)
  %47 = load i64, i64* %23, align 8
  %48 = add nsw i64 %47, 2
  store i64 %48, i64* %24, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* %20, align 8
  %53 = call i32 @LD_SB2(i32* %49, i32 %50, i64 %51, i64 %52)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %22, align 4
  %58 = call i32 @LD_SH2(i32* %54, i32 %55, i32 %56, i32 %57)
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %20, align 8
  %61 = call i32 @XORI_B2_128_SB(i64 %59, i64 %60)
  %62 = load i32, i32* %32, align 4
  store i32 %62, i32* %29, align 4
  %63 = load i32, i32* %32, align 4
  store i32 %63, i32* %30, align 4
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %19, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* %23, align 8
  %70 = load i64, i64* %25, align 8
  %71 = load i64, i64* %26, align 8
  %72 = call i32 @VSHF_B2_SB(i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* %24, align 8
  %78 = load i64, i64* %24, align 8
  %79 = load i64, i64* %27, align 8
  %80 = load i64, i64* %28, align 8
  %81 = call i32 @VSHF_B2_SB(i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %82 = load i64, i64* %25, align 8
  %83 = load i64, i64* %26, align 8
  %84 = load i64, i64* %27, align 8
  %85 = load i64, i64* %28, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* %30, align 4
  %92 = load i32, i32* %29, align 4
  %93 = load i32, i32* %30, align 4
  %94 = call i32 @DPADD_SB4_SH(i64 %82, i64 %83, i64 %84, i64 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* %30, align 4
  %99 = load i32, i32* %29, align 4
  %100 = load i32, i32* %30, align 4
  %101 = call i32 @HEVC_BI_RND_CLIP2(i32 %95, i32 %96, i32 %97, i32 %98, i32 7, i32 %99, i32 %100)
  %102 = load i32, i32* %30, align 4
  %103 = sext i32 %102 to i64
  %104 = load i32, i32* %29, align 4
  %105 = sext i32 %104 to i64
  %106 = call i64 @__msa_pckev_b(i64 %103, i64 %105)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %29, align 4
  %108 = load i32, i32* %29, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @ST_D2(i32 %108, i32 0, i32 1, i32* %109, i32 %110)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @LD_SH2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
