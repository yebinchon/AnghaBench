; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpl2dec.c_mpl2_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpl2dec.c_mpl2_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_MPL2 = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @mpl2_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl2_read_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %4, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = call %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__* %17, i32* null)
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %105

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %25, i32 64, i32 1, i32 10)
  %27 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @AV_CODEC_ID_MPL2, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @avio_rb24(i32 %39)
  %41 = icmp ne i32 %40, 15711167
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SEEK_CUR, align 4
  %47 = call i32 @avio_seek(i32 %45, i32 -3, i32 %46)
  br label %48

48:                                               ; preds = %42, %24
  br label %49

49:                                               ; preds = %98, %48
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @avio_feof(i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %99

56:                                               ; preds = %49
  %57 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8* %57, i8** %8, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @avio_tell(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %66 = call i32 @ff_get_line(i32 %64, i8* %65, i32 4096)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  br label %99

70:                                               ; preds = %56
  %71 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %72 = call i64 @strcspn(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %73 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %72
  store i8 0, i8* %73, align 1
  %74 = call i32 @read_ts(i8** %8, i32* %11, i32* %12)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %98, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = call %struct.TYPE_15__* @ff_subtitles_queue_insert(i32* %78, i8* %79, i32 %81, i32 0)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %13, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = call i32 @AVERROR(i32 %86)
  store i32 %87, i32* %2, align 4
  br label %105

88:                                               ; preds = %76
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %88, %70
  br label %49

99:                                               ; preds = %69, %49
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__* %100, i32* %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %85, %21
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @avio_rb24(i32) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i32 @avio_tell(i32) #1

declare dso_local i32 @ff_get_line(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @read_ts(i8**, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
