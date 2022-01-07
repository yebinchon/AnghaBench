; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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
  %33 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %34 = load i32*, i32** @mc_filt_mask_arr, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = call i32 @LD_SB(i32* %35)
  store i32 %36, i32* %18, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @LD_SH(i32* %37)
  store i32 %38, i32* %33, align 4
  %39 = load i32, i32* %33, align 4
  %40 = call i64 @__msa_splati_h(i32 %39, i32 0)
  store i64 %40, i64* %21, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @LD_SH(i32* %41)
  store i32 %42, i32* %33, align 4
  %43 = load i32, i32* %33, align 4
  %44 = call i64 @__msa_splati_h(i32 %43, i32 0)
  store i64 %44, i64* %22, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @LD_SB5(i32* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i64, i64* %21, align 8
  %57 = call i64 @HORIZ_2TAP_FILT_UH(i32 %53, i32 %54, i32 %55, i64 %56, i32 7)
  store i64 %57, i64* %27, align 8
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %21, align 8
  %62 = call i64 @HORIZ_2TAP_FILT_UH(i32 %58, i32 %59, i32 %60, i64 %61, i32 7)
  store i64 %62, i64* %28, align 8
  %63 = load i64, i64* %28, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %27, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @__msa_ilvev_b(i32 %64, i32 %66)
  store i64 %67, i64* %23, align 8
  %68 = load i64, i64* %23, align 8
  %69 = load i64, i64* %22, align 8
  %70 = call i64 @__msa_dotp_u_h(i64 %68, i64 %69)
  store i64 %70, i64* %29, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i64, i64* %21, align 8
  %75 = call i64 @HORIZ_2TAP_FILT_UH(i32 %71, i32 %72, i32 %73, i64 %74, i32 7)
  store i64 %75, i64* %27, align 8
  %76 = load i64, i64* %27, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i64, i64* %28, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @__msa_ilvev_b(i32 %77, i32 %79)
  store i64 %80, i64* %24, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i64, i64* %22, align 8
  %83 = call i64 @__msa_dotp_u_h(i64 %81, i64 %82)
  store i64 %83, i64* %30, align 8
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i64, i64* %21, align 8
  %88 = call i64 @HORIZ_2TAP_FILT_UH(i32 %84, i32 %85, i32 %86, i64 %87, i32 7)
  store i64 %88, i64* %28, align 8
  %89 = load i64, i64* %28, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i64, i64* %27, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i64 @__msa_ilvev_b(i32 %90, i32 %92)
  store i64 %93, i64* %25, align 8
  %94 = load i64, i64* %25, align 8
  %95 = load i64, i64* %22, align 8
  %96 = call i64 @__msa_dotp_u_h(i64 %94, i64 %95)
  store i64 %96, i64* %31, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = load i64, i64* %21, align 8
  %101 = call i64 @HORIZ_2TAP_FILT_UH(i32 %97, i32 %98, i32 %99, i64 %100, i32 7)
  store i64 %101, i64* %27, align 8
  %102 = load i64, i64* %27, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* %28, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i64 @__msa_ilvev_b(i32 %103, i32 %105)
  store i64 %106, i64* %26, align 8
  %107 = load i64, i64* %26, align 8
  %108 = load i64, i64* %22, align 8
  %109 = call i64 @__msa_dotp_u_h(i64 %107, i64 %108)
  store i64 %109, i64* %32, align 8
  %110 = load i64, i64* %29, align 8
  %111 = load i64, i64* %30, align 8
  %112 = load i64, i64* %31, align 8
  %113 = load i64, i64* %32, align 8
  %114 = call i32 @SRARI_H4_UH(i64 %110, i64 %111, i64 %112, i64 %113, i32 7)
  %115 = load i64, i64* %29, align 8
  %116 = load i64, i64* %30, align 8
  %117 = load i64, i64* %31, align 8
  %118 = load i64, i64* %32, align 8
  %119 = call i32 @SAT_UH4_UH(i64 %115, i64 %116, i64 %117, i64 %118, i32 7)
  %120 = load i64, i64* %30, align 8
  %121 = load i64, i64* %29, align 8
  %122 = load i64, i64* %32, align 8
  %123 = load i64, i64* %31, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @PCKEV_B2_SB(i64 %120, i64 %121, i64 %122, i64 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @ST_D4(i32 %127, i32 %128, i32 0, i32 1, i32 0, i32 1, i32* %129, i32 %130)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
