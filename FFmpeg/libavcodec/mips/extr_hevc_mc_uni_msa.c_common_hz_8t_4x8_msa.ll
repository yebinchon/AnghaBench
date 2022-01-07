; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_4x8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_8t_4x8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*)* @common_hz_8t_4x8_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_8t_4x8_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %29 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 16
  %31 = call i64 @LD_UB(i32* %30)
  store i64 %31, i64* %19, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -3
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @LD_SH(i32* %34)
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @SPLATI_H4_SB(i32 %36, i32 0, i32 1, i32 2, i32 3, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i64, i64* %19, align 8
  %43 = add nsw i64 %42, 2
  store i64 %43, i64* %20, align 8
  %44 = load i64, i64* %19, align 8
  %45 = add nsw i64 %44, 4
  store i64 %45, i64* %21, align 8
  %46 = load i64, i64* %19, align 8
  %47 = add nsw i64 %46, 6
  store i64 %47, i64* %22, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @LD_SB4(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %18, align 4
  %59 = call i32 @XORI_B4_128_SB(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 4, %60
  %62 = load i32*, i32** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %21, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %25, align 4
  %78 = load i32, i32* %26, align 4
  %79 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %65, i32 %66, i32 %67, i32 %68, i64 %69, i64 %70, i64 %71, i64 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @LD_SB4(i32* %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @XORI_B4_128_SB(i32 %87, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %20, align 8
  %98 = load i64, i64* %21, align 8
  %99 = load i64, i64* %22, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %28, align 4
  %106 = call i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32 %92, i32 %93, i32 %94, i32 %95, i64 %96, i64 %97, i64 %98, i64 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %26, align 4
  %109 = load i32, i32* %27, align 4
  %110 = load i32, i32* %28, align 4
  %111 = call i32 @SRARI_H4_SH(i32 %107, i32 %108, i32 %109, i32 %110, i32 6)
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %28, align 4
  %116 = call i32 @SAT_SH4_SH(i32 %112, i32 %113, i32 %114, i32 %115, i32 7)
  %117 = load i32, i32* %25, align 4
  %118 = load i32, i32* %26, align 4
  %119 = call i64 @PCKEV_XORI128_UB(i32 %117, i32 %118)
  store i64 %119, i64* %23, align 8
  %120 = load i64, i64* %23, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @ST_W4(i64 %120, i32 0, i32 1, i32 2, i32 3, i32* %121, i32 %122)
  %124 = load i32, i32* %27, align 4
  %125 = load i32, i32* %28, align 4
  %126 = call i64 @PCKEV_XORI128_UB(i32 %124, i32 %125)
  store i64 %126, i64* %23, align 8
  %127 = load i64, i64* %23, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %9, align 4
  %130 = mul nsw i32 4, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ST_W4(i64 %127, i32 0, i32 1, i32 2, i32 3, i32* %132, i32 %133)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H4_SB(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LD_SB4(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XORI_B4_128_SB(i32, i32, i32, i32) #1

declare dso_local i32 @HORIZ_8TAP_4WID_4VECS_FILT(i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SRARI_H4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SAT_SH4_SH(i32, i32, i32, i32, i32) #1

declare dso_local i64 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_W4(i64, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
