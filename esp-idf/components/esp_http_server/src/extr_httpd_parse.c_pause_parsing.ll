; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_pause_parsing.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_pause_parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.httpd_req* }
%struct.httpd_req = type { %struct.httpd_req_aux* }
%struct.httpd_req_aux = type { i8* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"parsing beyond valid data = %d\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"data too large for un-recv = %d\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"paused\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*)* @pause_parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pause_parsing(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.httpd_req*, align 8
  %8 = alloca %struct.httpd_req_aux*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load %struct.httpd_req*, %struct.httpd_req** %15, align 8
  store %struct.httpd_req* %16, %struct.httpd_req** %7, align 8
  %17 = load %struct.httpd_req*, %struct.httpd_req** %7, align 8
  %18 = getelementptr inbounds %struct.httpd_req, %struct.httpd_req* %17, i32 0, i32 0
  %19 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %18, align 8
  store %struct.httpd_req_aux* %19, %struct.httpd_req_aux** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.httpd_req_aux*, %struct.httpd_req_aux** %8, align 8
  %26 = getelementptr inbounds %struct.httpd_req_aux, %struct.httpd_req_aux* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = ptrtoint i8* %24 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sub nsw i64 %23, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @LOG_FMT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @ESP_LOGE(i32 %36, i32 %37, i32 %39)
  %41 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %41, i32* %3, align 4
  br label %70

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.httpd_req*, %struct.httpd_req** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @httpd_unrecv(%struct.httpd_req* %47, i8* %48, i32 %49)
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 @LOG_FMT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ESP_LOGE(i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @ESP_FAIL, align 4
  store i32 %57, i32* %3, align 4
  br label %70

58:                                               ; preds = %45, %42
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = call i32 @http_parser_pause(%struct.TYPE_6__* %62, i32 1)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @LOG_FMT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @ESP_LOGD(i32 %66, i32 %67)
  %69 = load i32, i32* @ESP_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %52, %35
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ESP_LOGE(i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @httpd_unrecv(%struct.httpd_req*, i8*, i32) #1

declare dso_local i32 @http_parser_pause(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
