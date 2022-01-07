; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_8x2mult_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_mc_uni_msa.c_common_hz_4t_8x2mult_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_hevc_mask_arr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32)* @common_hz_4t_8x2mult_msa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @common_hz_4t_8x2mult_msa(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load i32*, i32** @ff_hevc_mask_arr, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i64 @LD_SB(i32* %27)
  store i64 %28, i64* %18, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 -1
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @LD_SH(i32* %31)
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %21, align 4
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @SPLATI_H2_SB(i32 %33, i32 0, i32 1, i64 %34, i64 %35)
  %37 = load i64, i64* %18, align 8
  %38 = add nsw i64 %37, 2
  store i64 %38, i64* %19, align 8
  %39 = load i32, i32* %12, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %45, %6
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %13, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @LD_SB2(i32* %46, i32 %47, i64 %48, i64 %49)
  %51 = load i32, i32* %8, align 4
  %52 = mul nsw i32 2, %51
  %53 = load i32*, i32** %7, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %7, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @XORI_B2_128_SB(i64 %56, i64 %57)
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %23, align 4
  %67 = call i32 @VSHF_B2_SH(i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i32 %65, i32 %66)
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32, i32* %22, align 4
  %73 = load i32, i32* %23, align 4
  %74 = call i32 @DOTP_SB2_SH(i32 %68, i32 %69, i64 %70, i64 %71, i32 %72, i32 %73)
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %15, align 8
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* %19, align 8
  %81 = load i32, i32* %24, align 4
  %82 = load i32, i32* %25, align 4
  %83 = call i32 @VSHF_B2_SH(i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i32 %81, i32 %82)
  %84 = load i32, i32* %24, align 4
  %85 = load i32, i32* %25, align 4
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %23, align 4
  %90 = call i32 @DPADD_SB2_SH(i32 %84, i32 %85, i64 %86, i64 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %23, align 4
  %93 = call i32 @SRARI_H2_SH(i32 %91, i32 %92, i32 6)
  %94 = load i32, i32* %22, align 4
  %95 = load i32, i32* %23, align 4
  %96 = call i32 @SAT_SH2_SH(i32 %94, i32 %95, i32 7)
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = call i32 @PCKEV_XORI128_UB(i32 %97, i32 %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @ST_D2(i32 %100, i32 0, i32 1, i32* %101, i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 2, %104
  %106 = load i32*, i32** %9, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %9, align 8
  br label %41

109:                                              ; preds = %41
  ret void
}

declare dso_local i64 @LD_SB(i32*) #1

declare dso_local i32 @LD_SH(i32*) #1

declare dso_local i32 @SPLATI_H2_SB(i32, i32, i32, i64, i64) #1

declare dso_local i32 @LD_SB2(i32*, i32, i64, i64) #1

declare dso_local i32 @XORI_B2_128_SB(i64, i64) #1

declare dso_local i32 @VSHF_B2_SH(i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i32 @DOTP_SB2_SH(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @DPADD_SB2_SH(i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @SRARI_H2_SH(i32, i32, i32) #1

declare dso_local i32 @SAT_SH2_SH(i32, i32, i32) #1

declare dso_local i32 @PCKEV_XORI128_UB(i32, i32) #1

declare dso_local i32 @ST_D2(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
