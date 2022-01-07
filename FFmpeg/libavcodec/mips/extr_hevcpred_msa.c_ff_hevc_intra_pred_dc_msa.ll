; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_hevc_intra_pred_dc_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_hevc_intra_pred_dc_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_intra_pred_dc_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  switch i32 %13, label %41 [
    i32 2, label %14
    i32 3, label %21
    i32 4, label %28
    i32 5, label %35
  ]

14:                                               ; preds = %6
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @hevc_intra_pred_dc_4x4_msa(i32* %15, i32* %16, i32* %17, i32 %18, i32 %19)
  br label %41

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @hevc_intra_pred_dc_8x8_msa(i32* %22, i32* %23, i32* %24, i32 %25, i32 %26)
  br label %41

28:                                               ; preds = %6
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @hevc_intra_pred_dc_16x16_msa(i32* %29, i32* %30, i32* %31, i32 %32, i32 %33)
  br label %41

35:                                               ; preds = %6
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @hevc_intra_pred_dc_32x32_msa(i32* %36, i32* %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %6, %35, %28, %21, %14
  ret void
}

declare dso_local i32 @hevc_intra_pred_dc_4x4_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_dc_8x8_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_dc_16x16_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_dc_32x32_msa(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
