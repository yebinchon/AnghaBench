; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_content_encoding.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_parse_content_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Compressed (%s) content, need zlib with gzip support\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unknown content coding: %s\0A\00", align 1
@Z_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @parse_content_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_content_encoding(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @av_strncasecmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @av_strncasecmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = load i32, i32* @AV_LOG_WARNING, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %14, i32 %15, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = call i32 @AVERROR(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %9
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @av_strncasecmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %30

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = load i32, i32* @AV_LOG_WARNING, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %25, %24
  br label %31

31:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
