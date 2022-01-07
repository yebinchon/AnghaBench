; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct16x16_1_add_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_idct_msa.c_vp9_idct16x16_1_add_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cospi_16_64 = common dso_local global i32 0, align 4
@VP9_DCT_CONST_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @vp9_idct16x16_1_add_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp9_idct16x16_1_add_msa(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @cospi_16_64, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* @VP9_DCT_CONST_BITS, align 4
  %32 = call i32 @ROUND_POWER_OF_TWO(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @cospi_16_64, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* @VP9_DCT_CONST_BITS, align 4
  %37 = call i32 @ROUND_POWER_OF_TWO(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @ROUND_POWER_OF_TWO(i32 %38, i32 6)
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @__msa_fill_h(i32 %42)
  store i32 %43, i32* %9, align 4
  store i32 4, i32* %7, align 4
  br label %44

44:                                               ; preds = %48, %3
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %132

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @LD_UB4(i32* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @UNPCK_UB_SH(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @UNPCK_UB_SH(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @UNPCK_UB_SH(i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @UNPCK_UB_SH(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @ADD4(i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %17, align 4
  %97 = call i32 @ADD4(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @CLIP_SH8_0_255(i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %25, align 4
  %119 = call i32 @PCKEV_B4_UB(i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %23, align 4
  %122 = load i32, i32* %24, align 4
  %123 = load i32, i32* %25, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @ST_UB4(i32 %120, i32 %121, i32 %122, i32 %123, i32* %124, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = mul nsw i32 4, %127
  %129 = load i32*, i32** %5, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %5, align 8
  br label %44

132:                                              ; preds = %44
  ret void
}

declare dso_local i32 @ROUND_POWER_OF_TWO(i32, i32) #1

declare dso_local i32 @__msa_fill_h(i32) #1

declare dso_local i32 @LD_UB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @UNPCK_UB_SH(i32, i32, i32) #1

declare dso_local i32 @ADD4(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLIP_SH8_0_255(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_B4_UB(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ST_UB4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
