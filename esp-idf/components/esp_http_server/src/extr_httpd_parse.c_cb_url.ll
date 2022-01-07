; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_url.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i64 }

@PARSING_IDLE = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"message begin\00", align 1
@PARSING_URL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected state transition\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@PARSING_FAILED = common dso_local global i8* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"processing url = %.*s\00", align 1
@HTTPD_MAX_URI_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"URI length (%d) greater than supported (%d)\00", align 1
@HTTPD_414_URI_TOO_LONG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @cb_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_url(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PARSING_IDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i32, i32* @TAG, align 4
  %20 = call i32 @LOG_FMT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %19, i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i8* %22, i8** %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* @PARSING_URL, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PARSING_URL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load i32, i32* @TAG, align 4
  %40 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @ESP_LOGE(i32 %39, i32 %40)
  %42 = load i32, i32* @HTTPD_500_INTERNAL_SERVER_ERROR, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @PARSING_FAILED, align 8
  %46 = ptrtoint i8* %45 to i64
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @ESP_FAIL, align 4
  store i32 %49, i32* %4, align 4
  br label %84

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i32, i32* @TAG, align 4
  %53 = call i32 @LOG_FMT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i64, i64* %7, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i32, i32, ...) @ESP_LOGD(i32 %52, i32 %53, i64 %54, i8* %55)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %57
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* @HTTPD_MAX_URI_LEN, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %51
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 @LOG_FMT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HTTPD_MAX_URI_LEN, align 8
  %73 = call i32 @ESP_LOGW(i32 %66, i32 %67, i64 %71, i64 %72)
  %74 = load i32, i32* @HTTPD_414_URI_TOO_LONG, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** @PARSING_FAILED, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @ESP_FAIL, align 4
  store i32 %81, i32* %4, align 4
  br label %84

82:                                               ; preds = %51
  %83 = load i32, i32* @ESP_OK, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %65, %38
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ESP_LOGD(i32, i32, ...) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

declare dso_local i32 @ESP_LOGW(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
