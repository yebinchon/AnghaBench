; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_create_track_for_media_field.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_create_track_for_media_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__** }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i8*, i64, i32 }

@RTSP_TRACKS_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"RTSP: Too many media items in SDP data, only %d are supported.\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"RTSP: Failure to parse media field\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@RTP_SCHEME = common dso_local global i32 0, align 4
@PAYLOAD_TYPE_NAME = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"RTSP: Memory allocation failure creating track\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_14__**)* @rtsp_create_track_for_media_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_create_track_for_media_field(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %9, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RTSP_TRACKS_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = load i64, i64* @RTSP_TRACKS_MAX, align 8
  %25 = call i32 @LOG_DEBUG(%struct.TYPE_16__* %23, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %26, i32* %4, align 4
  br label %132

27:                                               ; preds = %3
  %28 = call i8* @rtsp_parse_extract_ws(i8** %10)
  store i8* %28, i8** %11, align 8
  %29 = call i8* @rtsp_parse_extract_ws(i8** %10)
  store i8* %29, i8** %12, align 8
  %30 = call i8* @rtsp_parse_extract_ws(i8** %10)
  store i8* %30, i8** %13, align 8
  %31 = call i8* @rtsp_parse_extract_ws(i8** %10)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load i8*, i8** %12, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = load i8, i8* %44, align 1
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %39, %35, %27
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i32 @LOG_ERROR(%struct.TYPE_16__* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %50, i32* %4, align 4
  br label %132

51:                                               ; preds = %43
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call %struct.TYPE_14__* @vc_container_allocate_track(%struct.TYPE_16__* %52, i32 32)
  store %struct.TYPE_14__* %53, %struct.TYPE_14__** %8, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = icmp ne %struct.TYPE_14__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %111

57:                                               ; preds = %51
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %9, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 3
  %66 = call i32 @sscanf(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %65)
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = call i64 (...) @vc_uri_create()
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %57
  br label %111

81:                                               ; preds = %57
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @RTP_SCHEME, align 4
  %86 = call i32 @vc_uri_set_scheme(i64 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %111

89:                                               ; preds = %81
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @PAYLOAD_TYPE_NAME, align 4
  %94 = load i8*, i8** %14, align 8
  %95 = call i32 @vc_uri_add_query(i64 %92, i32 %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %111

98:                                               ; preds = %89
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %104, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %102, i64 %105
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %107, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %109, align 8
  %110 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %110, i32* %4, align 4
  br label %132

111:                                              ; preds = %97, %88, %80, %56
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = icmp ne %struct.TYPE_14__* %112, null
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @vc_uri_release(i64 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = call i32 @vc_container_free_track(%struct.TYPE_16__* %125, %struct.TYPE_14__* %126)
  br label %128

128:                                              ; preds = %124, %111
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %130 = call i32 @LOG_ERROR(%struct.TYPE_16__* %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %131 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %98, %47, %22
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i8* @rtsp_parse_extract_ws(i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_14__* @vc_container_allocate_track(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @vc_uri_create(...) #1

declare dso_local i32 @vc_uri_set_scheme(i64, i32) #1

declare dso_local i32 @vc_uri_add_query(i64, i32, i8*) #1

declare dso_local i32 @vc_uri_release(i64) #1

declare dso_local i32 @vc_container_free_track(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
