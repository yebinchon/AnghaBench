; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_flacenc.c_flac_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@FF_PACKETLIST_FLAG_REF_PACKET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Out of memory in packet queue; skipping attached pictures\0A\00", align 1
@AV_DISPOSITION_ATTACHED_PIC = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Got more than one picture in stream %d, ignoring.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Out of memory queueing an attached picture; skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*, %struct.TYPE_10__*)* @flac_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flac_write_packet(%struct.AVFormatContext* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.AVFormatContext*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %10 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @FF_PACKETLIST_FLAG_REF_PACKET, align 4
  %31 = call i32 @ff_packet_list_put(i32* %26, i32* %28, %struct.TYPE_10__* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %36 = load i32, i32* @AV_LOG_ERROR, align 4
  %37 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %35, i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %41 = call i32 @flac_queue_flush(%struct.AVFormatContext* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %125

46:                                               ; preds = %34
  %47 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = call i32 @flac_write_audio_packet(%struct.AVFormatContext* %47, %struct.TYPE_10__* %48)
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %24
  br label %55

51:                                               ; preds = %19
  %52 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = call i32 @flac_write_audio_packet(%struct.AVFormatContext* %52, %struct.TYPE_10__* %53)
  store i32 %54, i32* %3, align 4
  br label %125

55:                                               ; preds = %50
  br label %124

56:                                               ; preds = %2
  %57 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %58 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 %62
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %8, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AV_DISPOSITION_ATTACHED_PIC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69, %56
  store i32 0, i32* %3, align 4
  br label %125

77:                                               ; preds = %69
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %84 = load i32, i32* @AV_LOG_WARNING, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %83, i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  br label %125

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = call i32 @av_packet_clone(%struct.TYPE_10__* %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = call i32 (%struct.AVFormatContext*, i32, i8*, ...) @av_log(%struct.AVFormatContext* %105, i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %95
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, -1
  store i64 %112, i64* %110, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %108
  %118 = load %struct.AVFormatContext*, %struct.AVFormatContext** %4, align 8
  %119 = call i32 @flac_queue_flush(%struct.AVFormatContext* %118)
  store i32 %119, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %117, %108
  br label %124

124:                                              ; preds = %123, %55
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %121, %94, %76, %51, %46, %44
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @ff_packet_list_put(i32*, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*, ...) #1

declare dso_local i32 @flac_queue_flush(%struct.AVFormatContext*) #1

declare dso_local i32 @flac_write_audio_packet(%struct.AVFormatContext*, %struct.TYPE_10__*) #1

declare dso_local i32 @av_packet_clone(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
