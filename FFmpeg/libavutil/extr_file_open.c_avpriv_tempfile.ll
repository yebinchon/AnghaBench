; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_file_open.c_avpriv_tempfile.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_file_open.c_avpriv_tempfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32* }

@file_log_ctx_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ff_tempfile: Cannot allocate file name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"ff_tempfile: Cannot open temporary file %s\0A\00", align 1
@O_BINARY = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_tempfile(i8* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 ptrtoint (i32* @file_log_ctx_class to i32), i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %15, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %19, align 8
  store i32 -1, i32* %11, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @tempnam(i8* null, i8* %22)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @tempnam(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i8* %28, i8** %12, align 8
  br label %29

29:                                               ; preds = %26, %4
  %30 = load i8*, i8** %12, align 8
  %31 = call i8* @av_strdup(i8* %30)
  %32 = load i8**, i8*** %7, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @av_log(%struct.TYPE_3__* %10, i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %29
  %44 = load i8**, i8*** %7, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @O_RDWR, align 4
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @open(i8* %45, i32 %48, i32 384)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %43
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @AVERROR(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct.TYPE_3__*, i32, i8*, ...) @av_log(%struct.TYPE_3__* %10, i32 %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8**, i8*** %7, align 8
  %60 = call i32 @av_freep(i8** %59)
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %64

62:                                               ; preds = %43
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %52, %38
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i8* @tempnam(i8*, i8*) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_3__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @av_freep(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
