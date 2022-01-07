; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_stream_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i64, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32, i32, i32, i64, i64, i32*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@VIDEO_PICTURE_QUEUE_SIZE = common dso_local global i32 0, align 4
@SUBPICTURE_QUEUE_SIZE = common dso_local global i32 0, align 4
@SAMPLE_QUEUE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SDL_CreateCond(): %s\0A\00", align 1
@startup_volume = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"-volume=%d < 0, setting to 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"-volume=%d > 100, setting to 100\0A\00", align 1
@SDL_MIX_MAXVOLUME = common dso_local global i32 0, align 4
@av_sync_type = common dso_local global i32 0, align 4
@read_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"read_thread\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"SDL_CreateThread(): %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*, i32*)* @stream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @stream_open(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call %struct.TYPE_9__* @av_mallocz(i32 96)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %6, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %149

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @av_strdup(i8* %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 18
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  br label %144

21:                                               ; preds = %11
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 17
  store i32* %22, i32** %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 16
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 15
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 14
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 8
  %33 = load i32, i32* @VIDEO_PICTURE_QUEUE_SIZE, align 4
  %34 = call i64 @frame_queue_init(i32* %30, %struct.TYPE_10__* %32, i32 %33, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  br label %144

37:                                               ; preds = %21
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 13
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 11
  %42 = load i32, i32* @SUBPICTURE_QUEUE_SIZE, align 4
  %43 = call i64 @frame_queue_init(i32* %39, %struct.TYPE_10__* %41, i32 %42, i32 0)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %144

46:                                               ; preds = %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 12
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 6
  %51 = load i32, i32* @SAMPLE_QUEUE_SIZE, align 4
  %52 = call i64 @frame_queue_init(i32* %48, %struct.TYPE_10__* %50, i32 %51, i32 1)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %144

55:                                               ; preds = %46
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 8
  %58 = call i64 @packet_queue_init(%struct.TYPE_10__* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 6
  %63 = call i64 @packet_queue_init(%struct.TYPE_10__* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 11
  %68 = call i64 @packet_queue_init(%struct.TYPE_10__* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60, %55
  br label %144

71:                                               ; preds = %65
  %72 = call i32 (...) @SDL_CreateCond()
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = icmp ne i32 %72, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @AV_LOG_FATAL, align 4
  %78 = call i32 (...) @SDL_GetError()
  %79 = call i32 @av_log(i32* null, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %144

80:                                               ; preds = %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 9
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = call i32 @init_clock(%struct.TYPE_11__* %82, i32* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32 @init_clock(%struct.TYPE_11__* %88, i32* %91)
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = call i32 @init_clock(%struct.TYPE_11__* %94, i32* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  store i32 -1, i32* %100, align 8
  %101 = load i32, i32* @startup_volume, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %80
  %104 = load i32, i32* @AV_LOG_WARNING, align 4
  %105 = load i32, i32* @startup_volume, align 4
  %106 = call i32 @av_log(i32* null, i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %80
  %108 = load i32, i32* @startup_volume, align 4
  %109 = icmp sgt i32 %108, 100
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @AV_LOG_WARNING, align 4
  %112 = load i32, i32* @startup_volume, align 4
  %113 = call i32 @av_log(i32* null, i32 %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* @startup_volume, align 4
  %116 = call i32 @av_clip(i32 %115, i32 0, i32 100)
  store i32 %116, i32* @startup_volume, align 4
  %117 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %118 = load i32, i32* @startup_volume, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sdiv i32 %119, 100
  %121 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %122 = call i32 @av_clip(i32 %120, i32 0, i32 %121)
  store i32 %122, i32* @startup_volume, align 4
  %123 = load i32, i32* @startup_volume, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @av_sync_type, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @read_thread, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = call i32 @SDL_CreateThread(i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %114
  %141 = load i32, i32* @AV_LOG_FATAL, align 4
  %142 = call i32 (...) @SDL_GetError()
  %143 = call i32 @av_log(i32* null, i32 %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %140, %76, %70, %54, %45, %36, %20
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %146 = call i32 @stream_close(%struct.TYPE_9__* %145)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %149

147:                                              ; preds = %114
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %3, align 8
  br label %149

149:                                              ; preds = %147, %144, %10
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %150
}

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32 @av_strdup(i8*) #1

declare dso_local i64 @frame_queue_init(i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @packet_queue_init(%struct.TYPE_10__*) #1

declare dso_local i32 @SDL_CreateCond(...) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @init_clock(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @SDL_CreateThread(i32, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @stream_close(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
