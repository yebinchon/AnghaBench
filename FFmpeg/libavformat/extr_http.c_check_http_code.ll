; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_check_http_code.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_check_http_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@HTTP_AUTH_NONE = common dso_local global i64 0, align 8
@SPACE_CHARS = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"HTTP error %d %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*)* @check_http_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_http_code(%struct.TYPE_9__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 400
  br i1 %13, label %14, label %53

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 600
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 401
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 407
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HTTP_AUTH_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %30, %27
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @SPACE_CHARS, align 4
  %40 = call i32 @strspn(i8* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = load i32, i32* @AV_LOG_WARNING, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @av_log(%struct.TYPE_9__* %44, i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EIO, align 4
  %51 = call i32 @AVERROR(i32 %50)
  %52 = call i32 @ff_http_averror(i32 %49, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %30, %20, %14, %3
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, i32, i8*) #1

declare dso_local i32 @ff_http_averror(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
