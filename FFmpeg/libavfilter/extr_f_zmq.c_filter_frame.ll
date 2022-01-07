; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_zmq.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_zmq.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not parse command #%d\0A\00", align 1
@AV_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Processing command #%d target:%s command:%s arg:%s\0A\00", align 1
@AVFILTER_CMD_FLAG_ONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Sending command reply for command #%d:\0A%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to send reply for command #%d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  br label %19

19:                                               ; preds = %2, %109
  %20 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 32, i1 false)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %22 = call i64 @recv_msg(%struct.TYPE_13__* %21, i8** %8, i32* %10)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %118

25:                                               ; preds = %19
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = call i64 @parse_command(%struct.TYPE_11__* %11, i8* %30, %struct.TYPE_13__* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_13__* %35, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %109

41:                                               ; preds = %25
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_13__* %42, i32 %43, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %48, i8* %50, i8* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %64 = load i32, i32* @AVFILTER_CMD_FLAG_ONE, align 4
  %65 = call i32 @avfilter_graph_send_command(i32 %56, i8* %58, i8* %60, i8* %62, i8* %63, i32 1024, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 0, %66
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @av_err2str(i32 %68)
  %70 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %77 = call i8* @av_asprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %69, i8* %75, i8* %76)
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %41
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @AVERROR(i32 %81)
  store i32 %82, i32* %12, align 4
  br label %109

83:                                               ; preds = %41
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %85 = load i32, i32* @AV_LOG_VERBOSE, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_13__* %84, i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %88, i8* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = call i32 @zmq_send(i32 %93, i8* %94, i32 %96, i32 0)
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %108

99:                                               ; preds = %83
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = load i32, i32* @AV_LOG_ERROR, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i8* @zmq_strerror(i32 %105)
  %107 = call i32 (%struct.TYPE_13__*, i32, i8*, i32, ...) @av_log(%struct.TYPE_13__* %100, i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %104, i8* %106)
  br label %108

108:                                              ; preds = %99, %83
  br label %109

109:                                              ; preds = %108, %80, %34
  %110 = call i32 @av_freep(i8** %9)
  %111 = call i32 @av_freep(i8** %8)
  store i32 0, i32* %10, align 4
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %113 = call i32 @av_freep(i8** %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %115 = call i32 @av_freep(i8** %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 2
  %117 = call i32 @av_freep(i8** %116)
  br label %19

118:                                              ; preds = %24
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @ff_filter_frame(i32 %123, i32* %124)
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @recv_msg(%struct.TYPE_13__*, i8**, i32*) #2

declare dso_local i64 @parse_command(%struct.TYPE_11__*, i8*, %struct.TYPE_13__*) #2

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*, i32, ...) #2

declare dso_local i32 @avfilter_graph_send_command(i32, i8*, i8*, i8*, i8*, i32, i32) #2

declare dso_local i8* @av_asprintf(i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @av_err2str(i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @zmq_send(i32, i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @zmq_strerror(i32) #2

declare dso_local i32 @av_freep(i8**) #2

declare dso_local i32 @ff_filter_frame(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
