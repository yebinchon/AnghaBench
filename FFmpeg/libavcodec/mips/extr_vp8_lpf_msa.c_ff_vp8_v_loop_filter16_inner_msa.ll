; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter16_inner_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp8_lpf_msa.c_ff_vp8_v_loop_filter16_inner_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_vp8_v_loop_filter16_inner_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 4, %26
  %28 = sext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %17, align 8
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* %19, align 8
  %35 = load i64, i64* %20, align 8
  %36 = load i64, i64* %24, align 8
  %37 = load i64, i64* %23, align 8
  %38 = load i64, i64* %22, align 8
  %39 = load i64, i64* %21, align 8
  %40 = call i32 @LD_UB8(i32* %30, i32 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39)
  %41 = load i32, i32* %10, align 4
  %42 = call i64 @__msa_fill_b(i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @__msa_fill_b(i32 %43)
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @__msa_fill_b(i32 %45)
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %20, align 8
  %51 = load i64, i64* %24, align 8
  %52 = load i64, i64* %23, align 8
  %53 = load i64, i64* %22, align 8
  %54 = load i64, i64* %21, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @LPF_MASK_HEV(i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60)
  %62 = load i64, i64* %19, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %24, align 8
  %65 = load i64, i64* %23, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @VP8_LPF_FILTER4_4W(i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67)
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %20, align 8
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %23, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ST_UB4(i64 %69, i64 %70, i64 %71, i64 %72, i32* %78, i32 %79)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP8_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
