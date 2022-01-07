; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_add_metadata_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfdec.c_mxf_add_metadata_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i64*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate metadata stream\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_DATA = common dso_local global i32 0, align 4
@AV_CODEC_ID_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"file_package_umid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"track_name\00", align 1
@ff_mxf_data_definition_uls = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"data_type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_18__*)* @mxf_add_metadata_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxf_add_metadata_stream(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_20__, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call %struct.TYPE_19__* @mxf_resolve_sourceclip(%struct.TYPE_21__* %20, i32* %28)
  store %struct.TYPE_19__* %29, %struct.TYPE_19__** %6, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = icmp ne %struct.TYPE_19__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %34

33:                                               ; preds = %19
  br label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %11

37:                                               ; preds = %33, %11
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %117

41:                                               ; preds = %37
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_23__* @avformat_new_stream(i32 %44, i32* null)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %9, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %47 = icmp ne %struct.TYPE_23__* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AV_LOG_ERROR, align 4
  %53 = call i32 @av_log(i32 %51, i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = call i32 @AVERROR(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %117

56:                                               ; preds = %41
  %57 = load i32, i32* @AVMEDIA_TYPE_DATA, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* @AV_CODEC_ID_NONE, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @memcpy(i32* %72, i32 %75, i32 16)
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32* %77, i32 %80, i32 16)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = call i32 @mxf_add_umid_metadata(i32* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %8)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %56
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = call i32 @av_dict_set(i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64* %101, i32 0)
  br label %103

103:                                              ; preds = %96, %89, %56
  %104 = load i32, i32* @ff_mxf_data_definition_uls, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = call %struct.TYPE_22__* @mxf_get_codec_ul(i32 %104, i32* %108)
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %7, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64* @av_get_media_type_string(i32 %114)
  %116 = call i32 @av_dict_set(i32* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64* %115, i32 0)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %103, %48, %40
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_19__* @mxf_resolve_sourceclip(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_23__* @avformat_new_stream(i32, i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mxf_add_umid_metadata(i32*, i8*, %struct.TYPE_20__*) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i64*, i32) #1

declare dso_local %struct.TYPE_22__* @mxf_get_codec_ul(i32, i32*) #1

declare dso_local i64* @av_get_media_type_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
