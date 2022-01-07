; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_subtitles_read_text_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subtitles.c_ff_subtitles_read_text_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_subtitles_read_text_chunk(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [5 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @av_bprint_clear(i32* %11)
  br label %13

13:                                               ; preds = %73, %57, %26, %2
  %14 = load i32*, i32** %3, align 8
  %15 = call signext i8 @ff_text_r8(i32* %14)
  store i8 %15, i8* %10, align 1
  %16 = load i8, i8* %10, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %79

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i8, i8* %10, align 1
  %24 = call i64 @is_eol(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %13

27:                                               ; preds = %22, %19
  %28 = load i8, i8* %10, align 1
  %29 = call i64 @is_eol(i8 signext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %79

47:                                               ; preds = %39
  %48 = load i8, i8* %10, align 1
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %79

57:                                               ; preds = %47
  %58 = load i8, i8* %10, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 13
  %61 = zext i1 %60 to i32
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  br label %13

63:                                               ; preds = %27
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %5, i64 0, i64 0
  %72 = call i32 @av_bprintf(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %71)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32*, i32** %4, align 8
  %75 = load i8, i8* %10, align 1
  %76 = call i32 @av_bprint_chars(i32* %74, i8 signext %75, i32 1)
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %13

79:                                               ; preds = %56, %46, %18
  ret void
}

declare dso_local i32 @av_bprint_clear(i32*) #1

declare dso_local signext i8 @ff_text_r8(i32*) #1

declare dso_local i64 @is_eol(i8 signext) #1

declare dso_local i32 @av_bprintf(i32*, i8*, i8*) #1

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
