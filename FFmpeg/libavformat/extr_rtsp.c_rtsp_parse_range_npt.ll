; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_rtsp_parse_range_npt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtsp.c_rtsp_parse_range_npt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPACE_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"npt=\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to parse interval end specification '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @rtsp_parse_range_npt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsp_parse_range_npt(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @SPACE_CHARS, align 4
  %10 = call i32 @strspn(i8* %8, i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @av_stristart(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %49

18:                                               ; preds = %3
  %19 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @AV_NOPTS_VALUE, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = call i32 @get_word_sep(i8* %23, i32 256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %27 = call i64 @av_parse_time(i32* %25, i8* %26, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %49

30:                                               ; preds = %18
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %39 = call i32 @get_word_sep(i8* %38, i32 256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %4)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = call i64 @av_parse_time(i32* %40, i8* %41, i32 1)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32, i32* @AV_LOG_DEBUG, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %47 = call i32 @av_log(i32* null, i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %35
  br label %49

49:                                               ; preds = %17, %29, %48, %30
  ret void
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @av_stristart(i8*, i8*, i8**) #1

declare dso_local i32 @get_word_sep(i8*, i32, i8*, i8**) #1

declare dso_local i64 @av_parse_time(i32*, i8*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
