; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
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
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %33 = load i32*, i32** @mc_filt_mask_arr, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 16
  %35 = call i32 @LD_SB(i32* %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @LD_UH(i32* %36)
  store i64 %37, i64* %30, align 8
  %38 = load i64, i64* %30, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @__msa_splati_h(i32 %39, i32 0)
  store i64 %40, i64* %20, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i64 @LD_UH(i32* %41)
  store i64 %42, i64* %30, align 8
  %43 = load i64, i64* %30, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @__msa_splati_h(i32 %44, i32 0)
  store i64 %45, i64* %19, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @LD_SB5(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %18, align 4
  %57 = load i64, i64* %20, align 8
  %58 = call i64 @HORIZ_2TAP_FILT_UH(i32 %54, i32 %55, i32 %56, i64 %57, i32 7)
  store i64 %58, i64* %25, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i64, i64* %20, align 8
  %63 = call i64 @HORIZ_2TAP_FILT_UH(i32 %59, i32 %60, i32 %61, i64 %62, i32 7)
  store i64 %63, i64* %27, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i64, i64* %20, align 8
  %68 = call i64 @HORIZ_2TAP_FILT_UH(i32 %64, i32 %65, i32 %66, i64 %67, i32 7)
  store i64 %68, i64* %29, align 8
  %69 = load i64, i64* %27, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %25, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @__msa_sldi_b(i32 %70, i32 %72, i32 8)
  store i64 %73, i64* %26, align 8
  %74 = load i64, i64* %29, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i64, i64* %27, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @__msa_pckod_d(i32 %75, i32 %77)
  store i64 %78, i64* %28, align 8
  %79 = load i64, i64* %25, align 8
  %80 = load i64, i64* %26, align 8
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %28, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %22, align 8
  %85 = call i32 @ILVEV_B2_UB(i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84)
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* %22, align 8
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i64, i64* %31, align 8
  %91 = load i64, i64* %32, align 8
  %92 = call i32 @DOTP_UB2_UH(i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, i64 %91)
  %93 = load i64, i64* %31, align 8
  %94 = load i64, i64* %32, align 8
  %95 = call i32 @SRARI_H2_UH(i64 %93, i64 %94, i32 7)
  %96 = load i64, i64* %31, align 8
  %97 = load i64, i64* %32, align 8
  %98 = call i32 @SAT_UH2_UH(i64 %96, i64 %97, i32 7)
  %99 = load i64, i64* %31, align 8
  %100 = load i64, i64* %31, align 8
  %101 = load i64, i64* %32, align 8
  %102 = load i64, i64* %32, align 8
  %103 = load i64, i64* %23, align 8
  %104 = load i64, i64* %24, align 8
  %105 = call i32 @PCKEV_B2_UB(i64 %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %23, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @ST_W2(i64 %106, i32 0, i32 1, i32* %107, i32 %108)
  %110 = load i64, i64* %24, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 2, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @ST_W2(i64 %110, i32 0, i32 1, i32* %115, i32 %116)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i64 @__msa_sldi_b(i32, i32, i32) #1

declare dso_local i64 @__msa_pckod_d(i32, i32) #1

declare dso_local i32 @ILVEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i32 @SAT_UH2_UH(i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_W2(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
