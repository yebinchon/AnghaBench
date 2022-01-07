; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_top_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264pred_msa.c_ff_h264_intra_pred_dc_top_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_intra_pred_dc_top_16x16_msa(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 0, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %3, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @LD_UB(i32* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @__msa_hadd_u_h(i64 %20, i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @__msa_hadd_u_w(i32 %23, i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @__msa_hadd_u_d(i64 %26, i64 %27)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i64, i64* %11, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @__msa_pckev_w(i32 %30, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @__msa_hadd_u_d(i64 %34, i64 %35)
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @__msa_srari_d(i32 %38, i32 4)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 @__msa_splati_b(i32 %41, i32 0)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ST_UB8(i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i32* %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 8, %54
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ST_UB8(i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i32* %67, i32 %68)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @__msa_hadd_u_h(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_w(i32, i32) #1

declare dso_local i64 @__msa_hadd_u_d(i64, i64) #1

declare dso_local i64 @__msa_pckev_w(i32, i32) #1

declare dso_local i64 @__msa_srari_d(i32, i32) #1

declare dso_local i64 @__msa_splati_b(i32, i32) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
