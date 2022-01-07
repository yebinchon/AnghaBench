; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_dc_16x16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_intra_msa.c_ff_dc_16x16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_dc_16x16_msa(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @LD_UB(i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @LD_UB(i32* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i32 @HADD_UB2_UH(i64 %21, i64 %22, i64 %23, i64 %24)
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = add nsw i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i64 @__msa_hadd_u_w(i64 %29, i64 %30)
  store i64 %31, i64* %15, align 8
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %15, align 8
  %34 = call i64 @__msa_hadd_u_d(i64 %32, i64 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, i64* %16, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @__msa_pckev_w(i32 %36, i32 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %15, align 8
  %42 = call i64 @__msa_hadd_u_d(i64 %40, i64 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @__msa_srari_w(i32 %44, i32 5)
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i64 @__msa_splati_b(i32 %47, i32 0)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @ST_UB8(i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i32* %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 8, %60
  %62 = load i32*, i32** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ST_UB8(i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, i32* %73, i32 %74)
  ret void
}

declare dso_local i64 @LD_UB(i32*) #1

declare dso_local i32 @HADD_UB2_UH(i64, i64, i64, i64) #1

declare dso_local i64 @__msa_hadd_u_w(i64, i64) #1

declare dso_local i64 @__msa_hadd_u_d(i64, i64) #1

declare dso_local i64 @__msa_pckev_w(i32, i32) #1

declare dso_local i64 @__msa_srari_w(i32, i32) #1

declare dso_local i64 @__msa_splati_b(i32, i32) #1

declare dso_local i32 @ST_UB8(i64, i64, i64, i64, i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
