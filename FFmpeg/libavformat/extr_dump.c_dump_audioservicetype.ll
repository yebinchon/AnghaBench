; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_audioservicetype.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dump.c_dump_audioservicetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid data\00", align 1
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"effects\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"visually impaired\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"hearing impaired\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dialogue\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"commentary\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"emergency\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"voice over\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"karaoke\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*)* @dump_audioservicetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_audioservicetype(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @AV_LOG_ERROR, align 4
  %18 = call i32 @av_log(i8* %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %62

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %58 [
    i32 130, label %22
    i32 134, label %26
    i32 129, label %30
    i32 132, label %34
    i32 135, label %38
    i32 136, label %42
    i32 133, label %46
    i32 128, label %50
    i32 131, label %54
  ]

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @AV_LOG_INFO, align 4
  %25 = call i32 @av_log(i8* %23, i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %62

26:                                               ; preds = %19
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* @AV_LOG_INFO, align 4
  %29 = call i32 @av_log(i8* %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %62

30:                                               ; preds = %19
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @AV_LOG_INFO, align 4
  %33 = call i32 @av_log(i8* %31, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %62

34:                                               ; preds = %19
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @AV_LOG_INFO, align 4
  %37 = call i32 @av_log(i8* %35, i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %62

38:                                               ; preds = %19
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* @AV_LOG_INFO, align 4
  %41 = call i32 @av_log(i8* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %62

42:                                               ; preds = %19
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @AV_LOG_INFO, align 4
  %45 = call i32 @av_log(i8* %43, i32 %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %62

46:                                               ; preds = %19
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @AV_LOG_INFO, align 4
  %49 = call i32 @av_log(i8* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %62

50:                                               ; preds = %19
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* @AV_LOG_INFO, align 4
  %53 = call i32 @av_log(i8* %51, i32 %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %62

54:                                               ; preds = %19
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @AV_LOG_INFO, align 4
  %57 = call i32 @av_log(i8* %55, i32 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %62

58:                                               ; preds = %19
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* @AV_LOG_WARNING, align 4
  %61 = call i32 @av_log(i8* %59, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %62

62:                                               ; preds = %15, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22
  ret void
}

declare dso_local i32 @av_log(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
