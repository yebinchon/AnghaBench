; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_2t_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_2t_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_2t_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %34 = load i32*, i32** @mc_filt_mask_arr, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 16
  %36 = call i32 @LD_SB(i32* %35)
  store i32 %36, i32* %24, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @LD_UH(i32* %37)
  store i64 %38, i64* %33, align 8
  %39 = load i64, i64* %33, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i64 @__msa_splati_h(i32 %40, i32 0)
  store i64 %41, i64* %15, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %23, align 4
  %52 = call i32 @LD_SB8(i32* %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %24, align 4
  %58 = load i32, i32* %24, align 4
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @VSHF_B2_UB(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i64 %59, i64 %60)
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %24, align 4
  %67 = load i32, i32* %24, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @VSHF_B2_UB(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i64 %68, i64 %69)
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %29, align 8
  %80 = load i64, i64* %30, align 8
  %81 = load i64, i64* %31, align 8
  %82 = load i64, i64* %32, align 8
  %83 = call i32 @DOTP_UB4_UH(i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i64, i64* %29, align 8
  %85 = load i64, i64* %30, align 8
  %86 = load i64, i64* %31, align 8
  %87 = load i64, i64* %32, align 8
  %88 = call i32 @SRARI_H4_UH(i64 %84, i64 %85, i64 %86, i64 %87, i32 7)
  %89 = load i64, i64* %29, align 8
  %90 = load i64, i64* %29, align 8
  %91 = load i64, i64* %30, align 8
  %92 = load i64, i64* %30, align 8
  %93 = load i64, i64* %31, align 8
  %94 = load i64, i64* %31, align 8
  %95 = load i64, i64* %32, align 8
  %96 = load i64, i64* %32, align 8
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* %27, align 4
  %100 = load i32, i32* %28, align 4
  %101 = call i32 @PCKEV_B4_SB(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %25, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @ST_W2(i32 %102, i32 0, i32 1, i32* %103, i32 %104)
  %106 = load i32, i32* %26, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 2, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ST_W2(i32 %106, i32 0, i32 1, i32* %111, i32 %112)
  %114 = load i32, i32* %27, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = mul nsw i32 4, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @ST_W2(i32 %114, i32 0, i32 1, i32* %119, i32 %120)
  %122 = load i32, i32* %28, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 6, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @ST_W2(i32 %122, i32 0, i32 1, i32* %127, i32 %128)
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @LD_UH(i32*) #1

declare dso_local i64 @__msa_splati_h(i32, i32) #1

declare dso_local i32 @LD_SB8(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VSHF_B2_UB(i32, i32, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @DOTP_UB4_UH(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @SRARI_H4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B4_SB(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ST_W2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
