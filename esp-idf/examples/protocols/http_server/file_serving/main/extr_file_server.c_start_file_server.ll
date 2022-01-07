; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_start_file_server.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/http_server/file_serving/main/extr_file_server.c_start_file_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_server_data = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i8*, %struct.file_server_data*, i32, i32 }

@start_file_server.server_data = internal global %struct.file_server_data* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"/spiffs\00", align 1
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"File server presently supports only '/spiffs' as base path\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"File server already started\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to allocate memory for server data\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@httpd_uri_match_wildcard = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Starting HTTP Server\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to start file server!\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"/*\00", align 1
@download_get_handler = common dso_local global i32 0, align 4
@HTTP_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"/upload/*\00", align 1
@upload_post_handler = common dso_local global i32 0, align 4
@HTTP_POST = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"/delete/*\00", align 1
@delete_post_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @start_file_server(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @TAG, align 4
  %17 = call i32 @ESP_LOGE(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %18, i64* %2, align 8
  br label %82

19:                                               ; preds = %11
  %20 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  %21 = icmp ne %struct.file_server_data* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %25, i64* %2, align 8
  br label %82

26:                                               ; preds = %19
  %27 = call %struct.file_server_data* @calloc(i32 1, i32 4)
  store %struct.file_server_data* %27, %struct.file_server_data** @start_file_server.server_data, align 8
  %28 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  %29 = icmp ne %struct.file_server_data* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @TAG, align 4
  %32 = call i32 @ESP_LOGE(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %33, i64* %2, align 8
  br label %82

34:                                               ; preds = %26
  %35 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  %36 = getelementptr inbounds %struct.file_server_data, %struct.file_server_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strlcpy(i32 %37, i8* %38, i32 4)
  store i32* null, i32** %4, align 8
  %40 = call i32 (...) @HTTPD_DEFAULT_CONFIG()
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @httpd_uri_match_wildcard, align 4
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @TAG, align 4
  %45 = call i32 @ESP_LOGI(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i64 @httpd_start(i32** %4, %struct.TYPE_7__* %5)
  %47 = load i64, i64* @ESP_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %34
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i64, i64* @ESP_FAIL, align 8
  store i64 %52, i64* %2, align 8
  br label %82

53:                                               ; preds = %34
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %56 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  store %struct.file_server_data* %56, %struct.file_server_data** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %58 = load i32, i32* @download_get_handler, align 4
  store i32 %58, i32* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %60 = load i32, i32* @HTTP_GET, align 4
  store i32 %60, i32* %59, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @httpd_register_uri_handler(i32* %61, %struct.TYPE_6__* %6)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %65 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  store %struct.file_server_data* %65, %struct.file_server_data** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %67 = load i32, i32* @upload_post_handler, align 4
  store i32 %67, i32* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %69 = load i32, i32* @HTTP_POST, align 4
  store i32 %69, i32* %68, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @httpd_register_uri_handler(i32* %70, %struct.TYPE_6__* %7)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %74 = load %struct.file_server_data*, %struct.file_server_data** @start_file_server.server_data, align 8
  store %struct.file_server_data* %74, %struct.file_server_data** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %76 = load i32, i32* @delete_post_handler, align 4
  store i32 %76, i32* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %78 = load i32, i32* @HTTP_POST, align 4
  store i32 %78, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @httpd_register_uri_handler(i32* %79, %struct.TYPE_6__* %8)
  %81 = load i64, i64* @ESP_OK, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %53, %49, %30, %22, %15
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local %struct.file_server_data* @calloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @HTTPD_DEFAULT_CONFIG(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

declare dso_local i64 @httpd_start(i32**, %struct.TYPE_7__*) #1

declare dso_local i32 @httpd_register_uri_handler(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
