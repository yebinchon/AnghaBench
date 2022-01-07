; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_pjsdec.c_pjs_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_pjsdec.c_pjs_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_PJS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @pjs_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pjs_read_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
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
  br label %99

24:                                               ; preds = %1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = call i32 @avpriv_set_pts_info(%struct.TYPE_14__* %25, i32 64, i32 1, i32 10)
  %27 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @AV_CODEC_ID_PJS, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %92, %24
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @avio_feof(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %93

44:                                               ; preds = %37
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  store i8* %45, i8** %8, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @avio_tell(i32 %48)
  store i64 %49, i64* %9, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %54 = call i32 @ff_get_line(i32 %52, i8* %53, i32 4096)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  br label %93

58:                                               ; preds = %44
  %59 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %60 = call i64 @strcspn(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %61 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 %60
  store i8 0, i8* %61, align 1
  %62 = call i64 @read_ts(i8** %8, i32* %12)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %58
  %67 = load i8*, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strcspn(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call %struct.TYPE_15__* @ff_subtitles_queue_insert(i32* %72, i8* %73, i32 %75, i32 0)
  store %struct.TYPE_15__* %76, %struct.TYPE_15__** %13, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %78 = icmp ne %struct.TYPE_15__* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %99

82:                                               ; preds = %66
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %82, %58
  br label %37

93:                                               ; preds = %57, %37
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__* %94, i32* %96)
  %98 = load i32, i32* %6, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %79, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_14__* @avformat_new_stream(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @avio_feof(i32) #1

declare dso_local i64 @avio_tell(i32) #1

declare dso_local i32 @ff_get_line(i32, i8*, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @read_ts(i8**, i32*) #1

declare dso_local %struct.TYPE_15__* @ff_subtitles_queue_insert(i32*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
