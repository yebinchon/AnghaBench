; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_ass_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_assdec.c_ass_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_ASS = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*)* @ass_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ass_read_header(%struct.TYPE_27__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__, align 8
  %6 = alloca %struct.TYPE_28__, align 8
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  store %struct.TYPE_29__* %17, %struct.TYPE_29__** %4, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ff_text_init_avio(%struct.TYPE_27__* %18, i32* %10, i32 %21)
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %24 = call %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_27__* %23, i32* null)
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %9, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %26 = icmp ne %struct.TYPE_25__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %112

30:                                               ; preds = %1
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %32 = call i32 @avpriv_set_pts_info(%struct.TYPE_25__* %31, i32 64, i32 1, i32 100)
  %33 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* @AV_CODEC_ID_ASS, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %44 = call i32 @av_bprint_init(%struct.TYPE_28__* %5, i32 0, i32 %43)
  %45 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %46 = call i32 @av_bprint_init(%struct.TYPE_28__* %6, i32 0, i32 %45)
  %47 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %48 = call i32 @av_bprint_init(%struct.TYPE_28__* %7, i32 0, i32 %47)
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %84, %67, %30
  %53 = call i8* @get_line(%struct.TYPE_28__* %6, i32* %10)
  store i8* %53, i8** %11, align 8
  %54 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  store i8* %54, i8** %12, align 8
  store i32 -1, i32* %13, align 4
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  br label %94

61:                                               ; preds = %52
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @read_dialogue(%struct.TYPE_29__* %62, %struct.TYPE_28__* %7, i32* %64, i8** %12, i32* %13)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @av_bprintf(%struct.TYPE_28__* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %69)
  br label %52

71:                                               ; preds = %61
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.TYPE_26__* @ff_subtitles_queue_insert(%struct.TYPE_23__* %73, i32* %75, i32 %77, i32 0)
  store %struct.TYPE_26__* %78, %struct.TYPE_26__** %14, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %80 = icmp ne %struct.TYPE_26__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = call i32 @AVERROR(i32 %82)
  store i32 %83, i32* %8, align 4
  br label %107

84:                                               ; preds = %71
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %52

94:                                               ; preds = %60
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = call i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_24__* %97, %struct.TYPE_28__* %5)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %107

102:                                              ; preds = %94
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_27__* %103, %struct.TYPE_23__* %105)
  br label %107

107:                                              ; preds = %102, %101, %81
  %108 = call i32 @av_bprint_finalize(%struct.TYPE_28__* %5, i32* null)
  %109 = call i32 @av_bprint_finalize(%struct.TYPE_28__* %6, i32* null)
  %110 = call i32 @av_bprint_finalize(%struct.TYPE_28__* %7, i32* null)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %107, %27
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @ff_text_init_avio(%struct.TYPE_27__*, i32*, i32) #1

declare dso_local %struct.TYPE_25__* @avformat_new_stream(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i8* @get_line(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @read_dialogue(%struct.TYPE_29__*, %struct.TYPE_28__*, i32*, i8**, i32*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_28__*, i8*, i32*) #1

declare dso_local %struct.TYPE_26__* @ff_subtitles_queue_insert(%struct.TYPE_23__*, i32*, i32, i32) #1

declare dso_local i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_24__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_27__*, %struct.TYPE_23__*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_28__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
