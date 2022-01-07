; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_pred_intra_pred_angular_3_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_hevcpred_msa.c_ff_pred_intra_pred_angular_3_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_pred_intra_pred_angular_3_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @hevc_intra_pred_horiz_32x32_msa(i32* %16, i32* %17, i32* %18, i32 %19)
  br label %48

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 26
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @intra_predict_vert_32x32_msa(i32* %25, i32* %26, i32 %27)
  br label %47

29:                                               ; preds = %21
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %30, 18
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @hevc_intra_pred_angular_upper_32width_msa(i32* %33, i32* %34, i32* %35, i32 %36, i32 %37)
  br label %46

39:                                               ; preds = %29
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @hevc_intra_pred_angular_lower_32width_msa(i32* %40, i32* %41, i32* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %15
  ret void
}

declare dso_local i32 @hevc_intra_pred_horiz_32x32_msa(i32*, i32*, i32*, i32) #1

declare dso_local i32 @intra_predict_vert_32x32_msa(i32*, i32*, i32) #1

declare dso_local i32 @hevc_intra_pred_angular_upper_32width_msa(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hevc_intra_pred_angular_lower_32width_msa(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
