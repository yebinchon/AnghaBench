; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_vc_container_io_http_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_vc_container_io_http_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32*, i32, i32 (%struct.TYPE_8__*)*, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION = common dso_local global i64 0, align 8
@HTTP_URI_LENGTH_MAX = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_URI_OPEN_FAILED = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@HEADER_LIST_INITIAL_CAPACITY = common dso_local global i32 0, align 4
@io_http_header_comparator = common dso_local global i64 0, align 8
@IO_HTTP_DEFAULT_PORT = common dso_local global i32 0, align 4
@io_http_read = common dso_local global i32 0, align 4
@io_http_control = common dso_local global i32 0, align 4
@io_http_seek = common dso_local global i32 0, align 4
@VC_CONTAINER_IO_CAPS_NO_CACHING = common dso_local global i32 0, align 4
@VC_CONTAINER_IO_CAPS_SEEK_SLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vc_container_io_http_open(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %10, i64* %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @VC_CONTAINER_PARAM_UNUSED(i8* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vc_uri_scheme(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vc_uri_scheme(i32 %21)
  %23 = call i64 @strcasecmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18, %3
  %26 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %26, i64* %4, align 8
  br label %117

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @VC_CONTAINER_IO_MODE_WRITE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* @VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION, align 8
  store i64 %32, i64* %8, align 8
  br label %113

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @strlen(i32 %36)
  %38 = load i64, i64* @HTTP_URI_LENGTH_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* @VC_CONTAINER_ERROR_URI_OPEN_FAILED, align 8
  store i64 %41, i64* %8, align 8
  br label %113

42:                                               ; preds = %33
  %43 = call %struct.TYPE_9__* @calloc(i32 1, i32 4)
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %9, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %47, i64* %8, align 8
  br label %113

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 7
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load i32, i32* @HEADER_LIST_INITIAL_CAPACITY, align 4
  %53 = load i64, i64* @io_http_header_comparator, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @vc_containers_list_create(i32 %52, i32 4, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %48
  %63 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %63, i64* %8, align 8
  br label %113

64:                                               ; preds = %48
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @vc_uri_port(i32 %67)
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IO_HTTP_DEFAULT_PORT, align 4
  %75 = call i32 @vc_uri_set_port(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = call i64 @io_http_open_socket(%struct.TYPE_8__* %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %113

83:                                               ; preds = %76
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = call i64 @io_http_head(%struct.TYPE_8__* %84)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %113

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  store i32 (%struct.TYPE_8__*)* @io_http_close, i32 (%struct.TYPE_8__*)** %92, align 8
  %93 = load i32, i32* @io_http_read, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i32* null, i32** %97, align 8
  %98 = load i32, i32* @io_http_control, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @io_http_seek, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @VC_CONTAINER_IO_CAPS_NO_CACHING, align 4
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @VC_CONTAINER_IO_CAPS_SEEK_SLOW, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %112, i64* %4, align 8
  br label %117

113:                                              ; preds = %89, %82, %62, %46, %40, %31
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = call i32 @io_http_close(%struct.TYPE_8__* %114)
  %116 = load i64, i64* %8, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %113, %90, %25
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i8*) #1

declare dso_local i32 @vc_uri_scheme(i32) #1

declare dso_local i64 @strcasecmp(i32, i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local %struct.TYPE_9__* @calloc(i32, i32) #1

declare dso_local i32 @vc_containers_list_create(i32, i32, i32) #1

declare dso_local i32* @vc_uri_port(i32) #1

declare dso_local i32 @vc_uri_set_port(i32, i32) #1

declare dso_local i64 @io_http_open_socket(%struct.TYPE_8__*) #1

declare dso_local i64 @io_http_head(%struct.TYPE_8__*) #1

declare dso_local i32 @io_http_close(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
