; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_lpf_sao_msa.c_ff_hevc_sao_band_filter_0_8_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevc_lpf_sao_msa.c_ff_hevc_sao_band_filter_0_8_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_sao_band_filter_0_8_msa(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %15, align 4
  %18 = ashr i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = srem i32 %28, 16
  %30 = sub nsw i32 %27, %29
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @hevc_sao_band_filter_16multiple_msa(i32* %21, i32 %22, i32* %23, i32 %24, i32 %25, i32* %26, i32 %30, i32 %31)
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = srem i32 %34, 16
  %36 = sub nsw i32 %33, %35
  %37 = load i32*, i32** %9, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = srem i32 %41, 16
  %43 = sub nsw i32 %40, %42
  %44 = load i32*, i32** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = srem i32 %47, 16
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %20, %8
  %50 = load i32, i32* %15, align 4
  %51 = ashr i32 %50, 3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @hevc_sao_band_filter_8width_msa(i32* %54, i32 %55, i32* %56, i32 %57, i32 %58, i32* %59, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32* %65, i32** %10, align 8
  %66 = load i32, i32* %15, align 4
  %67 = srem i32 %66, 8
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %53, %49
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @hevc_sao_band_filter_4width_msa(i32* %72, i32 %73, i32* %74, i32 %75, i32 %76, i32* %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @hevc_sao_band_filter_16multiple_msa(i32*, i32, i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @hevc_sao_band_filter_8width_msa(i32*, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @hevc_sao_band_filter_4width_msa(i32*, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
