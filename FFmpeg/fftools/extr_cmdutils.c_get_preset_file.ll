; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_preset_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_get_preset_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"FFMPEG_DATADIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@FFMPEG_DATADIR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%s%s/%s.ffpreset\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"/.ffmpeg\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s%s/%s-%s.ffpreset\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_preset_file(i8* %0, i64 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %11, align 8
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %15 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  %17 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %16, i64 1
  %19 = load i8*, i8** @FFMPEG_DATADIR, align 8
  store i8* %19, i8** %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @av_strlcpy(i8* %23, i8* %24, i64 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %11, align 8
  br label %87

29:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %83, %29
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = icmp ne i32* %34, null
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %86

39:                                               ; preds = %37
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %83

46:                                               ; preds = %39
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 1
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %47, i64 %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %56, i8* %57)
  %59 = load i8*, i8** %6, align 8
  %60 = call i32* @fopen(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %46
  %64 = load i8*, i8** %10, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 1
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 (i8*, i64, i8*, i8*, i8*, i8*, ...) @snprintf(i8* %67, i64 %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %76, i8* %77, i8* %78)
  %80 = load i8*, i8** %6, align 8
  %81 = call i32* @fopen(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %81, i32** %11, align 8
  br label %82

82:                                               ; preds = %66, %63, %46
  br label %83

83:                                               ; preds = %82, %45
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %30

86:                                               ; preds = %37
  br label %87

87:                                               ; preds = %86, %22
  %88 = load i32*, i32** %11, align 8
  ret i32* %88
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
