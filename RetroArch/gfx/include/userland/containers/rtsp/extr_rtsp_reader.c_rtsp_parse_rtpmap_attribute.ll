; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_parse_rtpmap_attribute.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_parse_rtpmap_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"RTSP: Secondary payload type attribute - not supported\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@slash_delimiter_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"RTSP: rtpmap: MIME type missing\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"RTSP: rtpmap: sample rate missing\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"RTSP: Failed to allocate space for full MIME type\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@MIME_TYPE_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"RTSP: Failed to add MIME type to URI\00", align 1
@SAMPLE_RATE_NAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"RTSP: Failed to add sample rate to URI\00", align 1
@CHANNELS_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"RTSP: Failed to add channels to URI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i8*)* @rtsp_parse_rtpmap_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_parse_rtpmap_attribute(i32* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %8, align 8
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %9, align 8
  %21 = call i8* @rtsp_parse_extract_ws(i8** %9)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i8* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @LOG_DEBUG(i32* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %31, i32* %4, align 4
  br label %123

32:                                               ; preds = %3
  %33 = load i32, i32* @slash_delimiter_fn, align 4
  %34 = call i8* @rtsp_parse_extract(i8** %9, i32 %33, i32* null)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @LOG_ERROR(i32* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %41, i32* %4, align 4
  br label %123

42:                                               ; preds = %32
  %43 = load i32, i32* @slash_delimiter_fn, align 4
  %44 = call i8* @rtsp_parse_extract(i8** %9, i32 %43, i32* null)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @LOG_ERROR(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %51, i32* %4, align 4
  br label %123

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add nsw i64 %56, %58
  %60 = add nsw i64 %59, 2
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @LOG_ERROR(i32* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %68, i32* %4, align 4
  br label %123

69:                                               ; preds = %52
  %70 = load i8*, i8** %13, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @sprintf(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MIME_TYPE_NAME, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @vc_uri_add_query(i32 %78, i32 %79, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %69
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @free(i8* %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @LOG_ERROR(i32* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %88, i32* %4, align 4
  br label %123

89:                                               ; preds = %69
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SAMPLE_RATE_NAME, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @vc_uri_add_query(i32 %94, i32 %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %89
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @LOG_ERROR(i32* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %102, i32* %4, align 4
  br label %123

103:                                              ; preds = %89
  %104 = call i8* @rtsp_parse_extract_ws(i8** %9)
  store i8* %104, i8** %14, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CHANNELS_NAME, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @vc_uri_add_query(i32 %111, i32 %112, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @LOG_ERROR(i32* %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %119, i32* %4, align 4
  br label %123

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %103
  %122 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %116, %99, %83, %65, %48, %38, %28
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i8* @rtsp_parse_extract_ws(i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*) #1

declare dso_local i8* @rtsp_parse_extract(i8**, i32, i32*) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @vc_uri_add_query(i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
