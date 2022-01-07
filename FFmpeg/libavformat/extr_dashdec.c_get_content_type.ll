; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_content_type.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_get_content_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVMEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"mimeType\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"contentType\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_content_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_content_type(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @AVMEDIA_TYPE_UNKNOWN, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %6, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %48, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %5, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @xmlGetProp(i64 %19, i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @av_stristr(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @AVMEDIA_TYPE_VIDEO, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @av_stristr(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @av_stristr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @xmlFree(i8* %45)
  br label %47

47:                                               ; preds = %44, %14
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %11

51:                                               ; preds = %11
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @xmlGetProp(i64, i8*) #1

declare dso_local i64 @av_stristr(i8*, i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
