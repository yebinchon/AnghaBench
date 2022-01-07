; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_get_visual_weight.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo_enc.c_get_visual_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @get_visual_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_visual_weight(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %92, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %95

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %88, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %91

22:                                               ; preds = %19
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 1
  %25 = call i32 @FFMAX(i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %66, %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 2
  %30 = call i32 @FFMIN(i32 8, i32 %29)
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @FFMAX(i32 %34, i32 0)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %62, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 2
  %40 = call i32 @FFMIN(i32 8, i32 %39)
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %42
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %36

65:                                               ; preds = %36
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %26

69:                                               ; preds = %26
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  %77 = call i32 @ff_sqrt(i32 %76)
  %78 = mul nsw i32 36, %77
  %79 = load i32, i32* %13, align 4
  %80 = sdiv i32 %78, %79
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 8, %83
  %85 = add nsw i32 %82, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  store i32 %80, i32* %87, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %19

91:                                               ; preds = %19
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %15

95:                                               ; preds = %15
  ret void
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
