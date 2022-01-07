; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"language\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%sMetadata:\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"%s  %-16s: \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\08\0A\0B\0C\0D\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"\0A%s  %-16s: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*)* @dump_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metadata(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %101

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @av_dict_count(i32* %14)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_4__* @av_dict_get(i32* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* null, i32 0)
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %101, label %21

21:                                               ; preds = %17, %13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @AV_LOG_INFO, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %22, i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %99, %21
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %30 = call %struct.TYPE_4__* @av_dict_get(i32* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %28, i32 %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %7, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %32, label %100

32:                                               ; preds = %26
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %99

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @AV_LOG_INFO, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %42, i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %94, %38
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @strcspn(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  %60 = call i32 @FFMIN(i32 256, i64 %59)
  %61 = call i32 @av_strlcpy(i8* %56, i8* %57, i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @AV_LOG_INFO, align 4
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %65 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %62, i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @AV_LOG_INFO, align 4
  %76 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %74, i32 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %53
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* @AV_LOG_INFO, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %83, i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %82, %77
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %8, align 8
  br label %94

94:                                               ; preds = %91, %87
  br label %49

95:                                               ; preds = %49
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* @AV_LOG_INFO, align 4
  %98 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %96, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %32
  br label %26

100:                                              ; preds = %26
  br label %101

101:                                              ; preds = %100, %17, %3
  ret void
}

declare dso_local i32 @av_dict_count(i32*) #1

declare dso_local %struct.TYPE_4__* @av_dict_get(i32*, i8*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @FFMIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
