; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_send_get_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_send_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i64 }

@HTTP_REQUEST_LINE_FORMAT = common dso_local global i8* null, align 8
@GET_METHOD = common dso_local global i32 0, align 4
@HTTP_RANGE_REQUEST = common dso_local global i8* null, align 8
@TRAILING_HEADERS_FORMAT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"comms buffer too small (%i/%u)\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@ENABLE_HTTP_EXTRA_LOGGING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Sending server read request:\0A%s\0A---------------------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64)* @io_http_send_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_http_send_get_request(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = ptrtoint i8* %20 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  %25 = load i8*, i8** @HTTP_REQUEST_LINE_FORMAT, align 8
  %26 = load i32, i32* @GET_METHOD, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vc_uri_path(i32 %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @vc_uri_host(i32 %33)
  %35 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %18, i32 %24, i8* %25, i32 %26, i32 %30, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %7, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  %44 = sub i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %50, %2
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ult i8* %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = ptrtoint i8* %61 to i64
  %64 = ptrtoint i8* %62 to i64
  %65 = sub i64 %63, %64
  %66 = trunc i64 %65 to i32
  %67 = load i8*, i8** @HTTP_RANGE_REQUEST, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 %66, i8* %67, i64 %70, i64 %71)
  %73 = load i8*, i8** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %7, align 8
  br label %76

76:                                               ; preds = %59, %55
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp ult i8* %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = load i8*, i8** @TRAILING_HEADERS_FORMAT, align 8
  %89 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 %87, i8* %88)
  %90 = load i8*, i8** %7, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %7, align 8
  br label %93

93:                                               ; preds = %80, %76
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp uge i8* %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @LOG_ERROR(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %103, i32 8)
  %105 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_RESOURCES, align 4
  store i32 %105, i32* %3, align 4
  br label %117

106:                                              ; preds = %93
  %107 = load i64, i64* @ENABLE_HTTP_EXTRA_LOGGING, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @LOG_DEBUG(i32* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %109, %106
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = call i32 @io_http_send(%struct.TYPE_5__* %115)
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %114, %97
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @vc_uri_path(i32) #1

declare dso_local i32 @vc_uri_host(i32) #1

declare dso_local i32 @LOG_ERROR(i32, i8*, i32, i32) #1

declare dso_local i32 @LOG_DEBUG(i32*, i8*, i8*) #1

declare dso_local i32 @io_http_send(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
