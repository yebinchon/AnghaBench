; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_try_read_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_try_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32**)* @mov_try_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_try_read_block(i32* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 1048576, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %62, %3
  %16 = load i32, i32* %11, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = sub i32 %22, 1048576
  %24 = icmp uge i32 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @INT_MAX, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1048576
  br label %30

30:                                               ; preds = %27, %25
  %31 = phi i32 [ %26, %25 ], [ %29, %27 ]
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32* @av_fast_realloc(i32* %32, i32* %10, i32 %33)
  store i32* %34, i32** %13, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @FFMIN(i64 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @av_free(i32* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %69

47:                                               ; preds = %30
  %48 = load i32*, i32** %13, align 8
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @avio_read(i32* %49, i32* %53, i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @av_free(i32* %59)
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %15

66:                                               ; preds = %15
  %67 = load i32*, i32** %9, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %58, %42
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32* @av_fast_realloc(i32*, i32*, i32) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
