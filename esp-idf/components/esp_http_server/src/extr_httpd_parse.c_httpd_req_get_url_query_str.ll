; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_url_query_str.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_httpd_req_get_url_query_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { %struct.http_parser_url }
%struct.http_parser_url = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_INVALID_REQ = common dso_local global i32 0, align 4
@UF_QUERY = common dso_local global i32 0, align 4
@ESP_ERR_HTTPD_RESULT_TRUNC = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @httpd_req_get_url_query_str(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca %struct.http_parser_url*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %18, i32* %4, align 4
  br label %77

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = call i32 @httpd_valid_req(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ESP_ERR_HTTPD_INVALID_REQ, align 4
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %19
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %27, align 8
  store %struct.httpd_req_aux* %28, %struct.httpd_req_aux** %8, align 8
  %29 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %30 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %29, i32 0, i32 0
  store %struct.http_parser_url* %30, %struct.http_parser_url** %9, align 8
  %31 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %32 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UF_QUERY, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %43 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* @UF_QUERY, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %41, i64 %50
  store i8* %51, i8** %10, align 8
  %52 = load %struct.http_parser_url*, %struct.http_parser_url** %9, align 8
  %53 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* @UF_QUERY, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %11, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @MIN(i64 %64, i64 %65)
  %67 = call i32 @strlcpy(i8* %62, i8* %63, i32 %66)
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %38
  %72 = load i32, i32* @ESP_ERR_HTTPD_RESULT_TRUNC, align 4
  store i32 %72, i32* %4, align 4
  br label %77

73:                                               ; preds = %38
  %74 = load i32, i32* @ESP_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %77

75:                                               ; preds = %25
  %76 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %73, %71, %23, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @httpd_valid_req(%struct.TYPE_6__*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
