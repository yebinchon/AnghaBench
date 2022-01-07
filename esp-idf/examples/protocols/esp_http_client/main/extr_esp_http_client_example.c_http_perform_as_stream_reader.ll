; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_perform_as_stream_reader.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_perform_as_stream_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@MAX_HTTP_RECV_BUFFER = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot malloc http receive buffer\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"http://httpbin.org/get\00", align 1
@_http_event_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to open HTTP connection: %s\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Error read data\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"read_len = %d\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"HTTP Stream reader Status = %d, content_length = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_perform_as_stream_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_perform_as_stream_reader() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_HTTP_RECV_BUFFER, align 4
  %9 = add nsw i32 %8, 1
  %10 = call i8* @malloc(i32 %9)
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %73

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %19 = load i32, i32* @_http_event_handler, align 4
  store i32 %19, i32* %18, align 8
  %20 = call i32 @esp_http_client_init(%struct.TYPE_3__* %2)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @esp_http_client_open(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @ESP_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i32, i32* @TAG, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @esp_err_to_name(i32 %27)
  %29 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @free(i8* %30)
  br label %73

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @esp_http_client_fetch_headers(i32 %33)
  store i32 %34, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAX_HTTP_RECV_BUFFER, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = load i8*, i8** %1, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @esp_http_client_read(i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @TAG, align 4
  %51 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i8*, i8** %1, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i32, i32* @TAG, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ESP_LOGD(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %38, %32
  %61 = load i32, i32* @TAG, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @esp_http_client_get_status_code(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @esp_http_client_get_content_length(i32 %64)
  %66 = call i32 @ESP_LOGI(i32 %61, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @esp_http_client_close(i32 %67)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @esp_http_client_cleanup(i32 %69)
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @free(i8* %71)
  br label %73

73:                                               ; preds = %60, %25, %13
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @esp_http_client_init(%struct.TYPE_3__*) #1

declare dso_local i32 @esp_http_client_open(i32, i32) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @esp_http_client_fetch_headers(i32) #1

declare dso_local i32 @esp_http_client_read(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_http_client_get_status_code(i32) #1

declare dso_local i32 @esp_http_client_get_content_length(i32) #1

declare dso_local i32 @esp_http_client_close(i32) #1

declare dso_local i32 @esp_http_client_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
