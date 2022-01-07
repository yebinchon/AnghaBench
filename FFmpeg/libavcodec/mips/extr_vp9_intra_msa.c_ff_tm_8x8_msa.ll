; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_tm_8x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_tm_8x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_tm_8x8_msa(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
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
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @LD_SB(i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @__msa_fill_h(i32 %33)
  store i64 %34, i64* %19, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %7, align 8
  store i32 2, i32* %10, align 4
  br label %37

37:                                               ; preds = %41, %4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %10, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @LW(i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 24
  %46 = call i32 @__msa_fill_b(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, 16
  %49 = call i32 @__msa_fill_b(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = ashr i32 %50, 8
  %52 = call i32 @__msa_fill_b(i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @__msa_fill_b(i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 -4
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %25, align 4
  %67 = load i32, i32* %26, align 4
  %68 = load i32, i32* %27, align 4
  %69 = call i32 @ILVR_B4_UB(i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %25, align 4
  %72 = load i32, i32* %26, align 4
  %73 = load i32, i32* %27, align 4
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i64, i64* %22, align 8
  %77 = load i64, i64* %23, align 8
  %78 = call i32 @HADD_UB4_UH(i32 %70, i32 %71, i32 %72, i32 %73, i64 %74, i64 %75, i64 %76, i64 %77)
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %20, align 8
  %82 = load i64, i64* %21, align 8
  %83 = call i32 @IPRED_SUBS_UH2_UH(i64 %79, i64 %80, i64 %81, i64 %82)
  %84 = load i64, i64* %19, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %22, align 8
  %87 = load i64, i64* %23, align 8
  %88 = call i32 @IPRED_SUBS_UH2_UH(i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %20, align 8
  %90 = load i64, i64* %21, align 8
  %91 = load i64, i64* %22, align 8
  %92 = load i64, i64* %23, align 8
  %93 = call i32 @SAT_UH4_UH(i64 %89, i64 %90, i64 %91, i64 %92, i32 7)
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* %22, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @PCKEV_B2_SB(i64 %94, i64 %95, i64 %96, i64 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @ST_D4(i32 %101, i32 %102, i32 0, i32 1, i32 0, i32 1, i32* %103, i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = mul nsw i32 4, %106
  %108 = load i32*, i32** %5, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %5, align 8
  br label %37

111:                                              ; preds = %37
  ret void
}

declare dso_local i32 @LD_SB(i32*) #1

declare dso_local i64 @__msa_fill_h(i32) #1

declare dso_local i32 @LW(i32*) #1

declare dso_local i32 @__msa_fill_b(i32) #1

declare dso_local i32 @ILVR_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @HADD_UB4_UH(i32, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i32 @IPRED_SUBS_UH2_UH(i64, i64, i64, i64) #1

declare dso_local i32 @SAT_UH4_UH(i64, i64, i64, i64, i32) #1

declare dso_local i32 @PCKEV_B2_SB(i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
