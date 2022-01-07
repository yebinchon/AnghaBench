; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_8t_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %27 = load i32*, i32** @mc_filt_mask_arr, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 16
  %29 = call i64 @LD_UB(i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 -3
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @LD_SH(i32* %32)
  store i32 %33, i32* %24, align 4
  %34 = load i32, i32* %24, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %21, align 4
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* %23, align 4
  %39 = call i32 @SPLATI_H4_SB(i32 %34, i32 0, i32 1, i32 2, i32 3, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %40, 2
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %42, 4
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %44, 6
  store i64 %45, i64* %14, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @LD_SB4(i32* %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @XORI_B4_128_SB(i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %21, align 4
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32, i32* %25, align 4
  %71 = load i32, i32* %26, align 4
  %72 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %58, i32 %59, i32 %60, i32 %61, i64 %62, i64 %63, i64 %64, i64 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %26, align 4
  %75 = call i32 @SRARI_H2_SH(i32 %73, i32 %74, i32 7)
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @SAT_SH2_SH(i32 %76, i32 %77, i32 7)
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %26, align 4
  %81 = call i64 @PCKEV_XORI128_UB(i32 %79, i32 %80)
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %15, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ST_W4(i64 %82, i32 0, i32 1, i32 2, i32 3, i32* %83, i32 %84)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
