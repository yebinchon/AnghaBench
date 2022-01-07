; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_4t_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %25 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 16
  %27 = call i64 @LD_SB(i32* %26)
  store i64 %27, i64* %17, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @LD_SH(i32* %30)
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* %20, align 4
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %16, align 8
  %35 = call i32 @SPLATI_H2_SB(i32 %32, i32 0, i32 1, i64 %33, i64 %34)
  %36 = load i64, i64* %17, align 8
  %37 = add nsw i64 %36, 2
  store i64 %37, i64* %18, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @LD_SB4(i32* %38, i32 %39, i64 %40, i64 %41, i64 %42, i64 %43)
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 4, %45
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @XORI_B4_128_SB(i64 %50, i64 %51, i64 %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %17, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %16, align 8
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @LD_SB4(i32* %66, i32 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @XORI_B4_128_SB(i64 %73, i64 %74, i64 %75, i64 %76)
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %17, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %15, align 8
  %85 = load i64, i64* %16, align 8
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %24, align 4
  %88 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @SRARI_H4_SH(i32 %89, i32 %90, i32 %91, i32 %92, i32 6)
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = call i32 @SAT_SH4_SH(i32 %94, i32 %95, i32 %96, i32 %97, i32 7)
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* %22, align 4
  %101 = call i32 @PCKEV_XORI128_UB(i32 %99, i32 %100)
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ST_W4(i32 %102, i32 0, i32 1, i32 2, i32 3, i32* %103, i32 %104)
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %24, align 4
  %108 = call i32 @PCKEV_XORI128_UB(i32 %106, i32 %107)
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 4, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ST_W4(i32 %109, i32 0, i32 1, i32 2, i32 3, i32* %114, i32 %115)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
