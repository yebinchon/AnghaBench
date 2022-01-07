; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_complete_track.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtsp/extr_rtsp_reader.c_rtsp_complete_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, i32, i64, i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"RTSP: Track control URI is missing\00", align 1
@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"RTSP: Failed to set track reader URI host\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_URI_OPEN_FAILED = common dso_local global i64 0, align 8
@DYNAMIC_PORT_ATTEMPTS_MAX = common dso_local global i32 0, align 4
@VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@VC_CONTAINER_CONTROL_IO_SET_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@UDP_READ_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_18__*)* @rtsp_complete_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rtsp_complete_track(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %7, align 8
  %20 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = call i32 @LOG_ERROR(%struct.TYPE_20__* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 8
  store i64 %28, i64* %3, align 8
  br label %109

29:                                               ; preds = %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @vc_uri_set_host(i32* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = call i32 @LOG_ERROR(%struct.TYPE_20__* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %43, i64* %3, align 8
  br label %109

44:                                               ; preds = %34
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %47 = call i64 @rtsp_open_network_reader(%struct.TYPE_20__* %45, %struct.TYPE_19__* %46)
  store i64 %47, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %64, %44
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @VC_CONTAINER_ERROR_URI_OPEN_FAILED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @DYNAMIC_PORT_ATTEMPTS_MAX, align 4
  %55 = icmp slt i32 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %67

58:                                               ; preds = %56
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = call i64 @rtsp_open_network_reader(%struct.TYPE_20__* %61, %struct.TYPE_19__* %62)
  store i64 %63, i64* %8, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %48

67:                                               ; preds = %56
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, align 4
  %76 = call i64 @vc_container_control(i32 %74, i32 %75, i32 0)
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @VC_CONTAINER_CONTROL_IO_SET_READ_BUFFER_SIZE, align 4
  %86 = load i32, i32* @UDP_READ_BUFFER_SIZE, align 4
  %87 = call i64 @vc_container_control(i32 %84, i32 %85, i32 %86)
  store i64 %87, i64* %8, align 8
  br label %88

88:                                               ; preds = %81, %77
  br label %93

89:                                               ; preds = %29
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = call i64 @rtsp_open_file_reader(%struct.TYPE_20__* %90, %struct.TYPE_19__* %91)
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %89, %88
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @vc_uri_release(i32* %96)
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = call i64 @rtsp_copy_track_data_from_reader(%struct.TYPE_20__* %104, %struct.TYPE_18__* %105)
  store i64 %106, i64* %8, align 8
  br label %107

107:                                              ; preds = %103, %93
  %108 = load i64, i64* %8, align 8
  store i64 %108, i64* %3, align 8
  br label %109

109:                                              ; preds = %107, %40, %25
  %110 = load i64, i64* %3, align 8
  ret i64 %110
}

declare dso_local i32 @LOG_ERROR(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @vc_uri_set_host(i32*, i8*) #1

declare dso_local i64 @rtsp_open_network_reader(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @vc_container_control(i32, i32, i32) #1

declare dso_local i64 @rtsp_open_file_reader(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @vc_uri_release(i32*) #1

declare dso_local i64 @rtsp_copy_track_data_from_reader(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
