; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_find_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_src_movie.c_find_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__** }

@.str = private unnamed_addr constant [12 x i8] c"d%1[av]%d%c\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No %s stream with index '%d' found\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Invalid stream specifier \22%s\22\0A\00", align 1
@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Ambiguous stream specifier \22%s\22, using #%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Stream specifier \22%s\22 %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"matched only already used streams\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"did not match any stream\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"Stream specifier \22%s\22 matched a %s stream,currently unsupported by libavfilter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i8*, %struct.TYPE_11__*, i8*)* @find_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @find_stream(i8* %0, %struct.TYPE_11__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %14, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %18 = call i32 @sscanf(i8* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %17, i32* %11, i8* %13)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 1
  br i1 %20, label %21, label %57

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 2
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 118
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  br label %33

31:                                               ; preds = %24
  %32 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @av_find_best_stream(%struct.TYPE_11__* %36, i32 %37, i32 %38, i32 -1, i32* null, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i8* @av_get_media_type_string(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %43, i32 %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %46, i32 %47)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %163

49:                                               ; preds = %33
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %52, i64 %54
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %4, align 8
  br label %163

57:                                               ; preds = %21, %3
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %118, %57
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %58
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %68, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @avformat_match_stream_specifier(%struct.TYPE_11__* %65, %struct.TYPE_10__* %72, i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %64
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* @AV_LOG_ERROR, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %78, i32 %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %163

82:                                               ; preds = %64
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  br label %118

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %89, i64 %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @AVDISCARD_ALL, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %118

101:                                              ; preds = %86
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %103 = icmp ne %struct.TYPE_10__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = load i32, i32* @AV_LOG_WARNING, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %105, i32 %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %107, i32 %108)
  br label %121

110:                                              ; preds = %101
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %115
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  store %struct.TYPE_10__* %117, %struct.TYPE_10__** %14, align 8
  br label %118

118:                                              ; preds = %110, %98, %85
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %58

121:                                              ; preds = %104, %58
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %123 = icmp ne %struct.TYPE_10__* %122, null
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* @AV_LOG_WARNING, align 4
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0)
  %132 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %125, i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %127, i8* %131)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %163

133:                                              ; preds = %121
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %161

141:                                              ; preds = %133
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %141
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* @AV_LOG_ERROR, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = call i8* @av_get_media_type_string(i32 %158)
  %160 = call i32 (i8*, i32, i8*, i8*, ...) @av_log(i8* %150, i32 %151, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i64 0, i64 0), i8* %152, i8* %159)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %163

161:                                              ; preds = %141, %133
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %162, %struct.TYPE_10__** %4, align 8
  br label %163

163:                                              ; preds = %161, %149, %124, %77, %49, %42
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %164
}

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i8*) #1

declare dso_local i32 @av_find_best_stream(%struct.TYPE_11__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @av_log(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @av_get_media_type_string(i32) #1

declare dso_local i32 @avformat_match_stream_specifier(%struct.TYPE_11__*, %struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
