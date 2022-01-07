; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hz_4t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_common_hz_4t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_4t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %23 = load i32*, i32** @mc_filt_mask_arr, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 16
  %25 = call i64 @LD_SB(i32* %24)
  store i64 %25, i64* %17, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -1
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @LD_SH(i32* %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %16, align 8
  %33 = call i32 @SPLATI_H2_SB(i32 %30, i32 0, i32 1, i64 %31, i64 %32)
  %34 = load i64, i64* %17, align 8
  %35 = add nsw i64 %34, 2
  store i64 %35, i64* %18, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @LD_SB4(i32* %36, i32 %37, i64 %38, i64 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @XORI_B4_128_SB(i64 %43, i64 %44, i64 %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = call i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i32 %56, i32 %57)
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @SRARI_H2_SH(i32 %59, i32 %60, i32 7)
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @SAT_SH2_SH(i32 %62, i32 %63, i32 7)
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @PCKEV_XORI128_UB(i32 %65, i32 %66)
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ST_W4(i32 %68, i32 0, i32 1, i32 2, i32 3, i32* %69, i32 %70)
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_4WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
