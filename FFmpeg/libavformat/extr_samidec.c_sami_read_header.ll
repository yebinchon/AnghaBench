; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_samidec.c_sami_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_samidec.c_sami_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i32 0, align 4
@AV_CODEC_ID_SAMI = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"</BODY\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<SYNC\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @sami_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sami_read_header(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_25__, align 4
  %7 = alloca %struct.TYPE_25__, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %4, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %22 = call %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_24__* %21, i32* null)
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %5, align 8
  store i8 0, i8* %8, align 1
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ff_text_init_avio(%struct.TYPE_24__* %23, i32* %11, i32 %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %152

33:                                               ; preds = %1
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = call i32 @avpriv_set_pts_info(%struct.TYPE_22__* %34, i32 64, i32 1, i32 1000)
  %36 = load i32, i32* @AVMEDIA_TYPE_SUBTITLE, align 4
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i32, i32* @AV_CODEC_ID_SAMI, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %47 = call i32 @av_bprint_init(%struct.TYPE_25__* %6, i32 0, i32 %46)
  %48 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %49 = call i32 @av_bprint_init(%struct.TYPE_25__* %7, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %134, %33
  %51 = call i32 @ff_text_eof(i32* %11)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %136

54:                                               ; preds = %50
  %55 = call i64 @ff_text_pos(i32* %11)
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = sub nsw i64 %55, %60
  store i64 %61, i64* %13, align 8
  %62 = call i32 @ff_smil_extract_next_text_chunk(i32* %11, %struct.TYPE_25__* %6, i8* %8)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %136

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @av_strncasecmp(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = call i32 @av_bprint_clear(%struct.TYPE_25__* %6)
  br label %136

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @av_strncasecmp(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %77
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @av_bprintf(%struct.TYPE_25__* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %134

94:                                               ; preds = %87
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call %struct.TYPE_23__* @ff_subtitles_queue_insert(i32* %96, i32 %98, i32 %100, i32 %104)
  store %struct.TYPE_23__* %105, %struct.TYPE_23__** %12, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %107 = icmp ne %struct.TYPE_23__* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %94
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = call i32 @AVERROR(i32 %109)
  store i32 %110, i32* %9, align 4
  br label %149

111:                                              ; preds = %94
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %133

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @ff_smil_get_attr_ptr(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %117, i8** %17, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i8*, i8** %17, align 8
  %125 = call i32 @strtol(i8* %124, i32* null, i32 10)
  br label %127

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i32 [ %125, %123 ], [ 0, %126 ]
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  store i32 -1, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %111
  br label %134

134:                                              ; preds = %133, %90
  %135 = call i32 @av_bprint_clear(%struct.TYPE_25__* %6)
  br label %50

136:                                              ; preds = %75, %65, %50
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = call i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_20__* %139, %struct.TYPE_25__* %7)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %149

144:                                              ; preds = %136
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = call i32 @ff_subtitles_queue_finalize(%struct.TYPE_24__* %145, i32* %147)
  br label %149

149:                                              ; preds = %144, %143, %108
  %150 = call i32 @av_bprint_finalize(%struct.TYPE_25__* %6, i32* null)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %149, %30
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.TYPE_22__* @avformat_new_stream(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ff_text_init_avio(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @av_bprint_init(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @ff_text_eof(i32*) #1

declare dso_local i64 @ff_text_pos(i32*) #1

declare dso_local i32 @ff_smil_extract_next_text_chunk(i32*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @av_strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @av_bprint_clear(%struct.TYPE_25__*) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ff_subtitles_queue_insert(i32*, i32, i32, i32) #1

declare dso_local i8* @ff_smil_get_attr_ptr(i32, i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @ff_bprint_to_codecpar_extradata(%struct.TYPE_20__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ff_subtitles_queue_finalize(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
