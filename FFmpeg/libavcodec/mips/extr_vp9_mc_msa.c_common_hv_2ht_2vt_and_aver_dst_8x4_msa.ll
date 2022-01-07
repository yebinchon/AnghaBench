; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hv_2ht_2vt_and_aver_dst_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32*)* @common_hv_2ht_2vt_and_aver_dst_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hv_2ht_2vt_and_aver_dst_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %37 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %38 = load i32*, i32** @mc_filt_mask_arr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @LD_SB(i32* %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @LD_SH(i32* %41)
  store i32 %42, i32* %37, align 4
  %43 = load i32, i32* %37, align 4
  %44 = call i64 @__msa_splati_h(i32 %43, i32 0)
  store i64 %44, i64* %23, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @LD_SH(i32* %45)
  store i32 %46, i32* %37, align 4
  %47 = load i32, i32* %37, align 4
  %48 = call i64 @__msa_splati_h(i32 %47, i32 0)
  store i64 %48, i64* %24, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @LD_SB5(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = mul nsw i32 5, %57
  %59 = load i32*, i32** %7, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @LD4(i32* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i64, i64* %25, align 8
  %72 = call i32 @INSERT_D2_UB(i32 %69, i32 %70, i64 %71)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i64, i64* %26, align 8
  %76 = call i32 @INSERT_D2_UB(i32 %73, i32 %74, i64 %75)
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %22, align 4
  %80 = load i64, i64* %23, align 8
  %81 = call i64 @HORIZ_2TAP_FILT_UH(i32 %77, i32 %78, i32 %79, i64 %80, i32 7)
  store i64 %81, i64* %31, align 8
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i64, i64* %23, align 8
  %86 = call i64 @HORIZ_2TAP_FILT_UH(i32 %82, i32 %83, i32 %84, i64 %85, i32 7)
  store i64 %86, i64* %32, align 8
  %87 = load i64, i64* %32, align 8
  %88 = trunc i64 %87 to i32
  %89 = load i64, i64* %31, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i64 @__msa_ilvev_b(i32 %88, i32 %90)
  store i64 %91, i64* %27, align 8
  %92 = load i64, i64* %27, align 8
  %93 = load i64, i64* %24, align 8
  %94 = call i64 @__msa_dotp_u_h(i64 %92, i64 %93)
  store i64 %94, i64* %33, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %22, align 4
  %98 = load i64, i64* %23, align 8
  %99 = call i64 @HORIZ_2TAP_FILT_UH(i32 %95, i32 %96, i32 %97, i64 %98, i32 7)
  store i64 %99, i64* %31, align 8
  %100 = load i64, i64* %31, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %32, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @__msa_ilvev_b(i32 %101, i32 %103)
  store i64 %104, i64* %28, align 8
  %105 = load i64, i64* %28, align 8
  %106 = load i64, i64* %24, align 8
  %107 = call i64 @__msa_dotp_u_h(i64 %105, i64 %106)
  store i64 %107, i64* %34, align 8
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i64, i64* %23, align 8
  %112 = call i64 @HORIZ_2TAP_FILT_UH(i32 %108, i32 %109, i32 %110, i64 %111, i32 7)
  store i64 %112, i64* %32, align 8
  %113 = load i64, i64* %32, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i64, i64* %31, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i64 @__msa_ilvev_b(i32 %114, i32 %116)
  store i64 %117, i64* %29, align 8
  %118 = load i64, i64* %29, align 8
  %119 = load i64, i64* %24, align 8
  %120 = call i64 @__msa_dotp_u_h(i64 %118, i64 %119)
  store i64 %120, i64* %35, align 8
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %22, align 4
  %124 = load i64, i64* %23, align 8
  %125 = call i64 @HORIZ_2TAP_FILT_UH(i32 %121, i32 %122, i32 %123, i64 %124, i32 7)
  store i64 %125, i64* %31, align 8
  %126 = load i64, i64* %31, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i64, i64* %32, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @__msa_ilvev_b(i32 %127, i32 %129)
  store i64 %130, i64* %30, align 8
  %131 = load i64, i64* %30, align 8
  %132 = load i64, i64* %24, align 8
  %133 = call i64 @__msa_dotp_u_h(i64 %131, i64 %132)
  store i64 %133, i64* %36, align 8
  %134 = load i64, i64* %33, align 8
  %135 = load i64, i64* %34, align 8
  %136 = load i64, i64* %35, align 8
  %137 = load i64, i64* %36, align 8
  %138 = call i32 @SRARI_H4_UH(i64 %134, i64 %135, i64 %136, i64 %137, i32 7)
  %139 = load i64, i64* %33, align 8
  %140 = load i64, i64* %34, align 8
  %141 = load i64, i64* %35, align 8
  %142 = load i64, i64* %36, align 8
  %143 = call i32 @SAT_UH4_UH(i64 %139, i64 %140, i64 %141, i64 %142, i32 7)
  %144 = load i64, i64* %33, align 8
  %145 = load i64, i64* %34, align 8
  %146 = load i64, i64* %35, align 8
  %147 = load i64, i64* %36, align 8
  %148 = load i64, i64* %25, align 8
  %149 = load i64, i64* %26, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, i32* %150, i32 %151)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i64 @HORIZ_2TAP_FILT_UH(i32, i32, i32, i64, i32) #1

declare dso_local i64 @__msa_ilvev_b(i32, i32) #1

declare dso_local i64 @__msa_dotp_u_h(i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_AVG_ST8x4_UB(i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
