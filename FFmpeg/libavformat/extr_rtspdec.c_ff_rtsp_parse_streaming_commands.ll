; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_parse_streaming_commands.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtspdec.c_ff_rtsp_parse_streaming_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RTSP: Unexpected Command\0A\00", align 1
@PAUSE = common dso_local global i32 0, align 4
@RTSP_STATE_PAUSED = common dso_local global i32 0, align 4
@RTSP_STATUS_OK = common dso_local global i32 0, align 4
@OPTIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Public: ANNOUNCE, PAUSE, SETUP, TEARDOWN, RECORD\0D\0A\00", align 1
@TEARDOWN = common dso_local global i32 0, align 4
@RTSP_STATE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rtsp_parse_streaming_commands(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [10 x i8], align 1
  %7 = alloca [500 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %9, align 4
  %15 = bitcast %struct.TYPE_12__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %18 = call i32 @read_line(%struct.TYPE_13__* %16, i8* %17, i32 4096, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds [500 x i8], [500 x i8]* %7, i64 0, i64 0
  %28 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %29 = call i32 @parse_command_line(%struct.TYPE_13__* %24, i8* %25, i32 %26, i8* %27, i32 500, i8* %28, i32 10, i32* %11)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(%struct.TYPE_13__* %33, i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %89

37:                                               ; preds = %23
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %40 = call i32 @rtsp_read_request(%struct.TYPE_13__* %38, %struct.TYPE_12__* %10, i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %89

45:                                               ; preds = %37
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @PAUSE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load i32, i32* @RTSP_STATE_PAUSED, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = load i32, i32* @RTSP_STATUS_OK, align 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @rtsp_send_reply(%struct.TYPE_13__* %57, i32 %58, i8* null, i32 %60)
  store i32 %61, i32* %8, align 4
  br label %87

62:                                               ; preds = %45
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @OPTIONS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %68 = load i32, i32* @RTSP_STATUS_OK, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @rtsp_send_reply(%struct.TYPE_13__* %67, i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %8, align 4
  br label %86

72:                                               ; preds = %62
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @TEARDOWN, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i32, i32* @RTSP_STATE_IDLE, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = load i32, i32* @RTSP_STATUS_OK, align 4
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @rtsp_send_reply(%struct.TYPE_13__* %80, i32 %81, i8* null, i32 %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %76, %72
  br label %86

86:                                               ; preds = %85, %66
  br label %87

87:                                               ; preds = %86, %53
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %43, %32, %21
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @read_line(%struct.TYPE_13__*, i8*, i32, i32*) #2

declare dso_local i32 @parse_command_line(%struct.TYPE_13__*, i8*, i32, i8*, i32, i8*, i32, i32*) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #2

declare dso_local i32 @rtsp_read_request(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*) #2

declare dso_local i32 @rtsp_send_reply(%struct.TYPE_13__*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
