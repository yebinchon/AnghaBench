; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_header_field.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_header_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i8*, %struct.httpd_req* }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.httpd_req = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8*, i32 }

@PARSING_URL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@PARSING_FAILED = common dso_local global i8* null, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"headers begin\00", align 1
@PARSING_HDR_FIELD = common dso_local global i64 0, align 8
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i8* null, align 8
@PARSING_HDR_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected state transition\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"processing field = %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i8*, i64)* @cb_header_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cb_header_field(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.httpd_req*, align 8
  %10 = alloca %struct.httpd_req_aux*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.httpd_req*, %struct.httpd_req** %17, align 8
  store %struct.httpd_req* %18, %struct.httpd_req** %9, align 8
  %19 = load %struct.httpd_req*, %struct.httpd_req** %9, align 8
  %20 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %19, i32 0, i32 0
  %21 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %20, align 8
  store %struct.httpd_req_aux* %21, %struct.httpd_req_aux** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PARSING_URL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %3
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = call i64 @verify_url(%struct.TYPE_9__* %28)
  %30 = load i64, i64* @ESP_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i8*, i8** @PARSING_FAILED, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* @ESP_FAIL, align 8
  store i64 %37, i64* %4, align 8
  br label %143

38:                                               ; preds = %27
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 @LOG_FMT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %39, i32 %40)
  %42 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %10, align 8
  %43 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 8
  %51 = load i64, i64* @PARSING_HDR_FIELD, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @pause_parsing(%struct.TYPE_9__* %54, i8* %55)
  %57 = load i64, i64* @ESP_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %38
  %60 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @PARSING_FAILED, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i64, i64* @ESP_FAIL, align 8
  store i64 %67, i64* %4, align 8
  br label %143

68:                                               ; preds = %38
  br label %128

69:                                               ; preds = %3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PARSING_HDR_VALUE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(i8* %86, i8 signext 0, i32 %92)
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 0, i32* %100, align 8
  %101 = load i64, i64* @PARSING_HDR_FIELD, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %10, align 8
  %105 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  br label %127

108:                                              ; preds = %69
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PARSING_HDR_FIELD, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load i32, i32* @TAG, align 4
  %116 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i32 @ESP_LOGE(i32 %115, i32 %116)
  %118 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @PARSING_FAILED, align 8
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* @ESP_FAIL, align 8
  store i64 %125, i64* %4, align 8
  br label %143

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %75
  br label %128

128:                                              ; preds = %127, %68
  %129 = load i32, i32* @TAG, align 4
  %130 = call i32 @LOG_FMT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i64, i64* %7, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %129, i32 %130, i64 %131, i8* %132)
  %134 = load i64, i64* %7, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = add i64 %139, %134
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  %142 = load i64, i64* @ESP_OK, align 8
  store i64 %142, i64* %4, align 8
  br label %143

143:                                              ; preds = %128, %114, %59, %32
  %144 = load i64, i64* %4, align 8
  ret i64 %144
}

declare dso_local i64 @verify_url(%struct.TYPE_9__*) #1

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @pause_parsing(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
