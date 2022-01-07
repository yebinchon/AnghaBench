; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_idroqenc.c_roq_write_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_idroqenc.c_roq_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@__const.roq_write_header.header = private unnamed_addr constant [8 x i32] [i32 132, i32 16, i32 255, i32 255, i32 255, i32 255, i32 30, i32 0], align 16
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Frame rate must be integer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Frame rate may not exceed 255fps\0A\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"For vintage compatibility fps must be 30\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @roq_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roq_write_header(%struct.AVFormatContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.AVFormatContext*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %3, align 8
  %7 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([8 x i32]* @__const.roq_write_header.header to i8*), i64 32, i1 false)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %75, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %11 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %16 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 %19
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %74

28:                                               ; preds = %14
  %29 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %30 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = call i32 @av_log(%struct.AVFormatContext* %41, i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %88

46:                                               ; preds = %28
  %47 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %48 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = icmp ugt i32 %56, 255
  br i1 %57, label %58, label %64

58:                                               ; preds = %46
  %59 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %60 = load i32, i32* @AV_LOG_ERROR, align 4
  %61 = call i32 @av_log(%struct.AVFormatContext* %59, i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = call i32 @AVERROR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %88

64:                                               ; preds = %46
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 30
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %69 = load i32, i32* @AV_LOG_WARNING, align 4
  %70 = call i32 @av_log(%struct.AVFormatContext* %68, i32 %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 6
  store i32 %72, i32* %73, align 8
  br label %78

74:                                               ; preds = %14
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %8

78:                                               ; preds = %71, %8
  %79 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %80 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %83 = call i32 @avio_write(i32 %81, i32* %82, i32 8)
  %84 = load %struct.AVFormatContext*, %struct.AVFormatContext** %3, align 8
  %85 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @avio_flush(i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %78, %58, %40
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @avio_write(i32, i32*, i32) #2

declare dso_local i32 @avio_flush(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
