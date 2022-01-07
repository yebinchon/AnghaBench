; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_8w_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_mc_msa.c_common_hz_8t_and_aver_dst_8w_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mc_filt_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_8t_and_aver_dst_8w_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_and_aver_dst_8w_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
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
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %37 = load i32*, i32** @mc_filt_mask_arr, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = call i64 @LD_UB(i32* %38)
  store i64 %39, i64* %26, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -3
  store i32* %41, i32** %7, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @LD_SH(i32* %42)
  store i32 %43, i32* %32, align 4
  %44 = load i32, i32* %32, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* %23, align 4
  %47 = load i32, i32* %24, align 4
  %48 = load i32, i32* %25, align 4
  %49 = call i32 @SPLATI_H4_SB(i32 %44, i32 0, i32 1, i32 2, i32 3, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i64, i64* %26, align 8
  %51 = add nsw i64 %50, 2
  store i64 %51, i64* %27, align 8
  %52 = load i64, i64* %26, align 8
  %53 = add nsw i64 %52, 4
  store i64 %53, i64* %28, align 8
  %54 = load i64, i64* %26, align 8
  %55 = add nsw i64 %54, 6
  store i64 %55, i64* %29, align 8
  %56 = load i32, i32* %12, align 4
  %57 = ashr i32 %56, 2
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %62, %6
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %13, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %136

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @LD_SB4(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %21, align 4
  %74 = call i32 @XORI_B4_128_SB(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 4, %75
  %77 = load i32*, i32** %7, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %7, align 8
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i64, i64* %26, align 8
  %85 = load i64, i64* %27, align 8
  %86 = load i64, i64* %28, align 8
  %87 = load i64, i64* %29, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %24, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %33, align 4
  %93 = load i32, i32* %34, align 4
  %94 = load i32, i32* %35, align 4
  %95 = load i32, i32* %36, align 4
  %96 = call i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32 %80, i32 %81, i32 %82, i32 %83, i64 %84, i64 %85, i64 %86, i64 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @LD4(i32* %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i64, i64* %30, align 8
  %107 = call i32 @INSERT_D2_UB(i32 %104, i32 %105, i64 %106)
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i64, i64* %31, align 8
  %111 = call i32 @INSERT_D2_UB(i32 %108, i32 %109, i64 %110)
  %112 = load i32, i32* %33, align 4
  %113 = load i32, i32* %34, align 4
  %114 = load i32, i32* %35, align 4
  %115 = load i32, i32* %36, align 4
  %116 = call i32 @SRARI_H4_SH(i32 %112, i32 %113, i32 %114, i32 %115, i32 7)
  %117 = load i32, i32* %33, align 4
  %118 = load i32, i32* %34, align 4
  %119 = load i32, i32* %35, align 4
  %120 = load i32, i32* %36, align 4
  %121 = call i32 @SAT_SH4_SH(i32 %117, i32 %118, i32 %119, i32 %120, i32 7)
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %34, align 4
  %124 = load i32, i32* %35, align 4
  %125 = load i32, i32* %36, align 4
  %126 = load i64, i64* %30, align 8
  %127 = load i64, i64* %31, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @CONVERT_UB_AVG_ST8x4_UB(i32 %122, i32 %123, i32 %124, i32 %125, i64 %126, i64 %127, i32* %128, i32 %129)
  %131 = load i32, i32* %10, align 4
  %132 = mul nsw i32 4, %131
  %133 = load i32*, i32** %9, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %9, align 8
  br label %58

136:                                              ; preds = %58
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_8WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INSERT_D2_UB(i32, i32, i64) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CONVERT_UB_AVG_ST8x4_UB(i32, i32, i32, i32, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
