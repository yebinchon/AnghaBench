; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_with_hostname_path.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_with_hostname_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"www.howsmyssl.com\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@howsmyssl_com_root_cert_pem_start = common dso_local global i32 0, align 4
@_http_event_handler = common dso_local global i32 0, align 4
@HTTP_TRANSPORT_OVER_SSL = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"HTTPS Status = %d, content_length = %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error perform http request %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @https_with_hostname_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @https_with_hostname_path() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  %7 = load i32, i32* @howsmyssl_com_root_cert_pem_start, align 4
  store i32 %7, i32* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %9 = load i32, i32* @_http_event_handler, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  %11 = load i32, i32* @HTTP_TRANSPORT_OVER_SSL, align 4
  store i32 %11, i32* %10, align 8
  %12 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @esp_http_client_perform(i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @ESP_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = load i32, i32* @TAG, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @esp_http_client_get_status_code(i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @esp_http_client_get_content_length(i32 %22)
  %24 = call i32 @ESP_LOGI(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %23)
  br label %30

25:                                               ; preds = %0
  %26 = load i32, i32* @TAG, align 4
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @esp_err_to_name(i64 %27)
  %29 = call i32 @ESP_LOGE(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @esp_http_client_cleanup(i32 %31)
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
