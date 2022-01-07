; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libcdio.c_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libcdio.c_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__**, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@CDIO_CD_FRAMESIZE_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*)* @read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_packet(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  store i8* null, i8** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @cdio_paranoia_read(i32 %29, i32* null)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @cdio_cddap_errors(i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @av_log(%struct.TYPE_12__* %42, i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  store i8* null, i8** %9, align 8
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cdio_cddap_messages(i32 %51)
  store i8* %52, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @av_log(%struct.TYPE_12__* %55, i32 %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @free(i8* %59)
  store i8* null, i8** %9, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = load i32, i32* @CDIO_CD_FRAMESIZE_RAW, align 4
  %64 = call i32 @av_new_packet(%struct.TYPE_11__* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @CDIO_CD_FRAMESIZE_RAW, align 4
  %74 = call i32 @memcpy(i32 %71, i32* %72, i32 %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %66, %33, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32* @cdio_paranoia_read(i32, i32*) #1

declare dso_local i8* @cdio_cddap_errors(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @cdio_cddap_messages(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
