; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_2t_and_aver_dst_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_2t_and_aver_dst_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %28 = load i32*, i32** @mc_filt_mask_arr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @LD_SB(i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @LD_UH(i32* %31)
  store i64 %32, i64* %27, align 8
  %33 = load i64, i64* %27, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @__msa_splati_h(i32 %34, i32 0)
  store i64 %35, i64* %20, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @LD_SB4(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load i64, i64* %23, align 8
  %50 = load i64, i64* %24, align 8
  %51 = call i32 @VSHF_B2_UH(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i64 %49, i64 %50)
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = load i64, i64* %25, align 8
  %59 = load i64, i64* %26, align 8
  %60 = call i32 @VSHF_B2_UH(i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i64 %58, i64 %59)
  %61 = load i64, i64* %23, align 8
  %62 = load i64, i64* %24, align 8
  %63 = load i64, i64* %25, align 8
  %64 = load i64, i64* %26, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %23, align 8
  %70 = load i64, i64* %24, align 8
  %71 = load i64, i64* %25, align 8
  %72 = load i64, i64* %26, align 8
  %73 = call i32 @DOTP_UB4_UH(i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72)
  %74 = load i64, i64* %23, align 8
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %25, align 8
  %77 = load i64, i64* %26, align 8
  %78 = call i32 @SRARI_H4_UH(i64 %74, i64 %75, i64 %76, i64 %77, i32 7)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @LD4(i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i64, i64* %21, align 8
  %89 = call i32 @INSERT_D2_UB(i32 %86, i32 %87, i64 %88)
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i64, i64* %22, align 8
  %93 = call i32 @INSERT_D2_UB(i32 %90, i32 %91, i64 %92)
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* %24, align 8
  %96 = load i64, i64* %25, align 8
  %97 = load i64, i64* %26, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @PCKEV_AVG_ST8x4_UB(i64 %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99, i32* %100, i32 %101)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UH(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i32 @PCKEV_AVG_ST8x4_UB(i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
