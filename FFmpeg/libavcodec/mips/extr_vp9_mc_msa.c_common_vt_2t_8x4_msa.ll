; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_vt_2t_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_2t_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @LD_SH(i32* %28)
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %27, align 4
  %31 = call i64 @__msa_splati_h(i32 %30, i32 0)
  store i64 %31, i64* %20, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 @LD_UB5(i32* %32, i32 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38)
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %17, align 8
  %46 = call i32 @ILVR_B2_UB(i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45)
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i64, i64* %19, align 8
  %53 = call i32 @ILVR_B2_UB(i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52)
  %54 = load i64, i64* %16, align 8
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* %20, align 8
  %60 = load i64, i64* %20, align 8
  %61 = load i64, i64* %20, align 8
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* %26, align 4
  %66 = call i32 @DOTP_UB4_UH(i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* %26, align 4
  %71 = call i32 @SRARI_H4_UH(i32 %67, i32 %68, i32 %69, i32 %70, i32 7)
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %26, align 4
  %76 = call i32 @SAT_UH4_UH(i32 %72, i32 %73, i32 %74, i32 %75, i32 7)
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* %23, align 4
  %79 = load i32, i32* %26, align 4
  %80 = load i32, i32* %25, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %22, align 4
  %83 = call i32 @PCKEV_B2_SB(i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %22, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ST_D4(i32 %84, i32 %85, i32 0, i32 1, i32 0, i32 1, i32* %86, i32 %87)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_UB5(i32*, i32, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ILVR_B2_UB(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
