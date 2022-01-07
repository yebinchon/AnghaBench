; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_fill_arrays.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_imgutils.c_av_image_fill_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_image_fill_arrays(i32** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @av_image_check_size(i32 %18, i32 %19, i32 0, i32* null)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* %16, align 4
  store i32 %24, i32* %8, align 4
  br label %60

25:                                               ; preds = %7
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @av_image_fill_linesizes(i32* %26, i32 %27, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %8, align 4
  br label %60

34:                                               ; preds = %25
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %50, %34
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @FFALIGN(i32 %43, i32 %44)
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load i32**, i32*** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @av_image_fill_pointers(i32** %54, i32 %55, i32 %56, i32* %57, i32* %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %32, %23
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @av_image_check_size(i32, i32, i32, i32*) #1

declare dso_local i32 @av_image_fill_linesizes(i32*, i32, i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

declare dso_local i32 @av_image_fill_pointers(i32**, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
