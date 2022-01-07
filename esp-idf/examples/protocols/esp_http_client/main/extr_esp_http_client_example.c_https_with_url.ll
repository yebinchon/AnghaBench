; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_with_url.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_with_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"https://www.howsmyssl.com\00", align 1
@howsmyssl_com_root_cert_pem_start = common dso_local global i32 0, align 4
@_http_event_handler = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"HTTPS Status = %d, content_length = %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Error perform http request %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @https_with_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @https_with_url() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %6 = load i32, i32* @howsmyssl_com_root_cert_pem_start, align 4
  store i32 %6, i32* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %8 = load i32, i32* @_http_event_handler, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @esp_http_client_perform(i32 %10)
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @ESP_OK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @esp_http_client_get_status_code(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @esp_http_client_get_content_length(i32 %19)
  %21 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %20)
  br label %27

22:                                               ; preds = %0
  %23 = load i32, i32* @TAG, align 4
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @esp_err_to_name(i64 %24)
  %26 = call i32 @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @esp_http_client_cleanup(i32 %28)
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
