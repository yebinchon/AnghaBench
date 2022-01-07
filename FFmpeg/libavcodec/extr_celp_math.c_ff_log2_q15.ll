; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_celp_math.c_ff_log2_q15.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_celp_math.c_ff_log2_q15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tab_log2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_log2_q15(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @av_log2(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 31, %8
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 2080374784
  %14 = ashr i32 %13, 26
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 67106816
  %17 = ashr i32 %16, 11
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** @tab_log2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** @tab_log2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @tab_log2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %29, %34
  %36 = mul nsw i32 %23, %35
  %37 = ashr i32 %36, 15
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 %40, 15
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %41, %42
  ret i32 %43
}

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
