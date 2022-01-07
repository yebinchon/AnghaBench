; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewer1dec.c_subviewer1_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_subviewer1dec.c_subviewer1_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_SUBVIEWER1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[DELAY]\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[%d:%d:%d]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @subviewer1_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subviewer1_read_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__* %18, i32* null)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = icmp ne %struct.TYPE_14__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %139

25:                                               ; preds = %1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %26, i32 64, i32 1, i32 1)
  %28 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @AV_CODEC_ID_SUBVIEWER1, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %133, %25
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @avio_feof(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br i1 %44, label %45, label %134

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %50 = call i32 @ff_get_line(i32 %48, i8* %49, i32 4096)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  br label %134

54:                                               ; preds = %45
  %55 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %63 = call i32 @ff_get_line(i32 %61, i8* %62, i32 4096)
  %64 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %65 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %4)
  br label %66

66:                                               ; preds = %58, %54
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %68 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %10, i32* %11, i32* %12)
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %133

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @avio_tell(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, 3600
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %79, 60
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %14, align 4
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %93 = call i32 @ff_get_line(i32 %91, i8* %92, i32 4096)
  store i32 %93, i32* %9, align 4
  %94 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %95 = call i64 @strcspn(i8* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %96 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 %95
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %98 = load i8, i8* %97, align 16
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %70
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = icmp ne %struct.TYPE_15__* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %103, %100
  br label %132

112:                                              ; preds = %70
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds [4096 x i8], [4096 x i8]* %8, i64 0, i64 0
  %116 = load i32, i32* %9, align 4
  %117 = call %struct.TYPE_15__* @ff_subtitles_queue_insert(i32* %114, i8* %115, i32 %116, i32 0)
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %5, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = icmp ne %struct.TYPE_15__* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = call i32 @AVERROR(i32 %121)
  store i32 %122, i32* %2, align 4
  br label %139

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 4
  br label %132

132:                                              ; preds = %123, %111
  br label %133

133:                                              ; preds = %132, %66
  br label %38

134:                                              ; preds = %53, %38
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__* %135, i32* %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %120, %22
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i32 @ff_get_line(i32, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local %struct.TYPE_15__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
