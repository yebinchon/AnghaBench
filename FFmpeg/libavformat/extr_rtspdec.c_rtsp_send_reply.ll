; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_send_reply.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_rtsp_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@status_messages = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"RTSP/1.0 %d %s\0D\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"CSeq: %d\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Server: %s\0D\0A\00", align 1
@LIBAVFORMAT_IDENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Sending response:\0A%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i32)* @rtsp_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_send_reply(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca [4096 x i8], align 16
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %43, %4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @status_messages, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @status_messages, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @status_messages, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snprintf(i8* %34, i32 4096, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %41)
  br label %46

43:                                               ; preds = %24
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %16

46:                                               ; preds = %33, %16
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @status_messages, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = call i32 @AVERROR(i32 %55)
  store i32 %56, i32* %5, align 4
  br label %84

57:                                               ; preds = %46
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @av_strlcatf(i8* %58, i32 4096, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %62 = load i32, i32* @LIBAVFORMAT_IDENT, align 4
  %63 = call i32 @av_strlcatf(i8* %61, i32 4096, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 @av_strlcat(i8* %67, i8* %68, i32 4096)
  br label %70

70:                                               ; preds = %66, %57
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %72 = call i32 @av_strlcat(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 4096)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = load i32, i32* @AV_LOG_TRACE, align 4
  %75 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %76 = call i32 @av_log(%struct.TYPE_7__* %73, i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %81 = getelementptr inbounds [4096 x i8], [4096 x i8]* %11, i64 0, i64 0
  %82 = call i32 @strlen(i8* %81)
  %83 = call i32 @ffurl_write(i32 %79, i8* %80, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %70, %54
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_strlcatf(i8*, i32, i8*, i32) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i8*) #1

declare dso_local i32 @ffurl_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
