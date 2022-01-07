; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_wvdec.c_wv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_wvdec.c_wv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__*, i32, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AV_CODEC_ID_WAVPACK = common dso_local global i32 0, align 4
@AVIO_SEEKABLE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @wv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wv_read_header(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %4, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %5, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  br label %17

17:                                               ; preds = %38, %1
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %20 = call i32 @wv_read_block_header(%struct.TYPE_23__* %18, %struct.TYPE_22__* %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %140

24:                                               ; preds = %17
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @avio_skip(%struct.TYPE_22__* %31, i32 %35)
  br label %38

37:                                               ; preds = %24
  br label %39

38:                                               ; preds = %30
  br label %17

39:                                               ; preds = %37
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = call %struct.TYPE_21__* @avformat_new_stream(%struct.TYPE_23__* %40, i32* null)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %6, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = icmp ne %struct.TYPE_21__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @AVERROR(i32 %45)
  store i32 %46, i32* %2, align 4
  br label %140

47:                                               ; preds = %39
  %48 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 5
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @AV_CODEC_ID_WAVPACK, align 4
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  store i32 %60, i32* %64, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @avpriv_set_pts_info(%struct.TYPE_21__* %86, i32 64, i32 1, i32 %89)
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %47
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %98, %47
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AVIO_SEEKABLE_NORMAL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %105
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = call i32 @avio_tell(%struct.TYPE_22__* %117)
  store i32 %118, i32* %8, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %120 = call i32 @ff_ape_parse_tag(%struct.TYPE_23__* %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %127 = call i32 @av_dict_get(i32 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %114
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %131 = call i32 @ff_id3v1_read(%struct.TYPE_23__* %130)
  br label %132

132:                                              ; preds = %129, %114
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @SEEK_SET, align 4
  %138 = call i32 @avio_seek(%struct.TYPE_22__* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %105
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %44, %22
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @wv_read_block_header(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @avio_skip(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_21__* @avformat_new_stream(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avpriv_set_pts_info(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @avio_tell(%struct.TYPE_22__*) #1

declare dso_local i32 @ff_ape_parse_tag(%struct.TYPE_23__*) #1

declare dso_local i32 @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @ff_id3v1_read(%struct.TYPE_23__*) #1

declare dso_local i32 @avio_seek(%struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
