; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_uri.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_http_server/src/extr_httpd_uri.c_httpd_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpd_data = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { %struct.http_parser_url }
%struct.http_parser_url = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*)*, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"request for %s with type %d\00", align 1
@UF_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"URI '%s' not found\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Method '%d' not allowed for URI '%s'\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"uri handler execution failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @httpd_uri(%struct.httpd_data* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.httpd_data*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.http_parser_url*, align 8
  %7 = alloca i32, align 4
  store %struct.httpd_data* %0, %struct.httpd_data** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %9 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %8, i32 0, i32 1
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %5, align 8
  %10 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %11 = getelementptr inbounds %struct.httpd_data, %struct.httpd_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store %struct.http_parser_url* %12, %struct.http_parser_url** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @TAG, align 4
  %14 = call i32 @LOG_FMT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ESP_LOGD(i32 %13, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %23 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @UF_PATH, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %1
  %30 = load %struct.httpd_data*, %struct.httpd_data** %3, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %35 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i32, i32* @UF_PATH, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %33, %41
  %43 = load %struct.http_parser_url*, %struct.http_parser_url** %6, align 8
  %44 = getelementptr inbounds %struct.http_parser_url, %struct.http_parser_url* %43, i32 0, i32 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* @UF_PATH, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_10__* @httpd_find_uri_handler(%struct.httpd_data* %30, i32 %42, i32 %50, i32 %53, i32* %7)
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %4, align 8
  br label %55

55:                                               ; preds = %29, %1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = icmp eq %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  switch i32 %59, label %81 [
    i32 129, label %60
    i32 128, label %69
  ]

60:                                               ; preds = %58
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 @LOG_FMT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = call i64 @httpd_req_handle_err(%struct.TYPE_11__* %67, i32 129)
  store i64 %68, i64* %2, align 8
  br label %103

69:                                               ; preds = %58
  %70 = load i32, i32* @TAG, align 4
  %71 = call i32 @LOG_FMT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %70, i32 %71, i32 %74, i32 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = call i64 @httpd_req_handle_err(%struct.TYPE_11__* %79, i32 128)
  store i64 %80, i64* %2, align 8
  br label %103

81:                                               ; preds = %58
  %82 = load i64, i64* @ESP_FAIL, align 8
  store i64 %82, i64* %2, align 8
  br label %103

83:                                               ; preds = %55
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %90, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = call i64 %91(%struct.TYPE_11__* %92)
  %94 = load i64, i64* @ESP_OK, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %83
  %97 = load i32, i32* @TAG, align 4
  %98 = call i32 @LOG_FMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %99 = call i32 (i32, i32, ...) @ESP_LOGW(i32 %97, i32 %98)
  %100 = load i64, i64* @ESP_FAIL, align 8
  store i64 %100, i64* %2, align 8
  br label %103

101:                                              ; preds = %83
  %102 = load i64, i64* @ESP_OK, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %101, %96, %81, %69, %60
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i32 @ESP_LOGD(i32, i32, i32, i32) #1

declare dso_local i32 @LOG_FMT(i8*) #1

declare dso_local %struct.TYPE_10__* @httpd_find_uri_handler(%struct.httpd_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @ESP_LOGW(i32, i32, ...) #1

declare dso_local i64 @httpd_req_handle_err(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
