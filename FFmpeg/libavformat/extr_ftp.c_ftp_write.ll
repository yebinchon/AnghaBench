; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"ftp protocol write %d bytes\0A\00", align 1
@DISCONNECTED = common dso_local global i64 0, align 8
@READY = common dso_local global i64 0, align 8
@UPLOADING = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"FTP write failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @ftp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_write(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %9, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ff_dlog(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DISCONNECTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = call i32 @ftp_connect_data_connection(%struct.TYPE_8__* %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %85

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @READY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = call i32 @ftp_store(%struct.TYPE_9__* %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %85

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %42
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UPLOADING, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ffurl_write(i64 %56, i8* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @FFMAX(i32 %70, i32 %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %62, %53
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %85

79:                                               ; preds = %47, %42
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = call i32 @av_log(%struct.TYPE_8__* %80, i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  %84 = call i32 @AVERROR(i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %77, %39, %26
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ff_dlog(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ftp_connect_data_connection(%struct.TYPE_8__*) #1

declare dso_local i32 @ftp_store(%struct.TYPE_9__*) #1

declare dso_local i32 @ffurl_write(i64, i8*, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
