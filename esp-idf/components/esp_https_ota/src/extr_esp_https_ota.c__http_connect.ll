; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__http_connect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__http_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to open HTTP connection: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @_http_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_http_connect(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* @ESP_FAIL, align 8
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @esp_http_client_open(i32 %9, i32 0)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ESP_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load i32, i32* @TAG, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @esp_err_to_name(i64 %16)
  %18 = call i32 @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %46

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @esp_http_client_fetch_headers(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  br label %46

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @esp_http_client_get_status_code(i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @_http_handle_response_code(i32 %31, i32 %32)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ESP_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %2, align 8
  br label %46

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @process_again(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %8, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %44, %37, %25, %14
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local i64 @esp_http_client_open(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @esp_err_to_name(i64) #1

declare dso_local i32 @esp_http_client_fetch_headers(i32) #1

declare dso_local i32 @esp_http_client_get_status_code(i32) #1

declare dso_local i64 @_http_handle_response_code(i32, i32) #1

declare dso_local i64 @process_again(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
