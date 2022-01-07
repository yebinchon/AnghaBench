; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss34dsp.c_ff_mss34_dct_put.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mss34dsp.c_ff_mss34_dct_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOP_ROW = common dso_local global i32 0, align 4
@SOP_COL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_mss34_dct_put(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %20, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 8
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* @SOP_ROW, align 4
  %17 = call i32 @DCT_TEMPLATE(i32* %15, i32 1, i32 %16, i32 13)
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 8
  store i32* %19, i32** %9, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load i32*, i32** %6, align 8
  store i32* %24, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %34, %23
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @SOP_COL, align 4
  %31 = call i32 @DCT_TEMPLATE(i32* %29, i32 8, i32 %30, i32 22)
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32*, i32** %6, align 8
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %68, %37
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 128
  %53 = call i32 @av_clip_uint8(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %4, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32* %67, i32** %9, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %39

71:                                               ; preds = %39
  ret void
}

declare dso_local i32 @DCT_TEMPLATE(i32*, i32, i32, i32) #1

declare dso_local i32 @av_clip_uint8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
