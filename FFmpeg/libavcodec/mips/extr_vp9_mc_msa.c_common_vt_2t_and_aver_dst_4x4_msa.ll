; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_4x4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_vt_2t_and_aver_dst_4x4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_vt_2t_and_aver_dst_4x4_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_vt_2t_and_aver_dst_4x4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @LD_SH(i32* %32)
  store i32 %33, i32* %29, align 4
  %34 = load i32, i32* %29, align 4
  %35 = call i64 @__msa_splati_h(i32 %34, i32 0)
  store i64 %35, i64* %22, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %18, align 4
  %42 = call i32 @LD_SB4(i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 4, %43
  %45 = load i32*, i32** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %6, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @LD_SB(i32* %48)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @LW4(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i64, i64* %20, align 8
  %66 = call i32 @INSERT_W4_UB(i32 %61, i32 %62, i32 %63, i32 %64, i64 %65)
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %25, align 4
  %76 = load i32, i32* %27, align 4
  %77 = load i32, i32* %26, align 4
  %78 = load i32, i32* %28, align 4
  %79 = call i32 @ILVR_B4_SB(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %27, align 4
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %26, align 4
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* %24, align 8
  %86 = call i32 @ILVR_D2_UB(i32 %80, i32 %81, i32 %82, i32 %83, i64 %84, i64 %85)
  %87 = load i64, i64* %23, align 8
  %88 = load i64, i64* %24, align 8
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %22, align 8
  %91 = load i64, i64* %30, align 8
  %92 = load i64, i64* %31, align 8
  %93 = call i32 @DOTP_UB2_UH(i64 %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92)
  %94 = load i64, i64* %30, align 8
  %95 = load i64, i64* %31, align 8
  %96 = call i32 @SRARI_H2_UH(i64 %94, i64 %95, i32 7)
  %97 = load i64, i64* %30, align 8
  %98 = load i64, i64* %31, align 8
  %99 = call i32 @SAT_UH2_UH(i64 %97, i64 %98, i32 7)
  %100 = load i64, i64* %31, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %30, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @__msa_pckev_b(i32 %101, i32 %103)
  store i64 %104, i64* %21, align 8
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %20, align 8
  %107 = call i64 @__msa_aver_u_b(i64 %105, i64 %106)
  store i64 %107, i64* %21, align 8
  %108 = load i64, i64* %21, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @ST_W4(i64 %108, i32 0, i32 1, i32 2, i32 3, i32* %109, i32 %110)
  ret void
}

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i32 @LW4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_W4_UB(i32, i32, i32, i32, i64) #1

declare dso_local i32 @ILVR_B4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ILVR_D2_UB(i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB2_UH(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H2_UH(i64, i64, i32) #1

declare dso_local i32 @SAT_UH2_UH(i64, i64, i32) #1

declare dso_local i64 @__msa_pckev_b(i32, i32) #1

declare dso_local i64 @__msa_aver_u_b(i64, i64) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
