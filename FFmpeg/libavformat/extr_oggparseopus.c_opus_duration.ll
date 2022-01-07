; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseopus.c_opus_duration.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_oggparseopus.c_opus_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opus_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_duration(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = lshr i32 %14, 3
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %18, 12
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 3
  %23 = mul i32 960, %22
  %24 = call i32 @FFMAX(i32 480, i32 %23)
  br label %38

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ult i32 %26, 16
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 1
  %31 = shl i32 480, %30
  br label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 120, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %20
  %39 = phi i32 [ %24, %20 ], [ %37, %36 ]
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %46, i32* %3, align 4
  br label %61

47:                                               ; preds = %42
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 63
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 2, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %52
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = mul i32 %58, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %45
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
