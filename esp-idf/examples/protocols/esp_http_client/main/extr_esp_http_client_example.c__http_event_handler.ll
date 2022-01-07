; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c__http_event_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c__http_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"HTTP_EVENT_ERROR\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"HTTP_EVENT_ON_CONNECTED\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"HTTP_EVENT_HEADER_SENT\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"HTTP_EVENT_ON_HEADER, key=%s, value=%s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"HTTP_EVENT_ON_DATA, len=%d\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"HTTP_EVENT_ON_FINISH\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"HTTP_EVENT_DISCONNECTED\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Last esp error code: 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Last mbedtls failure: 0x%x\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_http_event_handler(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %59 [
    i32 133, label %8
    i32 131, label %11
    i32 132, label %14
    i32 128, label %17
    i32 130, label %26
    i32 129, label %39
    i32 134, label %42
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @TAG, align 4
  %10 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %59

11:                                               ; preds = %1
  %12 = load i32, i32* @TAG, align 4
  %13 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %59

14:                                               ; preds = %1
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %59

17:                                               ; preds = %1
  %18 = load i32, i32* @TAG, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %21, i32 %24)
  br label %59

26:                                               ; preds = %1
  %27 = load i32, i32* @TAG, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @esp_http_client_is_chunked_response(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %26
  br label %59

39:                                               ; preds = %1
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %59

42:                                               ; preds = %1
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @esp_tls_get_and_clear_last_error(i32 %47, i32* %3, i32* null)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* @TAG, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @TAG, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %1, %58, %39, %38, %17, %14, %11, %8
  %60 = load i32, i32* @ESP_OK, align 4
  ret i32 %60
}

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @esp_http_client_is_chunked_response(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @esp_tls_get_and_clear_last_error(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
