; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_8x2multiple_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcdsp_msa.c_hevc_hz_4t_8x2multiple_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @hevc_hz_4t_8x2multiple_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hevc_hz_4t_8x2multiple_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load i32, i32* @ff_hevc_mask_arr, align 4
  %27 = call i64 @LD_SB(i32 %26)
  store i64 %27, i64* %20, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @LD_SH(i32* %30)
  store i32 %31, i32* %24, align 4
  %32 = load i32, i32* %24, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @SPLATI_H2_SH(i32 %32, i32 0, i32 1, i32 %33, i32 %34)
  %36 = load i64, i64* %20, align 8
  %37 = add nsw i64 %36, 2
  store i64 %37, i64* %21, align 8
  %38 = call i32 @__msa_ldi_h(i32 128)
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %25, align 4
  %40 = shl i32 %39, 6
  store i32 %40, i32* %25, align 4
  %41 = load i32, i32* %12, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %47, %6
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %13, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %105

47:                                               ; preds = %43
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @LD_SB2(i32* %48, i32 %49, i64 %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 2, %53
  %55 = load i32*, i32** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %7, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* %19, align 8
  %60 = call i32 @XORI_B2_128_SB(i64 %58, i64 %59)
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %18, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %20, align 8
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* %22, align 8
  %68 = load i64, i64* %23, align 8
  %69 = call i32 @VSHF_B2_SB(i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i32, i32* %25, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i64, i64* %22, align 8
  %72 = load i64, i64* %23, align 8
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @DPADD_SB2_SH(i64 %71, i64 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i64, i64* %19, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %19, align 8
  %82 = load i64, i64* %20, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %22, align 8
  %85 = load i64, i64* %23, align 8
  %86 = call i32 @VSHF_B2_SB(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = load i32, i32* %25, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i64, i64* %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @DPADD_SB2_SH(i64 %88, i64 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ST_SH2(i32 %95, i32 %96, i32* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 2, %100
  %102 = load i32*, i32** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %9, align 8
  br label %43

105:                                              ; preds = %43
  ret void
}

declare dso_local i64 @LD_SB(i32) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @__msa_ldi_h(i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SB(i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @DPADD_SB2_SH(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_SH2(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
