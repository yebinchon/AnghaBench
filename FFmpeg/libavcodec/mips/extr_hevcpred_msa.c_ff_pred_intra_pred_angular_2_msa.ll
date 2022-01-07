; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_pred_intra_pred_angular_2_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_pred_intra_pred_angular_2_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_pred_intra_pred_angular_2_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %22

15:                                               ; preds = %6
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @hevc_intra_pred_horiz_16x16_msa(i32* %16, i32* %17, i32* %18, i32 %19, i32 %20)
  br label %51

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 26
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @hevc_intra_pred_vert_16x16_msa(i32* %26, i32* %27, i32* %28, i32 %29, i32 %30)
  br label %50

32:                                               ; preds = %22
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 18
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @hevc_intra_pred_angular_upper_16width_msa(i32* %36, i32* %37, i32* %38, i32 %39, i32 %40)
  br label %49

42:                                               ; preds = %32
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @hevc_intra_pred_angular_lower_16width_msa(i32* %43, i32* %44, i32* %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @hevc_intra_pred_horiz_16x16_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_vert_16x16_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_angular_upper_16width_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_angular_lower_16width_msa(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
