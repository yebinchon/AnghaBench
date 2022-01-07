; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_8x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_8x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_8t_8x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_8x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %30 = load i32*, i32** @mc_filt_mask_arr, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = call i64 @LD_UB(i32* %31)
  store i64 %32, i64* %19, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 -3
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @LD_SH(i32* %35)
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @SPLATI_H4_SB(i32 %37, i32 0, i32 1, i32 2, i32 3, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i64, i64* %19, align 8
  %44 = add nsw i64 %43, 2
  store i64 %44, i64* %20, align 8
  %45 = load i64, i64* %19, align 8
  %46 = add nsw i64 %45, 4
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add nsw i64 %47, 6
  store i64 %48, i64* %22, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @LD_SB4(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @XORI_B4_128_SB(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i64, i64* %19, align 8
  %66 = load i64, i64* %20, align 8
  %67 = load i64, i64* %21, align 8
  %68 = load i64, i64* %22, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %26, align 4
  %74 = load i32, i32* %27, align 4
  %75 = load i32, i32* %28, align 4
  %76 = load i32, i32* %29, align 4
  %77 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %61, i32 %62, i32 %63, i32 %64, i64 %65, i64 %66, i64 %67, i64 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %26, align 4
  %79 = load i32, i32* %27, align 4
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* %29, align 4
  %82 = call i32 @SRARI_H4_SH(i32 %78, i32 %79, i32 %80, i32 %81, i32 7)
  %83 = load i32, i32* %26, align 4
  %84 = load i32, i32* %27, align 4
  %85 = load i32, i32* %28, align 4
  %86 = load i32, i32* %29, align 4
  %87 = call i32 @SAT_SH4_SH(i32 %83, i32 %84, i32 %85, i32 %86, i32 7)
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = call i64 @PCKEV_XORI128_UB(i32 %88, i32 %89)
  store i64 %90, i64* %23, align 8
  %91 = load i32, i32* %28, align 4
  %92 = load i32, i32* %29, align 4
  %93 = call i64 @PCKEV_XORI128_UB(i32 %91, i32 %92)
  store i64 %93, i64* %24, align 8
  %94 = load i64, i64* %23, align 8
  %95 = load i64, i64* %24, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @ST_D4(i64 %94, i64 %95, i32 0, i32 1, i32 0, i32 1, i32* %96, i32 %97)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i64, i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
