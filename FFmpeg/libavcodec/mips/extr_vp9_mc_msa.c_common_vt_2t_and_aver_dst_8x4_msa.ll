; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_vt_2t_and_aver_dst_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_2t_and_aver_dst_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @LD_SH(i32* %32)
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %31, align 4
  %35 = call i64 @__msa_splati_h(i32 %34, i32 0)
  store i64 %35, i64* %26, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* %18, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i32 @LD_UB5(i32* %36, i32 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @LD4(i32* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i64, i64* %20, align 8
  %54 = call i32 @INSERT_D2_UB(i32 %51, i32 %52, i64 %53)
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i64, i64* %21, align 8
  %58 = call i32 @INSERT_D2_UB(i32 %55, i32 %56, i64 %57)
  %59 = load i64, i64* %16, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i64, i64* %22, align 8
  %64 = load i64, i64* %23, align 8
  %65 = call i32 @ILVR_B2_UB(i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i64, i64* %18, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %24, align 8
  %71 = load i64, i64* %25, align 8
  %72 = call i32 @ILVR_B2_UB(i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i64, i64* %22, align 8
  %74 = load i64, i64* %23, align 8
  %75 = load i64, i64* %24, align 8
  %76 = load i64, i64* %25, align 8
  %77 = load i64, i64* %26, align 8
  %78 = load i64, i64* %26, align 8
  %79 = load i64, i64* %26, align 8
  %80 = load i64, i64* %26, align 8
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %29, align 4
  %84 = load i32, i32* %30, align 4
  %85 = call i32 @DOTP_UB4_UH(i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %28, align 4
  %88 = load i32, i32* %29, align 4
  %89 = load i32, i32* %30, align 4
  %90 = call i32 @SRARI_H4_UH(i32 %86, i32 %87, i32 %88, i32 %89, i32 7)
  %91 = load i32, i32* %27, align 4
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %29, align 4
  %94 = load i32, i32* %30, align 4
  %95 = call i32 @SAT_UH4_UH(i32 %91, i32 %92, i32 %93, i32 %94, i32 7)
  %96 = load i32, i32* %27, align 4
  %97 = load i32, i32* %28, align 4
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %30, align 4
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* %21, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @PCKEV_AVG_ST8x4_UB(i32 %96, i32 %97, i32 %98, i32 %99, i64 %100, i64 %101, i32* %102, i32 %103)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_UB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_AVG_ST8x4_UB(i32, i32, i32, i32, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
