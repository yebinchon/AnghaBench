; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_v_44_16_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_v_44_16_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_loop_filter_v_44_16_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 4, %29
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %20, align 8
  %36 = load i64, i64* %21, align 8
  %37 = load i64, i64* %22, align 8
  %38 = load i64, i64* %23, align 8
  %39 = load i64, i64* %27, align 8
  %40 = load i64, i64* %26, align 8
  %41 = load i64, i64* %25, align 8
  %42 = load i64, i64* %24, align 8
  %43 = call i32 @LD_UB8(i32* %33, i32 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @__msa_fill_b(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 8
  %48 = call i64 @__msa_fill_b(i32 %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %17, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %14, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @__msa_ilvr_d(i32 %50, i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @__msa_fill_b(i32 %54)
  store i64 %55, i64* %15, align 8
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 8
  %58 = call i64 @__msa_fill_b(i32 %57)
  store i64 %58, i64* %18, align 8
  %59 = load i64, i64* %18, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @__msa_ilvr_d(i32 %60, i32 %62)
  store i64 %63, i64* %15, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @__msa_fill_b(i32 %64)
  store i64 %65, i64* %16, align 8
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 8
  %68 = call i64 @__msa_fill_b(i32 %67)
  store i64 %68, i64* %19, align 8
  %69 = load i64, i64* %19, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* %16, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i64 @__msa_ilvr_d(i32 %70, i32 %72)
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %20, align 8
  %75 = load i64, i64* %21, align 8
  %76 = load i64, i64* %22, align 8
  %77 = load i64, i64* %23, align 8
  %78 = load i64, i64* %27, align 8
  %79 = load i64, i64* %26, align 8
  %80 = load i64, i64* %25, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @LPF_MASK_HEV(i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %22, align 8
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* %27, align 8
  %92 = load i64, i64* %26, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %23, align 8
  %97 = load i64, i64* %27, align 8
  %98 = load i64, i64* %26, align 8
  %99 = call i32 @VP9_LPF_FILTER4_4W(i64 %89, i64 %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, i64 %98)
  %100 = load i64, i64* %22, align 8
  %101 = load i64, i64* %23, align 8
  %102 = load i64, i64* %27, align 8
  %103 = load i64, i64* %26, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ST_UB4(i64 %100, i64 %101, i64 %102, i64 %103, i32* %109, i32 %110)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i64 @__msa_ilvr_d(i32, i32) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP9_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @ST_UB4(i64, i64, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
