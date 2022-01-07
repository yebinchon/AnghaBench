; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_mc_msa.c_ff_put_vp8_epel8_h4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subpel_filters_msa = common dso_local global i32** null, align 8
@mc_filt_mask_arr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_put_vp8_epel8_h4_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
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
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %32 = load i32**, i32*** @subpel_filters_msa, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** @mc_filt_mask_arr, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i64 @LD_SB(i32* %39)
  store i64 %40, i64* %23, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @LD_SH(i32* %43)
  store i32 %44, i32* %27, align 4
  %45 = load i32, i32* %27, align 4
  %46 = load i64, i64* %21, align 8
  %47 = load i64, i64* %22, align 8
  %48 = call i32 @SPLATI_H2_SB(i32 %45, i32 0, i32 1, i64 %46, i64 %47)
  %49 = load i64, i64* %23, align 8
  %50 = add nsw i64 %49, 2
  store i64 %50, i64* %24, align 8
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 2
  store i32 %52, i32* %15, align 4
  br label %53

53:                                               ; preds = %57, %7
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %15, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %114

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = call i32 @LD_SB4(i32* %58, i32 %59, i64 %60, i64 %61, i64 %62, i64 %63)
  %65 = load i32, i32* %11, align 4
  %66 = mul nsw i32 4, %65
  %67 = load i32*, i32** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32* %69, i32** %10, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @XORI_B4_128_SB(i64 %70, i64 %71, i64 %72, i64 %73)
  %75 = load i64, i64* %17, align 8
  %76 = load i64, i64* %18, align 8
  %77 = load i64, i64* %19, align 8
  %78 = load i64, i64* %20, align 8
  %79 = load i64, i64* %23, align 8
  %80 = load i64, i64* %24, align 8
  %81 = load i64, i64* %21, align 8
  %82 = load i64, i64* %22, align 8
  %83 = load i32, i32* %28, align 4
  %84 = load i32, i32* %29, align 4
  %85 = load i32, i32* %30, align 4
  %86 = load i32, i32* %31, align 4
  %87 = call i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %28, align 4
  %89 = load i32, i32* %29, align 4
  %90 = load i32, i32* %30, align 4
  %91 = load i32, i32* %31, align 4
  %92 = call i32 @SRARI_H4_SH(i32 %88, i32 %89, i32 %90, i32 %91, i32 7)
  %93 = load i32, i32* %28, align 4
  %94 = load i32, i32* %29, align 4
  %95 = load i32, i32* %30, align 4
  %96 = load i32, i32* %31, align 4
  %97 = call i32 @SAT_SH4_SH(i32 %93, i32 %94, i32 %95, i32 %96, i32 7)
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %29, align 4
  %100 = call i32 @PCKEV_XORI128_UB(i32 %98, i32 %99)
  store i32 %100, i32* %25, align 4
  %101 = load i32, i32* %30, align 4
  %102 = load i32, i32* %31, align 4
  %103 = call i32 @PCKEV_XORI128_UB(i32 %101, i32 %102)
  store i32 %103, i32* %26, align 4
  %104 = load i32, i32* %25, align 4
  %105 = load i32, i32* %26, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @ST_D4(i32 %104, i32 %105, i32 0, i32 1, i32 0, i32 1, i32* %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 4, %109
  %111 = load i32*, i32** %8, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %8, align 8
  br label %53

114:                                              ; preds = %53
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB4(i32*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @XORI_B4_128_SB(i64, i64, i64, i64) #1

declare dso_local i32 @HORIZ_4TAP_8WID_4VECS_FILT(i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D4(i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
