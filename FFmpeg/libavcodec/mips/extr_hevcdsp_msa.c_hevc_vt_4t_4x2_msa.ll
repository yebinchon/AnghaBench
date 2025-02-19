; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4x2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_vt_4t_4x2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @hevc_vt_4t_4x2_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_vt_4t_4x2_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %6, align 8
  %32 = call i32 @__msa_ldi_h(i32 128)
  store i32 %32, i32* %26, align 4
  %33 = load i32, i32* %26, align 4
  %34 = shl i32 %33, 6
  store i32 %34, i32* %26, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @LD_SH(i32* %35)
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* %23, align 4
  %39 = load i32, i32* %24, align 4
  %40 = call i32 @SPLATI_H2_SH(i32 %37, i32 0, i32 1, i32 %38, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @LD_SB5(i32* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @ILVR_B4_SB(i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = call i32 @ILVR_D2_SB(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @XORI_B2_128_SB(i32 %69, i32 %70)
  %72 = load i32, i32* %26, align 4
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %24, align 4
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @DPADD_SB2_SH(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %22, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @ST_D2(i32 %80, i32 0, i32 1, i32* %81, i32 %82)
  ret void
}

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB5(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_SB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B2_128_SB(i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
