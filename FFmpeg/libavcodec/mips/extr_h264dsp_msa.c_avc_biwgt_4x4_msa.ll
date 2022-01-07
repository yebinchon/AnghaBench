; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_biwgt_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_msa.c_avc_biwgt_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32, i32, i32)* @avc_biwgt_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_biwgt_4x4_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
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
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  %32 = or i32 %31, 1
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = mul nsw i32 128, %37
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @__msa_fill_b(i32 %41)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @__msa_fill_b(i32 %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @__msa_fill_h(i32 %45)
  store i32 %46, i32* %29, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @__msa_fill_h(i32 %48)
  store i32 %49, i32* %28, align 4
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @__msa_ilvev_b(i32 %50, i32 %51)
  store i32 %52, i32* %21, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @LW4(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i64, i64* %24, align 8
  %65 = call i32 @INSERT_W4_UB(i32 %60, i32 %61, i32 %62, i32 %63, i64 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = call i32 @LW4(i32* %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i64, i64* %25, align 8
  %78 = call i32 @INSERT_W4_UB(i32 %73, i32 %74, i32 %75, i32 %76, i64 %77)
  %79 = load i64, i64* %24, align 8
  %80 = load i64, i64* %25, align 8
  %81 = call i32 @XORI_B2_128_UB(i64 %79, i64 %80)
  %82 = load i64, i64* %25, align 8
  %83 = load i64, i64* %24, align 8
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %23, align 4
  %86 = call i32 @ILVRL_B2_SB(i64 %82, i64 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %29, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load i32, i32* %22, align 4
  %90 = call i32 @__msa_dpadd_s_h(i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %29, align 4
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %23, align 4
  %94 = call i32 @__msa_dpadd_s_h(i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %27, align 4
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %26, align 4
  %97 = ashr i32 %96, %95
  store i32 %97, i32* %26, align 4
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %27, align 4
  %100 = ashr i32 %99, %98
  store i32 %100, i32* %27, align 4
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %27, align 4
  %103 = call i32 @CLIP_SH2_0_255(i32 %101, i32 %102)
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %26, align 4
  %106 = call i64 @__msa_pckev_b(i32 %104, i32 %105)
  store i64 %106, i64* %25, align 8
  %107 = load i64, i64* %25, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @ST_W4(i64 %107, i32 0, i32 1, i32 2, i32 3, i32* %108, i32 %109)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @__msa_ilvev_b(i32, i32) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @XORI_B2_128_UB(i64, i64) #1

declare dso_local i32 @ILVRL_B2_SB(i64, i64, i32, i32) #1

declare dso_local i32 @__msa_dpadd_s_h(i32, i32, i32) #1

declare dso_local i32 @CLIP_SH2_0_255(i32, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
