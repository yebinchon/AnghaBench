; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_16w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_16w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_16w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_16w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %32 = load i32*, i32** @mc_filt_mask_arr, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i64 @LD_UB(i32* %33)
  store i64 %34, i64* %22, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -3
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @LD_SH(i32* %37)
  store i32 %38, i32* %27, align 4
  %39 = load i32, i32* %27, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* %19, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @SPLATI_H4_SB(i32 %39, i32 0, i32 1, i32 2, i32 3, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i64, i64* %22, align 8
  %46 = add nsw i64 %45, 2
  store i64 %46, i64* %23, align 8
  %47 = load i64, i64* %22, align 8
  %48 = add nsw i64 %47, 4
  store i64 %48, i64* %24, align 8
  %49 = load i64, i64* %22, align 8
  %50 = add nsw i64 %49, 6
  store i64 %50, i64* %25, align 8
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %57, %6
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %13, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %126

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @LD_SB2(i32* %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @LD_SB2(i32* %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = call i32 @XORI_B4_128_SB(i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 2, %74
  %76 = load i32*, i32** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %7, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* %24, align 8
  %86 = load i64, i64* %25, align 8
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %21, align 4
  %91 = load i32, i32* %28, align 4
  %92 = load i32, i32* %29, align 4
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %31, align 4
  %95 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %79, i32 %80, i32 %81, i32 %82, i64 %83, i64 %84, i64 %85, i64 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %28, align 4
  %97 = load i32, i32* %29, align 4
  %98 = load i32, i32* %30, align 4
  %99 = load i32, i32* %31, align 4
  %100 = call i32 @SRARI_H4_SH(i32 %96, i32 %97, i32 %98, i32 %99, i32 7)
  %101 = load i32, i32* %28, align 4
  %102 = load i32, i32* %29, align 4
  %103 = load i32, i32* %30, align 4
  %104 = load i32, i32* %31, align 4
  %105 = call i32 @SAT_SH4_SH(i32 %101, i32 %102, i32 %103, i32 %104, i32 7)
  %106 = load i32, i32* %28, align 4
  %107 = load i32, i32* %29, align 4
  %108 = call i64 @PCKEV_XORI128_UB(i32 %106, i32 %107)
  store i64 %108, i64* %26, align 8
  %109 = load i64, i64* %26, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ST_UB(i64 %109, i32* %110)
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %9, align 8
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %31, align 4
  %118 = call i64 @PCKEV_XORI128_UB(i32 %116, i32 %117)
  store i64 %118, i64* %26, align 8
  %119 = load i64, i64* %26, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @ST_UB(i64 %119, i32* %120)
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %9, align 8
  br label %53

126:                                              ; preds = %53
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB2(i32*, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_UB(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
