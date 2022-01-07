; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_autocorr_max.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g723_1dec.c_autocorr_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_MAX = common dso_local global i32 0, align 4
@FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32)* @autocorr_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autocorr_max(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @PITCH_MAX, align 4
  %18 = sub nsw i32 %17, 3
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @FFMIN(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %6
  %24 = load i32, i32* @FRAME_LEN, align 4
  %25 = load i32, i32* @PITCH_MAX, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 3
  %33 = call i32 @FFMIN(i32 %30, i32 %32)
  store i32 %33, i32* %13, align 4
  br label %37

34:                                               ; preds = %6
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 3
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 3
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %63, %37
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @ff_g723_1_dot_product(i32* %45, i32* %51, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %16, align 4
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %40

66:                                               ; preds = %40
  %67 = load i32, i32* %15, align 4
  ret i32 %67
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_g723_1_dot_product(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
