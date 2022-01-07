; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_v_4_8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_vp9_lpf_msa.c_ff_loop_filter_v_4_8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_loop_filter_v_4_8_msa(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 4, %34
  %36 = sext i32 %35 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %21, align 8
  %41 = load i64, i64* %22, align 8
  %42 = load i64, i64* %23, align 8
  %43 = load i64, i64* %24, align 8
  %44 = load i64, i64* %28, align 8
  %45 = load i64, i64* %27, align 8
  %46 = load i64, i64* %26, align 8
  %47 = load i64, i64* %25, align 8
  %48 = call i32 @LD_UB8(i32* %38, i32 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @__msa_fill_b(i32 %49)
  store i64 %50, i64* %18, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @__msa_fill_b(i32 %51)
  store i64 %52, i64* %19, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @__msa_fill_b(i32 %53)
  store i64 %54, i64* %20, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* %22, align 8
  %57 = load i64, i64* %23, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i64, i64* %28, align 8
  %60 = load i64, i64* %27, align 8
  %61 = load i64, i64* %26, align 8
  %62 = load i64, i64* %25, align 8
  %63 = load i64, i64* %20, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %18, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %17, align 8
  %69 = call i32 @LPF_MASK_HEV(i64 %55, i64 %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68)
  %70 = load i64, i64* %23, align 8
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %28, align 8
  %73 = load i64, i64* %27, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %29, align 8
  %77 = load i64, i64* %30, align 8
  %78 = load i64, i64* %31, align 8
  %79 = load i64, i64* %32, align 8
  %80 = call i32 @VP9_LPF_FILTER4_4W(i64 %70, i64 %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* %29, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @__msa_copy_u_d(i32 %82, i32 0)
  store i32 %83, i32* %11, align 4
  %84 = load i64, i64* %30, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @__msa_copy_u_d(i32 %85, i32 0)
  store i32 %86, i32* %12, align 4
  %87 = load i64, i64* %31, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @__msa_copy_u_d(i32 %88, i32 0)
  store i32 %89, i32* %13, align 4
  %90 = load i64, i64* %32, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @__msa_copy_u_d(i32 %91, i32 0)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 2, %98
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @SD4(i32 %93, i32 %94, i32 %95, i32 %96, i32* %102, i32 %103)
  ret void
}

declare dso_local i32 @LD_UB8(i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i64 @__msa_fill_b(i32) #1

declare dso_local i32 @LPF_MASK_HEV(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @VP9_LPF_FILTER4_4W(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @__msa_copy_u_d(i32, i32) #1

declare dso_local i32 @SD4(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
