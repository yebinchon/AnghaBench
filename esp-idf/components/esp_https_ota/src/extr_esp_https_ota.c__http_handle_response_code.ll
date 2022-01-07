; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__http_handle_response_code.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_https_ota/src/extr_esp_https_ota.c__http_handle_response_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HttpStatus_MovedPermanently = common dso_local global i32 0, align 4
@HttpStatus_Found = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"URL redirection Failed\00", align 1
@HttpStatus_Unauthorized = common dso_local global i32 0, align 4
@DEFAULT_OTA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error: SSL data read error\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @_http_handle_response_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_http_handle_response_code(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @HttpStatus_MovedPermanently, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HttpStatus_Found, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @esp_http_client_set_redirection(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ESP_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGE(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %68

28:                                               ; preds = %18
  br label %37

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HttpStatus_Unauthorized, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @esp_http_client_add_auth(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* @DEFAULT_OTA_BUF_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %7, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @process_again(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %63, %45
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DEFAULT_OTA_BUF_SIZE, align 4
  %50 = call i32 @esp_http_client_read(i32 %48, i8* %41, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @TAG, align 4
  %55 = call i32 @ESP_LOGE(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i64, i64* @ESP_FAIL, align 8
  store i64 %56, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %66

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @ESP_OK, align 8
  store i64 %61, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %66

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  br label %46

64:                                               ; preds = %37
  %65 = load i64, i64* @ESP_OK, align 8
  store i64 %65, i64* %3, align 8
  store i32 1, i32* %10, align 4
  br label %66

66:                                               ; preds = %64, %60, %53
  %67 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %66, %24
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i64 @esp_http_client_set_redirection(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_http_client_add_auth(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @process_again(i32) #1

declare dso_local i32 @esp_http_client_read(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
