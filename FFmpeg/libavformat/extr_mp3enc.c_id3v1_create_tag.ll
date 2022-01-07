; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_id3v1_create_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_id3v1_create_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ID3v1_TAG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TIT2\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TPE1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"TALB\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TDRC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TRCK\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"TCON\00", align 1
@ID3v1_GENRE_MAX = common dso_local global i32 0, align 4
@ff_id3v1_genre_str = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @id3v1_create_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @id3v1_create_tag(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @ID3v1_TAG_SIZE, align 4
  %10 = call i32 @memset(i8* %8, i32 0, i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 84, i8* %12, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 65, i8* %14, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 2
  store i8 71, i8* %16, align 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 3
  %20 = call i64 @id3v1_set_string(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i32 31)
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 33
  %28 = call i64 @id3v1_set_string(%struct.TYPE_6__* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 31)
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 63
  %36 = call i64 @id3v1_set_string(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 31)
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 93
  %44 = call i64 @id3v1_set_string(%struct.TYPE_6__* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %43, i32 5)
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 97
  %52 = call i64 @id3v1_set_string(%struct.TYPE_6__* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %51, i32 31)
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_7__* @av_dict_get(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %5, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %2
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 125
  store i8 0, i8* %64, align 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call signext i8 @atoi(i32 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 126
  store i8 %68, i8* %70, align 1
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %62, %2
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 127
  store i8 -1, i8* %75, align 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.TYPE_7__* @av_dict_get(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 0)
  store %struct.TYPE_7__* %79, %struct.TYPE_7__** %5, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %81, label %109

81:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %105, %81
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @ID3v1_GENRE_MAX, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** @ff_id3v1_genre_str, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @av_strcasecmp(i32 %89, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %6, align 4
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 127
  store i8 %99, i8* %101, align 1
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %108

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %82

108:                                              ; preds = %97, %82
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @id3v1_set_string(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local signext i8 @atoi(i32) #1

declare dso_local i32 @av_strcasecmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
