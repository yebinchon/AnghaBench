; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_async.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/esp_http_client/main/extr_esp_http_client_example.c_https_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"https://postman-echo.com/post\00", align 1
@_http_event_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [416 x i8] c"Using a Palant\C3\ADr requires a person with great strength of will and wisdom. The Palant\C3\ADri were meant to be used by the D\C3\BAnedain to communicate throughout the Realms in Exile. During the War of the Ring, the Palant\C3\ADri were used by many individuals. Sauron used the Ithil-stone to take advantage of the users of the other two stones, the Orthanc-stone and Anor-stone, but was also susceptible to deception himself.\00", align 1
@HTTP_METHOD_POST = common dso_local global i32 0, align 4
@ESP_ERR_HTTP_EAGAIN = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"HTTPS Status = %d, content_length = %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error perform http request %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @https_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @https_async() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 5000, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  %9 = load i32, i32* @_http_event_handler, align 4
  store i32 %9, i32* %8, align 8
  %10 = call i32 @esp_http_client_init(%struct.TYPE_3__* %1)
  store i32 %10, i32* %2, align 4
  store i8* getelementptr inbounds ([416 x i8], [416 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @HTTP_METHOD_POST, align 4
  %13 = call i32 @esp_http_client_set_method(i32 %11, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = call i32 @esp_http_client_set_post_field(i32 %14, i8* %15, i32 %17)
  br label %19

19:                                               ; preds = %0, %26
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @esp_http_client_perform(i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @ESP_ERR_HTTP_EAGAIN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %27

26:                                               ; preds = %19
  br label %19

27:                                               ; preds = %25
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @ESP_OK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* @TAG, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @esp_http_client_get_status_code(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @esp_http_client_get_content_length(i32 %35)
  %37 = call i32 @ESP_LOGI(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %36)
  br label %43

38:                                               ; preds = %27
  %39 = load i32, i32* @TAG, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @esp_err_to_name(i64 %40)
  %42 = call i32 @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @esp_http_client_cleanup(i32 %44)
  ret void
}

declare dso_local i32 @esp_http_client_init(%struct.TYPE_3__*) #1

declare dso_local i32 @esp_http_client_set_method(i32, i32) #1

declare dso_local i32 @esp_http_client_set_post_field(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

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
