; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_libssh.c_libssh_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_libssh.c_libssh_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error during seeking.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Seeking to nagative position.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, i32)* @libssh_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @libssh_seek(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 131
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 @av_log(%struct.TYPE_5__* %24, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = call i64 @AVERROR(i32 %27)
  store i64 %28, i64* %4, align 8
  br label %79

29:                                               ; preds = %20, %3
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %52 [
    i32 131, label %31
    i32 128, label %36
    i32 130, label %38
    i32 129, label %45
  ]

31:                                               ; preds = %29
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %4, align 8
  br label %79

36:                                               ; preds = %29
  %37 = load i64, i64* %6, align 8
  store i64 %37, i64* %9, align 8
  br label %55

38:                                               ; preds = %29
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sftp_tell64(i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %9, align 8
  br label %55

45:                                               ; preds = %29
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %49, %50
  store i64 %51, i64* %9, align 8
  br label %55

52:                                               ; preds = %29
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i64 @AVERROR(i32 %53)
  store i64 %54, i64* %4, align 8
  br label %79

55:                                               ; preds = %45, %38, %36
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(%struct.TYPE_5__* %59, i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i64 @AVERROR(i32 %62)
  store i64 %63, i64* %4, align 8
  br label %79

64:                                               ; preds = %55
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @sftp_seek64(i32 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = load i32, i32* @AV_LOG_ERROR, align 4
  %74 = call i32 @av_log(%struct.TYPE_5__* %72, i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EIO, align 4
  %76 = call i64 @AVERROR(i32 %75)
  store i64 %76, i64* %4, align 8
  br label %79

77:                                               ; preds = %64
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %4, align 8
  br label %79

79:                                               ; preds = %77, %71, %58, %52, %31, %23
  %80 = load i64, i64* %4, align 8
  ret i64 %80
}

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*) #1

declare dso_local i64 @AVERROR(i32) #1

declare dso_local i64 @sftp_tell64(i32) #1

declare dso_local i64 @sftp_seek64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
