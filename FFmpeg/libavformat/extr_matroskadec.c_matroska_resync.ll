; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_resync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Seek to desired resync point failed. Seeking to earliest point available instead.\0A\00", align 1
@MATROSKA_ID_INFO = common dso_local global i32 0, align 4
@MATROSKA_ID_TRACKS = common dso_local global i32 0, align 4
@MATROSKA_ID_CUES = common dso_local global i32 0, align 4
@MATROSKA_ID_TAGS = common dso_local global i32 0, align 4
@MATROSKA_ID_SEEKHEAD = common dso_local global i32 0, align 4
@MATROSKA_ID_ATTACHMENTS = common dso_local global i32 0, align 4
@MATROSKA_ID_CLUSTER = common dso_local global i32 0, align 4
@MATROSKA_ID_CHAPTERS = common dso_local global i32 0, align 4
@EBML_UNKNOWN_LENGTH = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64)* @matroska_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_resync(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = call i64 @avio_tell(%struct.TYPE_15__* %14)
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 1
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i64 @avio_seek(%struct.TYPE_15__* %18, i64 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load i32, i32* @AV_LOG_WARNING, align 4
  %29 = call i32 @av_log(%struct.TYPE_12__* %27, i32 %28, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = call i64 @avio_tell(%struct.TYPE_15__* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = add nsw i64 %32, %39
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i64 @FFMAX(i64 %40, i64 %42)
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i64 @avio_seek(%struct.TYPE_15__* %30, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %24, %17, %2
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = call i32 @avio_rb32(%struct.TYPE_15__* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %96, %46
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = call i32 @avio_feof(%struct.TYPE_15__* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %102

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @MATROSKA_ID_INFO, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %86, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MATROSKA_ID_TRACKS, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %86, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MATROSKA_ID_CUES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MATROSKA_ID_TAGS, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %86, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MATROSKA_ID_SEEKHEAD, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @MATROSKA_ID_ATTACHMENTS, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MATROSKA_ID_CLUSTER, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MATROSKA_ID_CHAPTERS, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82, %78, %74, %70, %66, %62, %58, %54
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @matroska_reset_status(%struct.TYPE_14__* %87, i32 %88, i32 -1)
  %90 = load i32, i32* @EBML_UNKNOWN_LENGTH, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  store i32 %90, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %117

96:                                               ; preds = %82
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = call i32 @avio_r8(%struct.TYPE_15__* %99)
  %101 = or i32 %98, %100
  store i32 %101, i32* %7, align 4
  br label %49

102:                                              ; preds = %49
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  br label %115

113:                                              ; preds = %102
  %114 = load i32, i32* @AVERROR_EOF, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = phi i32 [ %112, %109 ], [ %114, %113 ]
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %86
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @avio_tell(%struct.TYPE_15__*) #1

declare dso_local i64 @avio_seek(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i64 @FFMAX(i64, i64) #1

declare dso_local i32 @avio_rb32(%struct.TYPE_15__*) #1

declare dso_local i32 @avio_feof(%struct.TYPE_15__*) #1

declare dso_local i32 @matroska_reset_status(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @avio_r8(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
