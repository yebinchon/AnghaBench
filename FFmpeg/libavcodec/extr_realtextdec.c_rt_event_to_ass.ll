; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_realtextdec.c_rt_event_to_ass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_realtextdec.c_rt_event_to_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"<br/>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"<br>\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @rt_event_to_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_event_to_ass(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i8*, i8** %4, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 60
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @av_isspace(i8 signext %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i32 @av_bprint_chars(i32* %22, i8 signext %24, i32 1)
  br label %33

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @av_bprint_chars(i32* %30, i8 signext 32, i32 1)
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i8*, i8** %4, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @av_isspace(i8 signext %35)
  store i32 %36, i32* %5, align 4
  br label %56

37:                                               ; preds = %11
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @strchr(i8* %38, i8 signext 62)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %59

43:                                               ; preds = %37
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @av_strncasecmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @av_strncasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @av_bprintf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %54, %33
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  br label %7

59:                                               ; preds = %42, %7
  ret i32 0
}

declare dso_local i32 @av_isspace(i8 signext) #1

declare dso_local i32 @av_bprint_chars(i32*, i8 signext, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @av_bprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
