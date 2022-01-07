; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_get_symbol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_get_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @get_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_symbol(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = call i64 @get_rac(i32* %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i32*, i32** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @FFMIN(i32 %22, i32 9)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = call i64 @get_rac(i32* %19, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %4, align 4
  br label %83

35:                                               ; preds = %28
  br label %18

36:                                               ; preds = %18
  store i32 1, i32* %10, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %58, %36
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 22
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @FFMIN(i32 %48, i32 9)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i64 @get_rac(i32* %45, i32* %51)
  %53 = add nsw i64 %44, %52
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %8, align 4
  br label %39

61:                                               ; preds = %39
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 11
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @FFMIN(i32 %68, i32 10)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = call i64 @get_rac(i32* %65, i32* %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %64, %61
  %75 = phi i1 [ false, %61 ], [ %73, %64 ]
  %76 = zext i1 %75 to i32
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %9, align 4
  %80 = xor i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = sub i32 %80, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %74, %33, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @get_rac(i32*, i32*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
