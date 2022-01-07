; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_prores.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_prores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**, i32*)* @matroska_parse_prores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_prores(i32* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %7, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  %17 = call i32 @AV_RB32(i32* %16)
  %18 = call i32 @MKBETAG(i8 signext 105, i8 signext 99, i8 signext 112, float 1.020000e+02)
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  %22 = add nsw i32 %21, 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32* @av_malloc(i64 %26)
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %58

33:                                               ; preds = %20
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @AV_WB32(i32* %34, i32 %35)
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = call i32 @MKBETAG(i8 signext 105, i8 signext 99, i8 signext 112, float 1.020000e+02)
  %40 = call i32 @AV_WB32(i32* %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 8
  %46 = call i32 @memcpy(i32* %42, i32* %43, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %52 = call i32 @memset(i32* %50, i32 0, i64 %51)
  br label %53

53:                                               ; preds = %33, %4
  %54 = load i32*, i32** %10, align 8
  %55 = load i32**, i32*** %8, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %30
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, float) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_WB32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
