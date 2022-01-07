; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264chroma_msa.c_avc_chroma_hz_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chroma_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32, i32)* @avc_chroma_hz_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avc_chroma_hz_8x4_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @__msa_fill_b(i32 %25)
  store i32 %26, i32* %22, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @__msa_fill_b(i32 %27)
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* %22, align 4
  %30 = load i32, i32* %23, align 4
  %31 = call i32 @__msa_ilvr_b(i32 %29, i32 %30)
  store i32 %31, i32* %24, align 4
  %32 = load i32*, i32** @chroma_mask_arr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 32
  %34 = call i32 @LD_SB(i32* %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @LD_UB4(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @VSHF_B2_UB(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @VSHF_B2_UB(i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @DOTP_UB4_UH(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* %20, align 4
  %77 = call i32 @SLLI_4V(i32 %73, i32 %74, i32 %75, i32 %76, i32 3)
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = call i32 @SRARI_H4_UH(i32 %78, i32 %79, i32 %80, i32 %81, i32 6)
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @SAT_UH4_UH(i32 %83, i32 %84, i32 %85, i32 %86, i32 7)
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @PCKEV_B2_UB(i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %16, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ST_D4(i32 %95, i32 %96, i32 0, i32 1, i32 0, i32 1, i32* %97, i32 %98)
  ret void
}

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @__msa_ilvr_b(i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DOTP_UB4_UH(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLLI_4V(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_UH4_UH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B2_UB(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
