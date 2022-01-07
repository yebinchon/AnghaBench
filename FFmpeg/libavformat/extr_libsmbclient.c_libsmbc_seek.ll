; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsmbclient.c_libsmbc_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libsmbclient.c_libsmbc_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@AVSEEK_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Error during seeking: filesize is unknown.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error during seeking: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @libsmbc_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libsmbc_seek(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @AVSEEK_SIZE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i32, i32* @AV_LOG_ERROR, align 4
  %25 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %23, i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @smbc_lseek(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) @av_log(%struct.TYPE_5__* %42, i32 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @AVERROR(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %32
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %40, %28, %22
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @smbc_lseek(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
