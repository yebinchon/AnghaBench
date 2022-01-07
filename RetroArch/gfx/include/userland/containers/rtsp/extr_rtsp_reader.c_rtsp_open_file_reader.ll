; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_open_file_reader.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_open_file_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"RTSP: Failed to create RTSP URI\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"RTSP: Failed to parse RTSP URI <%s>\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"RTSP: RTSP URI path missing <%s>\00", align 1
@RTP_PATH_EXTRA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"RTSP: Failed to create buffer for RTP path\00", align 1
@RTP_PATH_EXTENSION_FORMAT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"RTSP: Failed to store RTP path <%s>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @rtsp_open_file_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtsp_open_file_reader(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* null, i32** %7, align 8
  store i8* null, i8** %10, align 8
  %12 = call i32* (...) @vc_uri_create()
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = call i32 (%struct.TYPE_15__*, i8*, ...) @LOG_ERROR(%struct.TYPE_15__* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %18, i32* %6, align 4
  br label %132

19:                                               ; preds = %2
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @vc_uri_parse(i32* %20, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %19
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.TYPE_15__*, i8*, ...) @LOG_ERROR(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %40, i32* %6, align 4
  br label %132

41:                                               ; preds = %19
  %42 = load i32*, i32** %7, align 8
  %43 = call i8* @vc_uri_path(i32* %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (%struct.TYPE_15__*, i8*, ...) @LOG_ERROR(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %60, i32* %6, align 4
  br label %132

61:                                               ; preds = %46
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RTP_PATH_EXTRA, align 4
  %66 = add nsw i32 %64, %65
  %67 = add nsw i32 %66, 1
  %68 = call i64 @calloc(i32 1, i32 %67)
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %10, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %61
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = call i32 (%struct.TYPE_15__*, i8*, ...) @LOG_ERROR(%struct.TYPE_15__* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %75, i32* %6, align 4
  br label %132

76:                                               ; preds = %61
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @strncpy(i8* %77, i8* %78, i32 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = call i8* @strrchr(i8* %81, i8 signext 46)
  store i8* %82, i8** %11, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %76
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %85, %76
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @RTP_PATH_EXTRA, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sub nsw i64 %96, %101
  %103 = trunc i64 %102 to i32
  %104 = load i8*, i8** @RTP_PATH_EXTENSION_FORMAT, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @snprintf(i8* %92, i32 %103, i8* %104, i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @vc_uri_set_path(i32 %115, i8* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %91
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 (%struct.TYPE_15__*, i8*, ...) @LOG_ERROR(%struct.TYPE_15__* %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %121)
  %123 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %123, i32* %6, align 4
  br label %132

124:                                              ; preds = %91
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @vc_uri_release(i32* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = call i32 @rtsp_open_track_reader(%struct.TYPE_15__* %129, %struct.TYPE_14__* %130)
  store i32 %131, i32* %3, align 4
  br label %146

132:                                              ; preds = %119, %72, %50, %30, %15
  %133 = load i8*, i8** %10, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @free(i8* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32*, i32** %7, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @vc_uri_release(i32* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %124
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32* @vc_uri_create(...) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @vc_uri_parse(i32*, i8*) #1

declare dso_local i8* @vc_uri_path(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @vc_uri_set_path(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vc_uri_release(i32*) #1

declare dso_local i32 @rtsp_open_track_reader(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
