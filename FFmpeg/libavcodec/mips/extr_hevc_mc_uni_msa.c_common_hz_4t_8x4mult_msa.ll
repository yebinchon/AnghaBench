; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_8x4mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_8x4mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_8x4mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_8x4mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %29 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = call i64 @LD_SB(i32* %30)
  store i64 %31, i64* %20, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i64, i64* %18, align 8
  %38 = load i64, i64* %19, align 8
  %39 = call i32 @SPLATI_H2_SB(i32 %36, i32 0, i32 1, i64 %37, i64 %38)
  %40 = load i64, i64* %20, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %21, align 8
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %42, 2
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %48, %6
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %13, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %105

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @LD_SB4(i32* %49, i32 %50, i64 %51, i64 %52, i64 %53, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 4, %56
  %58 = load i32*, i32** %7, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32* %60, i32** %7, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i32 @XORI_B4_128_SB(i64 %61, i64 %62, i64 %63, i64 %64)
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %26, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %28, align 4
  %78 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i64 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = call i32 @SRARI_H4_SH(i32 %79, i32 %80, i32 %81, i32 %82, i32 6)
  %84 = load i32, i32* %25, align 4
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %28, align 4
  %88 = call i32 @SAT_SH4_SH(i32 %84, i32 %85, i32 %86, i32 %87, i32 7)
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %26, align 4
  %91 = call i32 @PCKEV_XORI128_UB(i32 %89, i32 %90)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %27, align 4
  %93 = load i32, i32* %28, align 4
  %94 = call i32 @PCKEV_XORI128_UB(i32 %92, i32 %93)
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ST_D4(i32 %95, i32 %96, i32 0, i32 1, i32 0, i32 1, i32* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 4, %100
  %102 = load i32*, i32** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %9, align 8
  br label %44

105:                                              ; preds = %44
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
