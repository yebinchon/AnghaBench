; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_smil_extract_next_text_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_smil_extract_next_text_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_smil_extract_next_text_chunk(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call signext i8 @ff_text_r8(i32* %14)
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %64

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 60
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 62, i32 60
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %9, align 1
  br label %30

30:                                               ; preds = %52, %22
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @av_bprint_chars(i32* %31, i8 signext %33, i32 1)
  %35 = load i32*, i32** %5, align 8
  %36 = call signext i8 @ff_text_r8(i32* %35)
  %37 = load i8*, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %47, %40
  %53 = phi i1 [ false, %40 ], [ %51, %47 ]
  br i1 %53, label %30, label %54

54:                                               ; preds = %52
  %55 = load i8, i8* %9, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 62
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @av_bprint_chars(i32* %59, i8 signext 62, i32 1)
  %61 = load i8*, i8** %7, align 8
  store i8 0, i8* %61, align 1
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local signext i8 @ff_text_r8(i32*) #1

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
