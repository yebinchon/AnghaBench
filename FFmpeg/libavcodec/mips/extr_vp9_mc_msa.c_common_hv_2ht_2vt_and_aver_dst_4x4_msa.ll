; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_and_aver_dst_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_and_aver_dst_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
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
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %37 = load i32*, i32** @mc_filt_mask_arr, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 16
  %39 = call i32 @LD_SB(i32* %38)
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = call i64 @LD_UH(i32* %40)
  store i64 %41, i64* %36, align 8
  %42 = load i64, i64* %36, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i64 @__msa_splati_h(i32 %43, i32 0)
  store i64 %44, i64* %23, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i64 @LD_UH(i32* %45)
  store i64 %46, i64* %36, align 8
  %47 = load i64, i64* %36, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i64 @__msa_splati_h(i32 %48, i32 0)
  store i64 %49, i64* %24, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* %21, align 4
  %57 = call i32 @LD_SB5(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %22, align 4
  %61 = load i64, i64* %23, align 8
  %62 = call i64 @HORIZ_2TAP_FILT_UH(i32 %58, i32 %59, i32 %60, i64 %61, i32 7)
  store i64 %62, i64* %29, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %22, align 4
  %66 = load i64, i64* %23, align 8
  %67 = call i64 @HORIZ_2TAP_FILT_UH(i32 %63, i32 %64, i32 %65, i64 %66, i32 7)
  store i64 %67, i64* %31, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i64, i64* %23, align 8
  %72 = call i64 @HORIZ_2TAP_FILT_UH(i32 %68, i32 %69, i32 %70, i64 %71, i32 7)
  store i64 %72, i64* %33, align 8
  %73 = load i64, i64* %31, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %29, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i64 @__msa_sldi_b(i32 %74, i32 %76, i32 8)
  store i64 %77, i64* %30, align 8
  %78 = load i64, i64* %33, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %31, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i64 @__msa_pckod_d(i32 %79, i32 %81)
  store i64 %82, i64* %32, align 8
  %83 = load i64, i64* %29, align 8
  %84 = load i64, i64* %30, align 8
  %85 = load i64, i64* %31, align 8
  %86 = load i64, i64* %32, align 8
  %87 = load i64, i64* %25, align 8
  %88 = load i64, i64* %26, align 8
  %89 = call i32 @ILVEV_B2_UB(i64 %83, i64 %84, i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @LW4(i32* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i64, i64* %27, align 8
  %102 = call i32 @INSERT_W4_UB(i32 %97, i32 %98, i32 %99, i32 %100, i64 %101)
  %103 = load i64, i64* %25, align 8
  %104 = load i64, i64* %26, align 8
  %105 = load i64, i64* %24, align 8
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* %34, align 8
  %108 = load i64, i64* %35, align 8
  %109 = call i32 @DOTP_UB2_UH(i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, i64 %108)
  %110 = load i64, i64* %34, align 8
  %111 = load i64, i64* %35, align 8
  %112 = call i32 @SRARI_H2_UH(i64 %110, i64 %111, i32 7)
  %113 = load i64, i64* %34, align 8
  %114 = load i64, i64* %35, align 8
  %115 = call i32 @SAT_UH2_UH(i64 %113, i64 %114, i32 7)
  %116 = load i64, i64* %35, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %34, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i64 @__msa_pckev_b(i32 %117, i32 %119)
  store i64 %120, i64* %28, align 8
  %121 = load i64, i64* %28, align 8
  %122 = load i64, i64* %27, align 8
  %123 = call i64 @__msa_aver_u_b(i64 %121, i64 %122)
  store i64 %123, i64* %28, align 8
  %124 = load i64, i64* %28, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @ST_W4(i64 %124, i32 0, i32 1, i32 2, i32 3, i32* %125, i32 %126)
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

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i32 @SAT_UH2_UH(i64, i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i64 @__msa_aver_u_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
