; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_verify_url.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_verify_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.httpd_req* }
%struct.TYPE_5__ = type { i8*, i64 }
%struct.httpd_req = type { i64, i64, %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { %struct.http_parser_url }
%struct.http_parser_url = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"HTTP Operation not supported\00", align 1
@HTTPD_501_METHOD_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"URI length (%d) greater than supported (%d)\00", align 1
@HTTPD_414_URI_TOO_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"received URI = %s\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unsupported HTTP version = %d.%d\00", align 1
@HTTPD_505_VERSION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@HTTP_CONNECT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"http_parser_parse_url failed with errno = %d\00", align 1
@HTTPD_400_BAD_REQUEST = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @verify_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_url(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.httpd_req*, align 8
  %6 = alloca %struct.httpd_req_aux*, align 8
  %7 = alloca %struct.http_parser_url*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.httpd_req*, %struct.httpd_req** %15, align 8
  store %struct.httpd_req* %16, %struct.httpd_req** %5, align 8
  %17 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %18 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %17, i32 0, i32 2
  %19 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %18, align 8
  store %struct.httpd_req_aux* %19, %struct.httpd_req_aux** %6, align 8
  %20 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %6, align 8
  %21 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %20, i32 0, i32 0
  store %struct.http_parser_url* %21, %struct.http_parser_url** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %34 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = icmp slt i64 %32, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 @LOG_FMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %37, i32 %38)
  %40 = load i32, i32* @HTTPD_501_METHOD_NOT_IMPLEMENTED, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ESP_FAIL, align 4
  store i32 %43, i32* %2, align 4
  br label %127

44:                                               ; preds = %1
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, 1
  %47 = icmp ult i64 8, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 @LOG_FMT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %9, align 8
  %52 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %49, i32 %50, i64 %51, i64 8)
  %53 = load i32, i32* @HTTPD_414_URI_TOO_LONG, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @ESP_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %127

57:                                               ; preds = %44
  %58 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %59 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  %65 = call i32 @strlcpy(i8* %61, i8* %62, i64 %64)
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @LOG_FMT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %69 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ESP_LOGD(i32 %66, i32 %67, i64 %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %95

76:                                               ; preds = %57
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* @TAG, align 4
  %83 = call i32 @LOG_FMT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %82, i32 %83, i32 %86, i32 %89)
  %91 = load i32, i32* @HTTPD_505_VERSION_NOT_SUPPORTED, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ESP_FAIL, align 4
  store i32 %94, i32* %2, align 4
  br label %127

95:                                               ; preds = %76, %57
  %96 = load %struct.http_parser_url*, %struct.http_parser_url** %7, align 8
  %97 = call i32 @http_parser_url_init(%struct.http_parser_url* %96)
  %98 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %99 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %102 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @strlen(i64 %103)
  %105 = load %struct.httpd_req*, %struct.httpd_req** %5, align 8
  %106 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @HTTP_CONNECT, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load %struct.http_parser_url*, %struct.http_parser_url** %7, align 8
  %112 = call i64 @http_parser_parse_url(i64 %100, i32 %104, i32 %110, %struct.http_parser_url* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %95
  %115 = load i32, i32* @TAG, align 4
  %116 = call i32 @LOG_FMT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %115, i32 %116, i32 %119)
  %121 = load i32, i32* @HTTPD_400_BAD_REQUEST, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @ESP_FAIL, align 4
  store i32 %124, i32* %2, align 4
  br label %127

125:                                              ; preds = %95
  %126 = load i32, i32* @ESP_OK, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %125, %114, %81, %48, %36
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @ESP_LOGD(i32, i32, i64) #1

declare dso_local i32 @http_parser_url_init(%struct.http_parser_url*) #1

declare dso_local i64 @http_parser_parse_url(i64, i32, i32, %struct.http_parser_url*) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
