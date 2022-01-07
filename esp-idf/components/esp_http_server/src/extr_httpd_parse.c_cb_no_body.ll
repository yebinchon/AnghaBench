; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_no_body.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_parse.c_cb_no_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i64, i64 }

@PARSING_URL = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no headers\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@PARSING_FAILED = common dso_local global i8* null, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@PARSING_BODY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected state transition\00", align 1
@HTTPD_500_INTERNAL_SERVER_ERROR = common dso_local global i8* null, align 8
@PARSING_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"message complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @cb_no_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cb_no_body(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PARSING_URL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @LOG_FMT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @ESP_LOGD(i32 %15, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = call i64 @verify_url(%struct.TYPE_9__* %18)
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i8*, i8** @PARSING_FAILED, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* @ESP_FAIL, align 8
  store i64 %27, i64* %2, align 8
  br label %80

28:                                               ; preds = %14
  br label %48

29:                                               ; preds = %1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PARSING_BODY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @TAG, align 4
  %37 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @ESP_LOGE(i32 %36, i32 %37)
  %39 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** @PARSING_FAILED, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* @ESP_FAIL, align 8
  store i64 %46, i64* %2, align 8
  br label %80

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @pause_parsing(%struct.TYPE_9__* %49, i64 %53)
  %55 = load i64, i64* @ESP_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i8*, i8** @HTTPD_500_INTERNAL_SERVER_ERROR, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @PARSING_FAILED, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @ESP_FAIL, align 8
  store i64 %65, i64* %2, align 8
  br label %80

66:                                               ; preds = %48
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* @PARSING_COMPLETE, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 @LOG_FMT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @ESP_LOGD(i32 %76, i32 %77)
  %79 = load i64, i64* @ESP_OK, align 8
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %66, %57, %35, %22
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @ESP_LOGD(i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local i64 @verify_url(%struct.TYPE_9__*) #1

declare dso_local i32 @ESP_LOGE(i32, i32) #1

declare dso_local i64 @pause_parsing(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
