; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_and_aver_dst_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_2t_and_aver_dst_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_2t_and_aver_dst_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %28 = load i32*, i32** @mc_filt_mask_arr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 16
  %30 = call i32 @LD_SB(i32* %29)
  store i32 %30, i32* %19, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i64 @LD_UH(i32* %31)
  store i64 %32, i64* %27, align 8
  %33 = load i64, i64* %27, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @__msa_splati_h(i32 %34, i32 0)
  store i64 %35, i64* %20, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @LD_SB4(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @LW4(i32* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i64, i64* %21, align 8
  %55 = call i32 @INSERT_W4_UB(i32 %50, i32 %51, i32 %52, i32 %53, i64 %54)
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load i64, i64* %22, align 8
  %63 = load i64, i64* %23, align 8
  %64 = call i32 @VSHF_B2_UB(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i64 %62, i64 %63)
  %65 = load i64, i64* %22, align 8
  %66 = load i64, i64* %23, align 8
  %67 = load i64, i64* %20, align 8
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %25, align 8
  %70 = load i64, i64* %26, align 8
  %71 = call i32 @DOTP_UB2_UH(i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load i64, i64* %25, align 8
  %73 = load i64, i64* %26, align 8
  %74 = call i32 @SRARI_H2_UH(i64 %72, i64 %73, i32 7)
  %75 = load i64, i64* %26, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %25, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i64 @__msa_pckev_b(i32 %76, i32 %78)
  store i64 %79, i64* %24, align 8
  %80 = load i64, i64* %24, align 8
  %81 = load i64, i64* %21, align 8
  %82 = call i64 @__msa_aver_u_b(i64 %80, i64 %81)
  store i64 %82, i64* %24, align 8
  %83 = load i64, i64* %24, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ST_W4(i64 %83, i32 0, i32 1, i32 2, i32 3, i32* %84, i32 %85)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i64 @__msa_aver_u_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
