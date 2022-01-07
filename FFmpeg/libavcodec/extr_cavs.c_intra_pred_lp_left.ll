; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_intra_pred_lp_left.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_intra_pred_lp_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @intra_pred_lp_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intra_pred_lp_left(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %35, %4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @LOWPASS(i32* %19, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  store i32 %22, i32* %30, align 4
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %11

38:                                               ; preds = %11
  ret void
}

declare dso_local i32 @LOWPASS(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
