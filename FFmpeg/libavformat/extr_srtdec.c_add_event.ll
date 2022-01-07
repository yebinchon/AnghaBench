; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_add_event.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_srtdec.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i8* }
%struct.event_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_SUBTITLE_POSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, %struct.event_info*, i32)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(i32* %0, %struct.TYPE_9__* %1, i8* %2, %struct.event_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.event_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.event_info* %3, %struct.event_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @av_bprintf(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %22, %16, %5
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %49, %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %37, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br label %47

47:                                               ; preds = %34, %29
  %48 = phi i1 [ false, %29 ], [ %46, %34 ]
  br i1 %48, label %49, label %59

49:                                               ; preds = %47
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8 0, i8* %58, align 1
  br label %29

59:                                               ; preds = %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %132

64:                                               ; preds = %59
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_8__* @ff_subtitles_queue_insert(i32* %65, i8* %68, i32 %71, i32 0)
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %12, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %6, align 4
  br label %133

78:                                               ; preds = %64
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = call i32 @av_bprint_clear(%struct.TYPE_9__* %79)
  %81 = load %struct.event_info*, %struct.event_info** %10, align 8
  %82 = getelementptr inbounds %struct.event_info, %struct.event_info* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.event_info*, %struct.event_info** %10, align 8
  %87 = getelementptr inbounds %struct.event_info, %struct.event_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.event_info*, %struct.event_info** %10, align 8
  %92 = getelementptr inbounds %struct.event_info, %struct.event_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  %96 = load %struct.event_info*, %struct.event_info** %10, align 8
  %97 = getelementptr inbounds %struct.event_info, %struct.event_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %131

100:                                              ; preds = %78
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = load i32, i32* @AV_PKT_DATA_SUBTITLE_POSITION, align 4
  %103 = call i32* @av_packet_new_side_data(%struct.TYPE_8__* %101, i32 %102, i32 16)
  store i32* %103, i32** %13, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %100
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.event_info*, %struct.event_info** %10, align 8
  %109 = getelementptr inbounds %struct.event_info, %struct.event_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @AV_WL32(i32* %107, i32 %110)
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  %114 = load %struct.event_info*, %struct.event_info** %10, align 8
  %115 = getelementptr inbounds %struct.event_info, %struct.event_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @AV_WL32(i32* %113, i32 %116)
  %118 = load i32*, i32** %13, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 8
  %120 = load %struct.event_info*, %struct.event_info** %10, align 8
  %121 = getelementptr inbounds %struct.event_info, %struct.event_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AV_WL32(i32* %119, i32 %122)
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 12
  %126 = load %struct.event_info*, %struct.event_info** %10, align 8
  %127 = getelementptr inbounds %struct.event_info, %struct.event_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @AV_WL32(i32* %125, i32 %128)
  br label %130

130:                                              ; preds = %106, %100
  br label %131

131:                                              ; preds = %130, %78
  br label %132

132:                                              ; preds = %131, %59
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %75
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @av_bprintf(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_9__*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
