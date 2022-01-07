; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_download_chunk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_http_download_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [37 x i8] c"http://httpbin.org/stream-bytes/8912\00", align 1
@_http_event_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"HTTP chunk encoding Status = %d, content_length = %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error perform http request %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @http_download_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_download_chunk() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %6 = load i32, i32* @_http_event_handler, align 4
  store i32 %6, i32* %5, align 8
  %7 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @esp_http_client_perform(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @ESP_OK, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %0
  %14 = load i32, i32* @TAG, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @esp_http_client_get_status_code(i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @esp_http_client_get_content_length(i32 %17)
  %19 = call i32 @ESP_LOGI(i32 %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %18)
  br label %25

20:                                               ; preds = %0
  %21 = load i32, i32* @TAG, align 4
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @esp_err_to_name(i64 %22)
  %24 = call i32 @ESP_LOGE(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @esp_http_client_cleanup(i32 %26)
  ret void
}

declare dso_local i32 @esp_http_client_init(%struct.TYPE_3__*) #1

declare dso_local i64 @esp_http_client_perform(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @esp_http_client_get_status_code(i32) #1

declare dso_local i32 @esp_http_client_get_content_length(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @esp_http_client_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
