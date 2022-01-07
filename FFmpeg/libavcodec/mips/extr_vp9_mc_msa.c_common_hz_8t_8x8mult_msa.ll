; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_8x8mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_8x8mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_8x8mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_8x8mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %33 = load i32*, i32** @mc_filt_mask_arr, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i64 @LD_UB(i32* %34)
  store i64 %35, i64* %22, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 -3
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @LD_SH(i32* %38)
  store i32 %39, i32* %28, align 4
  %40 = load i32, i32* %28, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %20, align 4
  %44 = load i32, i32* %21, align 4
  %45 = call i32 @SPLATI_H4_SB(i32 %40, i32 0, i32 1, i32 2, i32 3, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i64, i64* %22, align 8
  %47 = add nsw i64 %46, 2
  store i64 %47, i64* %23, align 8
  %48 = load i64, i64* %22, align 8
  %49 = add nsw i64 %48, 4
  store i64 %49, i64* %24, align 8
  %50 = load i64, i64* %22, align 8
  %51 = add nsw i64 %50, 6
  store i64 %51, i64* %25, align 8
  %52 = load i32, i32* %12, align 4
  %53 = ashr i32 %52, 2
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %58, %6
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %13, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %119

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @LD_SB4(i32* %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @XORI_B4_128_SB(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 4, %71
  %73 = load i32*, i32** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %23, align 8
  %82 = load i64, i64* %24, align 8
  %83 = load i64, i64* %25, align 8
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %29, align 4
  %89 = load i32, i32* %30, align 4
  %90 = load i32, i32* %31, align 4
  %91 = load i32, i32* %32, align 4
  %92 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %76, i32 %77, i32 %78, i32 %79, i64 %80, i64 %81, i64 %82, i64 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %29, align 4
  %94 = load i32, i32* %30, align 4
  %95 = load i32, i32* %31, align 4
  %96 = load i32, i32* %32, align 4
  %97 = call i32 @SRARI_H4_SH(i32 %93, i32 %94, i32 %95, i32 %96, i32 7)
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %30, align 4
  %100 = load i32, i32* %31, align 4
  %101 = load i32, i32* %32, align 4
  %102 = call i32 @SAT_SH4_SH(i32 %98, i32 %99, i32 %100, i32 %101, i32 7)
  %103 = load i32, i32* %29, align 4
  %104 = load i32, i32* %30, align 4
  %105 = call i64 @PCKEV_XORI128_UB(i32 %103, i32 %104)
  store i64 %105, i64* %26, align 8
  %106 = load i32, i32* %31, align 4
  %107 = load i32, i32* %32, align 4
  %108 = call i64 @PCKEV_XORI128_UB(i32 %106, i32 %107)
  store i64 %108, i64* %27, align 8
  %109 = load i64, i64* %26, align 8
  %110 = load i64, i64* %27, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ST_D4(i64 %109, i64 %110, i32 0, i32 1, i32 0, i32 1, i32* %111, i32 %112)
  %114 = load i32, i32* %10, align 4
  %115 = mul nsw i32 4, %114
  %116 = load i32*, i32** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %9, align 8
  br label %54

119:                                              ; preds = %54
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
