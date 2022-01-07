; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_bi_msa.c_hevc_hz_bi_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_bi_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_bi_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7) #0 {
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 %7, i32* %16, align 4
  %38 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 16
  %40 = call i64 @LD_SB(i32* %39)
  store i64 %40, i64* %32, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  store i32* %42, i32** %9, align 8
  %43 = call i32 @__msa_ldi_h(i32 128)
  store i32 %43, i32* %37, align 4
  %44 = load i32, i32* %37, align 4
  %45 = shl i32 %44, 6
  store i32 %45, i32* %37, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @LD_SH(i32* %46)
  store i32 %47, i32* %36, align 4
  %48 = load i32, i32* %36, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @SPLATI_H2_SH(i32 %48, i32 0, i32 1, i32 %49, i32 %50)
  %52 = load i64, i64* %32, align 8
  %53 = add nsw i64 %52, 2
  store i64 %53, i64* %33, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* %19, align 8
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* %21, align 8
  %59 = load i64, i64* %22, align 8
  %60 = call i32 @LD_SB4(i32* %54, i32 %55, i64 %56, i64 %57, i64 %58, i64 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %26, align 4
  %64 = load i32, i32* %27, align 4
  %65 = load i32, i32* %28, align 4
  %66 = load i32, i32* %29, align 4
  %67 = call i32 @LD_SH4(i32* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %27, align 4
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %29, align 4
  %71 = load i32, i32* %28, align 4
  %72 = load i32, i32* %26, align 4
  %73 = load i32, i32* %27, align 4
  %74 = call i32 @ILVR_D2_SH(i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i64, i64* %19, align 8
  %76 = load i64, i64* %20, align 8
  %77 = load i64, i64* %21, align 8
  %78 = load i64, i64* %22, align 8
  %79 = call i32 @XORI_B4_128_SB(i64 %75, i64 %76, i64 %77, i64 %78)
  %80 = load i32, i32* %37, align 4
  store i32 %80, i32* %34, align 4
  %81 = load i32, i32* %37, align 4
  store i32 %81, i32* %35, align 4
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* %32, align 8
  %87 = load i64, i64* %32, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %25, align 8
  %90 = call i32 @VSHF_B2_SB(i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88, i64 %89)
  %91 = load i64, i64* %19, align 8
  %92 = load i64, i64* %20, align 8
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i64, i64* %33, align 8
  %96 = load i64, i64* %33, align 8
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %31, align 8
  %99 = call i32 @VSHF_B2_SB(i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98)
  %100 = load i64, i64* %24, align 8
  %101 = load i64, i64* %25, align 8
  %102 = load i64, i64* %30, align 8
  %103 = load i64, i64* %31, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %34, align 4
  %109 = load i32, i32* %35, align 4
  %110 = load i32, i32* %34, align 4
  %111 = load i32, i32* %35, align 4
  %112 = call i32 @DPADD_SB4_SH(i64 %100, i64 %101, i64 %102, i64 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %34, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32, i32* %34, align 4
  %118 = load i32, i32* %35, align 4
  %119 = call i32 @HEVC_BI_RND_CLIP2(i32 %113, i32 %114, i32 %115, i32 %116, i32 7, i32 %117, i32 %118)
  %120 = load i32, i32* %35, align 4
  %121 = sext i32 %120 to i64
  %122 = load i32, i32* %34, align 4
  %123 = sext i32 %122 to i64
  %124 = call i64 @__msa_pckev_b(i64 %121, i64 %123)
  store i64 %124, i64* %23, align 8
  %125 = load i64, i64* %23, align 8
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @ST_W4(i64 %125, i32 0, i32 1, i32 2, i32 3, i32* %126, i32 %127)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @LD_SH4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB4_SH(i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HEVC_BI_RND_CLIP2(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
