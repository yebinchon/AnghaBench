; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_status.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtmpproto.c_handle_invoke_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32* }

@RTMP_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Server error: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"NetStream.Play.Start\00", align 1
@STATE_PLAYING = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"NetStream.Play.Stop\00", align 1
@STATE_STOPPED = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"NetStream.Play.UnpublishNotify\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"NetStream.Publish.Start\00", align 1
@STATE_PUBLISHING = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"NetStream.Seek.Notify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @handle_invoke_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_invoke_status(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @RTMP_HEADER, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ff_amf_tag_size(i32* %33, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %143

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %8, align 8
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %51 = call i32 @ff_amf_get_field_value(i32* %48, i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %50, i32 1024)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %56 = call i32 @strcmp(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %62 = call i32 @ff_amf_get_field_value(i32* %59, i32* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %61, i32 1024)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65, %58
  %70 = load i32*, i32** %8, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %73 = call i32 @ff_amf_get_field_value(i32* %70, i32* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %72, i32 1024)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %81 = call i32 @av_log(%struct.TYPE_7__* %78, i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %80)
  br label %82

82:                                               ; preds = %77, %74
  store i32 -1, i32* %3, align 4
  br label %143

83:                                               ; preds = %54, %47
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %87 = call i32 @ff_amf_get_field_value(i32* %84, i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %86, i32 1024)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %92 = call i32 @strcmp(i32* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i8*, i8** @STATE_PLAYING, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %90, %83
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %103 = call i32 @strcmp(i32* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i8*, i8** @STATE_STOPPED, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %105, %101, %98
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %114 = call i32 @strcmp(i32* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** @STATE_STOPPED, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %116, %112, %109
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %125 = call i32 @strcmp(i32* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** @STATE_PUBLISHING, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %127, %123, %120
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %136 = call i32 @strcmp(i32* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** @STATE_PLAYING, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %142

142:                                              ; preds = %138, %134, %131
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %82, %38
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ff_amf_tag_size(i32*, i32*) #1

declare dso_local i32 @ff_amf_get_field_value(i32*, i32*, i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
